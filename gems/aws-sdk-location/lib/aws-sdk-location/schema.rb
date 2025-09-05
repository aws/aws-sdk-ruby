# frozen_string_literal: true

# This is generated code!

module Aws::Location
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ApiKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#ApiKey', name: 'ApiKey', traits: {"smithy.api#externalDocumentation" => {"Implementation Guide" => "https://github.com/paseto-standard/paseto-spec/blob/master/docs/02-Implementation-Guide/03-Algorithm-Lucidity.md"}, "smithy.api#length" => {"max" => 1000}, "smithy.api#sensitive" => {}})
    ApiKeyAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#ApiKeyAction', name: 'ApiKeyAction', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^(geo|geo-routes|geo-places|geo-maps):\\w*\\*?$"})
    ApiKeyActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ApiKeyActionList', name: 'ApiKeyActionList')
    ApiKeyFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ApiKeyFilter', name: 'ApiKeyFilter')
    ApiKeyRestrictions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ApiKeyRestrictions', name: 'ApiKeyRestrictions')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#Arn', name: 'Arn', traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"max" => 1600}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:([^/].*)?$"})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ArnList', name: 'ArnList')
    AssociateTrackerConsumerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#AssociateTrackerConsumerInput', name: 'AssociateTrackerConsumerInput')
    AssociateTrackerConsumerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#AssociateTrackerConsumerOutput', name: 'AssociateTrackerConsumerOutput')
    Base64EncodedGeobuf = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.location#Base64EncodedGeobuf', name: 'Base64EncodedGeobuf', traits: {"smithy.api#length" => {"max" => 700000}, "smithy.api#sensitive" => {}})
    BatchDeleteDevicePositionHistoryError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchDeleteDevicePositionHistoryError', name: 'BatchDeleteDevicePositionHistoryError')
    BatchDeleteDevicePositionHistoryErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#BatchDeleteDevicePositionHistoryErrorList', name: 'BatchDeleteDevicePositionHistoryErrorList')
    BatchDeleteDevicePositionHistoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchDeleteDevicePositionHistoryInput', name: 'BatchDeleteDevicePositionHistoryInput')
    BatchDeleteDevicePositionHistoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchDeleteDevicePositionHistoryOutput', name: 'BatchDeleteDevicePositionHistoryOutput')
    BatchDeleteGeofenceError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchDeleteGeofenceError', name: 'BatchDeleteGeofenceError')
    BatchDeleteGeofenceErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#BatchDeleteGeofenceErrorList', name: 'BatchDeleteGeofenceErrorList')
    BatchDeleteGeofenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchDeleteGeofenceInput', name: 'BatchDeleteGeofenceInput')
    BatchDeleteGeofenceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchDeleteGeofenceOutput', name: 'BatchDeleteGeofenceOutput')
    BatchEvaluateGeofencesError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchEvaluateGeofencesError', name: 'BatchEvaluateGeofencesError')
    BatchEvaluateGeofencesErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#BatchEvaluateGeofencesErrorList', name: 'BatchEvaluateGeofencesErrorList')
    BatchEvaluateGeofencesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchEvaluateGeofencesInput', name: 'BatchEvaluateGeofencesInput')
    BatchEvaluateGeofencesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchEvaluateGeofencesOutput', name: 'BatchEvaluateGeofencesOutput')
    BatchGetDevicePositionError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchGetDevicePositionError', name: 'BatchGetDevicePositionError')
    BatchGetDevicePositionErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#BatchGetDevicePositionErrorList', name: 'BatchGetDevicePositionErrorList')
    BatchGetDevicePositionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchGetDevicePositionInput', name: 'BatchGetDevicePositionInput')
    BatchGetDevicePositionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchGetDevicePositionOutput', name: 'BatchGetDevicePositionOutput')
    BatchItemError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchItemError', name: 'BatchItemError')
    BatchItemErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#BatchItemErrorCode', name: 'BatchItemErrorCode', traits: {"smithy.api#enum" => [{"value" => "AccessDeniedError", "documentation" => "Access to the resource was denied."}, {"value" => "ConflictError", "documentation" => "The target resource already exists."}, {"value" => "InternalServerError", "documentation" => "Internal server error."}, {"value" => "ResourceNotFoundError", "documentation" => "The target resource does not exist."}, {"value" => "ThrottlingError", "documentation" => "Too many requests."}, {"value" => "ValidationError", "documentation" => "Input fails to satisfy the constraints specified by the service."}]})
    BatchPutGeofenceError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchPutGeofenceError', name: 'BatchPutGeofenceError')
    BatchPutGeofenceErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#BatchPutGeofenceErrorList', name: 'BatchPutGeofenceErrorList')
    BatchPutGeofenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchPutGeofenceInput', name: 'BatchPutGeofenceInput')
    BatchPutGeofenceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchPutGeofenceOutput', name: 'BatchPutGeofenceOutput')
    BatchPutGeofenceRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchPutGeofenceRequestEntry', name: 'BatchPutGeofenceRequestEntry')
    BatchPutGeofenceRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#BatchPutGeofenceRequestEntryList', name: 'BatchPutGeofenceRequestEntryList')
    BatchPutGeofenceSuccess = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchPutGeofenceSuccess', name: 'BatchPutGeofenceSuccess')
    BatchPutGeofenceSuccessList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#BatchPutGeofenceSuccessList', name: 'BatchPutGeofenceSuccessList')
    BatchUpdateDevicePositionError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchUpdateDevicePositionError', name: 'BatchUpdateDevicePositionError')
    BatchUpdateDevicePositionErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#BatchUpdateDevicePositionErrorList', name: 'BatchUpdateDevicePositionErrorList')
    BatchUpdateDevicePositionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchUpdateDevicePositionInput', name: 'BatchUpdateDevicePositionInput')
    BatchUpdateDevicePositionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#BatchUpdateDevicePositionOutput', name: 'BatchUpdateDevicePositionOutput')
    BoundingBox = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#BoundingBox', name: 'BoundingBox', traits: {"smithy.api#externalDocumentation" => {"Documentation" => "https://tools.ietf.org/html/rfc7946#section-5"}, "smithy.api#length" => {"min" => 4, "max" => 4}, "smithy.api#sensitive" => {}})
    CalculateRouteCarModeOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CalculateRouteCarModeOptions', name: 'CalculateRouteCarModeOptions')
    CalculateRouteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CalculateRouteInput', name: 'CalculateRouteInput')
    CalculateRouteMatrixInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CalculateRouteMatrixInput', name: 'CalculateRouteMatrixInput')
    CalculateRouteMatrixOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CalculateRouteMatrixOutput', name: 'CalculateRouteMatrixOutput')
    CalculateRouteMatrixSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CalculateRouteMatrixSummary', name: 'CalculateRouteMatrixSummary')
    CalculateRouteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CalculateRouteOutput', name: 'CalculateRouteOutput')
    CalculateRouteSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CalculateRouteSummary', name: 'CalculateRouteSummary')
    CalculateRouteTruckModeOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CalculateRouteTruckModeOptions', name: 'CalculateRouteTruckModeOptions')
    CellSignals = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CellSignals', name: 'CellSignals')
    Circle = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#Circle', name: 'Circle', traits: {"smithy.api#sensitive" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CountryCode3 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#CountryCode3', name: 'CountryCode3', traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^[A-Z]{3}$", "smithy.api#sensitive" => {}})
    CountryCode3OrEmpty = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#CountryCode3OrEmpty', name: 'CountryCode3OrEmpty', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}, "smithy.api#pattern" => "^[A-Z]{3}$|^$", "smithy.api#sensitive" => {}})
    CountryCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#CountryCodeList', name: 'CountryCodeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CreateGeofenceCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreateGeofenceCollectionInput', name: 'CreateGeofenceCollectionInput')
    CreateGeofenceCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreateGeofenceCollectionOutput', name: 'CreateGeofenceCollectionOutput')
    CreateKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreateKeyInput', name: 'CreateKeyInput')
    CreateKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreateKeyOutput', name: 'CreateKeyOutput')
    CreateMapInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreateMapInput', name: 'CreateMapInput')
    CreateMapOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreateMapOutput', name: 'CreateMapOutput')
    CreatePlaceIndexInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreatePlaceIndexInput', name: 'CreatePlaceIndexInput')
    CreatePlaceIndexOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreatePlaceIndexOutput', name: 'CreatePlaceIndexOutput')
    CreateRouteCalculatorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreateRouteCalculatorInput', name: 'CreateRouteCalculatorInput')
    CreateRouteCalculatorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreateRouteCalculatorOutput', name: 'CreateRouteCalculatorOutput')
    CreateTrackerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreateTrackerInput', name: 'CreateTrackerInput')
    CreateTrackerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#CreateTrackerOutput', name: 'CreateTrackerOutput')
    CustomLayer = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#CustomLayer', name: 'CustomLayer', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-._\\w]+$"})
    CustomLayerList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#CustomLayerList', name: 'CustomLayerList', traits: {"smithy.api#length" => {"max" => 10}})
    DataSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DataSourceConfiguration', name: 'DataSourceConfiguration')
    DeleteGeofenceCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeleteGeofenceCollectionInput', name: 'DeleteGeofenceCollectionInput')
    DeleteGeofenceCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeleteGeofenceCollectionOutput', name: 'DeleteGeofenceCollectionOutput')
    DeleteKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeleteKeyInput', name: 'DeleteKeyInput')
    DeleteKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeleteKeyOutput', name: 'DeleteKeyOutput')
    DeleteMapInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeleteMapInput', name: 'DeleteMapInput')
    DeleteMapOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeleteMapOutput', name: 'DeleteMapOutput')
    DeletePlaceIndexInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeletePlaceIndexInput', name: 'DeletePlaceIndexInput')
    DeletePlaceIndexOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeletePlaceIndexOutput', name: 'DeletePlaceIndexOutput')
    DeleteRouteCalculatorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeleteRouteCalculatorInput', name: 'DeleteRouteCalculatorInput')
    DeleteRouteCalculatorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeleteRouteCalculatorOutput', name: 'DeleteRouteCalculatorOutput')
    DeleteTrackerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeleteTrackerInput', name: 'DeleteTrackerInput')
    DeleteTrackerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeleteTrackerOutput', name: 'DeleteTrackerOutput')
    DescribeGeofenceCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribeGeofenceCollectionInput', name: 'DescribeGeofenceCollectionInput')
    DescribeGeofenceCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribeGeofenceCollectionOutput', name: 'DescribeGeofenceCollectionOutput')
    DescribeKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribeKeyInput', name: 'DescribeKeyInput')
    DescribeKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribeKeyOutput', name: 'DescribeKeyOutput')
    DescribeMapInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribeMapInput', name: 'DescribeMapInput')
    DescribeMapOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribeMapOutput', name: 'DescribeMapOutput')
    DescribePlaceIndexInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribePlaceIndexInput', name: 'DescribePlaceIndexInput')
    DescribePlaceIndexOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribePlaceIndexOutput', name: 'DescribePlaceIndexOutput')
    DescribeRouteCalculatorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribeRouteCalculatorInput', name: 'DescribeRouteCalculatorInput')
    DescribeRouteCalculatorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribeRouteCalculatorOutput', name: 'DescribeRouteCalculatorOutput')
    DescribeTrackerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribeTrackerInput', name: 'DescribeTrackerInput')
    DescribeTrackerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DescribeTrackerOutput', name: 'DescribeTrackerOutput')
    DeviceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#DeviceIdsList', name: 'DeviceIdsList')
    DevicePosition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DevicePosition', name: 'DevicePosition')
    DevicePositionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#DevicePositionList', name: 'DevicePositionList')
    DevicePositionUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DevicePositionUpdate', name: 'DevicePositionUpdate')
    DevicePositionUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#DevicePositionUpdateList', name: 'DevicePositionUpdateList')
    DeviceState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DeviceState', name: 'DeviceState')
    DimensionUnit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#DimensionUnit', name: 'DimensionUnit', traits: {"smithy.api#enum" => [{"value" => "Meters"}, {"value" => "Feet"}]})
    DisassociateTrackerConsumerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DisassociateTrackerConsumerInput', name: 'DisassociateTrackerConsumerInput')
    DisassociateTrackerConsumerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#DisassociateTrackerConsumerOutput', name: 'DisassociateTrackerConsumerOutput')
    DistanceUnit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#DistanceUnit', name: 'DistanceUnit', traits: {"smithy.api#enum" => [{"value" => "Kilometers"}, {"value" => "Miles"}]})
    Earfcn = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.location#Earfcn', name: 'Earfcn', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 262143}})
    EutranCellId = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.location#EutranCellId', name: 'EutranCellId', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 268435455}})
    FilterPlaceCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#FilterPlaceCategoryList', name: 'FilterPlaceCategoryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ForecastGeofenceEventsDeviceState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ForecastGeofenceEventsDeviceState', name: 'ForecastGeofenceEventsDeviceState')
    ForecastGeofenceEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ForecastGeofenceEventsRequest', name: 'ForecastGeofenceEventsRequest')
    ForecastGeofenceEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ForecastGeofenceEventsResponse', name: 'ForecastGeofenceEventsResponse')
    ForecastedEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ForecastedEvent', name: 'ForecastedEvent')
    ForecastedEventsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ForecastedEventsList', name: 'ForecastedEventsList')
    ForecastedGeofenceEventType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#ForecastedGeofenceEventType', name: 'ForecastedGeofenceEventType', traits: {"smithy.api#enum" => [{"value" => "ENTER", "documentation" => "This event type signifies that a device is forecasted to enter the geofence"}, {"value" => "EXIT", "documentation" => "This event type signifies that a device is forecasted to exit the geofence"}, {"value" => "IDLE", "documentation" => "This event type signifies that a device is stationary in the geofence and an exit/enter cannot be forecasted"}]})
    GeoArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#GeoArn', name: 'GeoArn', traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"max" => 1600}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*):geo(:([a-z0-9]+([.-][a-z0-9]+)*))(:[0-9]+):((\\*)|([-a-z]+[/][*-._\\w]+))$"})
    GeoArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#GeoArnList', name: 'GeoArnList')
    GeoArnV2 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#GeoArnV2', name: 'GeoArnV2', traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"max" => 1600}, "smithy.api#pattern" => "(^arn(:[a-z0-9]+([.-][a-z0-9]+)*):geo(:([a-z0-9]+([.-][a-z0-9]+)*))(:[0-9]+):((\\*)|([-a-z]+[/][*-._\\w]+))$)|(^arn(:[a-z0-9]+([.-][a-z0-9]+)*):(geo-routes|geo-places|geo-maps)(:((\\*)|([a-z0-9]+([.-][a-z0-9]+)*)))::((provider[\\/][*-._\\w]+))$)"})
    GeofenceGeometry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GeofenceGeometry', name: 'GeofenceGeometry')
    GetDevicePositionHistoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetDevicePositionHistoryInput', name: 'GetDevicePositionHistoryInput')
    GetDevicePositionHistoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetDevicePositionHistoryOutput', name: 'GetDevicePositionHistoryOutput')
    GetDevicePositionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetDevicePositionInput', name: 'GetDevicePositionInput')
    GetDevicePositionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetDevicePositionOutput', name: 'GetDevicePositionOutput')
    GetGeofenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetGeofenceInput', name: 'GetGeofenceInput')
    GetGeofenceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetGeofenceOutput', name: 'GetGeofenceOutput')
    GetMapGlyphsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetMapGlyphsInput', name: 'GetMapGlyphsInput')
    GetMapGlyphsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetMapGlyphsOutput', name: 'GetMapGlyphsOutput', traits: {"smithy.api#externalDocumentation" => {"Documentation" => "https://github.com/mapbox/node-fontnik"}})
    GetMapSpritesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetMapSpritesInput', name: 'GetMapSpritesInput')
    GetMapSpritesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetMapSpritesOutput', name: 'GetMapSpritesOutput')
    GetMapStyleDescriptorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetMapStyleDescriptorInput', name: 'GetMapStyleDescriptorInput')
    GetMapStyleDescriptorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetMapStyleDescriptorOutput', name: 'GetMapStyleDescriptorOutput')
    GetMapTileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetMapTileInput', name: 'GetMapTileInput')
    GetMapTileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetMapTileOutput', name: 'GetMapTileOutput')
    GetPlaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetPlaceInput', name: 'GetPlaceInput')
    GetPlaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#GetPlaceOutput', name: 'GetPlaceOutput')
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#Id', name: 'Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-._\\p{L}\\p{N}]+$"})
    IdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#IdList', name: 'IdList')
    InferredState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#InferredState', name: 'InferredState')
    IntendedUse = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#IntendedUse', name: 'IntendedUse', traits: {"smithy.api#enum" => [{"value" => "SingleUse", "documentation" => "Indicates that results of the operation are for single use, e.g., displaying results on a map or presenting options to users."}, {"value" => "Storage", "documentation" => "Indicates that results of the operation may be stored locally."}]})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    LanguageTag = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#LanguageTag', name: 'LanguageTag', traits: {"smithy.api#length" => {"min" => 2, "max" => 35}})
    LargeToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#LargeToken', name: 'LargeToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 60000}})
    Leg = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#Leg', name: 'Leg')
    LegGeometry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#LegGeometry', name: 'LegGeometry')
    LegList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#LegList', name: 'LegList')
    LineString = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#LineString', name: 'LineString', traits: {"smithy.api#externalDocumentation" => {"Documentation" => "https://tools.ietf.org/html/rfc7946#section-3.1.4"}, "smithy.api#length" => {"min" => 2}})
    LinearRing = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#LinearRing', name: 'LinearRing', traits: {"smithy.api#externalDocumentation" => {"Documentation" => "https://tools.ietf.org/html/rfc7946#section-3.1.6"}, "smithy.api#length" => {"min" => 4}})
    LinearRings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#LinearRings', name: 'LinearRings', traits: {"smithy.api#length" => {"min" => 1}})
    ListDevicePositionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListDevicePositionsInput', name: 'ListDevicePositionsInput')
    ListDevicePositionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListDevicePositionsOutput', name: 'ListDevicePositionsOutput')
    ListDevicePositionsResponseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListDevicePositionsResponseEntry', name: 'ListDevicePositionsResponseEntry')
    ListDevicePositionsResponseEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ListDevicePositionsResponseEntryList', name: 'ListDevicePositionsResponseEntryList')
    ListGeofenceCollectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListGeofenceCollectionsInput', name: 'ListGeofenceCollectionsInput')
    ListGeofenceCollectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListGeofenceCollectionsOutput', name: 'ListGeofenceCollectionsOutput')
    ListGeofenceCollectionsResponseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListGeofenceCollectionsResponseEntry', name: 'ListGeofenceCollectionsResponseEntry')
    ListGeofenceCollectionsResponseEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ListGeofenceCollectionsResponseEntryList', name: 'ListGeofenceCollectionsResponseEntryList')
    ListGeofenceResponseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListGeofenceResponseEntry', name: 'ListGeofenceResponseEntry')
    ListGeofenceResponseEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ListGeofenceResponseEntryList', name: 'ListGeofenceResponseEntryList')
    ListGeofencesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListGeofencesInput', name: 'ListGeofencesInput')
    ListGeofencesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListGeofencesOutput', name: 'ListGeofencesOutput')
    ListKeysInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListKeysInput', name: 'ListKeysInput')
    ListKeysOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListKeysOutput', name: 'ListKeysOutput')
    ListKeysResponseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListKeysResponseEntry', name: 'ListKeysResponseEntry')
    ListKeysResponseEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ListKeysResponseEntryList', name: 'ListKeysResponseEntryList')
    ListMapsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListMapsInput', name: 'ListMapsInput')
    ListMapsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListMapsOutput', name: 'ListMapsOutput')
    ListMapsResponseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListMapsResponseEntry', name: 'ListMapsResponseEntry')
    ListMapsResponseEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ListMapsResponseEntryList', name: 'ListMapsResponseEntryList')
    ListPlaceIndexesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListPlaceIndexesInput', name: 'ListPlaceIndexesInput')
    ListPlaceIndexesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListPlaceIndexesOutput', name: 'ListPlaceIndexesOutput')
    ListPlaceIndexesResponseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListPlaceIndexesResponseEntry', name: 'ListPlaceIndexesResponseEntry')
    ListPlaceIndexesResponseEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ListPlaceIndexesResponseEntryList', name: 'ListPlaceIndexesResponseEntryList')
    ListRouteCalculatorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListRouteCalculatorsInput', name: 'ListRouteCalculatorsInput')
    ListRouteCalculatorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListRouteCalculatorsOutput', name: 'ListRouteCalculatorsOutput')
    ListRouteCalculatorsResponseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListRouteCalculatorsResponseEntry', name: 'ListRouteCalculatorsResponseEntry')
    ListRouteCalculatorsResponseEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ListRouteCalculatorsResponseEntryList', name: 'ListRouteCalculatorsResponseEntryList')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTrackerConsumersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListTrackerConsumersInput', name: 'ListTrackerConsumersInput')
    ListTrackerConsumersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListTrackerConsumersOutput', name: 'ListTrackerConsumersOutput')
    ListTrackersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListTrackersInput', name: 'ListTrackersInput')
    ListTrackersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListTrackersOutput', name: 'ListTrackersOutput')
    ListTrackersResponseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ListTrackersResponseEntry', name: 'ListTrackersResponseEntry')
    ListTrackersResponseEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ListTrackersResponseEntryList', name: 'ListTrackersResponseEntryList')
    LteCellDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#LteCellDetails', name: 'LteCellDetails')
    LteCellDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#LteCellDetailsList', name: 'LteCellDetailsList')
    LteLocalId = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#LteLocalId', name: 'LteLocalId')
    LteNetworkMeasurements = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#LteNetworkMeasurements', name: 'LteNetworkMeasurements')
    LteNetworkMeasurementsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#LteNetworkMeasurementsList', name: 'LteNetworkMeasurementsList')
    MapConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#MapConfiguration', name: 'MapConfiguration')
    MapConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#MapConfigurationUpdate', name: 'MapConfigurationUpdate')
    MapStyle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#MapStyle', name: 'MapStyle', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-._\\w]+$"})
    MultiLinearRings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#MultiLinearRings', name: 'MultiLinearRings', traits: {"smithy.api#length" => {"min" => 1}})
    NearestDistance = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.location#NearestDistance', name: 'NearestDistance', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    OptimizationMode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#OptimizationMode', name: 'OptimizationMode', traits: {"smithy.api#enum" => [{"value" => "FastestRoute"}, {"value" => "ShortestRoute"}]})
    Pci = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.location#Pci', name: 'Pci', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 503}})
    Place = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#Place', name: 'Place')
    PlaceCategory = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#PlaceCategory', name: 'PlaceCategory', traits: {"smithy.api#length" => {"max" => 35}})
    PlaceCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#PlaceCategoryList', name: 'PlaceCategoryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PlaceGeometry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#PlaceGeometry', name: 'PlaceGeometry')
    PlaceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#PlaceId', name: 'PlaceId')
    PlaceIndexSearchResultLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.location#PlaceIndexSearchResultLimit', name: 'PlaceIndexSearchResultLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    PlaceSupplementalCategory = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#PlaceSupplementalCategory', name: 'PlaceSupplementalCategory', traits: {"smithy.api#length" => {"max" => 35}})
    PlaceSupplementalCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#PlaceSupplementalCategoryList', name: 'PlaceSupplementalCategoryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Position = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#Position', name: 'Position', traits: {"smithy.api#externalDocumentation" => {"Documentation" => "https://tools.ietf.org/html/rfc7946#section-3.1.1"}, "smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#sensitive" => {}})
    PositionFiltering = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#PositionFiltering', name: 'PositionFiltering', traits: {"smithy.api#enum" => [{"value" => "TimeBased", "documentation" => "Filters device position updates according to their sample time"}, {"value" => "DistanceBased", "documentation" => "Filters device position updates according to the distance between them"}, {"value" => "AccuracyBased", "documentation" => "Filters device position updates according to their accuracy"}]})
    PositionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#PositionList', name: 'PositionList')
    PositionPropertyMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.location#PositionPropertyMap', name: 'PositionPropertyMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}, "smithy.api#sensitive" => {}})
    PositionalAccuracy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#PositionalAccuracy', name: 'PositionalAccuracy')
    PricingPlan = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#PricingPlan', name: 'PricingPlan', traits: {"smithy.api#enum" => [{"value" => "RequestBasedUsage", "documentation" => "This pricing plan should be used for request based billing."}, {"value" => "MobileAssetTracking", "documentation" => "This pricing plan must be picked for mobile asset tracking use cases."}, {"value" => "MobileAssetManagement", "documentation" => "This pricing plan must be picked for mobile asset management use cases"}]})
    PropertyMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.location#PropertyMap', name: 'PropertyMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}, "smithy.api#sensitive" => {}})
    PutGeofenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#PutGeofenceInput', name: 'PutGeofenceInput')
    PutGeofenceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#PutGeofenceOutput', name: 'PutGeofenceOutput')
    RefererPattern = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#RefererPattern', name: 'RefererPattern', traits: {"smithy.api#length" => {"max" => 253}, "smithy.api#pattern" => "^([$\\-._+!*\\x{60}(),;/?:@=&\\w]|%([0-9a-fA-F?]{2}|[0-9a-fA-F?]?[*]))+$", "smithy.api#sensitive" => {}})
    RefererPatternList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#RefererPatternList', name: 'RefererPatternList')
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#ResourceDescription', name: 'ResourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[-._\\w]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RouteMatrix = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#RouteMatrix', name: 'RouteMatrix')
    RouteMatrixEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#RouteMatrixEntry', name: 'RouteMatrixEntry')
    RouteMatrixEntryError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#RouteMatrixEntryError', name: 'RouteMatrixEntryError')
    RouteMatrixErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#RouteMatrixErrorCode', name: 'RouteMatrixErrorCode', traits: {"smithy.api#enum" => [{"value" => "RouteNotFound"}, {"value" => "RouteTooLong"}, {"value" => "PositionsNotFound"}, {"value" => "DestinationPositionNotFound"}, {"value" => "DeparturePositionNotFound"}, {"value" => "OtherValidationError"}]})
    RouteMatrixRow = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#RouteMatrixRow', name: 'RouteMatrixRow')
    Rsrp = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.location#Rsrp', name: 'Rsrp', traits: {"smithy.api#range" => {"min" => -140, "max" => -44}})
    Rsrq = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.location#Rsrq', name: 'Rsrq', traits: {"smithy.api#range" => {"min" => -19.5, "max" => -3}})
    SearchForPositionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchForPositionResult', name: 'SearchForPositionResult')
    SearchForPositionResultList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#SearchForPositionResultList', name: 'SearchForPositionResultList')
    SearchForSuggestionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchForSuggestionsResult', name: 'SearchForSuggestionsResult')
    SearchForSuggestionsResultList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#SearchForSuggestionsResultList', name: 'SearchForSuggestionsResultList')
    SearchForTextResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchForTextResult', name: 'SearchForTextResult')
    SearchForTextResultList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#SearchForTextResultList', name: 'SearchForTextResultList')
    SearchPlaceIndexForPositionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchPlaceIndexForPositionInput', name: 'SearchPlaceIndexForPositionInput')
    SearchPlaceIndexForPositionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchPlaceIndexForPositionOutput', name: 'SearchPlaceIndexForPositionOutput')
    SearchPlaceIndexForPositionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchPlaceIndexForPositionSummary', name: 'SearchPlaceIndexForPositionSummary')
    SearchPlaceIndexForSuggestionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchPlaceIndexForSuggestionsInput', name: 'SearchPlaceIndexForSuggestionsInput')
    SearchPlaceIndexForSuggestionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchPlaceIndexForSuggestionsOutput', name: 'SearchPlaceIndexForSuggestionsOutput')
    SearchPlaceIndexForSuggestionsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchPlaceIndexForSuggestionsSummary', name: 'SearchPlaceIndexForSuggestionsSummary')
    SearchPlaceIndexForTextInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchPlaceIndexForTextInput', name: 'SearchPlaceIndexForTextInput')
    SearchPlaceIndexForTextOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchPlaceIndexForTextOutput', name: 'SearchPlaceIndexForTextOutput')
    SearchPlaceIndexForTextSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#SearchPlaceIndexForTextSummary', name: 'SearchPlaceIndexForTextSummary')
    SensitiveDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.location#SensitiveDouble', name: 'SensitiveDouble', traits: {"smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SpeedUnit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#SpeedUnit', name: 'SpeedUnit', traits: {"smithy.api#enum" => [{"value" => "KilometersPerHour"}, {"value" => "MilesPerHour"}]})
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#Status', name: 'Status', traits: {"smithy.api#enum" => [{"value" => "Active", "documentation" => "List all active API keys."}, {"value" => "Expired", "documentation" => "List all expired API keys."}]})
    Step = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#Step', name: 'Step')
    StepList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#StepList', name: 'StepList')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.,:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.location#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.,:/=+\\-@]*)$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TimeZone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#TimeZone', name: 'TimeZone')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.location#Timestamp', name: 'Timestamp', traits: {"smithy.api#sensitive" => {}, "smithy.api#timestampFormat" => "date-time"})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    TrackingFilterGeometry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#TrackingFilterGeometry', name: 'TrackingFilterGeometry')
    TravelMode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#TravelMode', name: 'TravelMode', traits: {"smithy.api#enum" => [{"value" => "Car"}, {"value" => "Truck"}, {"value" => "Walking"}, {"value" => "Bicycle"}, {"value" => "Motorcycle"}]})
    TruckDimensions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#TruckDimensions', name: 'TruckDimensions')
    TruckWeight = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#TruckWeight', name: 'TruckWeight')
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateGeofenceCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdateGeofenceCollectionInput', name: 'UpdateGeofenceCollectionInput')
    UpdateGeofenceCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdateGeofenceCollectionOutput', name: 'UpdateGeofenceCollectionOutput')
    UpdateKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdateKeyInput', name: 'UpdateKeyInput')
    UpdateKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdateKeyOutput', name: 'UpdateKeyOutput')
    UpdateMapInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdateMapInput', name: 'UpdateMapInput')
    UpdateMapOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdateMapOutput', name: 'UpdateMapOutput')
    UpdatePlaceIndexInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdatePlaceIndexInput', name: 'UpdatePlaceIndexInput')
    UpdatePlaceIndexOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdatePlaceIndexOutput', name: 'UpdatePlaceIndexOutput')
    UpdateRouteCalculatorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdateRouteCalculatorInput', name: 'UpdateRouteCalculatorInput')
    UpdateRouteCalculatorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdateRouteCalculatorOutput', name: 'UpdateRouteCalculatorOutput')
    UpdateTrackerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdateTrackerInput', name: 'UpdateTrackerInput')
    UpdateTrackerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#UpdateTrackerOutput', name: 'UpdateTrackerOutput')
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#Uuid', name: 'Uuid', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "UnknownOperation", "documentation" => "No such operation is supported."}, {"value" => "Missing", "documentation" => "The required input is missing."}, {"value" => "CannotParse", "documentation" => "    The input cannot be parsed. For example a required JSON document, ARN identifier,\n    date value, or numeric field cannot be parsed.\n"}, {"value" => "FieldValidationFailed", "documentation" => "    The input is present and parsable, but it is otherwise invalid. For example, a\n    required numeric argument is outside the allowed range.\n"}, {"value" => "Other", "documentation" => "The input is invalid but no more specific reason is applicable."}, {"value" => "UnknownField", "documentation" => "No such field is supported."}]})
    VehicleWeightUnit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.location#VehicleWeightUnit', name: 'VehicleWeightUnit', traits: {"smithy.api#enum" => [{"value" => "Kilograms"}, {"value" => "Pounds"}]})
    VerifyDevicePositionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#VerifyDevicePositionRequest', name: 'VerifyDevicePositionRequest')
    VerifyDevicePositionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#VerifyDevicePositionResponse', name: 'VerifyDevicePositionResponse')
    WaypointPositionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#WaypointPositionList', name: 'WaypointPositionList')
    WiFiAccessPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.location#WiFiAccessPoint', name: 'WiFiAccessPoint')
    WiFiAccessPointList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.location#WiFiAccessPointList', name: 'WiFiAccessPointList')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ApiKeyActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyAction)
    ApiKeyFilter.add_member(:key_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'KeyStatus'))
    ApiKeyFilter.type = Types::ApiKeyFilter
    ApiKeyRestrictions.add_member(:allow_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyActionList, location_name: 'AllowActions', traits: {"smithy.api#length" => {"min" => 1, "max" => 24}, "smithy.api#required" => {}}))
    ApiKeyRestrictions.add_member(:allow_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArnList, location_name: 'AllowResources', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}, "smithy.api#required" => {}}))
    ApiKeyRestrictions.add_member(:allow_referers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefererPatternList, location_name: 'AllowReferers', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}}))
    ApiKeyRestrictions.type = Types::ApiKeyRestrictions
    ArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AssociateTrackerConsumerInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateTrackerConsumerInput.add_member(:consumer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ConsumerArn', traits: {"smithy.api#required" => {}}))
    AssociateTrackerConsumerInput.type = Types::AssociateTrackerConsumerInput
    AssociateTrackerConsumerOutput.type = Types::AssociateTrackerConsumerOutput
    BatchDeleteDevicePositionHistoryError.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    BatchDeleteDevicePositionHistoryError.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemError, location_name: 'Error', traits: {"smithy.api#required" => {}}))
    BatchDeleteDevicePositionHistoryError.type = Types::BatchDeleteDevicePositionHistoryError
    BatchDeleteDevicePositionHistoryErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDevicePositionHistoryError)
    BatchDeleteDevicePositionHistoryInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteDevicePositionHistoryInput.add_member(:device_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceIdsList, location_name: 'DeviceIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    BatchDeleteDevicePositionHistoryInput.type = Types::BatchDeleteDevicePositionHistoryInput
    BatchDeleteDevicePositionHistoryOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDevicePositionHistoryErrorList, location_name: 'Errors', traits: {"smithy.api#required" => {}}))
    BatchDeleteDevicePositionHistoryOutput.type = Types::BatchDeleteDevicePositionHistoryOutput
    BatchDeleteGeofenceError.add_member(:geofence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'GeofenceId', traits: {"smithy.api#required" => {}}))
    BatchDeleteGeofenceError.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemError, location_name: 'Error', traits: {"smithy.api#required" => {}}))
    BatchDeleteGeofenceError.type = Types::BatchDeleteGeofenceError
    BatchDeleteGeofenceErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteGeofenceError)
    BatchDeleteGeofenceInput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteGeofenceInput.add_member(:geofence_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'GeofenceIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    BatchDeleteGeofenceInput.type = Types::BatchDeleteGeofenceInput
    BatchDeleteGeofenceOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteGeofenceErrorList, location_name: 'Errors', traits: {"smithy.api#required" => {}}))
    BatchDeleteGeofenceOutput.type = Types::BatchDeleteGeofenceOutput
    BatchEvaluateGeofencesError.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    BatchEvaluateGeofencesError.add_member(:sample_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SampleTime', traits: {"smithy.api#required" => {}}))
    BatchEvaluateGeofencesError.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemError, location_name: 'Error', traits: {"smithy.api#required" => {}}))
    BatchEvaluateGeofencesError.type = Types::BatchEvaluateGeofencesError
    BatchEvaluateGeofencesErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEvaluateGeofencesError)
    BatchEvaluateGeofencesInput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchEvaluateGeofencesInput.add_member(:device_position_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePositionUpdateList, location_name: 'DevicePositionUpdates', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    BatchEvaluateGeofencesInput.type = Types::BatchEvaluateGeofencesInput
    BatchEvaluateGeofencesOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEvaluateGeofencesErrorList, location_name: 'Errors', traits: {"smithy.api#required" => {}}))
    BatchEvaluateGeofencesOutput.type = Types::BatchEvaluateGeofencesOutput
    BatchGetDevicePositionError.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    BatchGetDevicePositionError.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemError, location_name: 'Error', traits: {"smithy.api#required" => {}}))
    BatchGetDevicePositionError.type = Types::BatchGetDevicePositionError
    BatchGetDevicePositionErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDevicePositionError)
    BatchGetDevicePositionInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    BatchGetDevicePositionInput.add_member(:device_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'DeviceIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    BatchGetDevicePositionInput.type = Types::BatchGetDevicePositionInput
    BatchGetDevicePositionOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDevicePositionErrorList, location_name: 'Errors', traits: {"smithy.api#required" => {}}))
    BatchGetDevicePositionOutput.add_member(:device_positions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePositionList, location_name: 'DevicePositions', traits: {"smithy.api#required" => {}}))
    BatchGetDevicePositionOutput.type = Types::BatchGetDevicePositionOutput
    BatchItemError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemErrorCode, location_name: 'Code'))
    BatchItemError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    BatchItemError.type = Types::BatchItemError
    BatchPutGeofenceError.add_member(:geofence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'GeofenceId', traits: {"smithy.api#required" => {}}))
    BatchPutGeofenceError.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemError, location_name: 'Error', traits: {"smithy.api#required" => {}}))
    BatchPutGeofenceError.type = Types::BatchPutGeofenceError
    BatchPutGeofenceErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutGeofenceError)
    BatchPutGeofenceInput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchPutGeofenceInput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutGeofenceRequestEntryList, location_name: 'Entries', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    BatchPutGeofenceInput.type = Types::BatchPutGeofenceInput
    BatchPutGeofenceOutput.add_member(:successes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutGeofenceSuccessList, location_name: 'Successes', traits: {"smithy.api#required" => {}}))
    BatchPutGeofenceOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutGeofenceErrorList, location_name: 'Errors', traits: {"smithy.api#required" => {}}))
    BatchPutGeofenceOutput.type = Types::BatchPutGeofenceOutput
    BatchPutGeofenceRequestEntry.add_member(:geofence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'GeofenceId', traits: {"smithy.api#required" => {}}))
    BatchPutGeofenceRequestEntry.add_member(:geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeofenceGeometry, location_name: 'Geometry', traits: {"smithy.api#required" => {}}))
    BatchPutGeofenceRequestEntry.add_member(:geofence_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyMap, location_name: 'GeofenceProperties'))
    BatchPutGeofenceRequestEntry.type = Types::BatchPutGeofenceRequestEntry
    BatchPutGeofenceRequestEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutGeofenceRequestEntry)
    BatchPutGeofenceSuccess.add_member(:geofence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'GeofenceId', traits: {"smithy.api#required" => {}}))
    BatchPutGeofenceSuccess.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    BatchPutGeofenceSuccess.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    BatchPutGeofenceSuccess.type = Types::BatchPutGeofenceSuccess
    BatchPutGeofenceSuccessList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutGeofenceSuccess)
    BatchUpdateDevicePositionError.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    BatchUpdateDevicePositionError.add_member(:sample_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SampleTime', traits: {"smithy.api#required" => {}}))
    BatchUpdateDevicePositionError.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchItemError, location_name: 'Error', traits: {"smithy.api#required" => {}}))
    BatchUpdateDevicePositionError.type = Types::BatchUpdateDevicePositionError
    BatchUpdateDevicePositionErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateDevicePositionError)
    BatchUpdateDevicePositionInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateDevicePositionInput.add_member(:updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePositionUpdateList, location_name: 'Updates', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    BatchUpdateDevicePositionInput.type = Types::BatchUpdateDevicePositionInput
    BatchUpdateDevicePositionOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateDevicePositionErrorList, location_name: 'Errors', traits: {"smithy.api#required" => {}}))
    BatchUpdateDevicePositionOutput.type = Types::BatchUpdateDevicePositionOutput
    BoundingBox.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double)
    CalculateRouteCarModeOptions.add_member(:avoid_ferries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AvoidFerries'))
    CalculateRouteCarModeOptions.add_member(:avoid_tolls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AvoidTolls'))
    CalculateRouteCarModeOptions.type = Types::CalculateRouteCarModeOptions
    CalculateRouteInput.add_member(:calculator_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CalculatorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CalculateRouteInput.add_member(:departure_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'DeparturePosition', traits: {"smithy.api#required" => {}}))
    CalculateRouteInput.add_member(:destination_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'DestinationPosition', traits: {"smithy.api#required" => {}}))
    CalculateRouteInput.add_member(:waypoint_positions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WaypointPositionList, location_name: 'WaypointPositions', traits: {"smithy.api#length" => {"max" => 23}}))
    CalculateRouteInput.add_member(:travel_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TravelMode, location_name: 'TravelMode'))
    CalculateRouteInput.add_member(:departure_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DepartureTime'))
    CalculateRouteInput.add_member(:depart_now, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DepartNow'))
    CalculateRouteInput.add_member(:distance_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceUnit, location_name: 'DistanceUnit'))
    CalculateRouteInput.add_member(:include_leg_geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IncludeLegGeometry'))
    CalculateRouteInput.add_member(:car_mode_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculateRouteCarModeOptions, location_name: 'CarModeOptions'))
    CalculateRouteInput.add_member(:truck_mode_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculateRouteTruckModeOptions, location_name: 'TruckModeOptions'))
    CalculateRouteInput.add_member(:arrival_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ArrivalTime'))
    CalculateRouteInput.add_member(:optimize_for, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptimizationMode, location_name: 'OptimizeFor'))
    CalculateRouteInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    CalculateRouteInput.type = Types::CalculateRouteInput
    CalculateRouteMatrixInput.add_member(:calculator_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CalculatorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CalculateRouteMatrixInput.add_member(:departure_positions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionList, location_name: 'DeparturePositions', traits: {"smithy.api#length" => {"min" => 1, "max" => 350}, "smithy.api#required" => {}}))
    CalculateRouteMatrixInput.add_member(:destination_positions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionList, location_name: 'DestinationPositions', traits: {"smithy.api#length" => {"min" => 1, "max" => 350}, "smithy.api#required" => {}}))
    CalculateRouteMatrixInput.add_member(:travel_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TravelMode, location_name: 'TravelMode'))
    CalculateRouteMatrixInput.add_member(:departure_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DepartureTime'))
    CalculateRouteMatrixInput.add_member(:depart_now, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DepartNow'))
    CalculateRouteMatrixInput.add_member(:distance_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceUnit, location_name: 'DistanceUnit'))
    CalculateRouteMatrixInput.add_member(:car_mode_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculateRouteCarModeOptions, location_name: 'CarModeOptions'))
    CalculateRouteMatrixInput.add_member(:truck_mode_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculateRouteTruckModeOptions, location_name: 'TruckModeOptions'))
    CalculateRouteMatrixInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    CalculateRouteMatrixInput.type = Types::CalculateRouteMatrixInput
    CalculateRouteMatrixOutput.add_member(:route_matrix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteMatrix, location_name: 'RouteMatrix', traits: {"smithy.api#required" => {}}))
    CalculateRouteMatrixOutput.add_member(:snapped_departure_positions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionList, location_name: 'SnappedDeparturePositions', traits: {"smithy.api#length" => {"min" => 1, "max" => 350}}))
    CalculateRouteMatrixOutput.add_member(:snapped_destination_positions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionList, location_name: 'SnappedDestinationPositions', traits: {"smithy.api#length" => {"min" => 1, "max" => 350}}))
    CalculateRouteMatrixOutput.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculateRouteMatrixSummary, location_name: 'Summary', traits: {"smithy.api#required" => {}}))
    CalculateRouteMatrixOutput.type = Types::CalculateRouteMatrixOutput
    CalculateRouteMatrixSummary.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"smithy.api#required" => {}}))
    CalculateRouteMatrixSummary.add_member(:route_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'RouteCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 160000}, "smithy.api#required" => {}}))
    CalculateRouteMatrixSummary.add_member(:error_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ErrorCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 160000}, "smithy.api#required" => {}}))
    CalculateRouteMatrixSummary.add_member(:distance_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceUnit, location_name: 'DistanceUnit', traits: {"smithy.api#required" => {}}))
    CalculateRouteMatrixSummary.type = Types::CalculateRouteMatrixSummary
    CalculateRouteOutput.add_member(:legs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegList, location_name: 'Legs', traits: {"smithy.api#required" => {}}))
    CalculateRouteOutput.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculateRouteSummary, location_name: 'Summary', traits: {"smithy.api#required" => {}}))
    CalculateRouteOutput.type = Types::CalculateRouteOutput
    CalculateRouteSummary.add_member(:route_b_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'RouteBBox', traits: {"smithy.api#required" => {}}))
    CalculateRouteSummary.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"smithy.api#required" => {}}))
    CalculateRouteSummary.add_member(:distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Distance', traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CalculateRouteSummary.add_member(:duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'DurationSeconds', traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    CalculateRouteSummary.add_member(:distance_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceUnit, location_name: 'DistanceUnit', traits: {"smithy.api#required" => {}}))
    CalculateRouteSummary.type = Types::CalculateRouteSummary
    CalculateRouteTruckModeOptions.add_member(:avoid_ferries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AvoidFerries'))
    CalculateRouteTruckModeOptions.add_member(:avoid_tolls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AvoidTolls'))
    CalculateRouteTruckModeOptions.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TruckDimensions, location_name: 'Dimensions'))
    CalculateRouteTruckModeOptions.add_member(:weight, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TruckWeight, location_name: 'Weight'))
    CalculateRouteTruckModeOptions.type = Types::CalculateRouteTruckModeOptions
    CellSignals.add_member(:lte_cell_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LteCellDetailsList, location_name: 'LteCellDetails', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#required" => {}}))
    CellSignals.type = Types::CellSignals
    Circle.add_member(:center, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Center', traits: {"smithy.api#required" => {}}))
    Circle.add_member(:radius, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDouble, location_name: 'Radius', traits: {"smithy.api#required" => {}}))
    Circle.type = Types::Circle
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CountryCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode3)
    CreateGeofenceCollectionInput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#required" => {}}))
    CreateGeofenceCollectionInput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. If included, the only allowed value is RequestBasedUsage.", "since" => "2022-02-01"}}))
    CreateGeofenceCollectionInput.add_member(:pricing_plan_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PricingPlanDataSource', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. No longer allowed.", "since" => "2022-02-01"}}))
    CreateGeofenceCollectionInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    CreateGeofenceCollectionInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateGeofenceCollectionInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CreateGeofenceCollectionInput.type = Types::CreateGeofenceCollectionInput
    CreateGeofenceCollectionOutput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#required" => {}}))
    CreateGeofenceCollectionOutput.add_member(:collection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CollectionArn', traits: {"smithy.api#required" => {}}))
    CreateGeofenceCollectionOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    CreateGeofenceCollectionOutput.type = Types::CreateGeofenceCollectionOutput
    CreateKeyInput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'KeyName', traits: {"smithy.api#required" => {}}))
    CreateKeyInput.add_member(:restrictions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyRestrictions, location_name: 'Restrictions', traits: {"smithy.api#required" => {}}))
    CreateKeyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    CreateKeyInput.add_member(:expire_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpireTime'))
    CreateKeyInput.add_member(:no_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'NoExpiry'))
    CreateKeyInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateKeyInput.type = Types::CreateKeyInput
    CreateKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    CreateKeyOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KeyArn', traits: {"smithy.api#required" => {}}))
    CreateKeyOutput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'KeyName', traits: {"smithy.api#required" => {}}))
    CreateKeyOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    CreateKeyOutput.type = Types::CreateKeyOutput
    CreateMapInput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreateMapInput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapConfiguration, location_name: 'Configuration', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreateMapInput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. If included, the only allowed value is RequestBasedUsage.", "since" => "2022-02-01"}}))
    CreateMapInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    CreateMapInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateMapInput.type = Types::CreateMapInput
    CreateMapOutput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#required" => {}}))
    CreateMapOutput.add_member(:map_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArn, location_name: 'MapArn', traits: {"smithy.api#required" => {}}))
    CreateMapOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    CreateMapOutput.type = Types::CreateMapOutput
    CreatePlaceIndexInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#required" => {}}))
    CreatePlaceIndexInput.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreatePlaceIndexInput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. If included, the only allowed value is RequestBasedUsage.", "since" => "2022-02-01"}}))
    CreatePlaceIndexInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    CreatePlaceIndexInput.add_member(:data_source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'DataSourceConfiguration'))
    CreatePlaceIndexInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreatePlaceIndexInput.type = Types::CreatePlaceIndexInput
    CreatePlaceIndexOutput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#required" => {}}))
    CreatePlaceIndexOutput.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArn, location_name: 'IndexArn', traits: {"smithy.api#required" => {}}))
    CreatePlaceIndexOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    CreatePlaceIndexOutput.type = Types::CreatePlaceIndexOutput
    CreateRouteCalculatorInput.add_member(:calculator_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CalculatorName', traits: {"smithy.api#required" => {}}))
    CreateRouteCalculatorInput.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreateRouteCalculatorInput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. If included, the only allowed value is RequestBasedUsage.", "since" => "2022-02-01"}}))
    CreateRouteCalculatorInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    CreateRouteCalculatorInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateRouteCalculatorInput.type = Types::CreateRouteCalculatorInput
    CreateRouteCalculatorOutput.add_member(:calculator_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CalculatorName', traits: {"smithy.api#required" => {}}))
    CreateRouteCalculatorOutput.add_member(:calculator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArn, location_name: 'CalculatorArn', traits: {"smithy.api#required" => {}}))
    CreateRouteCalculatorOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    CreateRouteCalculatorOutput.type = Types::CreateRouteCalculatorOutput
    CreateTrackerInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#required" => {}}))
    CreateTrackerInput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. If included, the only allowed value is RequestBasedUsage.", "since" => "2022-02-01"}}))
    CreateTrackerInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CreateTrackerInput.add_member(:pricing_plan_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PricingPlanDataSource', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. No longer allowed.", "since" => "2022-02-01"}}))
    CreateTrackerInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    CreateTrackerInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateTrackerInput.add_member(:position_filtering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionFiltering, location_name: 'PositionFiltering'))
    CreateTrackerInput.add_member(:event_bridge_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'EventBridgeEnabled'))
    CreateTrackerInput.add_member(:kms_key_enable_geospatial_queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'KmsKeyEnableGeospatialQueries'))
    CreateTrackerInput.type = Types::CreateTrackerInput
    CreateTrackerOutput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#required" => {}}))
    CreateTrackerOutput.add_member(:tracker_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TrackerArn', traits: {"smithy.api#required" => {}}))
    CreateTrackerOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    CreateTrackerOutput.type = Types::CreateTrackerOutput
    CustomLayerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLayer)
    DataSourceConfiguration.add_member(:intended_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntendedUse, location_name: 'IntendedUse'))
    DataSourceConfiguration.type = Types::DataSourceConfiguration
    DeleteGeofenceCollectionInput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGeofenceCollectionInput.type = Types::DeleteGeofenceCollectionInput
    DeleteGeofenceCollectionOutput.type = Types::DeleteGeofenceCollectionOutput
    DeleteKeyInput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'KeyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKeyInput.add_member(:force_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ForceDelete', traits: {"smithy.api#httpQuery" => "forceDelete"}))
    DeleteKeyInput.type = Types::DeleteKeyInput
    DeleteKeyOutput.type = Types::DeleteKeyOutput
    DeleteMapInput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMapInput.type = Types::DeleteMapInput
    DeleteMapOutput.type = Types::DeleteMapOutput
    DeletePlaceIndexInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePlaceIndexInput.type = Types::DeletePlaceIndexInput
    DeletePlaceIndexOutput.type = Types::DeletePlaceIndexOutput
    DeleteRouteCalculatorInput.add_member(:calculator_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CalculatorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteCalculatorInput.type = Types::DeleteRouteCalculatorInput
    DeleteRouteCalculatorOutput.type = Types::DeleteRouteCalculatorOutput
    DeleteTrackerInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrackerInput.type = Types::DeleteTrackerInput
    DeleteTrackerOutput.type = Types::DeleteTrackerOutput
    DescribeGeofenceCollectionInput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeGeofenceCollectionInput.type = Types::DescribeGeofenceCollectionInput
    DescribeGeofenceCollectionOutput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#required" => {}}))
    DescribeGeofenceCollectionOutput.add_member(:collection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CollectionArn', traits: {"smithy.api#required" => {}}))
    DescribeGeofenceCollectionOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    DescribeGeofenceCollectionOutput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Always returns RequestBasedUsage.", "since" => "2022-02-01"}}))
    DescribeGeofenceCollectionOutput.add_member(:pricing_plan_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PricingPlanDataSource', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Unused.", "since" => "2022-02-01"}}))
    DescribeGeofenceCollectionOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    DescribeGeofenceCollectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    DescribeGeofenceCollectionOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    DescribeGeofenceCollectionOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    DescribeGeofenceCollectionOutput.add_member(:geofence_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'GeofenceCount', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#range" => {"min" => 0}}))
    DescribeGeofenceCollectionOutput.type = Types::DescribeGeofenceCollectionOutput
    DescribeKeyInput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'KeyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeKeyInput.type = Types::DescribeKeyInput
    DescribeKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeKeyOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KeyArn', traits: {"smithy.api#required" => {}}))
    DescribeKeyOutput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'KeyName', traits: {"smithy.api#required" => {}}))
    DescribeKeyOutput.add_member(:restrictions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyRestrictions, location_name: 'Restrictions', traits: {"smithy.api#required" => {}}))
    DescribeKeyOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    DescribeKeyOutput.add_member(:expire_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpireTime', traits: {"smithy.api#required" => {}}))
    DescribeKeyOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    DescribeKeyOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    DescribeKeyOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    DescribeKeyOutput.type = Types::DescribeKeyOutput
    DescribeMapInput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeMapInput.type = Types::DescribeMapInput
    DescribeMapOutput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#required" => {}}))
    DescribeMapOutput.add_member(:map_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArn, location_name: 'MapArn', traits: {"smithy.api#required" => {}}))
    DescribeMapOutput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Always returns RequestBasedUsage.", "since" => "2022-02-01"}}))
    DescribeMapOutput.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeMapOutput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapConfiguration, location_name: 'Configuration', traits: {"smithy.api#required" => {}}))
    DescribeMapOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    DescribeMapOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    DescribeMapOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    DescribeMapOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    DescribeMapOutput.type = Types::DescribeMapOutput
    DescribePlaceIndexInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePlaceIndexInput.type = Types::DescribePlaceIndexInput
    DescribePlaceIndexOutput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#required" => {}}))
    DescribePlaceIndexOutput.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArn, location_name: 'IndexArn', traits: {"smithy.api#required" => {}}))
    DescribePlaceIndexOutput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Always returns RequestBasedUsage.", "since" => "2022-02-01"}}))
    DescribePlaceIndexOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    DescribePlaceIndexOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    DescribePlaceIndexOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    DescribePlaceIndexOutput.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"smithy.api#required" => {}}))
    DescribePlaceIndexOutput.add_member(:data_source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'DataSourceConfiguration', traits: {"smithy.api#required" => {}}))
    DescribePlaceIndexOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    DescribePlaceIndexOutput.type = Types::DescribePlaceIndexOutput
    DescribeRouteCalculatorInput.add_member(:calculator_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CalculatorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRouteCalculatorInput.type = Types::DescribeRouteCalculatorInput
    DescribeRouteCalculatorOutput.add_member(:calculator_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CalculatorName', traits: {"smithy.api#required" => {}}))
    DescribeRouteCalculatorOutput.add_member(:calculator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArn, location_name: 'CalculatorArn', traits: {"smithy.api#required" => {}}))
    DescribeRouteCalculatorOutput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Always returns RequestBasedUsage.", "since" => "2022-02-01"}}))
    DescribeRouteCalculatorOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    DescribeRouteCalculatorOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    DescribeRouteCalculatorOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    DescribeRouteCalculatorOutput.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"smithy.api#required" => {}}))
    DescribeRouteCalculatorOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    DescribeRouteCalculatorOutput.type = Types::DescribeRouteCalculatorOutput
    DescribeTrackerInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTrackerInput.type = Types::DescribeTrackerInput
    DescribeTrackerOutput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#required" => {}}))
    DescribeTrackerOutput.add_member(:tracker_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TrackerArn', traits: {"smithy.api#required" => {}}))
    DescribeTrackerOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    DescribeTrackerOutput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Always returns RequestBasedUsage.", "since" => "2022-02-01"}}))
    DescribeTrackerOutput.add_member(:pricing_plan_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PricingPlanDataSource', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Unused.", "since" => "2022-02-01"}}))
    DescribeTrackerOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    DescribeTrackerOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    DescribeTrackerOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    DescribeTrackerOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    DescribeTrackerOutput.add_member(:position_filtering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionFiltering, location_name: 'PositionFiltering'))
    DescribeTrackerOutput.add_member(:event_bridge_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'EventBridgeEnabled'))
    DescribeTrackerOutput.add_member(:kms_key_enable_geospatial_queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'KmsKeyEnableGeospatialQueries'))
    DescribeTrackerOutput.type = Types::DescribeTrackerOutput
    DeviceIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id)
    DevicePosition.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId'))
    DevicePosition.add_member(:sample_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SampleTime', traits: {"smithy.api#required" => {}}))
    DevicePosition.add_member(:received_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReceivedTime', traits: {"smithy.api#required" => {}}))
    DevicePosition.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Position', traits: {"smithy.api#required" => {}}))
    DevicePosition.add_member(:accuracy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionalAccuracy, location_name: 'Accuracy'))
    DevicePosition.add_member(:position_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionPropertyMap, location_name: 'PositionProperties'))
    DevicePosition.type = Types::DevicePosition
    DevicePositionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePosition)
    DevicePositionUpdate.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    DevicePositionUpdate.add_member(:sample_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SampleTime', traits: {"smithy.api#required" => {}}))
    DevicePositionUpdate.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Position', traits: {"smithy.api#required" => {}}))
    DevicePositionUpdate.add_member(:accuracy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionalAccuracy, location_name: 'Accuracy'))
    DevicePositionUpdate.add_member(:position_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionPropertyMap, location_name: 'PositionProperties'))
    DevicePositionUpdate.type = Types::DevicePositionUpdate
    DevicePositionUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePositionUpdate)
    DeviceState.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    DeviceState.add_member(:sample_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SampleTime', traits: {"smithy.api#required" => {}}))
    DeviceState.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Position', traits: {"smithy.api#required" => {}}))
    DeviceState.add_member(:accuracy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionalAccuracy, location_name: 'Accuracy'))
    DeviceState.add_member(:ipv4_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Ipv4Address', traits: {"smithy.api#pattern" => "^(?:(?:25[0-5]|(?:2[0-4]|1\\d|[0-9]|)\\d)\\.?\\b){4}$"}))
    DeviceState.add_member(:wi_fi_access_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WiFiAccessPointList, location_name: 'WiFiAccessPoints'))
    DeviceState.add_member(:cell_signals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CellSignals, location_name: 'CellSignals'))
    DeviceState.type = Types::DeviceState
    DisassociateTrackerConsumerInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateTrackerConsumerInput.add_member(:consumer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ConsumerArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateTrackerConsumerInput.type = Types::DisassociateTrackerConsumerInput
    DisassociateTrackerConsumerOutput.type = Types::DisassociateTrackerConsumerOutput
    FilterPlaceCategoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceCategory)
    ForecastGeofenceEventsDeviceState.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Position', traits: {"smithy.api#required" => {}}))
    ForecastGeofenceEventsDeviceState.add_member(:speed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Speed', traits: {"smithy.api#range" => {"min" => 0}}))
    ForecastGeofenceEventsDeviceState.type = Types::ForecastGeofenceEventsDeviceState
    ForecastGeofenceEventsRequest.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ForecastGeofenceEventsRequest.add_member(:device_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastGeofenceEventsDeviceState, location_name: 'DeviceState', traits: {"smithy.api#required" => {}}))
    ForecastGeofenceEventsRequest.add_member(:time_horizon_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'TimeHorizonMinutes', traits: {"smithy.api#range" => {"min" => 0}}))
    ForecastGeofenceEventsRequest.add_member(:distance_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceUnit, location_name: 'DistanceUnit'))
    ForecastGeofenceEventsRequest.add_member(:speed_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeedUnit, location_name: 'SpeedUnit'))
    ForecastGeofenceEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LargeToken, location_name: 'NextToken'))
    ForecastGeofenceEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 20}}))
    ForecastGeofenceEventsRequest.type = Types::ForecastGeofenceEventsRequest
    ForecastGeofenceEventsResponse.add_member(:forecasted_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastedEventsList, location_name: 'ForecastedEvents', traits: {"smithy.api#required" => {}}))
    ForecastGeofenceEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LargeToken, location_name: 'NextToken'))
    ForecastGeofenceEventsResponse.add_member(:distance_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceUnit, location_name: 'DistanceUnit', traits: {"smithy.api#required" => {}}))
    ForecastGeofenceEventsResponse.add_member(:speed_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeedUnit, location_name: 'SpeedUnit', traits: {"smithy.api#required" => {}}))
    ForecastGeofenceEventsResponse.type = Types::ForecastGeofenceEventsResponse
    ForecastedEvent.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'EventId', traits: {"smithy.api#required" => {}}))
    ForecastedEvent.add_member(:geofence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'GeofenceId', traits: {"smithy.api#required" => {}}))
    ForecastedEvent.add_member(:is_device_in_geofence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IsDeviceInGeofence', traits: {"smithy.api#required" => {}}))
    ForecastedEvent.add_member(:nearest_distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NearestDistance, location_name: 'NearestDistance', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ForecastedEvent.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastedGeofenceEventType, location_name: 'EventType', traits: {"smithy.api#required" => {}}))
    ForecastedEvent.add_member(:forecasted_breach_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ForecastedBreachTime'))
    ForecastedEvent.add_member(:geofence_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyMap, location_name: 'GeofenceProperties'))
    ForecastedEvent.type = Types::ForecastedEvent
    ForecastedEventsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastedEvent)
    GeoArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArnV2)
    GeofenceGeometry.add_member(:polygon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinearRings, location_name: 'Polygon', traits: {"smithy.api#length" => {"min" => 1, "max" => 250}}))
    GeofenceGeometry.add_member(:circle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Circle, location_name: 'Circle'))
    GeofenceGeometry.add_member(:geobuf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64EncodedGeobuf, location_name: 'Geobuf'))
    GeofenceGeometry.add_member(:multi_polygon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiLinearRings, location_name: 'MultiPolygon', traits: {"smithy.api#length" => {"min" => 1, "max" => 250}}))
    GeofenceGeometry.type = Types::GeofenceGeometry
    GetDevicePositionHistoryInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDevicePositionHistoryInput.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDevicePositionHistoryInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetDevicePositionHistoryInput.add_member(:start_time_inclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTimeInclusive'))
    GetDevicePositionHistoryInput.add_member(:end_time_exclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTimeExclusive'))
    GetDevicePositionHistoryInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    GetDevicePositionHistoryInput.type = Types::GetDevicePositionHistoryInput
    GetDevicePositionHistoryOutput.add_member(:device_positions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DevicePositionList, location_name: 'DevicePositions', traits: {"smithy.api#required" => {}}))
    GetDevicePositionHistoryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetDevicePositionHistoryOutput.type = Types::GetDevicePositionHistoryOutput
    GetDevicePositionInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDevicePositionInput.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDevicePositionInput.type = Types::GetDevicePositionInput
    GetDevicePositionOutput.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId'))
    GetDevicePositionOutput.add_member(:sample_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SampleTime', traits: {"smithy.api#required" => {}}))
    GetDevicePositionOutput.add_member(:received_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReceivedTime', traits: {"smithy.api#required" => {}}))
    GetDevicePositionOutput.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Position', traits: {"smithy.api#required" => {}}))
    GetDevicePositionOutput.add_member(:accuracy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionalAccuracy, location_name: 'Accuracy'))
    GetDevicePositionOutput.add_member(:position_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionPropertyMap, location_name: 'PositionProperties'))
    GetDevicePositionOutput.type = Types::GetDevicePositionOutput
    GetGeofenceInput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGeofenceInput.add_member(:geofence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'GeofenceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGeofenceInput.type = Types::GetGeofenceInput
    GetGeofenceOutput.add_member(:geofence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'GeofenceId', traits: {"smithy.api#required" => {}}))
    GetGeofenceOutput.add_member(:geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeofenceGeometry, location_name: 'Geometry', traits: {"smithy.api#required" => {}}))
    GetGeofenceOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    GetGeofenceOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    GetGeofenceOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    GetGeofenceOutput.add_member(:geofence_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyMap, location_name: 'GeofenceProperties'))
    GetGeofenceOutput.type = Types::GetGeofenceOutput
    GetMapGlyphsInput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMapGlyphsInput.add_member(:font_stack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'FontStack', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMapGlyphsInput.add_member(:font_unicode_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'FontUnicodeRange', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^[0-9]+-[0-9]+\\.pbf$", "smithy.api#required" => {}}))
    GetMapGlyphsInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    GetMapGlyphsInput.type = Types::GetMapGlyphsInput
    GetMapGlyphsOutput.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'Blob', traits: {"smithy.api#httpPayload" => {}}))
    GetMapGlyphsOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetMapGlyphsOutput.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CacheControl', traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetMapGlyphsOutput[:http_payload] = :blob
    GetMapGlyphsOutput[:http_payload_member] = GetMapGlyphsOutput.member(:blob)
    GetMapGlyphsOutput.type = Types::GetMapGlyphsOutput
    GetMapSpritesInput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMapSpritesInput.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'FileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^sprites(@2x)?\\.(png|json)$", "smithy.api#required" => {}}))
    GetMapSpritesInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    GetMapSpritesInput.type = Types::GetMapSpritesInput
    GetMapSpritesOutput.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'Blob', traits: {"smithy.api#httpPayload" => {}}))
    GetMapSpritesOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetMapSpritesOutput.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CacheControl', traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetMapSpritesOutput[:http_payload] = :blob
    GetMapSpritesOutput[:http_payload_member] = GetMapSpritesOutput.member(:blob)
    GetMapSpritesOutput.type = Types::GetMapSpritesOutput
    GetMapStyleDescriptorInput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMapStyleDescriptorInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    GetMapStyleDescriptorInput.type = Types::GetMapStyleDescriptorInput
    GetMapStyleDescriptorOutput.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'Blob', traits: {"smithy.api#externalDocumentation" => {"Specification" => "https://docs.mapbox.com/mapbox-gl-js/style-spec/"}, "smithy.api#httpPayload" => {}}))
    GetMapStyleDescriptorOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetMapStyleDescriptorOutput.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CacheControl', traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetMapStyleDescriptorOutput[:http_payload] = :blob
    GetMapStyleDescriptorOutput[:http_payload_member] = GetMapStyleDescriptorOutput.member(:blob)
    GetMapStyleDescriptorOutput.type = Types::GetMapStyleDescriptorOutput
    GetMapTileInput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMapTileInput.add_member(:z, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Z', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "\\d+", "smithy.api#required" => {}}))
    GetMapTileInput.add_member(:x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'X', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "\\d+", "smithy.api#required" => {}}))
    GetMapTileInput.add_member(:y, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Y', traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "\\d+", "smithy.api#required" => {}}))
    GetMapTileInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    GetMapTileInput.type = Types::GetMapTileInput
    GetMapTileOutput.add_member(:blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: 'Blob', traits: {"smithy.api#httpPayload" => {}}))
    GetMapTileOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ContentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetMapTileOutput.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CacheControl', traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetMapTileOutput[:http_payload] = :blob
    GetMapTileOutput[:http_payload_member] = GetMapTileOutput.member(:blob)
    GetMapTileOutput.type = Types::GetMapTileOutput
    GetPlaceInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPlaceInput.add_member(:place_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceId, location_name: 'PlaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPlaceInput.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageTag, location_name: 'Language', traits: {"smithy.api#httpQuery" => "language"}))
    GetPlaceInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    GetPlaceInput.type = Types::GetPlaceInput
    GetPlaceOutput.add_member(:place, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Place, location_name: 'Place', traits: {"smithy.api#required" => {}}))
    GetPlaceOutput.type = Types::GetPlaceOutput
    IdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id)
    InferredState.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Position'))
    InferredState.add_member(:accuracy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionalAccuracy, location_name: 'Accuracy'))
    InferredState.add_member(:deviation_distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'DeviationDistance'))
    InferredState.add_member(:proxy_detected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ProxyDetected', traits: {"smithy.api#required" => {}}))
    InferredState.type = Types::InferredState
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    Leg.add_member(:start_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'StartPosition', traits: {"smithy.api#required" => {}}))
    Leg.add_member(:end_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'EndPosition', traits: {"smithy.api#required" => {}}))
    Leg.add_member(:distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Distance', traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    Leg.add_member(:duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'DurationSeconds', traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    Leg.add_member(:geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegGeometry, location_name: 'Geometry'))
    Leg.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: 'Steps', traits: {"smithy.api#required" => {}}))
    Leg.type = Types::Leg
    LegGeometry.add_member(:line_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineString, location_name: 'LineString'))
    LegGeometry.type = Types::LegGeometry
    LegList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Leg)
    LineString.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position)
    LinearRing.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position)
    LinearRings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinearRing)
    ListDevicePositionsInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDevicePositionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListDevicePositionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListDevicePositionsInput.add_member(:filter_geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingFilterGeometry, location_name: 'FilterGeometry'))
    ListDevicePositionsInput.type = Types::ListDevicePositionsInput
    ListDevicePositionsOutput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicePositionsResponseEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}}))
    ListDevicePositionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListDevicePositionsOutput.type = Types::ListDevicePositionsOutput
    ListDevicePositionsResponseEntry.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    ListDevicePositionsResponseEntry.add_member(:sample_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SampleTime', traits: {"smithy.api#required" => {}}))
    ListDevicePositionsResponseEntry.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Position', traits: {"smithy.api#required" => {}}))
    ListDevicePositionsResponseEntry.add_member(:accuracy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionalAccuracy, location_name: 'Accuracy'))
    ListDevicePositionsResponseEntry.add_member(:position_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionPropertyMap, location_name: 'PositionProperties'))
    ListDevicePositionsResponseEntry.type = Types::ListDevicePositionsResponseEntry
    ListDevicePositionsResponseEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicePositionsResponseEntry)
    ListGeofenceCollectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListGeofenceCollectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListGeofenceCollectionsInput.type = Types::ListGeofenceCollectionsInput
    ListGeofenceCollectionsOutput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeofenceCollectionsResponseEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}}))
    ListGeofenceCollectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListGeofenceCollectionsOutput.type = Types::ListGeofenceCollectionsOutput
    ListGeofenceCollectionsResponseEntry.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#required" => {}}))
    ListGeofenceCollectionsResponseEntry.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    ListGeofenceCollectionsResponseEntry.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Always returns RequestBasedUsage.", "since" => "2022-02-01"}}))
    ListGeofenceCollectionsResponseEntry.add_member(:pricing_plan_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PricingPlanDataSource', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Unused.", "since" => "2022-02-01"}}))
    ListGeofenceCollectionsResponseEntry.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    ListGeofenceCollectionsResponseEntry.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    ListGeofenceCollectionsResponseEntry.type = Types::ListGeofenceCollectionsResponseEntry
    ListGeofenceCollectionsResponseEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeofenceCollectionsResponseEntry)
    ListGeofenceResponseEntry.add_member(:geofence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'GeofenceId', traits: {"smithy.api#required" => {}}))
    ListGeofenceResponseEntry.add_member(:geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeofenceGeometry, location_name: 'Geometry', traits: {"smithy.api#required" => {}}))
    ListGeofenceResponseEntry.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ListGeofenceResponseEntry.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    ListGeofenceResponseEntry.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    ListGeofenceResponseEntry.add_member(:geofence_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyMap, location_name: 'GeofenceProperties'))
    ListGeofenceResponseEntry.type = Types::ListGeofenceResponseEntry
    ListGeofenceResponseEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeofenceResponseEntry)
    ListGeofencesInput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGeofencesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LargeToken, location_name: 'NextToken'))
    ListGeofencesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListGeofencesInput.type = Types::ListGeofencesInput
    ListGeofencesOutput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeofenceResponseEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}}))
    ListGeofencesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LargeToken, location_name: 'NextToken'))
    ListGeofencesOutput.type = Types::ListGeofencesOutput
    ListKeysInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListKeysInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListKeysInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyFilter, location_name: 'Filter'))
    ListKeysInput.type = Types::ListKeysInput
    ListKeysOutput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysResponseEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}}))
    ListKeysOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListKeysOutput.type = Types::ListKeysOutput
    ListKeysResponseEntry.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'KeyName', traits: {"smithy.api#required" => {}}))
    ListKeysResponseEntry.add_member(:expire_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpireTime', traits: {"smithy.api#required" => {}}))
    ListKeysResponseEntry.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    ListKeysResponseEntry.add_member(:restrictions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyRestrictions, location_name: 'Restrictions', traits: {"smithy.api#required" => {}}))
    ListKeysResponseEntry.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    ListKeysResponseEntry.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    ListKeysResponseEntry.type = Types::ListKeysResponseEntry
    ListKeysResponseEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysResponseEntry)
    ListMapsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListMapsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListMapsInput.type = Types::ListMapsInput
    ListMapsOutput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMapsResponseEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}}))
    ListMapsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListMapsOutput.type = Types::ListMapsOutput
    ListMapsResponseEntry.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#required" => {}}))
    ListMapsResponseEntry.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    ListMapsResponseEntry.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"smithy.api#required" => {}}))
    ListMapsResponseEntry.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Always returns RequestBasedUsage.", "since" => "2022-02-01"}}))
    ListMapsResponseEntry.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    ListMapsResponseEntry.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    ListMapsResponseEntry.type = Types::ListMapsResponseEntry
    ListMapsResponseEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMapsResponseEntry)
    ListPlaceIndexesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListPlaceIndexesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListPlaceIndexesInput.type = Types::ListPlaceIndexesInput
    ListPlaceIndexesOutput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaceIndexesResponseEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}}))
    ListPlaceIndexesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListPlaceIndexesOutput.type = Types::ListPlaceIndexesOutput
    ListPlaceIndexesResponseEntry.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#required" => {}}))
    ListPlaceIndexesResponseEntry.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    ListPlaceIndexesResponseEntry.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"smithy.api#required" => {}}))
    ListPlaceIndexesResponseEntry.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Always returns RequestBasedUsage.", "since" => "2022-02-01"}}))
    ListPlaceIndexesResponseEntry.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    ListPlaceIndexesResponseEntry.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    ListPlaceIndexesResponseEntry.type = Types::ListPlaceIndexesResponseEntry
    ListPlaceIndexesResponseEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaceIndexesResponseEntry)
    ListRouteCalculatorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRouteCalculatorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListRouteCalculatorsInput.type = Types::ListRouteCalculatorsInput
    ListRouteCalculatorsOutput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRouteCalculatorsResponseEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}}))
    ListRouteCalculatorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListRouteCalculatorsOutput.type = Types::ListRouteCalculatorsOutput
    ListRouteCalculatorsResponseEntry.add_member(:calculator_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CalculatorName', traits: {"smithy.api#required" => {}}))
    ListRouteCalculatorsResponseEntry.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    ListRouteCalculatorsResponseEntry.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"smithy.api#required" => {}}))
    ListRouteCalculatorsResponseEntry.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Always returns RequestBasedUsage.", "since" => "2022-02-01"}}))
    ListRouteCalculatorsResponseEntry.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    ListRouteCalculatorsResponseEntry.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    ListRouteCalculatorsResponseEntry.type = Types::ListRouteCalculatorsResponseEntry
    ListRouteCalculatorsResponseEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRouteCalculatorsResponseEntry)
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTrackerConsumersInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTrackerConsumersInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListTrackerConsumersInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListTrackerConsumersInput.type = Types::ListTrackerConsumersInput
    ListTrackerConsumersOutput.add_member(:consumer_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'ConsumerArns', traits: {"smithy.api#required" => {}}))
    ListTrackerConsumersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListTrackerConsumersOutput.type = Types::ListTrackerConsumersOutput
    ListTrackersInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListTrackersInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListTrackersInput.type = Types::ListTrackersInput
    ListTrackersOutput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrackersResponseEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}}))
    ListTrackersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListTrackersOutput.type = Types::ListTrackersOutput
    ListTrackersResponseEntry.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#required" => {}}))
    ListTrackersResponseEntry.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    ListTrackersResponseEntry.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Always returns RequestBasedUsage.", "since" => "2022-02-01"}}))
    ListTrackersResponseEntry.add_member(:pricing_plan_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PricingPlanDataSource', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. Unused.", "since" => "2022-02-01"}}))
    ListTrackersResponseEntry.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    ListTrackersResponseEntry.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    ListTrackersResponseEntry.type = Types::ListTrackersResponseEntry
    ListTrackersResponseEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrackersResponseEntry)
    LteCellDetails.add_member(:cell_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EutranCellId, location_name: 'CellId', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LteCellDetails.add_member(:mcc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'Mcc', traits: {"smithy.api#range" => {"min" => 200, "max" => 999}, "smithy.api#required" => {}}))
    LteCellDetails.add_member(:mnc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'Mnc', traits: {"smithy.api#range" => {"min" => 0, "max" => 999}, "smithy.api#required" => {}}))
    LteCellDetails.add_member(:local_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LteLocalId, location_name: 'LocalId'))
    LteCellDetails.add_member(:network_measurements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LteNetworkMeasurementsList, location_name: 'NetworkMeasurements', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}}))
    LteCellDetails.add_member(:timing_advance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'TimingAdvance', traits: {"smithy.api#range" => {"min" => 0, "max" => 1282}}))
    LteCellDetails.add_member(:nr_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'NrCapable'))
    LteCellDetails.add_member(:rsrp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rsrp, location_name: 'Rsrp'))
    LteCellDetails.add_member(:rsrq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rsrq, location_name: 'Rsrq'))
    LteCellDetails.add_member(:tac, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'Tac', traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}}))
    LteCellDetails.type = Types::LteCellDetails
    LteCellDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LteCellDetails)
    LteLocalId.add_member(:earfcn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Earfcn, location_name: 'Earfcn', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LteLocalId.add_member(:pci, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pci, location_name: 'Pci', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LteLocalId.type = Types::LteLocalId
    LteNetworkMeasurements.add_member(:earfcn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Earfcn, location_name: 'Earfcn', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LteNetworkMeasurements.add_member(:cell_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EutranCellId, location_name: 'CellId', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LteNetworkMeasurements.add_member(:pci, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pci, location_name: 'Pci', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LteNetworkMeasurements.add_member(:rsrp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rsrp, location_name: 'Rsrp'))
    LteNetworkMeasurements.add_member(:rsrq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rsrq, location_name: 'Rsrq'))
    LteNetworkMeasurements.type = Types::LteNetworkMeasurements
    LteNetworkMeasurementsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LteNetworkMeasurements)
    MapConfiguration.add_member(:style, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapStyle, location_name: 'Style', traits: {"smithy.api#required" => {}}))
    MapConfiguration.add_member(:political_view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode3, location_name: 'PoliticalView'))
    MapConfiguration.add_member(:custom_layers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLayerList, location_name: 'CustomLayers'))
    MapConfiguration.type = Types::MapConfiguration
    MapConfigurationUpdate.add_member(:political_view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode3OrEmpty, location_name: 'PoliticalView'))
    MapConfigurationUpdate.add_member(:custom_layers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLayerList, location_name: 'CustomLayers'))
    MapConfigurationUpdate.type = Types::MapConfigurationUpdate
    MultiLinearRings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinearRings)
    Place.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Label'))
    Place.add_member(:geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceGeometry, location_name: 'Geometry', traits: {"smithy.api#required" => {}}))
    Place.add_member(:address_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'AddressNumber'))
    Place.add_member(:street, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Street'))
    Place.add_member(:neighborhood, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Neighborhood'))
    Place.add_member(:municipality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Municipality'))
    Place.add_member(:sub_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SubRegion'))
    Place.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Region'))
    Place.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Country'))
    Place.add_member(:postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PostalCode'))
    Place.add_member(:interpolated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Interpolated'))
    Place.add_member(:time_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZone, location_name: 'TimeZone'))
    Place.add_member(:unit_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'UnitType'))
    Place.add_member(:unit_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'UnitNumber'))
    Place.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceCategoryList, location_name: 'Categories'))
    Place.add_member(:supplemental_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceSupplementalCategoryList, location_name: 'SupplementalCategories'))
    Place.add_member(:sub_municipality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SubMunicipality'))
    Place.type = Types::Place
    PlaceCategoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceCategory)
    PlaceGeometry.add_member(:point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Point'))
    PlaceGeometry.type = Types::PlaceGeometry
    PlaceSupplementalCategoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceSupplementalCategory)
    Position.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double)
    PositionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position)
    PositionPropertyMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PositionPropertyMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    PositionalAccuracy.add_member(:horizontal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDouble, location_name: 'Horizontal', traits: {"smithy.api#range" => {"min" => 0, "max" => 10000000}, "smithy.api#required" => {}}))
    PositionalAccuracy.type = Types::PositionalAccuracy
    PropertyMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PropertyMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    PutGeofenceInput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGeofenceInput.add_member(:geofence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'GeofenceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGeofenceInput.add_member(:geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeofenceGeometry, location_name: 'Geometry', traits: {"smithy.api#required" => {}}))
    PutGeofenceInput.add_member(:geofence_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyMap, location_name: 'GeofenceProperties'))
    PutGeofenceInput.type = Types::PutGeofenceInput
    PutGeofenceOutput.add_member(:geofence_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'GeofenceId', traits: {"smithy.api#required" => {}}))
    PutGeofenceOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#required" => {}}))
    PutGeofenceOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    PutGeofenceOutput.type = Types::PutGeofenceOutput
    RefererPatternList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefererPattern)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RouteMatrix.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteMatrixRow)
    RouteMatrixEntry.add_member(:distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Distance', traits: {"smithy.api#range" => {"min" => 0}}))
    RouteMatrixEntry.add_member(:duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'DurationSeconds', traits: {"smithy.api#range" => {"min" => 0}}))
    RouteMatrixEntry.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteMatrixEntryError, location_name: 'Error'))
    RouteMatrixEntry.type = Types::RouteMatrixEntry
    RouteMatrixEntryError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteMatrixErrorCode, location_name: 'Code', traits: {"smithy.api#required" => {}}))
    RouteMatrixEntryError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    RouteMatrixEntryError.type = Types::RouteMatrixEntryError
    RouteMatrixRow.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteMatrixEntry)
    SearchForPositionResult.add_member(:place, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Place, location_name: 'Place', traits: {"smithy.api#required" => {}}))
    SearchForPositionResult.add_member(:distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Distance', traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    SearchForPositionResult.add_member(:place_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceId, location_name: 'PlaceId'))
    SearchForPositionResult.type = Types::SearchForPositionResult
    SearchForPositionResultList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchForPositionResult)
    SearchForSuggestionsResult.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Text', traits: {"smithy.api#required" => {}}))
    SearchForSuggestionsResult.add_member(:place_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceId, location_name: 'PlaceId'))
    SearchForSuggestionsResult.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceCategoryList, location_name: 'Categories'))
    SearchForSuggestionsResult.add_member(:supplemental_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceSupplementalCategoryList, location_name: 'SupplementalCategories'))
    SearchForSuggestionsResult.type = Types::SearchForSuggestionsResult
    SearchForSuggestionsResultList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchForSuggestionsResult)
    SearchForTextResult.add_member(:place, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Place, location_name: 'Place', traits: {"smithy.api#required" => {}}))
    SearchForTextResult.add_member(:distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Distance', traits: {"smithy.api#range" => {"min" => 0}}))
    SearchForTextResult.add_member(:relevance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Relevance', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}}))
    SearchForTextResult.add_member(:place_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceId, location_name: 'PlaceId'))
    SearchForTextResult.type = Types::SearchForTextResult
    SearchForTextResultList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchForTextResult)
    SearchPlaceIndexForPositionInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchPlaceIndexForPositionInput.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Position', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForPositionInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceIndexSearchResultLimit, location_name: 'MaxResults'))
    SearchPlaceIndexForPositionInput.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageTag, location_name: 'Language'))
    SearchPlaceIndexForPositionInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    SearchPlaceIndexForPositionInput.type = Types::SearchPlaceIndexForPositionInput
    SearchPlaceIndexForPositionOutput.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPlaceIndexForPositionSummary, location_name: 'Summary', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForPositionOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchForPositionResultList, location_name: 'Results', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForPositionOutput.type = Types::SearchPlaceIndexForPositionOutput
    SearchPlaceIndexForPositionSummary.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'Position', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForPositionSummary.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceIndexSearchResultLimit, location_name: 'MaxResults'))
    SearchPlaceIndexForPositionSummary.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForPositionSummary.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageTag, location_name: 'Language'))
    SearchPlaceIndexForPositionSummary.type = Types::SearchPlaceIndexForPositionSummary
    SearchPlaceIndexForSuggestionsInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchPlaceIndexForSuggestionsInput.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Text', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#required" => {}}))
    SearchPlaceIndexForSuggestionsInput.add_member(:bias_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'BiasPosition'))
    SearchPlaceIndexForSuggestionsInput.add_member(:filter_b_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'FilterBBox'))
    SearchPlaceIndexForSuggestionsInput.add_member(:filter_countries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCodeList, location_name: 'FilterCountries'))
    SearchPlaceIndexForSuggestionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 15}}))
    SearchPlaceIndexForSuggestionsInput.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageTag, location_name: 'Language'))
    SearchPlaceIndexForSuggestionsInput.add_member(:filter_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPlaceCategoryList, location_name: 'FilterCategories'))
    SearchPlaceIndexForSuggestionsInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    SearchPlaceIndexForSuggestionsInput.type = Types::SearchPlaceIndexForSuggestionsInput
    SearchPlaceIndexForSuggestionsOutput.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPlaceIndexForSuggestionsSummary, location_name: 'Summary', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForSuggestionsOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchForSuggestionsResultList, location_name: 'Results', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForSuggestionsOutput.type = Types::SearchPlaceIndexForSuggestionsOutput
    SearchPlaceIndexForSuggestionsSummary.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Text', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForSuggestionsSummary.add_member(:bias_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'BiasPosition'))
    SearchPlaceIndexForSuggestionsSummary.add_member(:filter_b_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'FilterBBox'))
    SearchPlaceIndexForSuggestionsSummary.add_member(:filter_countries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCodeList, location_name: 'FilterCountries'))
    SearchPlaceIndexForSuggestionsSummary.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults'))
    SearchPlaceIndexForSuggestionsSummary.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForSuggestionsSummary.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageTag, location_name: 'Language'))
    SearchPlaceIndexForSuggestionsSummary.add_member(:filter_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPlaceCategoryList, location_name: 'FilterCategories'))
    SearchPlaceIndexForSuggestionsSummary.type = Types::SearchPlaceIndexForSuggestionsSummary
    SearchPlaceIndexForTextInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchPlaceIndexForTextInput.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Text', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#required" => {}}))
    SearchPlaceIndexForTextInput.add_member(:bias_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'BiasPosition'))
    SearchPlaceIndexForTextInput.add_member(:filter_b_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'FilterBBox'))
    SearchPlaceIndexForTextInput.add_member(:filter_countries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCodeList, location_name: 'FilterCountries'))
    SearchPlaceIndexForTextInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceIndexSearchResultLimit, location_name: 'MaxResults'))
    SearchPlaceIndexForTextInput.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageTag, location_name: 'Language'))
    SearchPlaceIndexForTextInput.add_member(:filter_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPlaceCategoryList, location_name: 'FilterCategories'))
    SearchPlaceIndexForTextInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKey, location_name: 'Key', traits: {"smithy.api#httpQuery" => "key"}))
    SearchPlaceIndexForTextInput.type = Types::SearchPlaceIndexForTextInput
    SearchPlaceIndexForTextOutput.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPlaceIndexForTextSummary, location_name: 'Summary', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForTextOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchForTextResultList, location_name: 'Results', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForTextOutput.type = Types::SearchPlaceIndexForTextOutput
    SearchPlaceIndexForTextSummary.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Text', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForTextSummary.add_member(:bias_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'BiasPosition'))
    SearchPlaceIndexForTextSummary.add_member(:filter_b_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'FilterBBox'))
    SearchPlaceIndexForTextSummary.add_member(:filter_countries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCodeList, location_name: 'FilterCountries'))
    SearchPlaceIndexForTextSummary.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaceIndexSearchResultLimit, location_name: 'MaxResults'))
    SearchPlaceIndexForTextSummary.add_member(:result_b_box, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'ResultBBox'))
    SearchPlaceIndexForTextSummary.add_member(:data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DataSource', traits: {"smithy.api#required" => {}}))
    SearchPlaceIndexForTextSummary.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageTag, location_name: 'Language'))
    SearchPlaceIndexForTextSummary.add_member(:filter_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterPlaceCategoryList, location_name: 'FilterCategories'))
    SearchPlaceIndexForTextSummary.type = Types::SearchPlaceIndexForTextSummary
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Step.add_member(:start_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'StartPosition', traits: {"smithy.api#required" => {}}))
    Step.add_member(:end_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'EndPosition', traits: {"smithy.api#required" => {}}))
    Step.add_member(:distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Distance', traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    Step.add_member(:duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'DurationSeconds', traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    Step.add_member(:geometry_offset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'GeometryOffset', traits: {"smithy.api#range" => {"min" => 0}}))
    Step.type = Types::Step
    StepList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Step)
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimeZone.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    TimeZone.add_member(:offset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'Offset'))
    TimeZone.type = Types::TimeZone
    TrackingFilterGeometry.add_member(:polygon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinearRings, location_name: 'Polygon'))
    TrackingFilterGeometry.type = Types::TrackingFilterGeometry
    TruckDimensions.add_member(:length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Length', traits: {"smithy.api#range" => {"min" => 0}}))
    TruckDimensions.add_member(:height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Height', traits: {"smithy.api#range" => {"min" => 0}}))
    TruckDimensions.add_member(:width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Width', traits: {"smithy.api#range" => {"min" => 0}}))
    TruckDimensions.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionUnit, location_name: 'Unit'))
    TruckDimensions.type = Types::TruckDimensions
    TruckWeight.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Total', traits: {"smithy.api#range" => {"min" => 0}}))
    TruckWeight.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleWeightUnit, location_name: 'Unit'))
    TruckWeight.type = Types::TruckWeight
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateGeofenceCollectionInput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGeofenceCollectionInput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. If included, the only allowed value is RequestBasedUsage.", "since" => "2022-02-01"}}))
    UpdateGeofenceCollectionInput.add_member(:pricing_plan_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PricingPlanDataSource', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. No longer allowed.", "since" => "2022-02-01"}}))
    UpdateGeofenceCollectionInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    UpdateGeofenceCollectionInput.type = Types::UpdateGeofenceCollectionInput
    UpdateGeofenceCollectionOutput.add_member(:collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CollectionName', traits: {"smithy.api#required" => {}}))
    UpdateGeofenceCollectionOutput.add_member(:collection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CollectionArn', traits: {"smithy.api#required" => {}}))
    UpdateGeofenceCollectionOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    UpdateGeofenceCollectionOutput.type = Types::UpdateGeofenceCollectionOutput
    UpdateKeyInput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'KeyName', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKeyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    UpdateKeyInput.add_member(:expire_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpireTime'))
    UpdateKeyInput.add_member(:no_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'NoExpiry'))
    UpdateKeyInput.add_member(:force_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ForceUpdate'))
    UpdateKeyInput.add_member(:restrictions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyRestrictions, location_name: 'Restrictions'))
    UpdateKeyInput.type = Types::UpdateKeyInput
    UpdateKeyOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KeyArn', traits: {"smithy.api#required" => {}}))
    UpdateKeyOutput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'KeyName', traits: {"smithy.api#required" => {}}))
    UpdateKeyOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    UpdateKeyOutput.type = Types::UpdateKeyOutput
    UpdateMapInput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMapInput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. If included, the only allowed value is RequestBasedUsage.", "since" => "2022-02-01"}}))
    UpdateMapInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    UpdateMapInput.add_member(:configuration_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapConfigurationUpdate, location_name: 'ConfigurationUpdate', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateMapInput.type = Types::UpdateMapInput
    UpdateMapOutput.add_member(:map_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MapName', traits: {"smithy.api#required" => {}}))
    UpdateMapOutput.add_member(:map_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArn, location_name: 'MapArn', traits: {"smithy.api#required" => {}}))
    UpdateMapOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    UpdateMapOutput.type = Types::UpdateMapOutput
    UpdatePlaceIndexInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePlaceIndexInput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. If included, the only allowed value is RequestBasedUsage.", "since" => "2022-02-01"}}))
    UpdatePlaceIndexInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    UpdatePlaceIndexInput.add_member(:data_source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'DataSourceConfiguration'))
    UpdatePlaceIndexInput.type = Types::UpdatePlaceIndexInput
    UpdatePlaceIndexOutput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'IndexName', traits: {"smithy.api#required" => {}}))
    UpdatePlaceIndexOutput.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArn, location_name: 'IndexArn', traits: {"smithy.api#required" => {}}))
    UpdatePlaceIndexOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    UpdatePlaceIndexOutput.type = Types::UpdatePlaceIndexOutput
    UpdateRouteCalculatorInput.add_member(:calculator_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CalculatorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteCalculatorInput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. If included, the only allowed value is RequestBasedUsage.", "since" => "2022-02-01"}}))
    UpdateRouteCalculatorInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    UpdateRouteCalculatorInput.type = Types::UpdateRouteCalculatorInput
    UpdateRouteCalculatorOutput.add_member(:calculator_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'CalculatorName', traits: {"smithy.api#required" => {}}))
    UpdateRouteCalculatorOutput.add_member(:calculator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoArn, location_name: 'CalculatorArn', traits: {"smithy.api#required" => {}}))
    UpdateRouteCalculatorOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    UpdateRouteCalculatorOutput.type = Types::UpdateRouteCalculatorOutput
    UpdateTrackerInput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTrackerInput.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: 'PricingPlan', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. If included, the only allowed value is RequestBasedUsage.", "since" => "2022-02-01"}}))
    UpdateTrackerInput.add_member(:pricing_plan_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PricingPlanDataSource', traits: {"smithy.api#deprecated" => {"message" => "Deprecated. No longer allowed.", "since" => "2022-02-01"}}))
    UpdateTrackerInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    UpdateTrackerInput.add_member(:position_filtering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositionFiltering, location_name: 'PositionFiltering'))
    UpdateTrackerInput.add_member(:event_bridge_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'EventBridgeEnabled'))
    UpdateTrackerInput.add_member(:kms_key_enable_geospatial_queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'KmsKeyEnableGeospatialQueries'))
    UpdateTrackerInput.type = Types::UpdateTrackerInput
    UpdateTrackerOutput.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#required" => {}}))
    UpdateTrackerOutput.add_member(:tracker_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TrackerArn', traits: {"smithy.api#required" => {}}))
    UpdateTrackerOutput.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdateTime', traits: {"smithy.api#required" => {}}))
    UpdateTrackerOutput.type = Types::UpdateTrackerOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#jsonName" => "reason", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'FieldList', traits: {"smithy.api#jsonName" => "fieldList", "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VerifyDevicePositionRequest.add_member(:tracker_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'TrackerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    VerifyDevicePositionRequest.add_member(:device_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceState, location_name: 'DeviceState', traits: {"smithy.api#required" => {}}))
    VerifyDevicePositionRequest.add_member(:distance_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceUnit, location_name: 'DistanceUnit'))
    VerifyDevicePositionRequest.type = Types::VerifyDevicePositionRequest
    VerifyDevicePositionResponse.add_member(:inferred_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferredState, location_name: 'InferredState', traits: {"smithy.api#required" => {}}))
    VerifyDevicePositionResponse.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    VerifyDevicePositionResponse.add_member(:sample_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SampleTime', traits: {"smithy.api#required" => {}}))
    VerifyDevicePositionResponse.add_member(:received_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReceivedTime', traits: {"smithy.api#required" => {}}))
    VerifyDevicePositionResponse.add_member(:distance_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistanceUnit, location_name: 'DistanceUnit', traits: {"smithy.api#required" => {}}))
    VerifyDevicePositionResponse.type = Types::VerifyDevicePositionResponse
    WaypointPositionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position)
    WiFiAccessPoint.add_member(:mac_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'MacAddress', traits: {"smithy.api#length" => {"min" => 12, "max" => 17}, "smithy.api#pattern" => "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$", "smithy.api#required" => {}}))
    WiFiAccessPoint.add_member(:rss, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'Rss', traits: {"smithy.api#range" => {"min" => -128, "max" => 0}, "smithy.api#required" => {}}))
    WiFiAccessPoint.type = Types::WiFiAccessPoint
    WiFiAccessPointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WiFiAccessPoint)

    LocationService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.location#LocationService"
      service.name = "LocationService"
      service.version = "2020-11-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Location", "arnNamespace" => "geo"}, "aws.auth#sigv4" => {"name" => "geo"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Location Service"}
      service.add_operation(:associate_tracker_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#AssociateTrackerConsumer"
        operation.name = "AssociateTrackerConsumer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateTrackerConsumerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateTrackerConsumerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}/consumers", "method" => "POST"}}
      end)
      service.add_operation(:batch_delete_device_position_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#BatchDeleteDevicePositionHistory"
        operation.name = "BatchDeleteDevicePositionHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDevicePositionHistoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDevicePositionHistoryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}/delete-positions", "method" => "POST"}}
      end)
      service.add_operation(:batch_delete_geofence, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#BatchDeleteGeofence"
        operation.name = "BatchDeleteGeofence"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteGeofenceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteGeofenceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections/{CollectionName}/delete-geofences", "method" => "POST"}}
      end)
      service.add_operation(:batch_evaluate_geofences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#BatchEvaluateGeofences"
        operation.name = "BatchEvaluateGeofences"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEvaluateGeofencesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEvaluateGeofencesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections/{CollectionName}/positions", "method" => "POST"}}
      end)
      service.add_operation(:batch_get_device_position, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#BatchGetDevicePosition"
        operation.name = "BatchGetDevicePosition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDevicePositionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDevicePositionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}/get-positions", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_put_geofence, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#BatchPutGeofence"
        operation.name = "BatchPutGeofence"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutGeofenceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutGeofenceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections/{CollectionName}/put-geofences", "method" => "POST"}}
      end)
      service.add_operation(:batch_update_device_position, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#BatchUpdateDevicePosition"
        operation.name = "BatchUpdateDevicePosition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateDevicePositionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateDevicePositionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}/positions", "method" => "POST"}}
      end)
      service.add_operation(:calculate_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#CalculateRoute"
        operation.name = "CalculateRoute"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculateRouteInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculateRouteOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "routes."}, "smithy.api#http" => {"uri" => "/routes/v0/calculators/{CalculatorName}/calculate/route", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:calculate_route_matrix, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#CalculateRouteMatrix"
        operation.name = "CalculateRouteMatrix"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculateRouteMatrixInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculateRouteMatrixOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "routes."}, "smithy.api#http" => {"uri" => "/routes/v0/calculators/{CalculatorName}/calculate/route-matrix", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_geofence_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#CreateGeofenceCollection"
        operation.name = "CreateGeofenceCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGeofenceCollectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGeofenceCollectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#CreateKey"
        operation.name = "CreateKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.metadata."}, "smithy.api#http" => {"uri" => "/metadata/v0/keys", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_map, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#CreateMap"
        operation.name = "CreateMap"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMapInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMapOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.maps."}, "smithy.api#http" => {"uri" => "/maps/v0/maps", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_place_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#CreatePlaceIndex"
        operation.name = "CreatePlaceIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePlaceIndexInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePlaceIndexOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.places."}, "smithy.api#http" => {"uri" => "/places/v0/indexes", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_route_calculator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#CreateRouteCalculator"
        operation.name = "CreateRouteCalculator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRouteCalculatorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRouteCalculatorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.routes."}, "smithy.api#http" => {"uri" => "/routes/v0/calculators", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_tracker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#CreateTracker"
        operation.name = "CreateTracker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrackerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrackerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_geofence_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DeleteGeofenceCollection"
        operation.name = "DeleteGeofenceCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGeofenceCollectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGeofenceCollectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections/{CollectionName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DeleteKey"
        operation.name = "DeleteKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.metadata."}, "smithy.api#http" => {"uri" => "/metadata/v0/keys/{KeyName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_map, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DeleteMap"
        operation.name = "DeleteMap"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMapInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMapOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.maps."}, "smithy.api#http" => {"uri" => "/maps/v0/maps/{MapName}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_place_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DeletePlaceIndex"
        operation.name = "DeletePlaceIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlaceIndexInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlaceIndexOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.places."}, "smithy.api#http" => {"uri" => "/places/v0/indexes/{IndexName}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_route_calculator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DeleteRouteCalculator"
        operation.name = "DeleteRouteCalculator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRouteCalculatorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRouteCalculatorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.routes."}, "smithy.api#http" => {"uri" => "/routes/v0/calculators/{CalculatorName}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_tracker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DeleteTracker"
        operation.name = "DeleteTracker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrackerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrackerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_geofence_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DescribeGeofenceCollection"
        operation.name = "DescribeGeofenceCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGeofenceCollectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGeofenceCollectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections/{CollectionName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DescribeKey"
        operation.name = "DescribeKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.metadata."}, "smithy.api#http" => {"uri" => "/metadata/v0/keys/{KeyName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_map, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DescribeMap"
        operation.name = "DescribeMap"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMapInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMapOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.maps."}, "smithy.api#http" => {"uri" => "/maps/v0/maps/{MapName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_place_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DescribePlaceIndex"
        operation.name = "DescribePlaceIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePlaceIndexInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePlaceIndexOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.places."}, "smithy.api#http" => {"uri" => "/places/v0/indexes/{IndexName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_route_calculator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DescribeRouteCalculator"
        operation.name = "DescribeRouteCalculator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRouteCalculatorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRouteCalculatorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.routes."}, "smithy.api#http" => {"uri" => "/routes/v0/calculators/{CalculatorName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_tracker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DescribeTracker"
        operation.name = "DescribeTracker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrackerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrackerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:disassociate_tracker_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#DisassociateTrackerConsumer"
        operation.name = "DisassociateTrackerConsumer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateTrackerConsumerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateTrackerConsumerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}/consumers/{ConsumerArn}", "method" => "DELETE"}}
      end)
      service.add_operation(:forecast_geofence_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ForecastGeofenceEvents"
        operation.name = "ForecastGeofenceEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastGeofenceEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastGeofenceEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections/{CollectionName}/forecast-geofence-events", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ForecastGeofenceEvents.new
      end)
      service.add_operation(:get_device_position, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#GetDevicePosition"
        operation.name = "GetDevicePosition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePositionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePositionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/positions/latest", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_device_position_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#GetDevicePositionHistory"
        operation.name = "GetDevicePositionHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePositionHistoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevicePositionHistoryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/list-positions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetDevicePositionHistory.new
      end)
      service.add_operation(:get_geofence, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#GetGeofence"
        operation.name = "GetGeofence"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeofenceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeofenceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_map_glyphs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#GetMapGlyphs"
        operation.name = "GetMapGlyphs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMapGlyphsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMapGlyphsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "maps."}, "smithy.api#http" => {"uri" => "/maps/v0/maps/{MapName}/glyphs/{FontStack}/{FontUnicodeRange}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_map_sprites, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#GetMapSprites"
        operation.name = "GetMapSprites"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMapSpritesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMapSpritesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "maps."}, "smithy.api#http" => {"uri" => "/maps/v0/maps/{MapName}/sprites/{FileName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_map_style_descriptor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#GetMapStyleDescriptor"
        operation.name = "GetMapStyleDescriptor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMapStyleDescriptorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMapStyleDescriptorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "maps."}, "smithy.api#http" => {"uri" => "/maps/v0/maps/{MapName}/style-descriptor", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_map_tile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#GetMapTile"
        operation.name = "GetMapTile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMapTileInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMapTileOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "maps."}, "smithy.api#http" => {"uri" => "/maps/v0/maps/{MapName}/tiles/{Z}/{X}/{Y}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_place, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#GetPlace"
        operation.name = "GetPlace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "places."}, "smithy.api#http" => {"uri" => "/places/v0/indexes/{IndexName}/places/{PlaceId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_device_positions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ListDevicePositions"
        operation.name = "ListDevicePositions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicePositionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicePositionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}/list-positions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDevicePositions.new
      end)
      service.add_operation(:list_geofence_collections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ListGeofenceCollections"
        operation.name = "ListGeofenceCollections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeofenceCollectionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeofenceCollectionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/list-collections", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGeofenceCollections.new
      end)
      service.add_operation(:list_geofences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ListGeofences"
        operation.name = "ListGeofences"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeofencesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeofencesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections/{CollectionName}/list-geofences", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGeofences.new
      end)
      service.add_operation(:list_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ListKeys"
        operation.name = "ListKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.metadata."}, "smithy.api#http" => {"uri" => "/metadata/v0/list-keys", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListKeys.new
      end)
      service.add_operation(:list_maps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ListMaps"
        operation.name = "ListMaps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMapsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMapsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.maps."}, "smithy.api#http" => {"uri" => "/maps/v0/list-maps", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMaps.new
      end)
      service.add_operation(:list_place_indexes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ListPlaceIndexes"
        operation.name = "ListPlaceIndexes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaceIndexesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaceIndexesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.places."}, "smithy.api#http" => {"uri" => "/places/v0/list-indexes", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlaceIndexes.new
      end)
      service.add_operation(:list_route_calculators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ListRouteCalculators"
        operation.name = "ListRouteCalculators"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRouteCalculatorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRouteCalculatorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.routes."}, "smithy.api#http" => {"uri" => "/routes/v0/list-calculators", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRouteCalculators.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.metadata."}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tracker_consumers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ListTrackerConsumers"
        operation.name = "ListTrackerConsumers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrackerConsumersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrackerConsumersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}/list-consumers", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrackerConsumers.new
      end)
      service.add_operation(:list_trackers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#ListTrackers"
        operation.name = "ListTrackers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrackersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrackersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/list-trackers", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrackers.new
      end)
      service.add_operation(:put_geofence, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#PutGeofence"
        operation.name = "PutGeofence"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutGeofenceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutGeofenceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}", "method" => "PUT"}}
      end)
      service.add_operation(:search_place_index_for_position, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#SearchPlaceIndexForPosition"
        operation.name = "SearchPlaceIndexForPosition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPlaceIndexForPositionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPlaceIndexForPositionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "places."}, "smithy.api#http" => {"uri" => "/places/v0/indexes/{IndexName}/search/position", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:search_place_index_for_suggestions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#SearchPlaceIndexForSuggestions"
        operation.name = "SearchPlaceIndexForSuggestions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPlaceIndexForSuggestionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPlaceIndexForSuggestionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "places."}, "smithy.api#http" => {"uri" => "/places/v0/indexes/{IndexName}/search/suggestions", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:search_place_index_for_text, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#SearchPlaceIndexForText"
        operation.name = "SearchPlaceIndexForText"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPlaceIndexForTextInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPlaceIndexForTextOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "places."}, "smithy.api#http" => {"uri" => "/places/v0/indexes/{IndexName}/search/text", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.metadata."}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.metadata."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_geofence_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#UpdateGeofenceCollection"
        operation.name = "UpdateGeofenceCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGeofenceCollectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGeofenceCollectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.geofencing."}, "smithy.api#http" => {"uri" => "/geofencing/v0/collections/{CollectionName}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#UpdateKey"
        operation.name = "UpdateKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.metadata."}, "smithy.api#http" => {"uri" => "/metadata/v0/keys/{KeyName}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_map, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#UpdateMap"
        operation.name = "UpdateMap"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMapInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMapOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.maps."}, "smithy.api#http" => {"uri" => "/maps/v0/maps/{MapName}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_place_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#UpdatePlaceIndex"
        operation.name = "UpdatePlaceIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlaceIndexInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlaceIndexOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.places."}, "smithy.api#http" => {"uri" => "/places/v0/indexes/{IndexName}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_route_calculator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#UpdateRouteCalculator"
        operation.name = "UpdateRouteCalculator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRouteCalculatorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRouteCalculatorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp.routes."}, "smithy.api#http" => {"uri" => "/routes/v0/calculators/{CalculatorName}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_tracker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#UpdateTracker"
        operation.name = "UpdateTracker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrackerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrackerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "cp.tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:verify_device_position, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.location#VerifyDevicePosition"
        operation.name = "VerifyDevicePosition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyDevicePositionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyDevicePositionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "tracking."}, "smithy.api#http" => {"uri" => "/tracking/v0/trackers/{TrackerName}/positions/verify", "method" => "POST"}}
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
