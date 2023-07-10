# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LocationService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ApiKey = Shapes::StringShape.new(name: 'ApiKey')
    ApiKeyAction = Shapes::StringShape.new(name: 'ApiKeyAction')
    ApiKeyFilter = Shapes::StructureShape.new(name: 'ApiKeyFilter')
    ApiKeyRestrictions = Shapes::StructureShape.new(name: 'ApiKeyRestrictions')
    ApiKeyRestrictionsAllowActionsList = Shapes::ListShape.new(name: 'ApiKeyRestrictionsAllowActionsList')
    ApiKeyRestrictionsAllowReferersList = Shapes::ListShape.new(name: 'ApiKeyRestrictionsAllowReferersList')
    ApiKeyRestrictionsAllowResourcesList = Shapes::ListShape.new(name: 'ApiKeyRestrictionsAllowResourcesList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AssociateTrackerConsumerRequest = Shapes::StructureShape.new(name: 'AssociateTrackerConsumerRequest')
    AssociateTrackerConsumerResponse = Shapes::StructureShape.new(name: 'AssociateTrackerConsumerResponse')
    BatchDeleteDevicePositionHistoryError = Shapes::StructureShape.new(name: 'BatchDeleteDevicePositionHistoryError')
    BatchDeleteDevicePositionHistoryErrorList = Shapes::ListShape.new(name: 'BatchDeleteDevicePositionHistoryErrorList')
    BatchDeleteDevicePositionHistoryRequest = Shapes::StructureShape.new(name: 'BatchDeleteDevicePositionHistoryRequest')
    BatchDeleteDevicePositionHistoryRequestDeviceIdsList = Shapes::ListShape.new(name: 'BatchDeleteDevicePositionHistoryRequestDeviceIdsList')
    BatchDeleteDevicePositionHistoryResponse = Shapes::StructureShape.new(name: 'BatchDeleteDevicePositionHistoryResponse')
    BatchDeleteGeofenceError = Shapes::StructureShape.new(name: 'BatchDeleteGeofenceError')
    BatchDeleteGeofenceErrorList = Shapes::ListShape.new(name: 'BatchDeleteGeofenceErrorList')
    BatchDeleteGeofenceRequest = Shapes::StructureShape.new(name: 'BatchDeleteGeofenceRequest')
    BatchDeleteGeofenceRequestGeofenceIdsList = Shapes::ListShape.new(name: 'BatchDeleteGeofenceRequestGeofenceIdsList')
    BatchDeleteGeofenceResponse = Shapes::StructureShape.new(name: 'BatchDeleteGeofenceResponse')
    BatchEvaluateGeofencesError = Shapes::StructureShape.new(name: 'BatchEvaluateGeofencesError')
    BatchEvaluateGeofencesErrorList = Shapes::ListShape.new(name: 'BatchEvaluateGeofencesErrorList')
    BatchEvaluateGeofencesRequest = Shapes::StructureShape.new(name: 'BatchEvaluateGeofencesRequest')
    BatchEvaluateGeofencesRequestDevicePositionUpdatesList = Shapes::ListShape.new(name: 'BatchEvaluateGeofencesRequestDevicePositionUpdatesList')
    BatchEvaluateGeofencesResponse = Shapes::StructureShape.new(name: 'BatchEvaluateGeofencesResponse')
    BatchGetDevicePositionError = Shapes::StructureShape.new(name: 'BatchGetDevicePositionError')
    BatchGetDevicePositionErrorList = Shapes::ListShape.new(name: 'BatchGetDevicePositionErrorList')
    BatchGetDevicePositionRequest = Shapes::StructureShape.new(name: 'BatchGetDevicePositionRequest')
    BatchGetDevicePositionRequestDeviceIdsList = Shapes::ListShape.new(name: 'BatchGetDevicePositionRequestDeviceIdsList')
    BatchGetDevicePositionRequestTrackerNameString = Shapes::StringShape.new(name: 'BatchGetDevicePositionRequestTrackerNameString')
    BatchGetDevicePositionResponse = Shapes::StructureShape.new(name: 'BatchGetDevicePositionResponse')
    BatchItemError = Shapes::StructureShape.new(name: 'BatchItemError')
    BatchItemErrorCode = Shapes::StringShape.new(name: 'BatchItemErrorCode')
    BatchPutGeofenceError = Shapes::StructureShape.new(name: 'BatchPutGeofenceError')
    BatchPutGeofenceErrorList = Shapes::ListShape.new(name: 'BatchPutGeofenceErrorList')
    BatchPutGeofenceRequest = Shapes::StructureShape.new(name: 'BatchPutGeofenceRequest')
    BatchPutGeofenceRequestEntriesList = Shapes::ListShape.new(name: 'BatchPutGeofenceRequestEntriesList')
    BatchPutGeofenceRequestEntry = Shapes::StructureShape.new(name: 'BatchPutGeofenceRequestEntry')
    BatchPutGeofenceResponse = Shapes::StructureShape.new(name: 'BatchPutGeofenceResponse')
    BatchPutGeofenceSuccess = Shapes::StructureShape.new(name: 'BatchPutGeofenceSuccess')
    BatchPutGeofenceSuccessList = Shapes::ListShape.new(name: 'BatchPutGeofenceSuccessList')
    BatchUpdateDevicePositionError = Shapes::StructureShape.new(name: 'BatchUpdateDevicePositionError')
    BatchUpdateDevicePositionErrorList = Shapes::ListShape.new(name: 'BatchUpdateDevicePositionErrorList')
    BatchUpdateDevicePositionRequest = Shapes::StructureShape.new(name: 'BatchUpdateDevicePositionRequest')
    BatchUpdateDevicePositionRequestUpdatesList = Shapes::ListShape.new(name: 'BatchUpdateDevicePositionRequestUpdatesList')
    BatchUpdateDevicePositionResponse = Shapes::StructureShape.new(name: 'BatchUpdateDevicePositionResponse')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoundingBox = Shapes::ListShape.new(name: 'BoundingBox')
    CalculateRouteCarModeOptions = Shapes::StructureShape.new(name: 'CalculateRouteCarModeOptions')
    CalculateRouteMatrixRequest = Shapes::StructureShape.new(name: 'CalculateRouteMatrixRequest')
    CalculateRouteMatrixRequestDeparturePositionsList = Shapes::ListShape.new(name: 'CalculateRouteMatrixRequestDeparturePositionsList')
    CalculateRouteMatrixRequestDestinationPositionsList = Shapes::ListShape.new(name: 'CalculateRouteMatrixRequestDestinationPositionsList')
    CalculateRouteMatrixResponse = Shapes::StructureShape.new(name: 'CalculateRouteMatrixResponse')
    CalculateRouteMatrixResponseSnappedDeparturePositionsList = Shapes::ListShape.new(name: 'CalculateRouteMatrixResponseSnappedDeparturePositionsList')
    CalculateRouteMatrixResponseSnappedDestinationPositionsList = Shapes::ListShape.new(name: 'CalculateRouteMatrixResponseSnappedDestinationPositionsList')
    CalculateRouteMatrixSummary = Shapes::StructureShape.new(name: 'CalculateRouteMatrixSummary')
    CalculateRouteMatrixSummaryErrorCountInteger = Shapes::IntegerShape.new(name: 'CalculateRouteMatrixSummaryErrorCountInteger')
    CalculateRouteMatrixSummaryRouteCountInteger = Shapes::IntegerShape.new(name: 'CalculateRouteMatrixSummaryRouteCountInteger')
    CalculateRouteRequest = Shapes::StructureShape.new(name: 'CalculateRouteRequest')
    CalculateRouteRequestWaypointPositionsList = Shapes::ListShape.new(name: 'CalculateRouteRequestWaypointPositionsList')
    CalculateRouteResponse = Shapes::StructureShape.new(name: 'CalculateRouteResponse')
    CalculateRouteSummary = Shapes::StructureShape.new(name: 'CalculateRouteSummary')
    CalculateRouteSummaryDistanceDouble = Shapes::FloatShape.new(name: 'CalculateRouteSummaryDistanceDouble')
    CalculateRouteSummaryDurationSecondsDouble = Shapes::FloatShape.new(name: 'CalculateRouteSummaryDurationSecondsDouble')
    CalculateRouteTruckModeOptions = Shapes::StructureShape.new(name: 'CalculateRouteTruckModeOptions')
    Circle = Shapes::StructureShape.new(name: 'Circle')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CountryCode3 = Shapes::StringShape.new(name: 'CountryCode3')
    CountryCode3OrEmpty = Shapes::StringShape.new(name: 'CountryCode3OrEmpty')
    CountryCodeList = Shapes::ListShape.new(name: 'CountryCodeList')
    CreateGeofenceCollectionRequest = Shapes::StructureShape.new(name: 'CreateGeofenceCollectionRequest')
    CreateGeofenceCollectionResponse = Shapes::StructureShape.new(name: 'CreateGeofenceCollectionResponse')
    CreateKeyRequest = Shapes::StructureShape.new(name: 'CreateKeyRequest')
    CreateKeyResponse = Shapes::StructureShape.new(name: 'CreateKeyResponse')
    CreateMapRequest = Shapes::StructureShape.new(name: 'CreateMapRequest')
    CreateMapResponse = Shapes::StructureShape.new(name: 'CreateMapResponse')
    CreatePlaceIndexRequest = Shapes::StructureShape.new(name: 'CreatePlaceIndexRequest')
    CreatePlaceIndexResponse = Shapes::StructureShape.new(name: 'CreatePlaceIndexResponse')
    CreateRouteCalculatorRequest = Shapes::StructureShape.new(name: 'CreateRouteCalculatorRequest')
    CreateRouteCalculatorResponse = Shapes::StructureShape.new(name: 'CreateRouteCalculatorResponse')
    CreateTrackerRequest = Shapes::StructureShape.new(name: 'CreateTrackerRequest')
    CreateTrackerResponse = Shapes::StructureShape.new(name: 'CreateTrackerResponse')
    DataSourceConfiguration = Shapes::StructureShape.new(name: 'DataSourceConfiguration')
    DeleteGeofenceCollectionRequest = Shapes::StructureShape.new(name: 'DeleteGeofenceCollectionRequest')
    DeleteGeofenceCollectionResponse = Shapes::StructureShape.new(name: 'DeleteGeofenceCollectionResponse')
    DeleteKeyRequest = Shapes::StructureShape.new(name: 'DeleteKeyRequest')
    DeleteKeyResponse = Shapes::StructureShape.new(name: 'DeleteKeyResponse')
    DeleteMapRequest = Shapes::StructureShape.new(name: 'DeleteMapRequest')
    DeleteMapResponse = Shapes::StructureShape.new(name: 'DeleteMapResponse')
    DeletePlaceIndexRequest = Shapes::StructureShape.new(name: 'DeletePlaceIndexRequest')
    DeletePlaceIndexResponse = Shapes::StructureShape.new(name: 'DeletePlaceIndexResponse')
    DeleteRouteCalculatorRequest = Shapes::StructureShape.new(name: 'DeleteRouteCalculatorRequest')
    DeleteRouteCalculatorResponse = Shapes::StructureShape.new(name: 'DeleteRouteCalculatorResponse')
    DeleteTrackerRequest = Shapes::StructureShape.new(name: 'DeleteTrackerRequest')
    DeleteTrackerResponse = Shapes::StructureShape.new(name: 'DeleteTrackerResponse')
    DescribeGeofenceCollectionRequest = Shapes::StructureShape.new(name: 'DescribeGeofenceCollectionRequest')
    DescribeGeofenceCollectionResponse = Shapes::StructureShape.new(name: 'DescribeGeofenceCollectionResponse')
    DescribeKeyRequest = Shapes::StructureShape.new(name: 'DescribeKeyRequest')
    DescribeKeyResponse = Shapes::StructureShape.new(name: 'DescribeKeyResponse')
    DescribeMapRequest = Shapes::StructureShape.new(name: 'DescribeMapRequest')
    DescribeMapResponse = Shapes::StructureShape.new(name: 'DescribeMapResponse')
    DescribePlaceIndexRequest = Shapes::StructureShape.new(name: 'DescribePlaceIndexRequest')
    DescribePlaceIndexResponse = Shapes::StructureShape.new(name: 'DescribePlaceIndexResponse')
    DescribeRouteCalculatorRequest = Shapes::StructureShape.new(name: 'DescribeRouteCalculatorRequest')
    DescribeRouteCalculatorResponse = Shapes::StructureShape.new(name: 'DescribeRouteCalculatorResponse')
    DescribeTrackerRequest = Shapes::StructureShape.new(name: 'DescribeTrackerRequest')
    DescribeTrackerResponse = Shapes::StructureShape.new(name: 'DescribeTrackerResponse')
    DevicePosition = Shapes::StructureShape.new(name: 'DevicePosition')
    DevicePositionList = Shapes::ListShape.new(name: 'DevicePositionList')
    DevicePositionUpdate = Shapes::StructureShape.new(name: 'DevicePositionUpdate')
    DimensionUnit = Shapes::StringShape.new(name: 'DimensionUnit')
    DisassociateTrackerConsumerRequest = Shapes::StructureShape.new(name: 'DisassociateTrackerConsumerRequest')
    DisassociateTrackerConsumerResponse = Shapes::StructureShape.new(name: 'DisassociateTrackerConsumerResponse')
    DistanceUnit = Shapes::StringShape.new(name: 'DistanceUnit')
    Double = Shapes::FloatShape.new(name: 'Double')
    FilterPlaceCategoryList = Shapes::ListShape.new(name: 'FilterPlaceCategoryList')
    GeoArn = Shapes::StringShape.new(name: 'GeoArn')
    GeofenceGeometry = Shapes::StructureShape.new(name: 'GeofenceGeometry')
    GetDevicePositionHistoryRequest = Shapes::StructureShape.new(name: 'GetDevicePositionHistoryRequest')
    GetDevicePositionHistoryRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetDevicePositionHistoryRequestMaxResultsInteger')
    GetDevicePositionHistoryResponse = Shapes::StructureShape.new(name: 'GetDevicePositionHistoryResponse')
    GetDevicePositionRequest = Shapes::StructureShape.new(name: 'GetDevicePositionRequest')
    GetDevicePositionResponse = Shapes::StructureShape.new(name: 'GetDevicePositionResponse')
    GetGeofenceRequest = Shapes::StructureShape.new(name: 'GetGeofenceRequest')
    GetGeofenceResponse = Shapes::StructureShape.new(name: 'GetGeofenceResponse')
    GetMapGlyphsRequest = Shapes::StructureShape.new(name: 'GetMapGlyphsRequest')
    GetMapGlyphsRequestFontUnicodeRangeString = Shapes::StringShape.new(name: 'GetMapGlyphsRequestFontUnicodeRangeString')
    GetMapGlyphsResponse = Shapes::StructureShape.new(name: 'GetMapGlyphsResponse')
    GetMapSpritesRequest = Shapes::StructureShape.new(name: 'GetMapSpritesRequest')
    GetMapSpritesRequestFileNameString = Shapes::StringShape.new(name: 'GetMapSpritesRequestFileNameString')
    GetMapSpritesResponse = Shapes::StructureShape.new(name: 'GetMapSpritesResponse')
    GetMapStyleDescriptorRequest = Shapes::StructureShape.new(name: 'GetMapStyleDescriptorRequest')
    GetMapStyleDescriptorResponse = Shapes::StructureShape.new(name: 'GetMapStyleDescriptorResponse')
    GetMapTileRequest = Shapes::StructureShape.new(name: 'GetMapTileRequest')
    GetMapTileRequestXString = Shapes::StringShape.new(name: 'GetMapTileRequestXString')
    GetMapTileRequestYString = Shapes::StringShape.new(name: 'GetMapTileRequestYString')
    GetMapTileRequestZString = Shapes::StringShape.new(name: 'GetMapTileRequestZString')
    GetMapTileResponse = Shapes::StructureShape.new(name: 'GetMapTileResponse')
    GetPlaceRequest = Shapes::StructureShape.new(name: 'GetPlaceRequest')
    GetPlaceResponse = Shapes::StructureShape.new(name: 'GetPlaceResponse')
    Id = Shapes::StringShape.new(name: 'Id')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntendedUse = Shapes::StringShape.new(name: 'IntendedUse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LanguageTag = Shapes::StringShape.new(name: 'LanguageTag')
    Leg = Shapes::StructureShape.new(name: 'Leg')
    LegDistanceDouble = Shapes::FloatShape.new(name: 'LegDistanceDouble')
    LegDurationSecondsDouble = Shapes::FloatShape.new(name: 'LegDurationSecondsDouble')
    LegGeometry = Shapes::StructureShape.new(name: 'LegGeometry')
    LegList = Shapes::ListShape.new(name: 'LegList')
    LineString = Shapes::ListShape.new(name: 'LineString')
    LinearRing = Shapes::ListShape.new(name: 'LinearRing')
    LinearRings = Shapes::ListShape.new(name: 'LinearRings')
    ListDevicePositionsRequest = Shapes::StructureShape.new(name: 'ListDevicePositionsRequest')
    ListDevicePositionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDevicePositionsRequestMaxResultsInteger')
    ListDevicePositionsResponse = Shapes::StructureShape.new(name: 'ListDevicePositionsResponse')
    ListDevicePositionsResponseEntry = Shapes::StructureShape.new(name: 'ListDevicePositionsResponseEntry')
    ListDevicePositionsResponseEntryList = Shapes::ListShape.new(name: 'ListDevicePositionsResponseEntryList')
    ListGeofenceCollectionsRequest = Shapes::StructureShape.new(name: 'ListGeofenceCollectionsRequest')
    ListGeofenceCollectionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListGeofenceCollectionsRequestMaxResultsInteger')
    ListGeofenceCollectionsResponse = Shapes::StructureShape.new(name: 'ListGeofenceCollectionsResponse')
    ListGeofenceCollectionsResponseEntry = Shapes::StructureShape.new(name: 'ListGeofenceCollectionsResponseEntry')
    ListGeofenceCollectionsResponseEntryList = Shapes::ListShape.new(name: 'ListGeofenceCollectionsResponseEntryList')
    ListGeofenceResponseEntry = Shapes::StructureShape.new(name: 'ListGeofenceResponseEntry')
    ListGeofenceResponseEntryList = Shapes::ListShape.new(name: 'ListGeofenceResponseEntryList')
    ListGeofencesRequest = Shapes::StructureShape.new(name: 'ListGeofencesRequest')
    ListGeofencesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListGeofencesRequestMaxResultsInteger')
    ListGeofencesResponse = Shapes::StructureShape.new(name: 'ListGeofencesResponse')
    ListKeysRequest = Shapes::StructureShape.new(name: 'ListKeysRequest')
    ListKeysRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListKeysRequestMaxResultsInteger')
    ListKeysResponse = Shapes::StructureShape.new(name: 'ListKeysResponse')
    ListKeysResponseEntry = Shapes::StructureShape.new(name: 'ListKeysResponseEntry')
    ListKeysResponseEntryList = Shapes::ListShape.new(name: 'ListKeysResponseEntryList')
    ListMapsRequest = Shapes::StructureShape.new(name: 'ListMapsRequest')
    ListMapsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMapsRequestMaxResultsInteger')
    ListMapsResponse = Shapes::StructureShape.new(name: 'ListMapsResponse')
    ListMapsResponseEntry = Shapes::StructureShape.new(name: 'ListMapsResponseEntry')
    ListMapsResponseEntryList = Shapes::ListShape.new(name: 'ListMapsResponseEntryList')
    ListPlaceIndexesRequest = Shapes::StructureShape.new(name: 'ListPlaceIndexesRequest')
    ListPlaceIndexesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListPlaceIndexesRequestMaxResultsInteger')
    ListPlaceIndexesResponse = Shapes::StructureShape.new(name: 'ListPlaceIndexesResponse')
    ListPlaceIndexesResponseEntry = Shapes::StructureShape.new(name: 'ListPlaceIndexesResponseEntry')
    ListPlaceIndexesResponseEntryList = Shapes::ListShape.new(name: 'ListPlaceIndexesResponseEntryList')
    ListRouteCalculatorsRequest = Shapes::StructureShape.new(name: 'ListRouteCalculatorsRequest')
    ListRouteCalculatorsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRouteCalculatorsRequestMaxResultsInteger')
    ListRouteCalculatorsResponse = Shapes::StructureShape.new(name: 'ListRouteCalculatorsResponse')
    ListRouteCalculatorsResponseEntry = Shapes::StructureShape.new(name: 'ListRouteCalculatorsResponseEntry')
    ListRouteCalculatorsResponseEntryList = Shapes::ListShape.new(name: 'ListRouteCalculatorsResponseEntryList')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTrackerConsumersRequest = Shapes::StructureShape.new(name: 'ListTrackerConsumersRequest')
    ListTrackerConsumersRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTrackerConsumersRequestMaxResultsInteger')
    ListTrackerConsumersResponse = Shapes::StructureShape.new(name: 'ListTrackerConsumersResponse')
    ListTrackersRequest = Shapes::StructureShape.new(name: 'ListTrackersRequest')
    ListTrackersRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTrackersRequestMaxResultsInteger')
    ListTrackersResponse = Shapes::StructureShape.new(name: 'ListTrackersResponse')
    ListTrackersResponseEntry = Shapes::StructureShape.new(name: 'ListTrackersResponseEntry')
    ListTrackersResponseEntryList = Shapes::ListShape.new(name: 'ListTrackersResponseEntryList')
    MapConfiguration = Shapes::StructureShape.new(name: 'MapConfiguration')
    MapConfigurationUpdate = Shapes::StructureShape.new(name: 'MapConfigurationUpdate')
    MapStyle = Shapes::StringShape.new(name: 'MapStyle')
    Place = Shapes::StructureShape.new(name: 'Place')
    PlaceCategory = Shapes::StringShape.new(name: 'PlaceCategory')
    PlaceCategoryList = Shapes::ListShape.new(name: 'PlaceCategoryList')
    PlaceGeometry = Shapes::StructureShape.new(name: 'PlaceGeometry')
    PlaceId = Shapes::StringShape.new(name: 'PlaceId')
    PlaceIndexSearchResultLimit = Shapes::IntegerShape.new(name: 'PlaceIndexSearchResultLimit')
    PlaceSupplementalCategory = Shapes::StringShape.new(name: 'PlaceSupplementalCategory')
    PlaceSupplementalCategoryList = Shapes::ListShape.new(name: 'PlaceSupplementalCategoryList')
    Position = Shapes::ListShape.new(name: 'Position')
    PositionFiltering = Shapes::StringShape.new(name: 'PositionFiltering')
    PositionalAccuracy = Shapes::StructureShape.new(name: 'PositionalAccuracy')
    PositionalAccuracyHorizontalDouble = Shapes::FloatShape.new(name: 'PositionalAccuracyHorizontalDouble')
    PricingPlan = Shapes::StringShape.new(name: 'PricingPlan')
    PropertyMap = Shapes::MapShape.new(name: 'PropertyMap')
    PropertyMapKeyString = Shapes::StringShape.new(name: 'PropertyMapKeyString')
    PropertyMapValueString = Shapes::StringShape.new(name: 'PropertyMapValueString')
    PutGeofenceRequest = Shapes::StructureShape.new(name: 'PutGeofenceRequest')
    PutGeofenceResponse = Shapes::StructureShape.new(name: 'PutGeofenceResponse')
    RefererPattern = Shapes::StringShape.new(name: 'RefererPattern')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RouteMatrix = Shapes::ListShape.new(name: 'RouteMatrix')
    RouteMatrixEntry = Shapes::StructureShape.new(name: 'RouteMatrixEntry')
    RouteMatrixEntryDistanceDouble = Shapes::FloatShape.new(name: 'RouteMatrixEntryDistanceDouble')
    RouteMatrixEntryDurationSecondsDouble = Shapes::FloatShape.new(name: 'RouteMatrixEntryDurationSecondsDouble')
    RouteMatrixEntryError = Shapes::StructureShape.new(name: 'RouteMatrixEntryError')
    RouteMatrixErrorCode = Shapes::StringShape.new(name: 'RouteMatrixErrorCode')
    RouteMatrixRow = Shapes::ListShape.new(name: 'RouteMatrixRow')
    SearchForPositionResult = Shapes::StructureShape.new(name: 'SearchForPositionResult')
    SearchForPositionResultDistanceDouble = Shapes::FloatShape.new(name: 'SearchForPositionResultDistanceDouble')
    SearchForPositionResultList = Shapes::ListShape.new(name: 'SearchForPositionResultList')
    SearchForSuggestionsResult = Shapes::StructureShape.new(name: 'SearchForSuggestionsResult')
    SearchForSuggestionsResultList = Shapes::ListShape.new(name: 'SearchForSuggestionsResultList')
    SearchForTextResult = Shapes::StructureShape.new(name: 'SearchForTextResult')
    SearchForTextResultDistanceDouble = Shapes::FloatShape.new(name: 'SearchForTextResultDistanceDouble')
    SearchForTextResultList = Shapes::ListShape.new(name: 'SearchForTextResultList')
    SearchForTextResultRelevanceDouble = Shapes::FloatShape.new(name: 'SearchForTextResultRelevanceDouble')
    SearchPlaceIndexForPositionRequest = Shapes::StructureShape.new(name: 'SearchPlaceIndexForPositionRequest')
    SearchPlaceIndexForPositionResponse = Shapes::StructureShape.new(name: 'SearchPlaceIndexForPositionResponse')
    SearchPlaceIndexForPositionSummary = Shapes::StructureShape.new(name: 'SearchPlaceIndexForPositionSummary')
    SearchPlaceIndexForSuggestionsRequest = Shapes::StructureShape.new(name: 'SearchPlaceIndexForSuggestionsRequest')
    SearchPlaceIndexForSuggestionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchPlaceIndexForSuggestionsRequestMaxResultsInteger')
    SearchPlaceIndexForSuggestionsRequestTextString = Shapes::StringShape.new(name: 'SearchPlaceIndexForSuggestionsRequestTextString')
    SearchPlaceIndexForSuggestionsResponse = Shapes::StructureShape.new(name: 'SearchPlaceIndexForSuggestionsResponse')
    SearchPlaceIndexForSuggestionsSummary = Shapes::StructureShape.new(name: 'SearchPlaceIndexForSuggestionsSummary')
    SearchPlaceIndexForTextRequest = Shapes::StructureShape.new(name: 'SearchPlaceIndexForTextRequest')
    SearchPlaceIndexForTextRequestTextString = Shapes::StringShape.new(name: 'SearchPlaceIndexForTextRequestTextString')
    SearchPlaceIndexForTextResponse = Shapes::StructureShape.new(name: 'SearchPlaceIndexForTextResponse')
    SearchPlaceIndexForTextSummary = Shapes::StructureShape.new(name: 'SearchPlaceIndexForTextSummary')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Status = Shapes::StringShape.new(name: 'Status')
    Step = Shapes::StructureShape.new(name: 'Step')
    StepDistanceDouble = Shapes::FloatShape.new(name: 'StepDistanceDouble')
    StepDurationSecondsDouble = Shapes::FloatShape.new(name: 'StepDurationSecondsDouble')
    StepGeometryOffsetInteger = Shapes::IntegerShape.new(name: 'StepGeometryOffsetInteger')
    StepList = Shapes::ListShape.new(name: 'StepList')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeZone = Shapes::StructureShape.new(name: 'TimeZone')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    Token = Shapes::StringShape.new(name: 'Token')
    TravelMode = Shapes::StringShape.new(name: 'TravelMode')
    TruckDimensions = Shapes::StructureShape.new(name: 'TruckDimensions')
    TruckDimensionsHeightDouble = Shapes::FloatShape.new(name: 'TruckDimensionsHeightDouble')
    TruckDimensionsLengthDouble = Shapes::FloatShape.new(name: 'TruckDimensionsLengthDouble')
    TruckDimensionsWidthDouble = Shapes::FloatShape.new(name: 'TruckDimensionsWidthDouble')
    TruckWeight = Shapes::StructureShape.new(name: 'TruckWeight')
    TruckWeightTotalDouble = Shapes::FloatShape.new(name: 'TruckWeightTotalDouble')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateGeofenceCollectionRequest = Shapes::StructureShape.new(name: 'UpdateGeofenceCollectionRequest')
    UpdateGeofenceCollectionResponse = Shapes::StructureShape.new(name: 'UpdateGeofenceCollectionResponse')
    UpdateKeyRequest = Shapes::StructureShape.new(name: 'UpdateKeyRequest')
    UpdateKeyResponse = Shapes::StructureShape.new(name: 'UpdateKeyResponse')
    UpdateMapRequest = Shapes::StructureShape.new(name: 'UpdateMapRequest')
    UpdateMapResponse = Shapes::StructureShape.new(name: 'UpdateMapResponse')
    UpdatePlaceIndexRequest = Shapes::StructureShape.new(name: 'UpdatePlaceIndexRequest')
    UpdatePlaceIndexResponse = Shapes::StructureShape.new(name: 'UpdatePlaceIndexResponse')
    UpdateRouteCalculatorRequest = Shapes::StructureShape.new(name: 'UpdateRouteCalculatorRequest')
    UpdateRouteCalculatorResponse = Shapes::StructureShape.new(name: 'UpdateRouteCalculatorResponse')
    UpdateTrackerRequest = Shapes::StructureShape.new(name: 'UpdateTrackerRequest')
    UpdateTrackerResponse = Shapes::StructureShape.new(name: 'UpdateTrackerResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VehicleWeightUnit = Shapes::StringShape.new(name: 'VehicleWeightUnit')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ApiKeyFilter.add_member(:key_status, Shapes::ShapeRef.new(shape: Status, location_name: "KeyStatus"))
    ApiKeyFilter.struct_class = Types::ApiKeyFilter

    ApiKeyRestrictions.add_member(:allow_actions, Shapes::ShapeRef.new(shape: ApiKeyRestrictionsAllowActionsList, required: true, location_name: "AllowActions"))
    ApiKeyRestrictions.add_member(:allow_referers, Shapes::ShapeRef.new(shape: ApiKeyRestrictionsAllowReferersList, location_name: "AllowReferers"))
    ApiKeyRestrictions.add_member(:allow_resources, Shapes::ShapeRef.new(shape: ApiKeyRestrictionsAllowResourcesList, required: true, location_name: "AllowResources"))
    ApiKeyRestrictions.struct_class = Types::ApiKeyRestrictions

    ApiKeyRestrictionsAllowActionsList.member = Shapes::ShapeRef.new(shape: ApiKeyAction)

    ApiKeyRestrictionsAllowReferersList.member = Shapes::ShapeRef.new(shape: RefererPattern)

    ApiKeyRestrictionsAllowResourcesList.member = Shapes::ShapeRef.new(shape: GeoArn)

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AssociateTrackerConsumerRequest.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ConsumerArn"))
    AssociateTrackerConsumerRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    AssociateTrackerConsumerRequest.struct_class = Types::AssociateTrackerConsumerRequest

    AssociateTrackerConsumerResponse.struct_class = Types::AssociateTrackerConsumerResponse

    BatchDeleteDevicePositionHistoryError.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DeviceId"))
    BatchDeleteDevicePositionHistoryError.add_member(:error, Shapes::ShapeRef.new(shape: BatchItemError, required: true, location_name: "Error"))
    BatchDeleteDevicePositionHistoryError.struct_class = Types::BatchDeleteDevicePositionHistoryError

    BatchDeleteDevicePositionHistoryErrorList.member = Shapes::ShapeRef.new(shape: BatchDeleteDevicePositionHistoryError)

    BatchDeleteDevicePositionHistoryRequest.add_member(:device_ids, Shapes::ShapeRef.new(shape: BatchDeleteDevicePositionHistoryRequestDeviceIdsList, required: true, location_name: "DeviceIds"))
    BatchDeleteDevicePositionHistoryRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    BatchDeleteDevicePositionHistoryRequest.struct_class = Types::BatchDeleteDevicePositionHistoryRequest

    BatchDeleteDevicePositionHistoryRequestDeviceIdsList.member = Shapes::ShapeRef.new(shape: Id)

    BatchDeleteDevicePositionHistoryResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDeleteDevicePositionHistoryErrorList, required: true, location_name: "Errors"))
    BatchDeleteDevicePositionHistoryResponse.struct_class = Types::BatchDeleteDevicePositionHistoryResponse

    BatchDeleteGeofenceError.add_member(:error, Shapes::ShapeRef.new(shape: BatchItemError, required: true, location_name: "Error"))
    BatchDeleteGeofenceError.add_member(:geofence_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "GeofenceId"))
    BatchDeleteGeofenceError.struct_class = Types::BatchDeleteGeofenceError

    BatchDeleteGeofenceErrorList.member = Shapes::ShapeRef.new(shape: BatchDeleteGeofenceError)

    BatchDeleteGeofenceRequest.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CollectionName"))
    BatchDeleteGeofenceRequest.add_member(:geofence_ids, Shapes::ShapeRef.new(shape: BatchDeleteGeofenceRequestGeofenceIdsList, required: true, location_name: "GeofenceIds"))
    BatchDeleteGeofenceRequest.struct_class = Types::BatchDeleteGeofenceRequest

    BatchDeleteGeofenceRequestGeofenceIdsList.member = Shapes::ShapeRef.new(shape: Id)

    BatchDeleteGeofenceResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDeleteGeofenceErrorList, required: true, location_name: "Errors"))
    BatchDeleteGeofenceResponse.struct_class = Types::BatchDeleteGeofenceResponse

    BatchEvaluateGeofencesError.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DeviceId"))
    BatchEvaluateGeofencesError.add_member(:error, Shapes::ShapeRef.new(shape: BatchItemError, required: true, location_name: "Error"))
    BatchEvaluateGeofencesError.add_member(:sample_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SampleTime"))
    BatchEvaluateGeofencesError.struct_class = Types::BatchEvaluateGeofencesError

    BatchEvaluateGeofencesErrorList.member = Shapes::ShapeRef.new(shape: BatchEvaluateGeofencesError)

    BatchEvaluateGeofencesRequest.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CollectionName"))
    BatchEvaluateGeofencesRequest.add_member(:device_position_updates, Shapes::ShapeRef.new(shape: BatchEvaluateGeofencesRequestDevicePositionUpdatesList, required: true, location_name: "DevicePositionUpdates"))
    BatchEvaluateGeofencesRequest.struct_class = Types::BatchEvaluateGeofencesRequest

    BatchEvaluateGeofencesRequestDevicePositionUpdatesList.member = Shapes::ShapeRef.new(shape: DevicePositionUpdate)

    BatchEvaluateGeofencesResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchEvaluateGeofencesErrorList, required: true, location_name: "Errors"))
    BatchEvaluateGeofencesResponse.struct_class = Types::BatchEvaluateGeofencesResponse

    BatchGetDevicePositionError.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DeviceId"))
    BatchGetDevicePositionError.add_member(:error, Shapes::ShapeRef.new(shape: BatchItemError, required: true, location_name: "Error"))
    BatchGetDevicePositionError.struct_class = Types::BatchGetDevicePositionError

    BatchGetDevicePositionErrorList.member = Shapes::ShapeRef.new(shape: BatchGetDevicePositionError)

    BatchGetDevicePositionRequest.add_member(:device_ids, Shapes::ShapeRef.new(shape: BatchGetDevicePositionRequestDeviceIdsList, required: true, location_name: "DeviceIds"))
    BatchGetDevicePositionRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: BatchGetDevicePositionRequestTrackerNameString, required: true, location: "uri", location_name: "TrackerName"))
    BatchGetDevicePositionRequest.struct_class = Types::BatchGetDevicePositionRequest

    BatchGetDevicePositionRequestDeviceIdsList.member = Shapes::ShapeRef.new(shape: Id)

    BatchGetDevicePositionResponse.add_member(:device_positions, Shapes::ShapeRef.new(shape: DevicePositionList, required: true, location_name: "DevicePositions"))
    BatchGetDevicePositionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetDevicePositionErrorList, required: true, location_name: "Errors"))
    BatchGetDevicePositionResponse.struct_class = Types::BatchGetDevicePositionResponse

    BatchItemError.add_member(:code, Shapes::ShapeRef.new(shape: BatchItemErrorCode, location_name: "Code"))
    BatchItemError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BatchItemError.struct_class = Types::BatchItemError

    BatchPutGeofenceError.add_member(:error, Shapes::ShapeRef.new(shape: BatchItemError, required: true, location_name: "Error"))
    BatchPutGeofenceError.add_member(:geofence_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "GeofenceId"))
    BatchPutGeofenceError.struct_class = Types::BatchPutGeofenceError

    BatchPutGeofenceErrorList.member = Shapes::ShapeRef.new(shape: BatchPutGeofenceError)

    BatchPutGeofenceRequest.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CollectionName"))
    BatchPutGeofenceRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchPutGeofenceRequestEntriesList, required: true, location_name: "Entries"))
    BatchPutGeofenceRequest.struct_class = Types::BatchPutGeofenceRequest

    BatchPutGeofenceRequestEntriesList.member = Shapes::ShapeRef.new(shape: BatchPutGeofenceRequestEntry)

    BatchPutGeofenceRequestEntry.add_member(:geofence_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "GeofenceId"))
    BatchPutGeofenceRequestEntry.add_member(:geofence_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "GeofenceProperties"))
    BatchPutGeofenceRequestEntry.add_member(:geometry, Shapes::ShapeRef.new(shape: GeofenceGeometry, required: true, location_name: "Geometry"))
    BatchPutGeofenceRequestEntry.struct_class = Types::BatchPutGeofenceRequestEntry

    BatchPutGeofenceResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchPutGeofenceErrorList, required: true, location_name: "Errors"))
    BatchPutGeofenceResponse.add_member(:successes, Shapes::ShapeRef.new(shape: BatchPutGeofenceSuccessList, required: true, location_name: "Successes"))
    BatchPutGeofenceResponse.struct_class = Types::BatchPutGeofenceResponse

    BatchPutGeofenceSuccess.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    BatchPutGeofenceSuccess.add_member(:geofence_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "GeofenceId"))
    BatchPutGeofenceSuccess.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    BatchPutGeofenceSuccess.struct_class = Types::BatchPutGeofenceSuccess

    BatchPutGeofenceSuccessList.member = Shapes::ShapeRef.new(shape: BatchPutGeofenceSuccess)

    BatchUpdateDevicePositionError.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DeviceId"))
    BatchUpdateDevicePositionError.add_member(:error, Shapes::ShapeRef.new(shape: BatchItemError, required: true, location_name: "Error"))
    BatchUpdateDevicePositionError.add_member(:sample_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SampleTime"))
    BatchUpdateDevicePositionError.struct_class = Types::BatchUpdateDevicePositionError

    BatchUpdateDevicePositionErrorList.member = Shapes::ShapeRef.new(shape: BatchUpdateDevicePositionError)

    BatchUpdateDevicePositionRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    BatchUpdateDevicePositionRequest.add_member(:updates, Shapes::ShapeRef.new(shape: BatchUpdateDevicePositionRequestUpdatesList, required: true, location_name: "Updates"))
    BatchUpdateDevicePositionRequest.struct_class = Types::BatchUpdateDevicePositionRequest

    BatchUpdateDevicePositionRequestUpdatesList.member = Shapes::ShapeRef.new(shape: DevicePositionUpdate)

    BatchUpdateDevicePositionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchUpdateDevicePositionErrorList, required: true, location_name: "Errors"))
    BatchUpdateDevicePositionResponse.struct_class = Types::BatchUpdateDevicePositionResponse

    BoundingBox.member = Shapes::ShapeRef.new(shape: Double)

    CalculateRouteCarModeOptions.add_member(:avoid_ferries, Shapes::ShapeRef.new(shape: Boolean, location_name: "AvoidFerries"))
    CalculateRouteCarModeOptions.add_member(:avoid_tolls, Shapes::ShapeRef.new(shape: Boolean, location_name: "AvoidTolls"))
    CalculateRouteCarModeOptions.struct_class = Types::CalculateRouteCarModeOptions

    CalculateRouteMatrixRequest.add_member(:calculator_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CalculatorName"))
    CalculateRouteMatrixRequest.add_member(:car_mode_options, Shapes::ShapeRef.new(shape: CalculateRouteCarModeOptions, location_name: "CarModeOptions"))
    CalculateRouteMatrixRequest.add_member(:depart_now, Shapes::ShapeRef.new(shape: Boolean, location_name: "DepartNow"))
    CalculateRouteMatrixRequest.add_member(:departure_positions, Shapes::ShapeRef.new(shape: CalculateRouteMatrixRequestDeparturePositionsList, required: true, location_name: "DeparturePositions"))
    CalculateRouteMatrixRequest.add_member(:departure_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DepartureTime"))
    CalculateRouteMatrixRequest.add_member(:destination_positions, Shapes::ShapeRef.new(shape: CalculateRouteMatrixRequestDestinationPositionsList, required: true, location_name: "DestinationPositions"))
    CalculateRouteMatrixRequest.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, location_name: "DistanceUnit"))
    CalculateRouteMatrixRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    CalculateRouteMatrixRequest.add_member(:travel_mode, Shapes::ShapeRef.new(shape: TravelMode, location_name: "TravelMode"))
    CalculateRouteMatrixRequest.add_member(:truck_mode_options, Shapes::ShapeRef.new(shape: CalculateRouteTruckModeOptions, location_name: "TruckModeOptions"))
    CalculateRouteMatrixRequest.struct_class = Types::CalculateRouteMatrixRequest

    CalculateRouteMatrixRequestDeparturePositionsList.member = Shapes::ShapeRef.new(shape: Position)

    CalculateRouteMatrixRequestDestinationPositionsList.member = Shapes::ShapeRef.new(shape: Position)

    CalculateRouteMatrixResponse.add_member(:route_matrix, Shapes::ShapeRef.new(shape: RouteMatrix, required: true, location_name: "RouteMatrix"))
    CalculateRouteMatrixResponse.add_member(:snapped_departure_positions, Shapes::ShapeRef.new(shape: CalculateRouteMatrixResponseSnappedDeparturePositionsList, location_name: "SnappedDeparturePositions"))
    CalculateRouteMatrixResponse.add_member(:snapped_destination_positions, Shapes::ShapeRef.new(shape: CalculateRouteMatrixResponseSnappedDestinationPositionsList, location_name: "SnappedDestinationPositions"))
    CalculateRouteMatrixResponse.add_member(:summary, Shapes::ShapeRef.new(shape: CalculateRouteMatrixSummary, required: true, location_name: "Summary"))
    CalculateRouteMatrixResponse.struct_class = Types::CalculateRouteMatrixResponse

    CalculateRouteMatrixResponseSnappedDeparturePositionsList.member = Shapes::ShapeRef.new(shape: Position)

    CalculateRouteMatrixResponseSnappedDestinationPositionsList.member = Shapes::ShapeRef.new(shape: Position)

    CalculateRouteMatrixSummary.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    CalculateRouteMatrixSummary.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, required: true, location_name: "DistanceUnit"))
    CalculateRouteMatrixSummary.add_member(:error_count, Shapes::ShapeRef.new(shape: CalculateRouteMatrixSummaryErrorCountInteger, required: true, location_name: "ErrorCount"))
    CalculateRouteMatrixSummary.add_member(:route_count, Shapes::ShapeRef.new(shape: CalculateRouteMatrixSummaryRouteCountInteger, required: true, location_name: "RouteCount"))
    CalculateRouteMatrixSummary.struct_class = Types::CalculateRouteMatrixSummary

    CalculateRouteRequest.add_member(:calculator_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CalculatorName"))
    CalculateRouteRequest.add_member(:car_mode_options, Shapes::ShapeRef.new(shape: CalculateRouteCarModeOptions, location_name: "CarModeOptions"))
    CalculateRouteRequest.add_member(:depart_now, Shapes::ShapeRef.new(shape: Boolean, location_name: "DepartNow"))
    CalculateRouteRequest.add_member(:departure_position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "DeparturePosition"))
    CalculateRouteRequest.add_member(:departure_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DepartureTime"))
    CalculateRouteRequest.add_member(:destination_position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "DestinationPosition"))
    CalculateRouteRequest.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, location_name: "DistanceUnit"))
    CalculateRouteRequest.add_member(:include_leg_geometry, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeLegGeometry"))
    CalculateRouteRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    CalculateRouteRequest.add_member(:travel_mode, Shapes::ShapeRef.new(shape: TravelMode, location_name: "TravelMode"))
    CalculateRouteRequest.add_member(:truck_mode_options, Shapes::ShapeRef.new(shape: CalculateRouteTruckModeOptions, location_name: "TruckModeOptions"))
    CalculateRouteRequest.add_member(:waypoint_positions, Shapes::ShapeRef.new(shape: CalculateRouteRequestWaypointPositionsList, location_name: "WaypointPositions"))
    CalculateRouteRequest.struct_class = Types::CalculateRouteRequest

    CalculateRouteRequestWaypointPositionsList.member = Shapes::ShapeRef.new(shape: Position)

    CalculateRouteResponse.add_member(:legs, Shapes::ShapeRef.new(shape: LegList, required: true, location_name: "Legs"))
    CalculateRouteResponse.add_member(:summary, Shapes::ShapeRef.new(shape: CalculateRouteSummary, required: true, location_name: "Summary"))
    CalculateRouteResponse.struct_class = Types::CalculateRouteResponse

    CalculateRouteSummary.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    CalculateRouteSummary.add_member(:distance, Shapes::ShapeRef.new(shape: CalculateRouteSummaryDistanceDouble, required: true, location_name: "Distance"))
    CalculateRouteSummary.add_member(:distance_unit, Shapes::ShapeRef.new(shape: DistanceUnit, required: true, location_name: "DistanceUnit"))
    CalculateRouteSummary.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: CalculateRouteSummaryDurationSecondsDouble, required: true, location_name: "DurationSeconds"))
    CalculateRouteSummary.add_member(:route_b_box, Shapes::ShapeRef.new(shape: BoundingBox, required: true, location_name: "RouteBBox"))
    CalculateRouteSummary.struct_class = Types::CalculateRouteSummary

    CalculateRouteTruckModeOptions.add_member(:avoid_ferries, Shapes::ShapeRef.new(shape: Boolean, location_name: "AvoidFerries"))
    CalculateRouteTruckModeOptions.add_member(:avoid_tolls, Shapes::ShapeRef.new(shape: Boolean, location_name: "AvoidTolls"))
    CalculateRouteTruckModeOptions.add_member(:dimensions, Shapes::ShapeRef.new(shape: TruckDimensions, location_name: "Dimensions"))
    CalculateRouteTruckModeOptions.add_member(:weight, Shapes::ShapeRef.new(shape: TruckWeight, location_name: "Weight"))
    CalculateRouteTruckModeOptions.struct_class = Types::CalculateRouteTruckModeOptions

    Circle.add_member(:center, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "Center"))
    Circle.add_member(:radius, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Radius"))
    Circle.struct_class = Types::Circle

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CountryCodeList.member = Shapes::ShapeRef.new(shape: CountryCode)

    CreateGeofenceCollectionRequest.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "CollectionName"))
    CreateGeofenceCollectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateGeofenceCollectionRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateGeofenceCollectionRequest.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. If included, the only allowed value is RequestBasedUsage."}))
    CreateGeofenceCollectionRequest.add_member(:pricing_plan_data_source, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "PricingPlanDataSource", metadata: {"deprecatedMessage"=>"Deprecated. No longer allowed."}))
    CreateGeofenceCollectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateGeofenceCollectionRequest.struct_class = Types::CreateGeofenceCollectionRequest

    CreateGeofenceCollectionResponse.add_member(:collection_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CollectionArn"))
    CreateGeofenceCollectionResponse.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "CollectionName"))
    CreateGeofenceCollectionResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    CreateGeofenceCollectionResponse.struct_class = Types::CreateGeofenceCollectionResponse

    CreateKeyRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateKeyRequest.add_member(:expire_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpireTime"))
    CreateKeyRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "KeyName"))
    CreateKeyRequest.add_member(:no_expiry, Shapes::ShapeRef.new(shape: Boolean, location_name: "NoExpiry"))
    CreateKeyRequest.add_member(:restrictions, Shapes::ShapeRef.new(shape: ApiKeyRestrictions, required: true, location_name: "Restrictions"))
    CreateKeyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateKeyRequest.struct_class = Types::CreateKeyRequest

    CreateKeyResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    CreateKeyResponse.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, required: true, location_name: "Key"))
    CreateKeyResponse.add_member(:key_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "KeyArn"))
    CreateKeyResponse.add_member(:key_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "KeyName"))
    CreateKeyResponse.struct_class = Types::CreateKeyResponse

    CreateMapRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: MapConfiguration, required: true, location_name: "Configuration"))
    CreateMapRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateMapRequest.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "MapName"))
    CreateMapRequest.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. If included, the only allowed value is RequestBasedUsage."}))
    CreateMapRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateMapRequest.struct_class = Types::CreateMapRequest

    CreateMapResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    CreateMapResponse.add_member(:map_arn, Shapes::ShapeRef.new(shape: GeoArn, required: true, location_name: "MapArn"))
    CreateMapResponse.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "MapName"))
    CreateMapResponse.struct_class = Types::CreateMapResponse

    CreatePlaceIndexRequest.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    CreatePlaceIndexRequest.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "DataSourceConfiguration"))
    CreatePlaceIndexRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreatePlaceIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "IndexName"))
    CreatePlaceIndexRequest.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. If included, the only allowed value is RequestBasedUsage."}))
    CreatePlaceIndexRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreatePlaceIndexRequest.struct_class = Types::CreatePlaceIndexRequest

    CreatePlaceIndexResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    CreatePlaceIndexResponse.add_member(:index_arn, Shapes::ShapeRef.new(shape: GeoArn, required: true, location_name: "IndexArn"))
    CreatePlaceIndexResponse.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "IndexName"))
    CreatePlaceIndexResponse.struct_class = Types::CreatePlaceIndexResponse

    CreateRouteCalculatorRequest.add_member(:calculator_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "CalculatorName"))
    CreateRouteCalculatorRequest.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    CreateRouteCalculatorRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateRouteCalculatorRequest.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. If included, the only allowed value is RequestBasedUsage."}))
    CreateRouteCalculatorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateRouteCalculatorRequest.struct_class = Types::CreateRouteCalculatorRequest

    CreateRouteCalculatorResponse.add_member(:calculator_arn, Shapes::ShapeRef.new(shape: GeoArn, required: true, location_name: "CalculatorArn"))
    CreateRouteCalculatorResponse.add_member(:calculator_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "CalculatorName"))
    CreateRouteCalculatorResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    CreateRouteCalculatorResponse.struct_class = Types::CreateRouteCalculatorResponse

    CreateTrackerRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateTrackerRequest.add_member(:event_bridge_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "EventBridgeEnabled"))
    CreateTrackerRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateTrackerRequest.add_member(:position_filtering, Shapes::ShapeRef.new(shape: PositionFiltering, location_name: "PositionFiltering"))
    CreateTrackerRequest.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. If included, the only allowed value is RequestBasedUsage."}))
    CreateTrackerRequest.add_member(:pricing_plan_data_source, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "PricingPlanDataSource", metadata: {"deprecatedMessage"=>"Deprecated. No longer allowed."}))
    CreateTrackerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateTrackerRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TrackerName"))
    CreateTrackerRequest.struct_class = Types::CreateTrackerRequest

    CreateTrackerResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    CreateTrackerResponse.add_member(:tracker_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "TrackerArn"))
    CreateTrackerResponse.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TrackerName"))
    CreateTrackerResponse.struct_class = Types::CreateTrackerResponse

    DataSourceConfiguration.add_member(:intended_use, Shapes::ShapeRef.new(shape: IntendedUse, location_name: "IntendedUse"))
    DataSourceConfiguration.struct_class = Types::DataSourceConfiguration

    DeleteGeofenceCollectionRequest.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CollectionName"))
    DeleteGeofenceCollectionRequest.struct_class = Types::DeleteGeofenceCollectionRequest

    DeleteGeofenceCollectionResponse.struct_class = Types::DeleteGeofenceCollectionResponse

    DeleteKeyRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "KeyName"))
    DeleteKeyRequest.struct_class = Types::DeleteKeyRequest

    DeleteKeyResponse.struct_class = Types::DeleteKeyResponse

    DeleteMapRequest.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MapName"))
    DeleteMapRequest.struct_class = Types::DeleteMapRequest

    DeleteMapResponse.struct_class = Types::DeleteMapResponse

    DeletePlaceIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "IndexName"))
    DeletePlaceIndexRequest.struct_class = Types::DeletePlaceIndexRequest

    DeletePlaceIndexResponse.struct_class = Types::DeletePlaceIndexResponse

    DeleteRouteCalculatorRequest.add_member(:calculator_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CalculatorName"))
    DeleteRouteCalculatorRequest.struct_class = Types::DeleteRouteCalculatorRequest

    DeleteRouteCalculatorResponse.struct_class = Types::DeleteRouteCalculatorResponse

    DeleteTrackerRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    DeleteTrackerRequest.struct_class = Types::DeleteTrackerRequest

    DeleteTrackerResponse.struct_class = Types::DeleteTrackerResponse

    DescribeGeofenceCollectionRequest.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CollectionName"))
    DescribeGeofenceCollectionRequest.struct_class = Types::DescribeGeofenceCollectionRequest

    DescribeGeofenceCollectionResponse.add_member(:collection_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CollectionArn"))
    DescribeGeofenceCollectionResponse.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "CollectionName"))
    DescribeGeofenceCollectionResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    DescribeGeofenceCollectionResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "Description"))
    DescribeGeofenceCollectionResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DescribeGeofenceCollectionResponse.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. Always returns RequestBasedUsage."}))
    DescribeGeofenceCollectionResponse.add_member(:pricing_plan_data_source, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "PricingPlanDataSource", metadata: {"deprecatedMessage"=>"Deprecated. Unused."}))
    DescribeGeofenceCollectionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeGeofenceCollectionResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    DescribeGeofenceCollectionResponse.struct_class = Types::DescribeGeofenceCollectionResponse

    DescribeKeyRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "KeyName"))
    DescribeKeyRequest.struct_class = Types::DescribeKeyRequest

    DescribeKeyResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    DescribeKeyResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    DescribeKeyResponse.add_member(:expire_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ExpireTime"))
    DescribeKeyResponse.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, required: true, location_name: "Key"))
    DescribeKeyResponse.add_member(:key_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "KeyArn"))
    DescribeKeyResponse.add_member(:key_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "KeyName"))
    DescribeKeyResponse.add_member(:restrictions, Shapes::ShapeRef.new(shape: ApiKeyRestrictions, required: true, location_name: "Restrictions"))
    DescribeKeyResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeKeyResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    DescribeKeyResponse.struct_class = Types::DescribeKeyResponse

    DescribeMapRequest.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MapName"))
    DescribeMapRequest.struct_class = Types::DescribeMapRequest

    DescribeMapResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: MapConfiguration, required: true, location_name: "Configuration"))
    DescribeMapResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    DescribeMapResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    DescribeMapResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "Description"))
    DescribeMapResponse.add_member(:map_arn, Shapes::ShapeRef.new(shape: GeoArn, required: true, location_name: "MapArn"))
    DescribeMapResponse.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "MapName"))
    DescribeMapResponse.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. Always returns RequestBasedUsage."}))
    DescribeMapResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeMapResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    DescribeMapResponse.struct_class = Types::DescribeMapResponse

    DescribePlaceIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "IndexName"))
    DescribePlaceIndexRequest.struct_class = Types::DescribePlaceIndexRequest

    DescribePlaceIndexResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    DescribePlaceIndexResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    DescribePlaceIndexResponse.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "DataSourceConfiguration"))
    DescribePlaceIndexResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "Description"))
    DescribePlaceIndexResponse.add_member(:index_arn, Shapes::ShapeRef.new(shape: GeoArn, required: true, location_name: "IndexArn"))
    DescribePlaceIndexResponse.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "IndexName"))
    DescribePlaceIndexResponse.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. Always returns RequestBasedUsage."}))
    DescribePlaceIndexResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribePlaceIndexResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    DescribePlaceIndexResponse.struct_class = Types::DescribePlaceIndexResponse

    DescribeRouteCalculatorRequest.add_member(:calculator_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CalculatorName"))
    DescribeRouteCalculatorRequest.struct_class = Types::DescribeRouteCalculatorRequest

    DescribeRouteCalculatorResponse.add_member(:calculator_arn, Shapes::ShapeRef.new(shape: GeoArn, required: true, location_name: "CalculatorArn"))
    DescribeRouteCalculatorResponse.add_member(:calculator_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "CalculatorName"))
    DescribeRouteCalculatorResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    DescribeRouteCalculatorResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    DescribeRouteCalculatorResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "Description"))
    DescribeRouteCalculatorResponse.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. Always returns RequestBasedUsage."}))
    DescribeRouteCalculatorResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeRouteCalculatorResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    DescribeRouteCalculatorResponse.struct_class = Types::DescribeRouteCalculatorResponse

    DescribeTrackerRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    DescribeTrackerRequest.struct_class = Types::DescribeTrackerRequest

    DescribeTrackerResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    DescribeTrackerResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "Description"))
    DescribeTrackerResponse.add_member(:event_bridge_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "EventBridgeEnabled"))
    DescribeTrackerResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    DescribeTrackerResponse.add_member(:position_filtering, Shapes::ShapeRef.new(shape: PositionFiltering, location_name: "PositionFiltering"))
    DescribeTrackerResponse.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. Always returns RequestBasedUsage."}))
    DescribeTrackerResponse.add_member(:pricing_plan_data_source, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "PricingPlanDataSource", metadata: {"deprecatedMessage"=>"Deprecated. Unused."}))
    DescribeTrackerResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeTrackerResponse.add_member(:tracker_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "TrackerArn"))
    DescribeTrackerResponse.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TrackerName"))
    DescribeTrackerResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    DescribeTrackerResponse.struct_class = Types::DescribeTrackerResponse

    DevicePosition.add_member(:accuracy, Shapes::ShapeRef.new(shape: PositionalAccuracy, location_name: "Accuracy"))
    DevicePosition.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, location_name: "DeviceId"))
    DevicePosition.add_member(:position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "Position"))
    DevicePosition.add_member(:position_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "PositionProperties"))
    DevicePosition.add_member(:received_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ReceivedTime"))
    DevicePosition.add_member(:sample_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SampleTime"))
    DevicePosition.struct_class = Types::DevicePosition

    DevicePositionList.member = Shapes::ShapeRef.new(shape: DevicePosition)

    DevicePositionUpdate.add_member(:accuracy, Shapes::ShapeRef.new(shape: PositionalAccuracy, location_name: "Accuracy"))
    DevicePositionUpdate.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DeviceId"))
    DevicePositionUpdate.add_member(:position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "Position"))
    DevicePositionUpdate.add_member(:position_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "PositionProperties"))
    DevicePositionUpdate.add_member(:sample_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SampleTime"))
    DevicePositionUpdate.struct_class = Types::DevicePositionUpdate

    DisassociateTrackerConsumerRequest.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ConsumerArn"))
    DisassociateTrackerConsumerRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    DisassociateTrackerConsumerRequest.struct_class = Types::DisassociateTrackerConsumerRequest

    DisassociateTrackerConsumerResponse.struct_class = Types::DisassociateTrackerConsumerResponse

    FilterPlaceCategoryList.member = Shapes::ShapeRef.new(shape: PlaceCategory)

    GeofenceGeometry.add_member(:circle, Shapes::ShapeRef.new(shape: Circle, location_name: "Circle"))
    GeofenceGeometry.add_member(:polygon, Shapes::ShapeRef.new(shape: LinearRings, location_name: "Polygon"))
    GeofenceGeometry.struct_class = Types::GeofenceGeometry

    GetDevicePositionHistoryRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "DeviceId"))
    GetDevicePositionHistoryRequest.add_member(:end_time_exclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTimeExclusive"))
    GetDevicePositionHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetDevicePositionHistoryRequestMaxResultsInteger, location_name: "MaxResults"))
    GetDevicePositionHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetDevicePositionHistoryRequest.add_member(:start_time_inclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTimeInclusive"))
    GetDevicePositionHistoryRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    GetDevicePositionHistoryRequest.struct_class = Types::GetDevicePositionHistoryRequest

    GetDevicePositionHistoryResponse.add_member(:device_positions, Shapes::ShapeRef.new(shape: DevicePositionList, required: true, location_name: "DevicePositions"))
    GetDevicePositionHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetDevicePositionHistoryResponse.struct_class = Types::GetDevicePositionHistoryResponse

    GetDevicePositionRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "DeviceId"))
    GetDevicePositionRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    GetDevicePositionRequest.struct_class = Types::GetDevicePositionRequest

    GetDevicePositionResponse.add_member(:accuracy, Shapes::ShapeRef.new(shape: PositionalAccuracy, location_name: "Accuracy"))
    GetDevicePositionResponse.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, location_name: "DeviceId"))
    GetDevicePositionResponse.add_member(:position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "Position"))
    GetDevicePositionResponse.add_member(:position_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "PositionProperties"))
    GetDevicePositionResponse.add_member(:received_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ReceivedTime"))
    GetDevicePositionResponse.add_member(:sample_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SampleTime"))
    GetDevicePositionResponse.struct_class = Types::GetDevicePositionResponse

    GetGeofenceRequest.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CollectionName"))
    GetGeofenceRequest.add_member(:geofence_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "GeofenceId"))
    GetGeofenceRequest.struct_class = Types::GetGeofenceRequest

    GetGeofenceResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    GetGeofenceResponse.add_member(:geofence_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "GeofenceId"))
    GetGeofenceResponse.add_member(:geofence_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "GeofenceProperties"))
    GetGeofenceResponse.add_member(:geometry, Shapes::ShapeRef.new(shape: GeofenceGeometry, required: true, location_name: "Geometry"))
    GetGeofenceResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    GetGeofenceResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    GetGeofenceResponse.struct_class = Types::GetGeofenceResponse

    GetMapGlyphsRequest.add_member(:font_stack, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "FontStack"))
    GetMapGlyphsRequest.add_member(:font_unicode_range, Shapes::ShapeRef.new(shape: GetMapGlyphsRequestFontUnicodeRangeString, required: true, location: "uri", location_name: "FontUnicodeRange"))
    GetMapGlyphsRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    GetMapGlyphsRequest.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MapName"))
    GetMapGlyphsRequest.struct_class = Types::GetMapGlyphsRequest

    GetMapGlyphsResponse.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    GetMapGlyphsResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    GetMapGlyphsResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetMapGlyphsResponse.struct_class = Types::GetMapGlyphsResponse
    GetMapGlyphsResponse[:payload] = :blob
    GetMapGlyphsResponse[:payload_member] = GetMapGlyphsResponse.member(:blob)

    GetMapSpritesRequest.add_member(:file_name, Shapes::ShapeRef.new(shape: GetMapSpritesRequestFileNameString, required: true, location: "uri", location_name: "FileName"))
    GetMapSpritesRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    GetMapSpritesRequest.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MapName"))
    GetMapSpritesRequest.struct_class = Types::GetMapSpritesRequest

    GetMapSpritesResponse.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    GetMapSpritesResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    GetMapSpritesResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetMapSpritesResponse.struct_class = Types::GetMapSpritesResponse
    GetMapSpritesResponse[:payload] = :blob
    GetMapSpritesResponse[:payload_member] = GetMapSpritesResponse.member(:blob)

    GetMapStyleDescriptorRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    GetMapStyleDescriptorRequest.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MapName"))
    GetMapStyleDescriptorRequest.struct_class = Types::GetMapStyleDescriptorRequest

    GetMapStyleDescriptorResponse.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    GetMapStyleDescriptorResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    GetMapStyleDescriptorResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetMapStyleDescriptorResponse.struct_class = Types::GetMapStyleDescriptorResponse
    GetMapStyleDescriptorResponse[:payload] = :blob
    GetMapStyleDescriptorResponse[:payload_member] = GetMapStyleDescriptorResponse.member(:blob)

    GetMapTileRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    GetMapTileRequest.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MapName"))
    GetMapTileRequest.add_member(:x, Shapes::ShapeRef.new(shape: GetMapTileRequestXString, required: true, location: "uri", location_name: "X"))
    GetMapTileRequest.add_member(:y, Shapes::ShapeRef.new(shape: GetMapTileRequestYString, required: true, location: "uri", location_name: "Y"))
    GetMapTileRequest.add_member(:z, Shapes::ShapeRef.new(shape: GetMapTileRequestZString, required: true, location: "uri", location_name: "Z"))
    GetMapTileRequest.struct_class = Types::GetMapTileRequest

    GetMapTileResponse.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    GetMapTileResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    GetMapTileResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    GetMapTileResponse.struct_class = Types::GetMapTileResponse
    GetMapTileResponse[:payload] = :blob
    GetMapTileResponse[:payload_member] = GetMapTileResponse.member(:blob)

    GetPlaceRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "IndexName"))
    GetPlaceRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    GetPlaceRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location: "querystring", location_name: "language"))
    GetPlaceRequest.add_member(:place_id, Shapes::ShapeRef.new(shape: PlaceId, required: true, location: "uri", location_name: "PlaceId"))
    GetPlaceRequest.struct_class = Types::GetPlaceRequest

    GetPlaceResponse.add_member(:place, Shapes::ShapeRef.new(shape: Place, required: true, location_name: "Place"))
    GetPlaceResponse.struct_class = Types::GetPlaceResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    Leg.add_member(:distance, Shapes::ShapeRef.new(shape: LegDistanceDouble, required: true, location_name: "Distance"))
    Leg.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: LegDurationSecondsDouble, required: true, location_name: "DurationSeconds"))
    Leg.add_member(:end_position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "EndPosition"))
    Leg.add_member(:geometry, Shapes::ShapeRef.new(shape: LegGeometry, location_name: "Geometry"))
    Leg.add_member(:start_position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "StartPosition"))
    Leg.add_member(:steps, Shapes::ShapeRef.new(shape: StepList, required: true, location_name: "Steps"))
    Leg.struct_class = Types::Leg

    LegGeometry.add_member(:line_string, Shapes::ShapeRef.new(shape: LineString, location_name: "LineString"))
    LegGeometry.struct_class = Types::LegGeometry

    LegList.member = Shapes::ShapeRef.new(shape: Leg)

    LineString.member = Shapes::ShapeRef.new(shape: Position)

    LinearRing.member = Shapes::ShapeRef.new(shape: Position)

    LinearRings.member = Shapes::ShapeRef.new(shape: LinearRing)

    ListDevicePositionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDevicePositionsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListDevicePositionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDevicePositionsRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    ListDevicePositionsRequest.struct_class = Types::ListDevicePositionsRequest

    ListDevicePositionsResponse.add_member(:entries, Shapes::ShapeRef.new(shape: ListDevicePositionsResponseEntryList, required: true, location_name: "Entries"))
    ListDevicePositionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDevicePositionsResponse.struct_class = Types::ListDevicePositionsResponse

    ListDevicePositionsResponseEntry.add_member(:accuracy, Shapes::ShapeRef.new(shape: PositionalAccuracy, location_name: "Accuracy"))
    ListDevicePositionsResponseEntry.add_member(:device_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "DeviceId"))
    ListDevicePositionsResponseEntry.add_member(:position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "Position"))
    ListDevicePositionsResponseEntry.add_member(:position_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "PositionProperties"))
    ListDevicePositionsResponseEntry.add_member(:sample_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SampleTime"))
    ListDevicePositionsResponseEntry.struct_class = Types::ListDevicePositionsResponseEntry

    ListDevicePositionsResponseEntryList.member = Shapes::ShapeRef.new(shape: ListDevicePositionsResponseEntry)

    ListGeofenceCollectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListGeofenceCollectionsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListGeofenceCollectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListGeofenceCollectionsRequest.struct_class = Types::ListGeofenceCollectionsRequest

    ListGeofenceCollectionsResponse.add_member(:entries, Shapes::ShapeRef.new(shape: ListGeofenceCollectionsResponseEntryList, required: true, location_name: "Entries"))
    ListGeofenceCollectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListGeofenceCollectionsResponse.struct_class = Types::ListGeofenceCollectionsResponse

    ListGeofenceCollectionsResponseEntry.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "CollectionName"))
    ListGeofenceCollectionsResponseEntry.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    ListGeofenceCollectionsResponseEntry.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "Description"))
    ListGeofenceCollectionsResponseEntry.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. Always returns RequestBasedUsage."}))
    ListGeofenceCollectionsResponseEntry.add_member(:pricing_plan_data_source, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "PricingPlanDataSource", metadata: {"deprecatedMessage"=>"Deprecated. Unused."}))
    ListGeofenceCollectionsResponseEntry.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    ListGeofenceCollectionsResponseEntry.struct_class = Types::ListGeofenceCollectionsResponseEntry

    ListGeofenceCollectionsResponseEntryList.member = Shapes::ShapeRef.new(shape: ListGeofenceCollectionsResponseEntry)

    ListGeofenceResponseEntry.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    ListGeofenceResponseEntry.add_member(:geofence_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "GeofenceId"))
    ListGeofenceResponseEntry.add_member(:geofence_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "GeofenceProperties"))
    ListGeofenceResponseEntry.add_member(:geometry, Shapes::ShapeRef.new(shape: GeofenceGeometry, required: true, location_name: "Geometry"))
    ListGeofenceResponseEntry.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    ListGeofenceResponseEntry.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    ListGeofenceResponseEntry.struct_class = Types::ListGeofenceResponseEntry

    ListGeofenceResponseEntryList.member = Shapes::ShapeRef.new(shape: ListGeofenceResponseEntry)

    ListGeofencesRequest.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CollectionName"))
    ListGeofencesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListGeofencesRequestMaxResultsInteger, location_name: "MaxResults"))
    ListGeofencesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListGeofencesRequest.struct_class = Types::ListGeofencesRequest

    ListGeofencesResponse.add_member(:entries, Shapes::ShapeRef.new(shape: ListGeofenceResponseEntryList, required: true, location_name: "Entries"))
    ListGeofencesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListGeofencesResponse.struct_class = Types::ListGeofencesResponse

    ListKeysRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ApiKeyFilter, location_name: "Filter"))
    ListKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListKeysRequestMaxResultsInteger, location_name: "MaxResults"))
    ListKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListKeysRequest.struct_class = Types::ListKeysRequest

    ListKeysResponse.add_member(:entries, Shapes::ShapeRef.new(shape: ListKeysResponseEntryList, required: true, location_name: "Entries"))
    ListKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListKeysResponse.struct_class = Types::ListKeysResponse

    ListKeysResponseEntry.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    ListKeysResponseEntry.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    ListKeysResponseEntry.add_member(:expire_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ExpireTime"))
    ListKeysResponseEntry.add_member(:key_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "KeyName"))
    ListKeysResponseEntry.add_member(:restrictions, Shapes::ShapeRef.new(shape: ApiKeyRestrictions, required: true, location_name: "Restrictions"))
    ListKeysResponseEntry.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    ListKeysResponseEntry.struct_class = Types::ListKeysResponseEntry

    ListKeysResponseEntryList.member = Shapes::ShapeRef.new(shape: ListKeysResponseEntry)

    ListMapsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMapsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListMapsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListMapsRequest.struct_class = Types::ListMapsRequest

    ListMapsResponse.add_member(:entries, Shapes::ShapeRef.new(shape: ListMapsResponseEntryList, required: true, location_name: "Entries"))
    ListMapsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListMapsResponse.struct_class = Types::ListMapsResponse

    ListMapsResponseEntry.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    ListMapsResponseEntry.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    ListMapsResponseEntry.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "Description"))
    ListMapsResponseEntry.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "MapName"))
    ListMapsResponseEntry.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. Always returns RequestBasedUsage."}))
    ListMapsResponseEntry.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    ListMapsResponseEntry.struct_class = Types::ListMapsResponseEntry

    ListMapsResponseEntryList.member = Shapes::ShapeRef.new(shape: ListMapsResponseEntry)

    ListPlaceIndexesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPlaceIndexesRequestMaxResultsInteger, location_name: "MaxResults"))
    ListPlaceIndexesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPlaceIndexesRequest.struct_class = Types::ListPlaceIndexesRequest

    ListPlaceIndexesResponse.add_member(:entries, Shapes::ShapeRef.new(shape: ListPlaceIndexesResponseEntryList, required: true, location_name: "Entries"))
    ListPlaceIndexesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPlaceIndexesResponse.struct_class = Types::ListPlaceIndexesResponse

    ListPlaceIndexesResponseEntry.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    ListPlaceIndexesResponseEntry.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    ListPlaceIndexesResponseEntry.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "Description"))
    ListPlaceIndexesResponseEntry.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "IndexName"))
    ListPlaceIndexesResponseEntry.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. Always returns RequestBasedUsage."}))
    ListPlaceIndexesResponseEntry.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    ListPlaceIndexesResponseEntry.struct_class = Types::ListPlaceIndexesResponseEntry

    ListPlaceIndexesResponseEntryList.member = Shapes::ShapeRef.new(shape: ListPlaceIndexesResponseEntry)

    ListRouteCalculatorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRouteCalculatorsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListRouteCalculatorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListRouteCalculatorsRequest.struct_class = Types::ListRouteCalculatorsRequest

    ListRouteCalculatorsResponse.add_member(:entries, Shapes::ShapeRef.new(shape: ListRouteCalculatorsResponseEntryList, required: true, location_name: "Entries"))
    ListRouteCalculatorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListRouteCalculatorsResponse.struct_class = Types::ListRouteCalculatorsResponse

    ListRouteCalculatorsResponseEntry.add_member(:calculator_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "CalculatorName"))
    ListRouteCalculatorsResponseEntry.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    ListRouteCalculatorsResponseEntry.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    ListRouteCalculatorsResponseEntry.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "Description"))
    ListRouteCalculatorsResponseEntry.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. Always returns RequestBasedUsage."}))
    ListRouteCalculatorsResponseEntry.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    ListRouteCalculatorsResponseEntry.struct_class = Types::ListRouteCalculatorsResponseEntry

    ListRouteCalculatorsResponseEntryList.member = Shapes::ShapeRef.new(shape: ListRouteCalculatorsResponseEntry)

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTrackerConsumersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTrackerConsumersRequestMaxResultsInteger, location_name: "MaxResults"))
    ListTrackerConsumersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTrackerConsumersRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    ListTrackerConsumersRequest.struct_class = Types::ListTrackerConsumersRequest

    ListTrackerConsumersResponse.add_member(:consumer_arns, Shapes::ShapeRef.new(shape: ArnList, required: true, location_name: "ConsumerArns"))
    ListTrackerConsumersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTrackerConsumersResponse.struct_class = Types::ListTrackerConsumersResponse

    ListTrackersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTrackersRequestMaxResultsInteger, location_name: "MaxResults"))
    ListTrackersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTrackersRequest.struct_class = Types::ListTrackersRequest

    ListTrackersResponse.add_member(:entries, Shapes::ShapeRef.new(shape: ListTrackersResponseEntryList, required: true, location_name: "Entries"))
    ListTrackersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTrackersResponse.struct_class = Types::ListTrackersResponse

    ListTrackersResponseEntry.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    ListTrackersResponseEntry.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, required: true, location_name: "Description"))
    ListTrackersResponseEntry.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. Always returns RequestBasedUsage."}))
    ListTrackersResponseEntry.add_member(:pricing_plan_data_source, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "PricingPlanDataSource", metadata: {"deprecatedMessage"=>"Deprecated. Unused."}))
    ListTrackersResponseEntry.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TrackerName"))
    ListTrackersResponseEntry.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    ListTrackersResponseEntry.struct_class = Types::ListTrackersResponseEntry

    ListTrackersResponseEntryList.member = Shapes::ShapeRef.new(shape: ListTrackersResponseEntry)

    MapConfiguration.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode3, location_name: "PoliticalView"))
    MapConfiguration.add_member(:style, Shapes::ShapeRef.new(shape: MapStyle, required: true, location_name: "Style"))
    MapConfiguration.struct_class = Types::MapConfiguration

    MapConfigurationUpdate.add_member(:political_view, Shapes::ShapeRef.new(shape: CountryCode3OrEmpty, location_name: "PoliticalView"))
    MapConfigurationUpdate.struct_class = Types::MapConfigurationUpdate

    Place.add_member(:address_number, Shapes::ShapeRef.new(shape: String, location_name: "AddressNumber"))
    Place.add_member(:categories, Shapes::ShapeRef.new(shape: PlaceCategoryList, location_name: "Categories"))
    Place.add_member(:country, Shapes::ShapeRef.new(shape: String, location_name: "Country"))
    Place.add_member(:geometry, Shapes::ShapeRef.new(shape: PlaceGeometry, required: true, location_name: "Geometry"))
    Place.add_member(:interpolated, Shapes::ShapeRef.new(shape: Boolean, location_name: "Interpolated"))
    Place.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "Label"))
    Place.add_member(:municipality, Shapes::ShapeRef.new(shape: String, location_name: "Municipality"))
    Place.add_member(:neighborhood, Shapes::ShapeRef.new(shape: String, location_name: "Neighborhood"))
    Place.add_member(:postal_code, Shapes::ShapeRef.new(shape: String, location_name: "PostalCode"))
    Place.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    Place.add_member(:street, Shapes::ShapeRef.new(shape: String, location_name: "Street"))
    Place.add_member(:sub_region, Shapes::ShapeRef.new(shape: String, location_name: "SubRegion"))
    Place.add_member(:supplemental_categories, Shapes::ShapeRef.new(shape: PlaceSupplementalCategoryList, location_name: "SupplementalCategories"))
    Place.add_member(:time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "TimeZone"))
    Place.add_member(:unit_number, Shapes::ShapeRef.new(shape: String, location_name: "UnitNumber"))
    Place.add_member(:unit_type, Shapes::ShapeRef.new(shape: String, location_name: "UnitType"))
    Place.struct_class = Types::Place

    PlaceCategoryList.member = Shapes::ShapeRef.new(shape: PlaceCategory)

    PlaceGeometry.add_member(:point, Shapes::ShapeRef.new(shape: Position, location_name: "Point"))
    PlaceGeometry.struct_class = Types::PlaceGeometry

    PlaceSupplementalCategoryList.member = Shapes::ShapeRef.new(shape: PlaceSupplementalCategory)

    Position.member = Shapes::ShapeRef.new(shape: Double)

    PositionalAccuracy.add_member(:horizontal, Shapes::ShapeRef.new(shape: PositionalAccuracyHorizontalDouble, required: true, location_name: "Horizontal"))
    PositionalAccuracy.struct_class = Types::PositionalAccuracy

    PropertyMap.key = Shapes::ShapeRef.new(shape: PropertyMapKeyString)
    PropertyMap.value = Shapes::ShapeRef.new(shape: PropertyMapValueString)

    PutGeofenceRequest.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CollectionName"))
    PutGeofenceRequest.add_member(:geofence_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "GeofenceId"))
    PutGeofenceRequest.add_member(:geofence_properties, Shapes::ShapeRef.new(shape: PropertyMap, location_name: "GeofenceProperties"))
    PutGeofenceRequest.add_member(:geometry, Shapes::ShapeRef.new(shape: GeofenceGeometry, required: true, location_name: "Geometry"))
    PutGeofenceRequest.struct_class = Types::PutGeofenceRequest

    PutGeofenceResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    PutGeofenceResponse.add_member(:geofence_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "GeofenceId"))
    PutGeofenceResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    PutGeofenceResponse.struct_class = Types::PutGeofenceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RouteMatrix.member = Shapes::ShapeRef.new(shape: RouteMatrixRow)

    RouteMatrixEntry.add_member(:distance, Shapes::ShapeRef.new(shape: RouteMatrixEntryDistanceDouble, location_name: "Distance"))
    RouteMatrixEntry.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: RouteMatrixEntryDurationSecondsDouble, location_name: "DurationSeconds"))
    RouteMatrixEntry.add_member(:error, Shapes::ShapeRef.new(shape: RouteMatrixEntryError, location_name: "Error"))
    RouteMatrixEntry.struct_class = Types::RouteMatrixEntry

    RouteMatrixEntryError.add_member(:code, Shapes::ShapeRef.new(shape: RouteMatrixErrorCode, required: true, location_name: "Code"))
    RouteMatrixEntryError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    RouteMatrixEntryError.struct_class = Types::RouteMatrixEntryError

    RouteMatrixRow.member = Shapes::ShapeRef.new(shape: RouteMatrixEntry)

    SearchForPositionResult.add_member(:distance, Shapes::ShapeRef.new(shape: SearchForPositionResultDistanceDouble, required: true, location_name: "Distance"))
    SearchForPositionResult.add_member(:place, Shapes::ShapeRef.new(shape: Place, required: true, location_name: "Place"))
    SearchForPositionResult.add_member(:place_id, Shapes::ShapeRef.new(shape: PlaceId, location_name: "PlaceId"))
    SearchForPositionResult.struct_class = Types::SearchForPositionResult

    SearchForPositionResultList.member = Shapes::ShapeRef.new(shape: SearchForPositionResult)

    SearchForSuggestionsResult.add_member(:categories, Shapes::ShapeRef.new(shape: PlaceCategoryList, location_name: "Categories"))
    SearchForSuggestionsResult.add_member(:place_id, Shapes::ShapeRef.new(shape: PlaceId, location_name: "PlaceId"))
    SearchForSuggestionsResult.add_member(:supplemental_categories, Shapes::ShapeRef.new(shape: PlaceSupplementalCategoryList, location_name: "SupplementalCategories"))
    SearchForSuggestionsResult.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Text"))
    SearchForSuggestionsResult.struct_class = Types::SearchForSuggestionsResult

    SearchForSuggestionsResultList.member = Shapes::ShapeRef.new(shape: SearchForSuggestionsResult)

    SearchForTextResult.add_member(:distance, Shapes::ShapeRef.new(shape: SearchForTextResultDistanceDouble, location_name: "Distance"))
    SearchForTextResult.add_member(:place, Shapes::ShapeRef.new(shape: Place, required: true, location_name: "Place"))
    SearchForTextResult.add_member(:place_id, Shapes::ShapeRef.new(shape: PlaceId, location_name: "PlaceId"))
    SearchForTextResult.add_member(:relevance, Shapes::ShapeRef.new(shape: SearchForTextResultRelevanceDouble, location_name: "Relevance"))
    SearchForTextResult.struct_class = Types::SearchForTextResult

    SearchForTextResultList.member = Shapes::ShapeRef.new(shape: SearchForTextResult)

    SearchPlaceIndexForPositionRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "IndexName"))
    SearchPlaceIndexForPositionRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    SearchPlaceIndexForPositionRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    SearchPlaceIndexForPositionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PlaceIndexSearchResultLimit, location_name: "MaxResults"))
    SearchPlaceIndexForPositionRequest.add_member(:position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "Position"))
    SearchPlaceIndexForPositionRequest.struct_class = Types::SearchPlaceIndexForPositionRequest

    SearchPlaceIndexForPositionResponse.add_member(:results, Shapes::ShapeRef.new(shape: SearchForPositionResultList, required: true, location_name: "Results"))
    SearchPlaceIndexForPositionResponse.add_member(:summary, Shapes::ShapeRef.new(shape: SearchPlaceIndexForPositionSummary, required: true, location_name: "Summary"))
    SearchPlaceIndexForPositionResponse.struct_class = Types::SearchPlaceIndexForPositionResponse

    SearchPlaceIndexForPositionSummary.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    SearchPlaceIndexForPositionSummary.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    SearchPlaceIndexForPositionSummary.add_member(:max_results, Shapes::ShapeRef.new(shape: PlaceIndexSearchResultLimit, location_name: "MaxResults"))
    SearchPlaceIndexForPositionSummary.add_member(:position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "Position"))
    SearchPlaceIndexForPositionSummary.struct_class = Types::SearchPlaceIndexForPositionSummary

    SearchPlaceIndexForSuggestionsRequest.add_member(:bias_position, Shapes::ShapeRef.new(shape: Position, location_name: "BiasPosition"))
    SearchPlaceIndexForSuggestionsRequest.add_member(:filter_b_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "FilterBBox"))
    SearchPlaceIndexForSuggestionsRequest.add_member(:filter_categories, Shapes::ShapeRef.new(shape: FilterPlaceCategoryList, location_name: "FilterCategories"))
    SearchPlaceIndexForSuggestionsRequest.add_member(:filter_countries, Shapes::ShapeRef.new(shape: CountryCodeList, location_name: "FilterCountries"))
    SearchPlaceIndexForSuggestionsRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "IndexName"))
    SearchPlaceIndexForSuggestionsRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    SearchPlaceIndexForSuggestionsRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    SearchPlaceIndexForSuggestionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchPlaceIndexForSuggestionsRequestMaxResultsInteger, location_name: "MaxResults"))
    SearchPlaceIndexForSuggestionsRequest.add_member(:text, Shapes::ShapeRef.new(shape: SearchPlaceIndexForSuggestionsRequestTextString, required: true, location_name: "Text"))
    SearchPlaceIndexForSuggestionsRequest.struct_class = Types::SearchPlaceIndexForSuggestionsRequest

    SearchPlaceIndexForSuggestionsResponse.add_member(:results, Shapes::ShapeRef.new(shape: SearchForSuggestionsResultList, required: true, location_name: "Results"))
    SearchPlaceIndexForSuggestionsResponse.add_member(:summary, Shapes::ShapeRef.new(shape: SearchPlaceIndexForSuggestionsSummary, required: true, location_name: "Summary"))
    SearchPlaceIndexForSuggestionsResponse.struct_class = Types::SearchPlaceIndexForSuggestionsResponse

    SearchPlaceIndexForSuggestionsSummary.add_member(:bias_position, Shapes::ShapeRef.new(shape: Position, location_name: "BiasPosition"))
    SearchPlaceIndexForSuggestionsSummary.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    SearchPlaceIndexForSuggestionsSummary.add_member(:filter_b_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "FilterBBox"))
    SearchPlaceIndexForSuggestionsSummary.add_member(:filter_categories, Shapes::ShapeRef.new(shape: FilterPlaceCategoryList, location_name: "FilterCategories"))
    SearchPlaceIndexForSuggestionsSummary.add_member(:filter_countries, Shapes::ShapeRef.new(shape: CountryCodeList, location_name: "FilterCountries"))
    SearchPlaceIndexForSuggestionsSummary.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    SearchPlaceIndexForSuggestionsSummary.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    SearchPlaceIndexForSuggestionsSummary.add_member(:text, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "Text"))
    SearchPlaceIndexForSuggestionsSummary.struct_class = Types::SearchPlaceIndexForSuggestionsSummary

    SearchPlaceIndexForTextRequest.add_member(:bias_position, Shapes::ShapeRef.new(shape: Position, location_name: "BiasPosition"))
    SearchPlaceIndexForTextRequest.add_member(:filter_b_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "FilterBBox"))
    SearchPlaceIndexForTextRequest.add_member(:filter_categories, Shapes::ShapeRef.new(shape: FilterPlaceCategoryList, location_name: "FilterCategories"))
    SearchPlaceIndexForTextRequest.add_member(:filter_countries, Shapes::ShapeRef.new(shape: CountryCodeList, location_name: "FilterCountries"))
    SearchPlaceIndexForTextRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "IndexName"))
    SearchPlaceIndexForTextRequest.add_member(:key, Shapes::ShapeRef.new(shape: ApiKey, location: "querystring", location_name: "key"))
    SearchPlaceIndexForTextRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    SearchPlaceIndexForTextRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PlaceIndexSearchResultLimit, location_name: "MaxResults"))
    SearchPlaceIndexForTextRequest.add_member(:text, Shapes::ShapeRef.new(shape: SearchPlaceIndexForTextRequestTextString, required: true, location_name: "Text"))
    SearchPlaceIndexForTextRequest.struct_class = Types::SearchPlaceIndexForTextRequest

    SearchPlaceIndexForTextResponse.add_member(:results, Shapes::ShapeRef.new(shape: SearchForTextResultList, required: true, location_name: "Results"))
    SearchPlaceIndexForTextResponse.add_member(:summary, Shapes::ShapeRef.new(shape: SearchPlaceIndexForTextSummary, required: true, location_name: "Summary"))
    SearchPlaceIndexForTextResponse.struct_class = Types::SearchPlaceIndexForTextResponse

    SearchPlaceIndexForTextSummary.add_member(:bias_position, Shapes::ShapeRef.new(shape: Position, location_name: "BiasPosition"))
    SearchPlaceIndexForTextSummary.add_member(:data_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataSource"))
    SearchPlaceIndexForTextSummary.add_member(:filter_b_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "FilterBBox"))
    SearchPlaceIndexForTextSummary.add_member(:filter_categories, Shapes::ShapeRef.new(shape: FilterPlaceCategoryList, location_name: "FilterCategories"))
    SearchPlaceIndexForTextSummary.add_member(:filter_countries, Shapes::ShapeRef.new(shape: CountryCodeList, location_name: "FilterCountries"))
    SearchPlaceIndexForTextSummary.add_member(:language, Shapes::ShapeRef.new(shape: LanguageTag, location_name: "Language"))
    SearchPlaceIndexForTextSummary.add_member(:max_results, Shapes::ShapeRef.new(shape: PlaceIndexSearchResultLimit, location_name: "MaxResults"))
    SearchPlaceIndexForTextSummary.add_member(:result_b_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "ResultBBox"))
    SearchPlaceIndexForTextSummary.add_member(:text, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "Text"))
    SearchPlaceIndexForTextSummary.struct_class = Types::SearchPlaceIndexForTextSummary

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Step.add_member(:distance, Shapes::ShapeRef.new(shape: StepDistanceDouble, required: true, location_name: "Distance"))
    Step.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: StepDurationSecondsDouble, required: true, location_name: "DurationSeconds"))
    Step.add_member(:end_position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "EndPosition"))
    Step.add_member(:geometry_offset, Shapes::ShapeRef.new(shape: StepGeometryOffsetInteger, location_name: "GeometryOffset"))
    Step.add_member(:start_position, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "StartPosition"))
    Step.struct_class = Types::Step

    StepList.member = Shapes::ShapeRef.new(shape: Step)

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeZone.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    TimeZone.add_member(:offset, Shapes::ShapeRef.new(shape: Integer, location_name: "Offset"))
    TimeZone.struct_class = Types::TimeZone

    TruckDimensions.add_member(:height, Shapes::ShapeRef.new(shape: TruckDimensionsHeightDouble, location_name: "Height"))
    TruckDimensions.add_member(:length, Shapes::ShapeRef.new(shape: TruckDimensionsLengthDouble, location_name: "Length"))
    TruckDimensions.add_member(:unit, Shapes::ShapeRef.new(shape: DimensionUnit, location_name: "Unit"))
    TruckDimensions.add_member(:width, Shapes::ShapeRef.new(shape: TruckDimensionsWidthDouble, location_name: "Width"))
    TruckDimensions.struct_class = Types::TruckDimensions

    TruckWeight.add_member(:total, Shapes::ShapeRef.new(shape: TruckWeightTotalDouble, location_name: "Total"))
    TruckWeight.add_member(:unit, Shapes::ShapeRef.new(shape: VehicleWeightUnit, location_name: "Unit"))
    TruckWeight.struct_class = Types::TruckWeight

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateGeofenceCollectionRequest.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CollectionName"))
    UpdateGeofenceCollectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateGeofenceCollectionRequest.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. If included, the only allowed value is RequestBasedUsage."}))
    UpdateGeofenceCollectionRequest.add_member(:pricing_plan_data_source, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "PricingPlanDataSource", metadata: {"deprecatedMessage"=>"Deprecated. No longer allowed."}))
    UpdateGeofenceCollectionRequest.struct_class = Types::UpdateGeofenceCollectionRequest

    UpdateGeofenceCollectionResponse.add_member(:collection_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CollectionArn"))
    UpdateGeofenceCollectionResponse.add_member(:collection_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "CollectionName"))
    UpdateGeofenceCollectionResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    UpdateGeofenceCollectionResponse.struct_class = Types::UpdateGeofenceCollectionResponse

    UpdateKeyRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateKeyRequest.add_member(:expire_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpireTime"))
    UpdateKeyRequest.add_member(:force_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "ForceUpdate"))
    UpdateKeyRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "KeyName"))
    UpdateKeyRequest.add_member(:no_expiry, Shapes::ShapeRef.new(shape: Boolean, location_name: "NoExpiry"))
    UpdateKeyRequest.add_member(:restrictions, Shapes::ShapeRef.new(shape: ApiKeyRestrictions, location_name: "Restrictions"))
    UpdateKeyRequest.struct_class = Types::UpdateKeyRequest

    UpdateKeyResponse.add_member(:key_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "KeyArn"))
    UpdateKeyResponse.add_member(:key_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "KeyName"))
    UpdateKeyResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    UpdateKeyResponse.struct_class = Types::UpdateKeyResponse

    UpdateMapRequest.add_member(:configuration_update, Shapes::ShapeRef.new(shape: MapConfigurationUpdate, location_name: "ConfigurationUpdate"))
    UpdateMapRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateMapRequest.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MapName"))
    UpdateMapRequest.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. If included, the only allowed value is RequestBasedUsage."}))
    UpdateMapRequest.struct_class = Types::UpdateMapRequest

    UpdateMapResponse.add_member(:map_arn, Shapes::ShapeRef.new(shape: GeoArn, required: true, location_name: "MapArn"))
    UpdateMapResponse.add_member(:map_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "MapName"))
    UpdateMapResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    UpdateMapResponse.struct_class = Types::UpdateMapResponse

    UpdatePlaceIndexRequest.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "DataSourceConfiguration"))
    UpdatePlaceIndexRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdatePlaceIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "IndexName"))
    UpdatePlaceIndexRequest.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. If included, the only allowed value is RequestBasedUsage."}))
    UpdatePlaceIndexRequest.struct_class = Types::UpdatePlaceIndexRequest

    UpdatePlaceIndexResponse.add_member(:index_arn, Shapes::ShapeRef.new(shape: GeoArn, required: true, location_name: "IndexArn"))
    UpdatePlaceIndexResponse.add_member(:index_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "IndexName"))
    UpdatePlaceIndexResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    UpdatePlaceIndexResponse.struct_class = Types::UpdatePlaceIndexResponse

    UpdateRouteCalculatorRequest.add_member(:calculator_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "CalculatorName"))
    UpdateRouteCalculatorRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateRouteCalculatorRequest.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. If included, the only allowed value is RequestBasedUsage."}))
    UpdateRouteCalculatorRequest.struct_class = Types::UpdateRouteCalculatorRequest

    UpdateRouteCalculatorResponse.add_member(:calculator_arn, Shapes::ShapeRef.new(shape: GeoArn, required: true, location_name: "CalculatorArn"))
    UpdateRouteCalculatorResponse.add_member(:calculator_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "CalculatorName"))
    UpdateRouteCalculatorResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    UpdateRouteCalculatorResponse.struct_class = Types::UpdateRouteCalculatorResponse

    UpdateTrackerRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateTrackerRequest.add_member(:event_bridge_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "EventBridgeEnabled"))
    UpdateTrackerRequest.add_member(:position_filtering, Shapes::ShapeRef.new(shape: PositionFiltering, location_name: "PositionFiltering"))
    UpdateTrackerRequest.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlan, deprecated: true, location_name: "PricingPlan", metadata: {"deprecatedMessage"=>"Deprecated. If included, the only allowed value is RequestBasedUsage."}))
    UpdateTrackerRequest.add_member(:pricing_plan_data_source, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "PricingPlanDataSource", metadata: {"deprecatedMessage"=>"Deprecated. No longer allowed."}))
    UpdateTrackerRequest.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "TrackerName"))
    UpdateTrackerRequest.struct_class = Types::UpdateTrackerRequest

    UpdateTrackerResponse.add_member(:tracker_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "TrackerArn"))
    UpdateTrackerResponse.add_member(:tracker_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TrackerName"))
    UpdateTrackerResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdateTime"))
    UpdateTrackerResponse.struct_class = Types::UpdateTrackerResponse

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, required: true, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-11-19"

      api.metadata = {
        "apiVersion" => "2020-11-19",
        "endpointPrefix" => "geo",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Location Service",
        "serviceId" => "Location",
        "signatureVersion" => "v4",
        "signingName" => "geo",
        "uid" => "location-2020-11-19",
      }

      api.add_operation(:associate_tracker_consumer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateTrackerConsumer"
        o.http_method = "POST"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}/consumers"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssociateTrackerConsumerRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateTrackerConsumerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_delete_device_position_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteDevicePositionHistory"
        o.http_method = "POST"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}/delete-positions"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteDevicePositionHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteDevicePositionHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_delete_geofence, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteGeofence"
        o.http_method = "POST"
        o.http_request_uri = "/geofencing/v0/collections/{CollectionName}/delete-geofences"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteGeofenceRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteGeofenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_evaluate_geofences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchEvaluateGeofences"
        o.http_method = "POST"
        o.http_request_uri = "/geofencing/v0/collections/{CollectionName}/positions"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchEvaluateGeofencesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchEvaluateGeofencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_get_device_position, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDevicePosition"
        o.http_method = "POST"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}/get-positions"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchGetDevicePositionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDevicePositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_put_geofence, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutGeofence"
        o.http_method = "POST"
        o.http_request_uri = "/geofencing/v0/collections/{CollectionName}/put-geofences"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchPutGeofenceRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutGeofenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_update_device_position, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateDevicePosition"
        o.http_method = "POST"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}/positions"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateDevicePositionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateDevicePositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:calculate_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CalculateRoute"
        o.http_method = "POST"
        o.http_request_uri = "/routes/v0/calculators/{CalculatorName}/calculate/route"
        o.endpoint_pattern = {
          "hostPrefix" => "routes.",
        }
        o.input = Shapes::ShapeRef.new(shape: CalculateRouteRequest)
        o.output = Shapes::ShapeRef.new(shape: CalculateRouteResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:calculate_route_matrix, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CalculateRouteMatrix"
        o.http_method = "POST"
        o.http_request_uri = "/routes/v0/calculators/{CalculatorName}/calculate/route-matrix"
        o.endpoint_pattern = {
          "hostPrefix" => "routes.",
        }
        o.input = Shapes::ShapeRef.new(shape: CalculateRouteMatrixRequest)
        o.output = Shapes::ShapeRef.new(shape: CalculateRouteMatrixResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_geofence_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGeofenceCollection"
        o.http_method = "POST"
        o.http_request_uri = "/geofencing/v0/collections"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateGeofenceCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGeofenceCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKey"
        o.http_method = "POST"
        o.http_request_uri = "/metadata/v0/keys"
        o.endpoint_pattern = {
          "hostPrefix" => "metadata.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_map, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMap"
        o.http_method = "POST"
        o.http_request_uri = "/maps/v0/maps"
        o.endpoint_pattern = {
          "hostPrefix" => "maps.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateMapRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMapResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_place_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePlaceIndex"
        o.http_method = "POST"
        o.http_request_uri = "/places/v0/indexes"
        o.endpoint_pattern = {
          "hostPrefix" => "places.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreatePlaceIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePlaceIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_route_calculator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRouteCalculator"
        o.http_method = "POST"
        o.http_request_uri = "/routes/v0/calculators"
        o.endpoint_pattern = {
          "hostPrefix" => "routes.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateRouteCalculatorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRouteCalculatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_tracker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTracker"
        o.http_method = "POST"
        o.http_request_uri = "/tracking/v0/trackers"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateTrackerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrackerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_geofence_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGeofenceCollection"
        o.http_method = "DELETE"
        o.http_request_uri = "/geofencing/v0/collections/{CollectionName}"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteGeofenceCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGeofenceCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKey"
        o.http_method = "DELETE"
        o.http_request_uri = "/metadata/v0/keys/{KeyName}"
        o.endpoint_pattern = {
          "hostPrefix" => "metadata.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_map, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMap"
        o.http_method = "DELETE"
        o.http_request_uri = "/maps/v0/maps/{MapName}"
        o.endpoint_pattern = {
          "hostPrefix" => "maps.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteMapRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMapResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_place_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePlaceIndex"
        o.http_method = "DELETE"
        o.http_request_uri = "/places/v0/indexes/{IndexName}"
        o.endpoint_pattern = {
          "hostPrefix" => "places.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeletePlaceIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePlaceIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_route_calculator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRouteCalculator"
        o.http_method = "DELETE"
        o.http_request_uri = "/routes/v0/calculators/{CalculatorName}"
        o.endpoint_pattern = {
          "hostPrefix" => "routes.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteRouteCalculatorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRouteCalculatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_tracker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTracker"
        o.http_method = "DELETE"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteTrackerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrackerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_geofence_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGeofenceCollection"
        o.http_method = "GET"
        o.http_request_uri = "/geofencing/v0/collections/{CollectionName}"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeGeofenceCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGeofenceCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeKey"
        o.http_method = "GET"
        o.http_request_uri = "/metadata/v0/keys/{KeyName}"
        o.endpoint_pattern = {
          "hostPrefix" => "metadata.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_map, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMap"
        o.http_method = "GET"
        o.http_request_uri = "/maps/v0/maps/{MapName}"
        o.endpoint_pattern = {
          "hostPrefix" => "maps.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeMapRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMapResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_place_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePlaceIndex"
        o.http_method = "GET"
        o.http_request_uri = "/places/v0/indexes/{IndexName}"
        o.endpoint_pattern = {
          "hostPrefix" => "places.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribePlaceIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePlaceIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_route_calculator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRouteCalculator"
        o.http_method = "GET"
        o.http_request_uri = "/routes/v0/calculators/{CalculatorName}"
        o.endpoint_pattern = {
          "hostPrefix" => "routes.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeRouteCalculatorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRouteCalculatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_tracker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTracker"
        o.http_method = "GET"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeTrackerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrackerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_tracker_consumer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateTrackerConsumer"
        o.http_method = "DELETE"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}/consumers/{ConsumerArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: DisassociateTrackerConsumerRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateTrackerConsumerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_device_position, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevicePosition"
        o.http_method = "GET"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/positions/latest"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetDevicePositionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDevicePositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_device_position_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevicePositionHistory"
        o.http_method = "POST"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/list-positions"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetDevicePositionHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDevicePositionHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_geofence, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGeofence"
        o.http_method = "GET"
        o.http_request_uri = "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetGeofenceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGeofenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_map_glyphs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMapGlyphs"
        o.http_method = "GET"
        o.http_request_uri = "/maps/v0/maps/{MapName}/glyphs/{FontStack}/{FontUnicodeRange}"
        o.endpoint_pattern = {
          "hostPrefix" => "maps.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetMapGlyphsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMapGlyphsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_map_sprites, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMapSprites"
        o.http_method = "GET"
        o.http_request_uri = "/maps/v0/maps/{MapName}/sprites/{FileName}"
        o.endpoint_pattern = {
          "hostPrefix" => "maps.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetMapSpritesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMapSpritesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_map_style_descriptor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMapStyleDescriptor"
        o.http_method = "GET"
        o.http_request_uri = "/maps/v0/maps/{MapName}/style-descriptor"
        o.endpoint_pattern = {
          "hostPrefix" => "maps.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetMapStyleDescriptorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMapStyleDescriptorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_map_tile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMapTile"
        o.http_method = "GET"
        o.http_request_uri = "/maps/v0/maps/{MapName}/tiles/{Z}/{X}/{Y}"
        o.endpoint_pattern = {
          "hostPrefix" => "maps.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetMapTileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMapTileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_place, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlace"
        o.http_method = "GET"
        o.http_request_uri = "/places/v0/indexes/{IndexName}/places/{PlaceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "places.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetPlaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_device_positions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevicePositions"
        o.http_method = "POST"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}/list-positions"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDevicePositionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevicePositionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_geofence_collections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGeofenceCollections"
        o.http_method = "POST"
        o.http_request_uri = "/geofencing/v0/list-collections"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListGeofenceCollectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGeofenceCollectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_geofences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGeofences"
        o.http_method = "POST"
        o.http_request_uri = "/geofencing/v0/collections/{CollectionName}/list-geofences"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListGeofencesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGeofencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKeys"
        o.http_method = "POST"
        o.http_request_uri = "/metadata/v0/list-keys"
        o.endpoint_pattern = {
          "hostPrefix" => "metadata.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_maps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMaps"
        o.http_method = "POST"
        o.http_request_uri = "/maps/v0/list-maps"
        o.endpoint_pattern = {
          "hostPrefix" => "maps.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListMapsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMapsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_place_indexes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlaceIndexes"
        o.http_method = "POST"
        o.http_request_uri = "/places/v0/list-indexes"
        o.endpoint_pattern = {
          "hostPrefix" => "places.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListPlaceIndexesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlaceIndexesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_route_calculators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRouteCalculators"
        o.http_method = "POST"
        o.http_request_uri = "/routes/v0/list-calculators"
        o.endpoint_pattern = {
          "hostPrefix" => "routes.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListRouteCalculatorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRouteCalculatorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "metadata.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_tracker_consumers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrackerConsumers"
        o.http_method = "POST"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}/list-consumers"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTrackerConsumersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrackerConsumersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_trackers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrackers"
        o.http_method = "POST"
        o.http_request_uri = "/tracking/v0/list-trackers"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTrackersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrackersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_geofence, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutGeofence"
        o.http_method = "PUT"
        o.http_request_uri = "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: PutGeofenceRequest)
        o.output = Shapes::ShapeRef.new(shape: PutGeofenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:search_place_index_for_position, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchPlaceIndexForPosition"
        o.http_method = "POST"
        o.http_request_uri = "/places/v0/indexes/{IndexName}/search/position"
        o.endpoint_pattern = {
          "hostPrefix" => "places.",
        }
        o.input = Shapes::ShapeRef.new(shape: SearchPlaceIndexForPositionRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchPlaceIndexForPositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:search_place_index_for_suggestions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchPlaceIndexForSuggestions"
        o.http_method = "POST"
        o.http_request_uri = "/places/v0/indexes/{IndexName}/search/suggestions"
        o.endpoint_pattern = {
          "hostPrefix" => "places.",
        }
        o.input = Shapes::ShapeRef.new(shape: SearchPlaceIndexForSuggestionsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchPlaceIndexForSuggestionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:search_place_index_for_text, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchPlaceIndexForText"
        o.http_method = "POST"
        o.http_request_uri = "/places/v0/indexes/{IndexName}/search/text"
        o.endpoint_pattern = {
          "hostPrefix" => "places.",
        }
        o.input = Shapes::ShapeRef.new(shape: SearchPlaceIndexForTextRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchPlaceIndexForTextResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "metadata.",
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "metadata.",
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_geofence_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGeofenceCollection"
        o.http_method = "PATCH"
        o.http_request_uri = "/geofencing/v0/collections/{CollectionName}"
        o.endpoint_pattern = {
          "hostPrefix" => "geofencing.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateGeofenceCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGeofenceCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKey"
        o.http_method = "PATCH"
        o.http_request_uri = "/metadata/v0/keys/{KeyName}"
        o.endpoint_pattern = {
          "hostPrefix" => "metadata.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_map, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMap"
        o.http_method = "PATCH"
        o.http_request_uri = "/maps/v0/maps/{MapName}"
        o.endpoint_pattern = {
          "hostPrefix" => "maps.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateMapRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMapResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_place_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePlaceIndex"
        o.http_method = "PATCH"
        o.http_request_uri = "/places/v0/indexes/{IndexName}"
        o.endpoint_pattern = {
          "hostPrefix" => "places.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdatePlaceIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePlaceIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_route_calculator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRouteCalculator"
        o.http_method = "PATCH"
        o.http_request_uri = "/routes/v0/calculators/{CalculatorName}"
        o.endpoint_pattern = {
          "hostPrefix" => "routes.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateRouteCalculatorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRouteCalculatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_tracker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTracker"
        o.http_method = "PATCH"
        o.http_request_uri = "/tracking/v0/trackers/{TrackerName}"
        o.endpoint_pattern = {
          "hostPrefix" => "tracking.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateTrackerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTrackerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
