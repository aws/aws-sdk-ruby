# frozen_string_literal: true

# This is generated code!

module Aws::GeoMaps
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ApiKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geomaps#ApiKey", name: "ApiKey", traits: {"smithy.api#externalDocumentation" => {"Implementation Guide" => "https://github.com/paseto-standard/paseto-spec/blob/master/docs/02-Implementation-Guide/03-Algorithm-Lucidity.md"}, "smithy.api#length" => {"max" => 1000}, "smithy.api#sensitive" => {}})
    Buildings = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#Buildings", name: "Buildings")
    ColorScheme = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#ColorScheme", name: "ColorScheme")
    CompactOverlay = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geomaps#CompactOverlay", name: "CompactOverlay", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}, "smithy.api#sensitive" => {}})
    ContourDensity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#ContourDensity", name: "ContourDensity")
    CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geomaps#CountryCode", name: "CountryCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 3}, "smithy.api#pattern" => "^([A-Z]{2}|[A-Z]{3})$", "smithy.api#sensitive" => {}})
    DistanceMeters = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.geomaps#DistanceMeters", name: "DistanceMeters", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 4294967295}, "smithy.api#sensitive" => {}})
    GeoJsonOverlay = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geomaps#GeoJsonOverlay", name: "GeoJsonOverlay", traits: {"smithy.api#length" => {"min" => 1, "max" => 4200}, "smithy.api#sensitive" => {}})
    GetGlyphsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#GetGlyphsRequest", name: "GetGlyphsRequest")
    GetGlyphsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#GetGlyphsResponse", name: "GetGlyphsResponse")
    GetSpritesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#GetSpritesRequest", name: "GetSpritesRequest")
    GetSpritesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#GetSpritesResponse", name: "GetSpritesResponse")
    GetStaticMapRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#GetStaticMapRequest", name: "GetStaticMapRequest")
    GetStaticMapResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#GetStaticMapResponse", name: "GetStaticMapResponse")
    GetStyleDescriptorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#GetStyleDescriptorRequest", name: "GetStyleDescriptorRequest")
    GetStyleDescriptorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#GetStyleDescriptorResponse", name: "GetStyleDescriptorResponse")
    GetTileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#GetTileRequest", name: "GetTileRequest")
    GetTileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#GetTileResponse", name: "GetTileResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LabelSize = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#LabelSize", name: "LabelSize")
    LanguageTag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geomaps#LanguageTag", name: "LanguageTag", traits: {"smithy.api#length" => {"min" => 2, "max" => 35}})
    MapFeatureMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#MapFeatureMode", name: "MapFeatureMode")
    MapStyle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#MapStyle", name: "MapStyle")
    PoiCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#PoiCategory", name: "PoiCategory")
    PoiCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geomaps#PoiCategoryList", name: "PoiCategoryList", traits: {"smithy.api#length" => {"max" => 9}, "smithy.api#uniqueItems" => {}})
    PoiDensity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#PoiDensity", name: "PoiDensity")
    PositionListString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geomaps#PositionListString", name: "PositionListString", traits: {"smithy.api#length" => {"min" => 7}, "smithy.api#pattern" => "^(-?\\d{1,3}(\\.\\d{1,14})?,-?\\d{1,2}(\\.\\d{1,14})?)(,(-?\\d{1,3}(\\.\\d{1,14})?,-?\\d{1,2}(\\.\\d{1,14})?))*$", "smithy.api#sensitive" => {}})
    PositionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geomaps#PositionString", name: "PositionString", traits: {"smithy.api#length" => {"min" => 3, "max" => 36}, "smithy.api#pattern" => "^-?\\d{1,3}(\\.\\d{1,14})?,-?\\d{1,2}(\\.\\d{1,14})?$", "smithy.api#sensitive" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ScaleBarUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#ScaleBarUnit", name: "ScaleBarUnit")
    SensitiveFloat = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.geomaps#SensitiveFloat", name: "SensitiveFloat", traits: {"smithy.api#sensitive" => {}})
    SensitiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.geomaps#SensitiveInteger", name: "SensitiveInteger", traits: {"smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geomaps#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    StaticMapStyle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#StaticMapStyle", name: "StaticMapStyle")
    Terrain = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#Terrain", name: "Terrain")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TileAdditionalFeature = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#TileAdditionalFeature", name: "TileAdditionalFeature")
    TileAdditionalFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geomaps#TileAdditionalFeatureList", name: "TileAdditionalFeatureList", traits: {"smithy.api#length" => {"max" => 4}, "smithy.api#uniqueItems" => {}})
    Tileset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.geomaps#Tileset", name: "Tileset", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-.\\w]+$"})
    Traffic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#Traffic", name: "Traffic")
    TravelMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#TravelMode", name: "TravelMode")
    TravelModeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geomaps#TravelModeList", name: "TravelModeList", traits: {"smithy.api#length" => {"max" => 2}, "smithy.api#uniqueItems" => {}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.geomaps#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.geomaps#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#ValidationExceptionReason", name: "ValidationExceptionReason")
    Variant = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.geomaps#Variant", name: "Variant")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Buildings.add_member(:buildings_3_d, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILDINGS_3D", traits: {"smithy.api#enumValue" => "Buildings3D"}))
    ColorScheme.add_member(:light, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIGHT", traits: {"smithy.api#enumValue" => "Light"}))
    ColorScheme.add_member(:dark, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DARK", traits: {"smithy.api#enumValue" => "Dark"}))
    ContourDensity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "Low"}))
    ContourDensity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    ContourDensity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    GetGlyphsRequest.add_member(:font_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FontStack", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"max" => 1000}, "smithy.api#required" => {}}))
    GetGlyphsRequest.add_member(:font_unicode_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FontUnicodeRange", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"max" => 50}, "smithy.api#pattern" => "^[0-9]+-[0-9]+\\.pbf$", "smithy.api#required" => {}}))
    GetGlyphsRequest.type = Types::GetGlyphsRequest
    GetGlyphsResponse.add_member(:blob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "Blob", traits: {"smithy.api#httpPayload" => {}}))
    GetGlyphsResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetGlyphsResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetGlyphsResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetGlyphsResponse[:http_payload] = :blob
    GetGlyphsResponse[:http_payload_member] = GetGlyphsResponse.member(:blob)
    GetGlyphsResponse.type = Types::GetGlyphsResponse
    GetSpritesRequest.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^sprites(@2x)?\\.(png|json)$", "smithy.api#required" => {}}))
    GetSpritesRequest.add_member(:style, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStyle, name: "Style", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpritesRequest.add_member(:color_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: ColorScheme, name: "ColorScheme", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpritesRequest.add_member(:variant, ::Smithy::Schema::Shapes::MemberShape.new(target: Variant, name: "Variant", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpritesRequest.type = Types::GetSpritesRequest
    GetSpritesResponse.add_member(:blob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "Blob", traits: {"smithy.api#httpPayload" => {}}))
    GetSpritesResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetSpritesResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetSpritesResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetSpritesResponse[:http_payload] = :blob
    GetSpritesResponse[:http_payload_member] = GetSpritesResponse.member(:blob)
    GetSpritesResponse.type = Types::GetSpritesResponse
    GetStaticMapRequest.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionListString, name: "BoundingBox", traits: {"smithy.api#httpQuery" => "bounding-box", "smithy.api#length" => {"max" => 100}}))
    GetStaticMapRequest.add_member(:bounded_positions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionListString, name: "BoundedPositions", traits: {"smithy.api#httpQuery" => "bounded-positions", "smithy.api#length" => {"max" => 5000}}))
    GetStaticMapRequest.add_member(:center, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionString, name: "Center", traits: {"smithy.api#httpQuery" => "center"}))
    GetStaticMapRequest.add_member(:color_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: ColorScheme, name: "ColorScheme", traits: {"smithy.api#httpQuery" => "color-scheme"}))
    GetStaticMapRequest.add_member(:compact_overlay, ::Smithy::Schema::Shapes::MemberShape.new(target: CompactOverlay, name: "CompactOverlay", traits: {"smithy.api#httpQuery" => "compact-overlay"}))
    GetStaticMapRequest.add_member(:crop_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "CropLabels", traits: {"smithy.api#httpQuery" => "crop-labels"}))
    GetStaticMapRequest.add_member(:geo_json_overlay, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoJsonOverlay, name: "GeoJsonOverlay", traits: {"smithy.api#httpQuery" => "geojson-overlay"}))
    GetStaticMapRequest.add_member(:height, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveInteger, name: "Height", traits: {"smithy.api#httpQuery" => "height", "smithy.api#range" => {"min" => 64, "max" => 1400}, "smithy.api#required" => {}}))
    GetStaticMapRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "Key", traits: {"smithy.api#httpQuery" => "key"}))
    GetStaticMapRequest.add_member(:label_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelSize, name: "LabelSize", traits: {"smithy.api#httpQuery" => "label-size"}))
    GetStaticMapRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageTag, name: "Language", traits: {"smithy.api#httpQuery" => "lang"}))
    GetStaticMapRequest.add_member(:padding, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveInteger, name: "Padding", traits: {"smithy.api#httpQuery" => "padding", "smithy.api#range" => {"min" => 0, "max" => 350}}))
    GetStaticMapRequest.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "PoliticalView", traits: {"smithy.api#httpQuery" => "political-view"}))
    GetStaticMapRequest.add_member(:points_of_interests, ::Smithy::Schema::Shapes::MemberShape.new(target: MapFeatureMode, name: "PointsOfInterests", traits: {"smithy.api#httpQuery" => "pois"}))
    GetStaticMapRequest.add_member(:radius, ::Smithy::Schema::Shapes::MemberShape.new(target: DistanceMeters, name: "Radius", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "radius"}))
    GetStaticMapRequest.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^map(@2x)?$", "smithy.api#required" => {}}))
    GetStaticMapRequest.add_member(:scale_bar_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleBarUnit, name: "ScaleBarUnit", traits: {"smithy.api#httpQuery" => "scale-unit"}))
    GetStaticMapRequest.add_member(:style, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticMapStyle, name: "Style", traits: {"smithy.api#httpQuery" => "style"}))
    GetStaticMapRequest.add_member(:width, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveInteger, name: "Width", traits: {"smithy.api#httpQuery" => "width", "smithy.api#range" => {"min" => 64, "max" => 1400}, "smithy.api#required" => {}}))
    GetStaticMapRequest.add_member(:zoom, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveFloat, name: "Zoom", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "zoom", "smithy.api#range" => {"min" => 0, "max" => 20}}))
    GetStaticMapRequest.type = Types::GetStaticMapRequest
    GetStaticMapResponse.add_member(:blob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "Blob", traits: {"smithy.api#httpPayload" => {}}))
    GetStaticMapResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetStaticMapResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetStaticMapResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetStaticMapResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingBucket", traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    GetStaticMapResponse[:http_payload] = :blob
    GetStaticMapResponse[:http_payload_member] = GetStaticMapResponse.member(:blob)
    GetStaticMapResponse.type = Types::GetStaticMapResponse
    GetStyleDescriptorRequest.add_member(:style, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStyle, name: "Style", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStyleDescriptorRequest.add_member(:color_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: ColorScheme, name: "ColorScheme", traits: {"smithy.api#httpQuery" => "color-scheme"}))
    GetStyleDescriptorRequest.add_member(:political_view, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "PoliticalView", traits: {"smithy.api#httpQuery" => "political-view"}))
    GetStyleDescriptorRequest.add_member(:terrain, ::Smithy::Schema::Shapes::MemberShape.new(target: Terrain, name: "Terrain", traits: {"smithy.api#httpQuery" => "terrain"}))
    GetStyleDescriptorRequest.add_member(:contour_density, ::Smithy::Schema::Shapes::MemberShape.new(target: ContourDensity, name: "ContourDensity", traits: {"smithy.api#httpQuery" => "contour-density"}))
    GetStyleDescriptorRequest.add_member(:traffic, ::Smithy::Schema::Shapes::MemberShape.new(target: Traffic, name: "Traffic", traits: {"smithy.api#httpQuery" => "traffic"}))
    GetStyleDescriptorRequest.add_member(:travel_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: TravelModeList, name: "TravelModes", traits: {"smithy.api#httpQuery" => "travel-modes"}))
    GetStyleDescriptorRequest.add_member(:buildings, ::Smithy::Schema::Shapes::MemberShape.new(target: Buildings, name: "Buildings", traits: {"smithy.api#httpQuery" => "buildings"}))
    GetStyleDescriptorRequest.add_member(:poi_density, ::Smithy::Schema::Shapes::MemberShape.new(target: PoiDensity, name: "PoiDensity", traits: {"smithy.api#httpQuery" => "poi-density"}))
    GetStyleDescriptorRequest.add_member(:poi_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: PoiCategoryList, name: "PoiCategories", traits: {"smithy.api#httpQuery" => "poi-categories"}))
    GetStyleDescriptorRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "Key", traits: {"smithy.api#httpQuery" => "key"}))
    GetStyleDescriptorRequest.type = Types::GetStyleDescriptorRequest
    GetStyleDescriptorResponse.add_member(:blob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "Blob", traits: {"smithy.api#httpPayload" => {}}))
    GetStyleDescriptorResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetStyleDescriptorResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetStyleDescriptorResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetStyleDescriptorResponse[:http_payload] = :blob
    GetStyleDescriptorResponse[:http_payload_member] = GetStyleDescriptorResponse.member(:blob)
    GetStyleDescriptorResponse.type = Types::GetStyleDescriptorResponse
    GetTileRequest.add_member(:additional_features, ::Smithy::Schema::Shapes::MemberShape.new(target: TileAdditionalFeatureList, name: "AdditionalFeatures", traits: {"smithy.api#httpQuery" => "additional-features"}))
    GetTileRequest.add_member(:tileset, ::Smithy::Schema::Shapes::MemberShape.new(target: Tileset, name: "Tileset", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTileRequest.add_member(:z, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Z", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"max" => 2}, "smithy.api#pattern" => "\\d+", "smithy.api#required" => {}}))
    GetTileRequest.add_member(:x, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "X", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"max" => 7}, "smithy.api#pattern" => "\\d+", "smithy.api#required" => {}}))
    GetTileRequest.add_member(:y, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Y", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"max" => 7}, "smithy.api#pattern" => "\\d+", "smithy.api#required" => {}}))
    GetTileRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKey, name: "Key", traits: {"smithy.api#httpQuery" => "key"}))
    GetTileRequest.type = Types::GetTileRequest
    GetTileResponse.add_member(:blob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "Blob", traits: {"smithy.api#httpPayload" => {}}))
    GetTileResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetTileResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetTileResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetTileResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingBucket", traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    GetTileResponse[:http_payload] = :blob
    GetTileResponse[:http_payload_member] = GetTileResponse.member(:blob)
    GetTileResponse.type = Types::GetTileResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LabelSize.add_member(:small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMALL", traits: {"smithy.api#enumValue" => "Small"}))
    LabelSize.add_member(:large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE", traits: {"smithy.api#enumValue" => "Large"}))
    MapFeatureMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    MapFeatureMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    MapStyle.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "Standard"}))
    MapStyle.add_member(:monochrome, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONOCHROME", traits: {"smithy.api#enumValue" => "Monochrome"}))
    MapStyle.add_member(:hybrid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HYBRID", traits: {"smithy.api#enumValue" => "Hybrid"}))
    MapStyle.add_member(:satellite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SATELLITE", traits: {"smithy.api#enumValue" => "Satellite"}))
    PoiCategory.add_member(:food_and_drink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOOD_AND_DRINK", traits: {"smithy.api#enumValue" => "FoodAndDrink"}))
    PoiCategory.add_member(:entertainment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTERTAINMENT", traits: {"smithy.api#enumValue" => "Entertainment"}))
    PoiCategory.add_member(:sights_and_museums, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIGHTS_AND_MUSEUMS", traits: {"smithy.api#enumValue" => "SightsAndMuseums"}))
    PoiCategory.add_member(:transportation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSPORTATION", traits: {"smithy.api#enumValue" => "Transportation"}))
    PoiCategory.add_member(:accommodations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOMMODATIONS", traits: {"smithy.api#enumValue" => "Accommodations"}))
    PoiCategory.add_member(:leisure_and_outdoor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEISURE_AND_OUTDOOR", traits: {"smithy.api#enumValue" => "LeisureAndOutdoor"}))
    PoiCategory.add_member(:shopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHOPPING", traits: {"smithy.api#enumValue" => "Shopping"}))
    PoiCategory.add_member(:business_and_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_AND_SERVICES", traits: {"smithy.api#enumValue" => "BusinessAndServices"}))
    PoiCategory.add_member(:facilities_and_buildings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FACILITIES_AND_BUILDINGS", traits: {"smithy.api#enumValue" => "FacilitiesAndBuildings"}))
    PoiCategoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PoiCategory, name: "member"))
    PoiDensity.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "Off"}))
    PoiDensity.add_member(:very_sparse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERY_SPARSE", traits: {"smithy.api#enumValue" => "VerySparse"}))
    PoiDensity.add_member(:sparse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPARSE", traits: {"smithy.api#enumValue" => "Sparse"}))
    PoiDensity.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "Default"}))
    PoiDensity.add_member(:dense, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENSE", traits: {"smithy.api#enumValue" => "Dense"}))
    PoiDensity.add_member(:very_dense, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERY_DENSE", traits: {"smithy.api#enumValue" => "VeryDense"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScaleBarUnit.add_member(:kilometers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOMETERS", traits: {"smithy.api#enumValue" => "Kilometers"}))
    ScaleBarUnit.add_member(:kilometers_miles, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOMETERS_MILES", traits: {"smithy.api#enumValue" => "KilometersMiles"}))
    ScaleBarUnit.add_member(:miles, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MILES", traits: {"smithy.api#enumValue" => "Miles"}))
    ScaleBarUnit.add_member(:miles_kilometers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MILES_KILOMETERS", traits: {"smithy.api#enumValue" => "MilesKilometers"}))
    StaticMapStyle.add_member(:satellite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SATELLITE", traits: {"smithy.api#enumValue" => "Satellite"}))
    StaticMapStyle.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "Standard"}))
    Terrain.add_member(:hillshade, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HILLSHADE", traits: {"smithy.api#enumValue" => "Hillshade"}))
    Terrain.add_member(:terrain_3_d, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERRAIN_3D", traits: {"smithy.api#enumValue" => "Terrain3D"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TileAdditionalFeature.add_member(:contour_lines, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTOUR_LINES", traits: {"smithy.api#enumValue" => "ContourLines"}))
    TileAdditionalFeature.add_member(:hillshade, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HILLSHADE", traits: {"smithy.api#enumValue" => "Hillshade"}))
    TileAdditionalFeature.add_member(:logistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGISTICS", traits: {"smithy.api#enumValue" => "Logistics"}))
    TileAdditionalFeature.add_member(:transit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT", traits: {"smithy.api#enumValue" => "Transit"}))
    TileAdditionalFeatureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TileAdditionalFeature, name: "member"))
    Traffic.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "All"}))
    Traffic.add_member(:congestion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONGESTION", traits: {"smithy.api#enumValue" => "Congestion"}))
    TravelMode.add_member(:transit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIT", traits: {"smithy.api#enumValue" => "Transit"}))
    TravelMode.add_member(:truck, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUCK", traits: {"smithy.api#enumValue" => "Truck"}))
    TravelModeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TravelMode, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason", traits: {"smithy.api#jsonName" => "reason", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "FieldList", traits: {"smithy.api#jsonName" => "fieldList", "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UnknownOperation"}))
    ValidationExceptionReason.add_member(:missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING", traits: {"smithy.api#enumValue" => "Missing"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "Other"}))
    ValidationExceptionReason.add_member(:unknown_field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_FIELD", traits: {"smithy.api#enumValue" => "UnknownField"}))
    Variant.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "Default"}))

    MapsService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.geomaps#MapsService"
      service.name = "MapsService"
      service.version = "2020-11-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Geo Maps", "arnNamespace" => "geo-maps", "cloudTrailEventSource" => "geo-maps.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "geo-maps"}, "aws.endpoints#standardRegionalEndpoints" => {"partitionSpecialCases" => {"aws" => [{"endpoint" => "https://maps.geo.{region}.{dnsSuffix}"}, {"endpoint" => "https://maps.geo-fips.{region}.{dualStackDnsSuffix}", "fips" => true, "dualStack" => true}, {"endpoint" => "https://maps.geo-fips.{region}.{dnsSuffix}", "fips" => true, "dualStack" => false}, {"endpoint" => "https://maps.geo.{region}.{dualStackDnsSuffix}", "fips" => false, "dualStack" => true}], "aws-us-gov" => [{"endpoint" => "https://maps.geo.{region}.{dnsSuffix}"}, {"endpoint" => "https://maps.geo-fips.{region}.{dualStackDnsSuffix}", "fips" => true, "dualStack" => true}, {"endpoint" => "https://maps.geo-fips.{region}.{dnsSuffix}", "fips" => true, "dualStack" => false}, {"endpoint" => "https://maps.geo.{region}.{dualStackDnsSuffix}", "fips" => false, "dualStack" => true}]}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["x-amz-content-sha256", "x-amz-user-agent", "content-type"], "additionalExposedHeaders" => ["age", "date", "x-amz-apigw-id", "x-amz-cf-id", "x-amz-cf-pop", "x-amzn-requestid", "x-amzn-trace-id", "x-cache"]}, "smithy.api#title" => "Amazon Location Service Maps V2", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://maps.geo.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://maps.geo-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://maps.geo-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://maps.geo.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://geo-maps-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://geo-maps-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://geo-maps.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://geo-maps.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 18, "nodes" => "/////wAAAAH/////AAAAAAAAABEAAAADAAAAAQAAAAQF9eEPAAAAAgAAAAUF9eEPAAAAAwAAAA4AAAAGAAAABAAAAA4AAAAHAAAABQAAAAoAAAAIAAAABwAAAAkF9eEOAAAACAX14QwF9eENAAAABgAAAAwAAAALAAAABwX14QkF9eELAAAABwAAAA0F9eEKAAAACAX14QgF9eEJAAAABQAAABAAAAAPAAAABwX14QcF9eEEAAAABwX14QUF9eEGAAAABQX14QEAAAASAAAABwX14QIF9eED"}}
      service.add_operation(:get_glyphs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geomaps#GetGlyphs"
        operation.name = "GetGlyphs"
        operation.input = GetGlyphsRequest
        operation.output = GetGlyphsResponse
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/glyphs/{FontStack}/{FontUnicodeRange}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetGlyphsSuccess", "params" => {"FontStack" => "Amazon Ember Regular", "FontUnicodeRange" => "0-255.pbf"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_sprites, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geomaps#GetSprites"
        operation.name = "GetSprites"
        operation.input = GetSpritesRequest
        operation.output = GetSpritesResponse
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/styles/{Style}/{ColorScheme}/{Variant}/sprites/{FileName}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetSpritesSuccess", "params" => {"Style" => "Standard", "ColorScheme" => "Light", "Variant" => "Default", "FileName" => "sprites.json"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_static_map, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geomaps#GetStaticMap"
        operation.name = "GetStaticMap"
        operation.input = GetStaticMapRequest
        operation.output = GetStaticMapResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/v2/static/{FileName}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetStaticMapSuccess", "params" => {"FileName" => "map", "Width" => 800, "Height" => 900, "Center" => "-123.144847,49.303609", "Style" => "Satellite", "Zoom" => 10.0}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_style_descriptor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geomaps#GetStyleDescriptor"
        operation.name = "GetStyleDescriptor"
        operation.input = GetStyleDescriptorRequest
        operation.output = GetStyleDescriptorResponse
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/styles/{Style}/descriptor", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetStyleDescriptorSuccess", "params" => {"Style" => "Standard"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_tile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geomaps#GetTile"
        operation.name = "GetTile"
        operation.input = GetTileRequest
        operation.output = GetTileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/v2/tiles/{Tileset}/{Z}/{X}/{Y}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTileSuccess", "params" => {"Tileset" => "vector.basemap", "X" => "5190", "Y" => "11218", "Z" => "15"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
