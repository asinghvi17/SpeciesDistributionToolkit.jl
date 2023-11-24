# Define the datasets that WorldClim2 can provide - all of the entries in this array are `RasterDatasets`
wcdat = [
    BioClim,
    Elevation,
    MinimumTemperature,
    MaximumTemperature,
    AverageTemperature,
    Precipitation,
    SolarRadiation,
    WindSpeed,
    WaterVaporPressure,
]
WorldClim2Dataset = Union{wcdat...}

url(::RasterData{WorldClim2, D}) where {D <: WorldClim2Dataset} =
    "https://www.worldclim.org/data/index.html"

# Update provisioning
provides(::Type{WorldClim2}, ::Type{T}) where {T <: WorldClim2Dataset} = true

# Update downloadtype
downloadtype(::RasterData{WorldClim2, T}) where {T <: WorldClim2Dataset} = _zip

# Update the resolution
resolutions(::RasterData{WorldClim2, T}) where {T <: WorldClim2Dataset} =
    Dict([0.5 => "30s", 2.5 => "2.5m", 5.0 => "5m", 10.0 => "10m"])

# Update the months
months(::RasterData{WorldClim2, T}) where {T <: WorldClim2Dataset} = Month.(1:12)
months(::RasterData{WorldClim2, BioClim}) = nothing
months(::RasterData{WorldClim2, Elevation}) = nothing

# Update the layers
layers(::RasterData{WorldClim2, BioClim}) = "BIO" .* string.(1:19)
layerdescriptions(::RasterData{WorldClim2, BioClim}) = Dict([
    "BIO1" => "Annual Mean Temperature",
    "BIO2" => "Mean Diurnal Range (Mean of monthly (max temp - min temp))",
    "BIO3" => "Isothermality (BIO2/BIO7) (×100)",
    "BIO4" => "Temperature Seasonality (standard deviation ×100)",
    "BIO5" => "Max Temperature of Warmest Month",
    "BIO6" => "Min Temperature of Coldest Month",
    "BIO7" => "Temperature Annual Range (BIO5-BIO6)",
    "BIO8" => "Mean Temperature of Wettest Quarter",
    "BIO9" => "Mean Temperature of Driest Quarter",
    "BIO10" => "Mean Temperature of Warmest Quarter",
    "BIO11" => "Mean Temperature of Coldest Quarter",
    "BIO12" => "Annual Precipitation",
    "BIO13" => "Precipitation of Wettest Month",
    "BIO14" => "Precipitation of Driest Month",
    "BIO15" => "Precipitation Seasonality (Coefficient of Variation)",
    "BIO16" => "Precipitation of Wettest Quarter",
    "BIO17" => "Precipitation of Driest Quarter",
    "BIO18" => "Precipitation of Warmest Quarter",
    "BIO19" => "Precipitation of Coldest Quarter",
])

# The following functions are the list of URL codes for the datasets. Note that
# they dispatch on the dataset within the context of WorldClim2
_var_slug(::RasterData{WorldClim2, MinimumTemperature}) = "tmin"
_var_slug(::RasterData{WorldClim2, MaximumTemperature}) = "tmax"
_var_slug(::RasterData{WorldClim2, AverageTemperature}) = "tavg"
_var_slug(::RasterData{WorldClim2, Precipitation}) = "prec"
_var_slug(::RasterData{WorldClim2, SolarRadiation}) = "srad"
_var_slug(::RasterData{WorldClim2, WindSpeed}) = "wind"
_var_slug(::RasterData{WorldClim2, WaterVaporPressure}) = "vapr"
_var_slug(::RasterData{WorldClim2, BioClim}) = "bio"
_var_slug(::RasterData{WorldClim2, Elevation}) = "elev"

# Get the dataset source
function source(
    data::RasterData{WorldClim2, D};
    resolution = 10.0,
    args...,
) where {D <: WorldClim2Dataset}
    res_code = get(resolutions(data), resolution, "10m")
    var_code = _var_slug(data)
    root = "https://geodata.ucdavis.edu/climate/worldclim/2_1/base/"
    stem = "wc2.1_$(res_code)_$(var_code).zip"
    return (
        url = root * stem,
        filename = lowercase(stem),
        outdir = destination(data),
    )
end

function layername(
    data::RasterData{WorldClim2, D};
    resolution = 10.0,
    month = Month(1),
) where {D <: WorldClim2Dataset}
    res_code = get(resolutions(data), resolution, "10m")
    var_code = _var_slug(data)
    layer_code = lpad(string(month.value), 2, '0')
    return "wc2.1_$(res_code)_$(var_code)_$(layer_code).tif"
end

function layername(
    data::RasterData{WorldClim2, BioClim};
    resolution = 10.0,
    layer = "BIO1",
)
    res_code = get(resolutions(data), resolution, "10m")
    var_code = _var_slug(data)
    layer_code = (layer isa Integer) ? layer : findfirst(isequal(layer), layers(data))
    return "wc2.1_$(res_code)_$(var_code)_$(layer_code).tif"
end

