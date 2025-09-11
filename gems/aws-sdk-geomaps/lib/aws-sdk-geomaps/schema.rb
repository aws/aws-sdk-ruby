# frozen_string_literal: true

# This is generated code!

module Aws::GeoMaps
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ApiKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#ApiKey', name: 'ApiKey', traits: {"smithy.api#externalDocumentation" => {"Implementation Guide" => "https://github.com/paseto-standard/paseto-spec/blob/master/docs/02-Implementation-Guide/03-Algorithm-Lucidity.md"}, "smithy.api#length" => {"max" => 1000}, "smithy.api#sensitive" => {}})
    ColorScheme = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#ColorScheme', name: 'ColorScheme', traits: {"smithy.api#enum" => [{"name" => "LIGHT", "value" => "Light"}, {"name" => "DARK", "value" => "Dark"}]})
    CompactOverlay = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#CompactOverlay', name: 'CompactOverlay', traits: {"smithy.api#length" => {"min" => 1, "max" => 7000}, "smithy.api#sensitive" => {}})
    CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#CountryCode', name: 'CountryCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 3}, "smithy.api#pattern" => "^([A-Z]{2}|[A-Z]{3})$", "smithy.api#sensitive" => {}})
    DistanceMeters = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.geomaps#DistanceMeters', name: 'DistanceMeters', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 4294967295}, "smithy.api#sensitive" => {}})
    GeoJsonOverlay = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#GeoJsonOverlay', name: 'GeoJsonOverlay', traits: {"smithy.api#length" => {"min" => 1, "max" => 7000}, "smithy.api#sensitive" => {}})
    GetGlyphsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#GetGlyphsRequest', name: 'GetGlyphsRequest')
    GetGlyphsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#GetGlyphsResponse', name: 'GetGlyphsResponse')
    GetSpritesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#GetSpritesRequest', name: 'GetSpritesRequest')
    GetSpritesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#GetSpritesResponse', name: 'GetSpritesResponse')
    GetStaticMapRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#GetStaticMapRequest', name: 'GetStaticMapRequest')
    GetStaticMapResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#GetStaticMapResponse', name: 'GetStaticMapResponse')
    GetStyleDescriptorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#GetStyleDescriptorRequest', name: 'GetStyleDescriptorRequest')
    GetStyleDescriptorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#GetStyleDescriptorResponse', name: 'GetStyleDescriptorResponse')
    GetTileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#GetTileRequest', name: 'GetTileRequest')
    GetTileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#GetTileResponse', name: 'GetTileResponse')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LabelSize = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#LabelSize', name: 'LabelSize', traits: {"smithy.api#enum" => [{"name" => "SMALL", "value" => "Small"}, {"name" => "LARGE", "value" => "Large"}]})
    LanguageTag = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#LanguageTag', name: 'LanguageTag', traits: {"smithy.api#length" => {"min" => 2, "max" => 35}})
    MapFeatureMode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#MapFeatureMode', name: 'MapFeatureMode', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "Enabled"}, {"name" => "DISABLED", "value" => "Disabled"}]})
    MapStyle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#MapStyle', name: 'MapStyle', traits: {"smithy.api#enum" => [{"name" => "STANDARD", "value" => "Standard"}, {"name" => "MONOCHROME", "value" => "Monochrome"}, {"name" => "HYBRID", "value" => "Hybrid"}, {"name" => "SATELLITE", "value" => "Satellite"}]})
    PositionListString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#PositionListString', name: 'PositionListString', traits: {"smithy.api#length" => {"min" => 7}, "smithy.api#pattern" => "^(-?\\d{1,3}(\\.\\d{1,14})?,-?\\d{1,2}(\\.\\d{1,14})?)(,(-?\\d{1,3}(\\.\\d{1,14})?,-?\\d{1,2}(\\.\\d{1,14})?))*$", "smithy.api#sensitive" => {}})
    PositionString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#PositionString', name: 'PositionString', traits: {"smithy.api#length" => {"min" => 3, "max" => 36}, "smithy.api#pattern" => "^-?\\d{1,3}(\\.\\d{1,14})?,-?\\d{1,2}(\\.\\d{1,14})?$", "smithy.api#sensitive" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ScaleBarUnit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#ScaleBarUnit', name: 'ScaleBarUnit', traits: {"smithy.api#enum" => [{"name" => "KILOMETERS", "value" => "Kilometers"}, {"name" => "KILOMETERS_MILES", "value" => "KilometersMiles"}, {"name" => "MILES", "value" => "Miles"}, {"name" => "MILES_KILOMETERS", "value" => "MilesKilometers"}]})
    SensitiveFloat = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.geomaps#SensitiveFloat', name: 'SensitiveFloat', traits: {"smithy.api#sensitive" => {}})
    SensitiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.geomaps#SensitiveInteger', name: 'SensitiveInteger', traits: {"smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    StaticMapStyle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#StaticMapStyle', name: 'StaticMapStyle', traits: {"smithy.api#enum" => [{"name" => "SATELLITE", "value" => "Satellite"}, {"name" => "STANDARD", "value" => "Standard"}]})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    Tileset = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#Tileset', name: 'Tileset', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-.\\w]+$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.geomaps#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.geomaps#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"name" => "UNKNOWN_OPERATION", "value" => "UnknownOperation", "documentation" => "No such operation is supported."}, {"name" => "MISSING", "value" => "Missing", "documentation" => "The required input is missing."}, {"name" => "CANNOT_PARSE", "value" => "CannotParse", "documentation" => "    The input cannot be parsed. For example a required JSON document, ARN identifier,\n    date value, or numeric field cannot be parsed.\n"}, {"name" => "FIELD_VALIDATION_FAILED", "value" => "FieldValidationFailed", "documentation" => "    The input is present and parsable, but it is otherwise invalid. For example, a\n    required numeric argument is outside the allowed range.\n"}, {"name" => "OTHER", "value" => "Other", "documentation" => "The input is invalid but no more specific reason is applicable."}, {"name" => "UNKNOWN_FIELD", "value" => "UnknownField", "documentation" => "No such field is supported."}]})
    Variant = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.geomaps#Variant', name: 'Variant', traits: {"smithy.api#enum" => [{"name" => "DEFAULT", "value" => "Default"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    GetGlyphsRequest.add_member(:font_stack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'FontStack', traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"max" => 1000}, "smithy.api#required" => {}}))
    GetGlyphsRequest.add_member(:font_unicode_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'FontUnicodeRange', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^[0-9]+-[0-9]+\\.pbf$", "smithy.api#required" => {}}))
    GetGlyphsRequest.type = Types::GetGlyphsRequest
    GetGlyphsResponse.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'Blob', traits: {"smithy.api#httpPayload" => {}}))
    GetGlyphsResponse.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetGlyphsResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CacheControl', traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetGlyphsResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ETag', traits: {"smithy.api#httpHeader" => "ETag"}))
    GetGlyphsResponse[:http_payload] = :blob
    GetGlyphsResponse[:http_payload_member] = GetGlyphsResponse.member(:blob)
    GetGlyphsResponse.type = Types::GetGlyphsResponse
    GetSpritesRequest.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'FileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^sprites(@2x)?\\.(png|json)$", "smithy.api#required" => {}}))
    GetSpritesRequest.add_member(:style, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapStyle, location_name: 'Style', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpritesRequest.add_member(:color_scheme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColorScheme, location_name: 'ColorScheme', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpritesRequest.add_member(:variant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variant, location_name: 'Variant', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpritesRequest.type = Types::GetSpritesRequest
    GetSpritesResponse.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'Blob', traits: {"smithy.api#httpPayload" => {}}))
    GetSpritesResponse.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetSpritesResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CacheControl', traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetSpritesResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ETag', traits: {"smithy.api#httpHeader" => "ETag"}))
    GetSpritesResponse[:http_payload] = :blob
    GetSpritesResponse[:http_payload_member] = GetSpritesResponse.member(:blob)
    GetSpritesResponse.type = Types::GetSpritesResponse
    GetStaticMapRequest.add_member(:bounding_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionListString, location_name: 'BoundingBox', traits: {"smithy.api#httpQuery" => "bounding-box"}))
    GetStaticMapRequest.add_member(:bounded_positions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionListString, location_name: 'BoundedPositions', traits: {"smithy.api#httpQuery" => "bounded-positions"}))
    GetStaticMapRequest.add_member(:center, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionString, location_name: 'Center', traits: {"smithy.api#httpQuery" => "center"}))
    GetStaticMapRequest.add_member(:color_scheme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColorScheme, location_name: 'ColorScheme', traits: {"smithy.api#httpQuery" => "color-scheme"}))
    GetStaticMapRequest.add_member(:compact_overlay, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompactOverlay, location_name: 'CompactOverlay', traits: {"smithy.api#httpQuery" => "compact-overlay"}))
    GetStaticMapRequest.add_member(:crop_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'CropLabels', traits: {"smithy.api#httpQuery" => "crop-labels"}))
    GetStaticMapRequest.add_member(:geo_json_overlay, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoJsonOverlay, location_name: 'GeoJsonOverlay', traits: {"smithy.api#httpQuery" => "geojson-overlay"}))
    GetStaticMapRequest.add_member(:height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveInteger, location_name: 'Height', traits: {"smithy.api#httpQuery" => "height", "smithy.api#range" => {"min" => 64, "max" => 1400}, "smithy.api#required" => {}}))
    GetStaticMapRequest.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    GetStaticMapRequest.add_member(:label_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelSize, location_name: 'LabelSize', traits: {"smithy.api#httpQuery" => "label-size"}))
    GetStaticMapRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageTag, location_name: 'Language', traits: {"smithy.api#httpQuery" => "lang"}))
    GetStaticMapRequest.add_member(:padding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveInteger, location_name: 'Padding', traits: {"smithy.api#httpQuery" => "padding"}))
    GetStaticMapRequest.add_member(:political_view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'PoliticalView', traits: {"smithy.api#httpQuery" => "political-view"}))
    GetStaticMapRequest.add_member(:points_of_interests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapFeatureMode, location_name: 'PointsOfInterests', traits: {"smithy.api#httpQuery" => "pois"}))
    GetStaticMapRequest.add_member(:radius, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceMeters, location_name: 'Radius', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "radius"}))
    GetStaticMapRequest.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'FileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^map(@2x)?$", "smithy.api#required" => {}}))
    GetStaticMapRequest.add_member(:scale_bar_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleBarUnit, location_name: 'ScaleBarUnit', traits: {"smithy.api#httpQuery" => "scale-unit"}))
    GetStaticMapRequest.add_member(:style, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StaticMapStyle, location_name: 'Style', traits: {"smithy.api#httpQuery" => "style"}))
    GetStaticMapRequest.add_member(:width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveInteger, location_name: 'Width', traits: {"smithy.api#httpQuery" => "width", "smithy.api#range" => {"min" => 64, "max" => 1400}, "smithy.api#required" => {}}))
    GetStaticMapRequest.add_member(:zoom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveFloat, location_name: 'Zoom', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "zoom", "smithy.api#range" => {"min" => 0, "max" => 20}}))
    GetStaticMapRequest.type = Types::GetStaticMapRequest
    GetStaticMapResponse.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'Blob', traits: {"smithy.api#httpPayload" => {}}))
    GetStaticMapResponse.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetStaticMapResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CacheControl', traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetStaticMapResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ETag', traits: {"smithy.api#httpHeader" => "ETag"}))
    GetStaticMapResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PricingBucket', traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    GetStaticMapResponse[:http_payload] = :blob
    GetStaticMapResponse[:http_payload_member] = GetStaticMapResponse.member(:blob)
    GetStaticMapResponse.type = Types::GetStaticMapResponse
    GetStyleDescriptorRequest.add_member(:style, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapStyle, location_name: 'Style', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStyleDescriptorRequest.add_member(:color_scheme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColorScheme, location_name: 'ColorScheme', traits: {"smithy.api#httpQuery" => "color-scheme"}))
    GetStyleDescriptorRequest.add_member(:political_view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'PoliticalView', traits: {"smithy.api#httpQuery" => "political-view"}))
    GetStyleDescriptorRequest.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    GetStyleDescriptorRequest.type = Types::GetStyleDescriptorRequest
    GetStyleDescriptorResponse.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'Blob', traits: {"smithy.api#httpPayload" => {}}))
    GetStyleDescriptorResponse.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetStyleDescriptorResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CacheControl', traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetStyleDescriptorResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ETag', traits: {"smithy.api#httpHeader" => "ETag"}))
    GetStyleDescriptorResponse[:http_payload] = :blob
    GetStyleDescriptorResponse[:http_payload_member] = GetStyleDescriptorResponse.member(:blob)
    GetStyleDescriptorResponse.type = Types::GetStyleDescriptorResponse
    GetTileRequest.add_member(:tileset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tileset, location_name: 'Tileset', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTileRequest.add_member(:z, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Z', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "\\d+", "smithy.api#required" => {}}))
    GetTileRequest.add_member(:x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'X', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "\\d+", "smithy.api#required" => {}}))
    GetTileRequest.add_member(:y, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Y', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "\\d+", "smithy.api#required" => {}}))
    GetTileRequest.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    GetTileRequest.type = Types::GetTileRequest
    GetTileResponse.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'Blob', traits: {"smithy.api#httpPayload" => {}}))
    GetTileResponse.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetTileResponse.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CacheControl', traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetTileResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ETag', traits: {"smithy.api#httpHeader" => "ETag"}))
    GetTileResponse.add_member(:pricing_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PricingBucket', traits: {"smithy.api#httpHeader" => "x-amz-geo-pricing-bucket", "smithy.api#required" => {}}))
    GetTileResponse[:http_payload] = :blob
    GetTileResponse[:http_payload_member] = GetTileResponse.member(:blob)
    GetTileResponse.type = Types::GetTileResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#jsonName" => "reason", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'FieldList', traits: {"smithy.api#jsonName" => "fieldList", "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    MapsService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.geomaps#MapsService"
      service.name = "MapsService"
      service.version = "2020-11-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Geo Maps", "arnNamespace" => "geo-maps", "cloudTrailEventSource" => "geo-maps.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "geo-maps"}, "aws.endpoints#standardRegionalEndpoints" => {"partitionSpecialCases" => {"aws" => [{"endpoint" => "https://maps.geo.{region}.{dnsSuffix}/v2"}, {"endpoint" => "https://maps.geo-fips.{region}.{dualStackDnsSuffix}/v2", "fips" => true, "dualStack" => true}, {"endpoint" => "https://maps.geo-fips.{region}.{dnsSuffix}/v2", "fips" => true, "dualStack" => false}, {"endpoint" => "https://maps.geo.{region}.{dualStackDnsSuffix}/v2", "fips" => false, "dualStack" => true}], "aws-us-gov" => [{"endpoint" => "https://maps.geo.{region}.{dnsSuffix}/v2"}, {"endpoint" => "https://maps.geo-fips.{region}.{dualStackDnsSuffix}/v2", "fips" => true, "dualStack" => true}, {"endpoint" => "https://maps.geo-fips.{region}.{dnsSuffix}/v2", "fips" => true, "dualStack" => false}, {"endpoint" => "https://maps.geo.{region}.{dualStackDnsSuffix}/v2", "fips" => false, "dualStack" => true}]}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["x-amz-content-sha256", "x-amz-user-agent", "content-type"], "additionalExposedHeaders" => ["age", "date", "x-amz-apigw-id", "x-amz-cf-id", "x-amz-cf-pop", "x-amzn-requestid", "x-amzn-trace-id", "x-cache"]}, "smithy.api#title" => "Amazon Location Service Maps V2"}
      service.add_operation(:get_glyphs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geomaps#GetGlyphs"
        operation.name = "GetGlyphs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGlyphsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGlyphsResponse)
        operation.traits = {"smithy.api#http" => {"uri" => "/glyphs/{FontStack}/{FontUnicodeRange}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetGlyphsSuccess", "params" => {"FontStack" => "Amazon Ember Regular", "FontUnicodeRange" => "0-255.pbf"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_sprites, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geomaps#GetSprites"
        operation.name = "GetSprites"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpritesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpritesResponse)
        operation.traits = {"smithy.api#http" => {"uri" => "/styles/{Style}/{ColorScheme}/{Variant}/sprites/{FileName}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetSpritesSuccess", "params" => {"Style" => "Standard", "ColorScheme" => "Light", "Variant" => "Default", "FileName" => "sprites.json"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_static_map, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geomaps#GetStaticMap"
        operation.name = "GetStaticMap"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStaticMapRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStaticMapResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/static/{FileName}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetStaticMapSuccess", "params" => {"FileName" => "map", "Width" => 800, "Height" => 900, "Center" => "-123.144847,49.303609", "Style" => "Satellite", "Zoom" => 10.0}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_style_descriptor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geomaps#GetStyleDescriptor"
        operation.name = "GetStyleDescriptor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStyleDescriptorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStyleDescriptorResponse)
        operation.traits = {"smithy.api#http" => {"uri" => "/styles/{Style}/descriptor", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetStyleDescriptorSuccess", "params" => {"Style" => "Standard"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_tile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.geomaps#GetTile"
        operation.name = "GetTile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/tiles/{Tileset}/{Z}/{X}/{Y}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTileSuccess", "params" => {"Tileset" => "vector.basemap", "X" => "5190", "Y" => "11218", "Z" => "15"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
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
