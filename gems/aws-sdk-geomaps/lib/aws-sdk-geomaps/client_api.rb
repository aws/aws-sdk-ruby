# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GeoMaps
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ApiKey = Shapes::StringShape.new(name: 'ApiKey')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ColorScheme = Shapes::StringShape.new(name: 'ColorScheme')
    CompactOverlay = Shapes::StringShape.new(name: 'CompactOverlay')
    ContourDensity = Shapes::StringShape.new(name: 'ContourDensity')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    DistanceMeters = Shapes::IntegerShape.new(name: 'DistanceMeters')
    GeoJsonOverlay = Shapes::StringShape.new(name: 'GeoJsonOverlay')
    GetGlyphsRequest = Shapes::StructureShape.new(name: 'GetGlyphsRequest')
    GetGlyphsRequestFontStackString = Shapes::StringShape.new(name: 'GetGlyphsRequestFontStackString')
    GetGlyphsRequestFontUnicodeRangeString = Shapes::StringShape.new(name: 'GetGlyphsRequestFontUnicodeRangeString')
    GetGlyphsResponse = Shapes::StructureShape.new(name: 'GetGlyphsResponse')
    GetSpritesRequest = Shapes::StructureShape.new(name: 'GetSpritesRequest')
    GetSpritesRequestFileNameString = Shapes::StringShape.new(name: 'GetSpritesRequestFileNameString')
    GetSpritesResponse = Shapes::StructureShape.new(name: 'GetSpritesResponse')
    GetStaticMapRequest = Shapes::StructureShape.new(name: 'GetStaticMapRequest')
    GetStaticMapRequestFileNameString = Shapes::StringShape.new(name: 'GetStaticMapRequestFileNameString')
    GetStaticMapRequestHeightInteger = Shapes::IntegerShape.new(name: 'GetStaticMapRequestHeightInteger')
    GetStaticMapRequestWidthInteger = Shapes::IntegerShape.new(name: 'GetStaticMapRequestWidthInteger')
    GetStaticMapRequestZoomFloat = Shapes::FloatShape.new(name: 'GetStaticMapRequestZoomFloat')
    GetStaticMapResponse = Shapes::StructureShape.new(name: 'GetStaticMapResponse')
    GetStyleDescriptorRequest = Shapes::StructureShape.new(name: 'GetStyleDescriptorRequest')
    GetStyleDescriptorResponse = Shapes::StructureShape.new(name: 'GetStyleDescriptorResponse')
    GetTileRequest = Shapes::StructureShape.new(name: 'GetTileRequest')
    GetTileRequestXString = Shapes::StringShape.new(name: 'GetTileRequestXString')
    GetTileRequestYString = Shapes::StringShape.new(name: 'GetTileRequestYString')
    GetTileRequestZString = Shapes::StringShape.new(name: 'GetTileRequestZString')
    GetTileResponse = Shapes::StructureShape.new(name: 'GetTileResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LabelSize = Shapes::StringShape.new(name: 'LabelSize')
    LanguageTag = Shapes::StringShape.new(name: 'LanguageTag')
    MapFeatureMode = Shapes::StringShape.new(name: 'MapFeatureMode')
    MapStyle = Shapes::StringShape.new(name: 'MapStyle')
    PositionListString = Shapes::StringShape.new(name: 'PositionListString')
    PositionString = Shapes::StringShape.new(name: 'PositionString')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ScaleBarUnit = Shapes::StringShape.new(name: 'ScaleBarUnit')
    SensitiveInteger = Shapes::IntegerShape.new(name: 'SensitiveInteger')
    StaticMapStyle = Shapes::StringShape.new(name: 'StaticMapStyle')
    String = Shapes::StringShape.new(name: 'String')
    Terrain = Shapes::StringShape.new(name: 'Terrain')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Tileset = Shapes::StringShape.new(name: 'Tileset')
    Traffic = Shapes::StringShape.new(name: 'Traffic')
    TravelMode = Shapes::StringShape.new(name: 'TravelMode')
    TravelModeList = Shapes::ListShape.new(name: 'TravelModeList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Variant = Shapes::StringShape.new(name: 'Variant')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    GetGlyphsRequest.add_member(:font_stack, Shapes::ShapeRef.new(shape: GetGlyphsRequestFontStackString, required: true, location: "uri", location_name: "FontStack"))
    GetGlyphsRequest.add_member(:font_unicode_range, Shapes::ShapeRef.new(shape: GetGlyphsRequestFontUnicodeRangeString, required: true, location: "uri", location_name: "FontUnicodeRange"))
    GetGlyphsRequest.struct_class = Types::GetGlyphsRequest

    GetGlyphsResponse.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    GetGlyphsResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetGlyphsResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    GetGlyphsResponse.add_member(:etag, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "ETag"))
    GetGlyphsResponse.struct_class = Types::GetGlyphsResponse
    GetGlyphsResponse[:payload] = :blob
    GetGlyphsResponse[:payload_member] = GetGlyphsResponse.member(:blob)

    GetSpritesRequest.add_member(:file_name, Shapes::ShapeRef.new(shape: GetSpritesRequestFileNameString, required: true, location: "uri", location_name: "FileName"))
    GetSpritesRequest.add_member(:style, Shapes::ShapeRef.new(shape: MapStyle, required: true, location: "uri", location_name: "Style"))
    GetSpritesRequest.add_member(:color_scheme, Shapes::ShapeRef.new(shape: ColorScheme, required: true, location: "uri", location_name: "ColorScheme"))
    GetSpritesRequest.add_member(:variant, Shapes::ShapeRef.new(shape: Variant, required: true, location: "uri", location_name: "Variant"))
    GetSpritesRequest.struct_class = Types::GetSpritesRequest

    GetSpritesResponse.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    GetSpritesResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetSpritesResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    GetSpritesResponse.add_member(:etag, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "ETag"))
    GetSpritesResponse.struct_class = Types::GetSpritesResponse
    GetSpritesResponse[:payload] = :blob
    GetSpritesResponse[:payload_member] = GetSpritesResponse.member(:blob)

    GetStaticMapRequest.add_member(:bounding_box, Shapes::ShapeRef.new(shape: PositionListString, location: "querystring", location_name: "bounding-box"))
    GetStaticMapRequest.add_member(:bounded_positions, Shapes::ShapeRef.new(shape: PositionListString, location: "querystring", location_name: "bounded-positions"))
    GetStaticMapRequest.add_member(:center, Shapes::ShapeRef.new(shape: PositionString, location: "querystring", location_name: "center"))
    GetStaticMapRequest.add_member(:color_scheme, Shapes::ShapeRef.new(shape: ColorScheme, location: "querystring", location_name: "color-scheme"))
    GetStaticMapRequest.add_member(:compact_overlay, Shapes::ShapeRef.new(shape: CompactOverlay, location: "querystring", location_name: "compact-overlay"))
    GetStaticMapRequest.add_member(:crop_labels, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "crop-labels"))
    GetStaticMapRequest.add_member(:geo_json_overlay, Shapes::ShapeRef.new(shape: GeoJsonOverlay, location: "querystring", location_name: "geojson-overlay"))
    GetStaticMapRequest.add_member(:height, Shapes::ShapeRef.new(shape: GetStaticMapRequestHeightInteger, required: true, location: "querystring", location_name: "height"))
    GetStaticMapRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    GetStaticMapRequest.add_member(:label_size, Shapes::ShapeRef.new(shape: LabelSize, location: "querystring", location_name: "label-size"))
    GetStaticMapRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location: "querystring", location_name: "lang"))
    GetStaticMapRequest.add_member(:padding, Shapes::ShapeRef.new(shape: SensitiveInteger, location: "querystring", location_name: "padding"))
    GetStaticMapRequest.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode, location: "querystring", location_name: "political-view"))
    GetStaticMapRequest.add_member(:points_of_interests, Shapes::ShapeRef.new(shape: MapFeatureMode, location: "querystring", location_name: "pois"))
    GetStaticMapRequest.add_member(:radius, Shapes::ShapeRef.new(shape: DistanceMeters, location: "querystring", location_name: "radius", metadata: {"box" => true}))
    GetStaticMapRequest.add_member(:file_name, Shapes::ShapeRef.new(shape: GetStaticMapRequestFileNameString, required: true, location: "uri", location_name: "FileName"))
    GetStaticMapRequest.add_member(:scale_bar_unit, Shapes::ShapeRef.new(shape: ScaleBarUnit, location: "querystring", location_name: "scale-unit"))
    GetStaticMapRequest.add_member(:style, Shapes::ShapeRef.new(shape: StaticMapStyle, location: "querystring", location_name: "style"))
    GetStaticMapRequest.add_member(:width, Shapes::ShapeRef.new(shape: GetStaticMapRequestWidthInteger, required: true, location: "querystring", location_name: "width"))
    GetStaticMapRequest.add_member(:zoom, Shapes::ShapeRef.new(shape: GetStaticMapRequestZoomFloat, location: "querystring", location_name: "zoom"))
    GetStaticMapRequest.struct_class = Types::GetStaticMapRequest

    GetStaticMapResponse.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    GetStaticMapResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetStaticMapResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    GetStaticMapResponse.add_member(:etag, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "ETag"))
    GetStaticMapResponse.add_member(:pricing_bucket, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "x-amz-geo-pricing-bucket"))
    GetStaticMapResponse.struct_class = Types::GetStaticMapResponse
    GetStaticMapResponse[:payload] = :blob
    GetStaticMapResponse[:payload_member] = GetStaticMapResponse.member(:blob)

    GetStyleDescriptorRequest.add_member(:style, Shapes::ShapeRef.new(shape: MapStyle, required: true, location: "uri", location_name: "Style"))
    GetStyleDescriptorRequest.add_member(:color_scheme, Shapes::ShapeRef.new(shape: ColorScheme, location: "querystring", location_name: "color-scheme"))
    GetStyleDescriptorRequest.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode, location: "querystring", location_name: "political-view"))
    GetStyleDescriptorRequest.add_member(:terrain, Shapes::ShapeRef.new(shape: Terrain, location: "querystring", location_name: "terrain"))
    GetStyleDescriptorRequest.add_member(:contour_density, Shapes::ShapeRef.new(shape: ContourDensity, location: "querystring", location_name: "contour-density"))
    GetStyleDescriptorRequest.add_member(:traffic, Shapes::ShapeRef.new(shape: Traffic, location: "querystring", location_name: "traffic"))
    GetStyleDescriptorRequest.add_member(:travel_modes, Shapes::ShapeRef.new(shape: TravelModeList, location: "querystring", location_name: "travel-modes"))
    GetStyleDescriptorRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    GetStyleDescriptorRequest.struct_class = Types::GetStyleDescriptorRequest

    GetStyleDescriptorResponse.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    GetStyleDescriptorResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetStyleDescriptorResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    GetStyleDescriptorResponse.add_member(:etag, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "ETag"))
    GetStyleDescriptorResponse.struct_class = Types::GetStyleDescriptorResponse
    GetStyleDescriptorResponse[:payload] = :blob
    GetStyleDescriptorResponse[:payload_member] = GetStyleDescriptorResponse.member(:blob)

    GetTileRequest.add_member(:tileset, Shapes::ShapeRef.new(shape: Tileset, required: true, location: "uri", location_name: "Tileset"))
    GetTileRequest.add_member(:z, Shapes::ShapeRef.new(shape: GetTileRequestZString, required: true, location: "uri", location_name: "Z"))
    GetTileRequest.add_member(:x, Shapes::ShapeRef.new(shape: GetTileRequestXString, required: true, location: "uri", location_name: "X"))
    GetTileRequest.add_member(:y, Shapes::ShapeRef.new(shape: GetTileRequestYString, required: true, location: "uri", location_name: "Y"))
    GetTileRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    GetTileRequest.struct_class = Types::GetTileRequest

    GetTileResponse.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    GetTileResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetTileResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    GetTileResponse.add_member(:etag, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "ETag"))
    GetTileResponse.add_member(:pricing_bucket, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "x-amz-geo-pricing-bucket"))
    GetTileResponse.struct_class = Types::GetTileResponse
    GetTileResponse[:payload] = :blob
    GetTileResponse[:payload_member] = GetTileResponse.member(:blob)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TravelModeList.member = Shapes::ShapeRef.new(shape: TravelMode)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, required: true, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-11-19"

      api.metadata = {
        "apiVersion" => "2020-11-19",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "geo-maps",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Location Service Maps V2",
        "serviceId" => "Geo Maps",
        "signatureVersion" => "v4",
        "signingName" => "geo-maps",
        "uid" => "geo-maps-2020-11-19",
      }

      api.add_operation(:get_glyphs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGlyphs"
        o.http_method = "GET"
        o.http_request_uri = "/glyphs/{FontStack}/{FontUnicodeRange}"
        o.input = Shapes::ShapeRef.new(shape: GetGlyphsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGlyphsResponse)
      end)

      api.add_operation(:get_sprites, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSprites"
        o.http_method = "GET"
        o.http_request_uri = "/styles/{Style}/{ColorScheme}/{Variant}/sprites/{FileName}"
        o.input = Shapes::ShapeRef.new(shape: GetSpritesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSpritesResponse)
      end)

      api.add_operation(:get_static_map, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStaticMap"
        o.http_method = "GET"
        o.http_request_uri = "/static/{FileName}"
        o.input = Shapes::ShapeRef.new(shape: GetStaticMapRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStaticMapResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_style_descriptor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStyleDescriptor"
        o.http_method = "GET"
        o.http_request_uri = "/styles/{Style}/descriptor"
        o.input = Shapes::ShapeRef.new(shape: GetStyleDescriptorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStyleDescriptorResponse)
      end)

      api.add_operation(:get_tile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTile"
        o.http_method = "GET"
        o.http_request_uri = "/tiles/{Tileset}/{Z}/{X}/{Y}"
        o.input = Shapes::ShapeRef.new(shape: GetTileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