function layername(
    data::RasterData{WorldClim2, Elevation};
    resolution = 10.0,
)
    res_code = get(resolutions(data), resolution, "10m")
    var_code = _var_slug(data)
    return "wc2.1_$(res_code)_$(var_code).tif"
end

@testitem "WorldClim2 has no habitat heterogeneity layer" begin
    @test_throws "dataset is not provided by" RasterData(WorldClim2, HabitatHeterogeneity)
end

@testitem "WorldClim2 layers need to be numeric" begin
    @test_throws "does not allow for layer" downloader(
        RasterData(WorldClim2, AverageTemperature);
        layer = "Some stuff I guess",
    )
end

@testitem "WorldClim2 layers needs to be in bounds" begin
    @test_throws ["dataset only has"] downloader(
        RasterData(WorldClim2, BioClim);
        layer = 420,
    )
end

@testitem "WorldClim2 months need to be in domain" begin
    @test_throws ["The month", "not supported by the"] downloader(
        RasterData(WorldClim2, AverageTemperature);
        month = "Marchtober",
    )
end

@testitem "WorldClim2 has a specific series of resolutions" begin
    @test_throws ["The resolution", "is not supported by the"] downloader(
        RasterData(WorldClim2, BioClim);
        resolution = π,
    )
end

@testitem "WorldClim2 has the correct support for months" begin
    @test SimpleSDMDatasets.months(RasterData(WorldClim2, BioClim)) |> isnothing
    @test SimpleSDMDatasets.months(RasterData(WorldClim2, AverageTemperature)) |> !isnothing
    @test SimpleSDMDatasets.months(RasterData(WorldClim2, AverageTemperature)) |> !isempty
    @test SimpleSDMDatasets.layers(RasterData(WorldClim2, AverageTemperature)) |> isnothing
    @test SimpleSDMDatasets.layers(RasterData(WorldClim2, BioClim)) |> !isnothing
end

@testitem "WorldClim2 has support for resolutions" begin
    for T in Base.uniontypes(SimpleSDMDatasets.WorldClim2Dataset)
        @test SimpleSDMDatasets.provides(WorldClim2, T)
        data = RasterData(WorldClim2, T)
        @test typeof(data) == RasterData{WorldClim2, T}
        @test SimpleSDMDatasets.resolutions(data) |> !isnothing
    end
end

@testitem "WorldClim2 has a layer description" begin
    @test layerdescriptions(RasterData(WorldClim2, BioClim))["BIO1"] ==
          "Annual Mean Temperature"
end

@testitem "WorldClim2 downloader interface is working" begin
    using Dates
    begin
        out = downloader(RasterData(WorldClim2, BioClim); resolution = 10.0, layer = "BIO8")
        @test isfile(first(out))
        @test out[2] == SimpleSDMDatasets.filetype(RasterData(WorldClim2, BioClim))
    end

    begin
        out = downloader(RasterData(WorldClim2, BioClim); resolution = 5.0, layer = "BIO4")
        @test isfile(first(out))
        @test out[2] == SimpleSDMDatasets.filetype(RasterData(WorldClim2, BioClim))
    end

    begin
        out = downloader(RasterData(WorldClim2, Elevation); resolution = 5.0)
        @test isfile(first(out))
        @test out[2] == SimpleSDMDatasets.filetype(RasterData(WorldClim2, Elevation))
    end

    begin
        out = downloader(
            RasterData(WorldClim2, MaximumTemperature);
            resolution = 10.0,
            month = Dates.Month(4),
        )
        @test isfile(first(out))
        @test out[2] ==
              SimpleSDMDatasets.filetype(RasterData(WorldClim2, MaximumTemperature))
    end

    begin
        out = downloader(
            RasterData(WorldClim2, MinimumTemperature);
            resolution = 2.5,
            month = Dates.Month(12),
        )
        @test isfile(first(out))
        @test out[2] ==
              SimpleSDMDatasets.filetype(RasterData(WorldClim2, MinimumTemperature))
    end

    begin
        out = downloader(
            RasterData(WorldClim2, AverageTemperature);
            resolution = 10.0,
            month = Dates.Month(4),
        )
        @test isfile(first(out))
        @test out[2] ==
              SimpleSDMDatasets.filetype(RasterData(WorldClim2, AverageTemperature))
    end

    begin
        out = downloader(
            RasterData(WorldClim2, SolarRadiation);
            resolution = 10.0,
            month = Dates.Month(4),
        )
        @test isfile(first(out))
        @test out[2] == SimpleSDMDatasets.filetype(RasterData(WorldClim2, SolarRadiation))
    end

    begin
        out = downloader(
            RasterData(WorldClim2, WindSpeed);
            resolution = 10.0,
            month = Dates.Month(4),
        )
        @test isfile(first(out))
        @test out[2] == SimpleSDMDatasets.filetype(RasterData(WorldClim2, WindSpeed))
    end

    begin
        out = downloader(
            RasterData(WorldClim2, WaterVaporPressure);
            resolution = 10.0,
            month = Dates.Month(4),
        )
        @test isfile(first(out))
        @test out[2] ==
              SimpleSDMDatasets.filetype(RasterData(WorldClim2, WaterVaporPressure))
    end
end