# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTRoboRunner
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    CartesianCoordinates = Shapes::StructureShape.new(name: 'CartesianCoordinates')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDestinationRequest = Shapes::StructureShape.new(name: 'CreateDestinationRequest')
    CreateDestinationResponse = Shapes::StructureShape.new(name: 'CreateDestinationResponse')
    CreateSiteRequest = Shapes::StructureShape.new(name: 'CreateSiteRequest')
    CreateSiteResponse = Shapes::StructureShape.new(name: 'CreateSiteResponse')
    CreateWorkerFleetRequest = Shapes::StructureShape.new(name: 'CreateWorkerFleetRequest')
    CreateWorkerFleetResponse = Shapes::StructureShape.new(name: 'CreateWorkerFleetResponse')
    CreateWorkerRequest = Shapes::StructureShape.new(name: 'CreateWorkerRequest')
    CreateWorkerResponse = Shapes::StructureShape.new(name: 'CreateWorkerResponse')
    CreatedAtTimestamp = Shapes::TimestampShape.new(name: 'CreatedAtTimestamp')
    DeleteDestinationRequest = Shapes::StructureShape.new(name: 'DeleteDestinationRequest')
    DeleteDestinationResponse = Shapes::StructureShape.new(name: 'DeleteDestinationResponse')
    DeleteSiteRequest = Shapes::StructureShape.new(name: 'DeleteSiteRequest')
    DeleteSiteResponse = Shapes::StructureShape.new(name: 'DeleteSiteResponse')
    DeleteWorkerFleetRequest = Shapes::StructureShape.new(name: 'DeleteWorkerFleetRequest')
    DeleteWorkerFleetResponse = Shapes::StructureShape.new(name: 'DeleteWorkerFleetResponse')
    DeleteWorkerRequest = Shapes::StructureShape.new(name: 'DeleteWorkerRequest')
    DeleteWorkerResponse = Shapes::StructureShape.new(name: 'DeleteWorkerResponse')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DestinationAdditionalFixedProperties = Shapes::StringShape.new(name: 'DestinationAdditionalFixedProperties')
    DestinationArn = Shapes::StringShape.new(name: 'DestinationArn')
    DestinationGenericIdentifier = Shapes::StringShape.new(name: 'DestinationGenericIdentifier')
    DestinationId = Shapes::StringShape.new(name: 'DestinationId')
    DestinationState = Shapes::StringShape.new(name: 'DestinationState')
    Destinations = Shapes::ListShape.new(name: 'Destinations')
    Double = Shapes::FloatShape.new(name: 'Double')
    GetDestinationRequest = Shapes::StructureShape.new(name: 'GetDestinationRequest')
    GetDestinationResponse = Shapes::StructureShape.new(name: 'GetDestinationResponse')
    GetSiteRequest = Shapes::StructureShape.new(name: 'GetSiteRequest')
    GetSiteResponse = Shapes::StructureShape.new(name: 'GetSiteResponse')
    GetWorkerFleetRequest = Shapes::StructureShape.new(name: 'GetWorkerFleetRequest')
    GetWorkerFleetResponse = Shapes::StructureShape.new(name: 'GetWorkerFleetResponse')
    GetWorkerRequest = Shapes::StructureShape.new(name: 'GetWorkerRequest')
    GetWorkerResponse = Shapes::StructureShape.new(name: 'GetWorkerResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListDestinationsRequest = Shapes::StructureShape.new(name: 'ListDestinationsRequest')
    ListDestinationsResponse = Shapes::StructureShape.new(name: 'ListDestinationsResponse')
    ListSitesPageSize = Shapes::IntegerShape.new(name: 'ListSitesPageSize')
    ListSitesRequest = Shapes::StructureShape.new(name: 'ListSitesRequest')
    ListSitesResponse = Shapes::StructureShape.new(name: 'ListSitesResponse')
    ListWorkerFleetsPageSize = Shapes::IntegerShape.new(name: 'ListWorkerFleetsPageSize')
    ListWorkerFleetsRequest = Shapes::StructureShape.new(name: 'ListWorkerFleetsRequest')
    ListWorkerFleetsResponse = Shapes::StructureShape.new(name: 'ListWorkerFleetsResponse')
    ListWorkersPageSize = Shapes::IntegerShape.new(name: 'ListWorkersPageSize')
    ListWorkersRequest = Shapes::StructureShape.new(name: 'ListWorkersRequest')
    ListWorkersResponse = Shapes::StructureShape.new(name: 'ListWorkersResponse')
    Name = Shapes::StringShape.new(name: 'Name')
    Orientation = Shapes::UnionShape.new(name: 'Orientation')
    OrientationDegreesDouble = Shapes::FloatShape.new(name: 'OrientationDegreesDouble')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PositionCoordinates = Shapes::UnionShape.new(name: 'PositionCoordinates')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Site = Shapes::StructureShape.new(name: 'Site')
    SiteArn = Shapes::StringShape.new(name: 'SiteArn')
    SiteCountryCode = Shapes::StringShape.new(name: 'SiteCountryCode')
    SiteDescription = Shapes::StringShape.new(name: 'SiteDescription')
    SiteGenericIdentifier = Shapes::StringShape.new(name: 'SiteGenericIdentifier')
    SiteId = Shapes::StringShape.new(name: 'SiteId')
    Sites = Shapes::ListShape.new(name: 'Sites')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateDestinationRequest = Shapes::StructureShape.new(name: 'UpdateDestinationRequest')
    UpdateDestinationResponse = Shapes::StructureShape.new(name: 'UpdateDestinationResponse')
    UpdateSiteRequest = Shapes::StructureShape.new(name: 'UpdateSiteRequest')
    UpdateSiteResponse = Shapes::StructureShape.new(name: 'UpdateSiteResponse')
    UpdateWorkerFleetRequest = Shapes::StructureShape.new(name: 'UpdateWorkerFleetRequest')
    UpdateWorkerFleetResponse = Shapes::StructureShape.new(name: 'UpdateWorkerFleetResponse')
    UpdateWorkerRequest = Shapes::StructureShape.new(name: 'UpdateWorkerRequest')
    UpdateWorkerResponse = Shapes::StructureShape.new(name: 'UpdateWorkerResponse')
    UpdatedAtTimestamp = Shapes::TimestampShape.new(name: 'UpdatedAtTimestamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VendorAdditionalFixedPropertiesJson = Shapes::StringShape.new(name: 'VendorAdditionalFixedPropertiesJson')
    VendorAdditionalTransientPropertiesJson = Shapes::StringShape.new(name: 'VendorAdditionalTransientPropertiesJson')
    VendorProperties = Shapes::StructureShape.new(name: 'VendorProperties')
    VendorWorkerId = Shapes::StringShape.new(name: 'VendorWorkerId')
    VendorWorkerIpAddress = Shapes::StringShape.new(name: 'VendorWorkerIpAddress')
    Worker = Shapes::StructureShape.new(name: 'Worker')
    WorkerAdditionalFixedPropertiesJson = Shapes::StringShape.new(name: 'WorkerAdditionalFixedPropertiesJson')
    WorkerAdditionalTransientPropertiesJson = Shapes::StringShape.new(name: 'WorkerAdditionalTransientPropertiesJson')
    WorkerArn = Shapes::StringShape.new(name: 'WorkerArn')
    WorkerFleet = Shapes::StructureShape.new(name: 'WorkerFleet')
    WorkerFleetAdditionalFixedProperties = Shapes::StringShape.new(name: 'WorkerFleetAdditionalFixedProperties')
    WorkerFleetArn = Shapes::StringShape.new(name: 'WorkerFleetArn')
    WorkerFleetGenericIdentifier = Shapes::StringShape.new(name: 'WorkerFleetGenericIdentifier')
    WorkerFleetId = Shapes::StringShape.new(name: 'WorkerFleetId')
    WorkerFleets = Shapes::ListShape.new(name: 'WorkerFleets')
    WorkerGenericIdentifier = Shapes::StringShape.new(name: 'WorkerGenericIdentifier')
    WorkerId = Shapes::StringShape.new(name: 'WorkerId')
    Workers = Shapes::ListShape.new(name: 'Workers')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CartesianCoordinates.add_member(:x, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "x"))
    CartesianCoordinates.add_member(:y, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "y"))
    CartesianCoordinates.add_member(:z, Shapes::ShapeRef.new(shape: Double, location_name: "z"))
    CartesianCoordinates.struct_class = Types::CartesianCoordinates

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateDestinationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateDestinationRequest.add_member(:site, Shapes::ShapeRef.new(shape: SiteGenericIdentifier, required: true, location_name: "site"))
    CreateDestinationRequest.add_member(:state, Shapes::ShapeRef.new(shape: DestinationState, location_name: "state"))
    CreateDestinationRequest.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: DestinationAdditionalFixedProperties, location_name: "additionalFixedProperties"))
    CreateDestinationRequest.struct_class = Types::CreateDestinationRequest

    CreateDestinationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationArn, required: true, location_name: "arn"))
    CreateDestinationResponse.add_member(:id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "id"))
    CreateDestinationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    CreateDestinationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    CreateDestinationResponse.add_member(:state, Shapes::ShapeRef.new(shape: DestinationState, required: true, location_name: "state"))
    CreateDestinationResponse.struct_class = Types::CreateDestinationResponse

    CreateSiteRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateSiteRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateSiteRequest.add_member(:country_code, Shapes::ShapeRef.new(shape: SiteCountryCode, required: true, location_name: "countryCode"))
    CreateSiteRequest.add_member(:description, Shapes::ShapeRef.new(shape: SiteDescription, location_name: "description"))
    CreateSiteRequest.struct_class = Types::CreateSiteRequest

    CreateSiteResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "arn"))
    CreateSiteResponse.add_member(:id, Shapes::ShapeRef.new(shape: SiteId, required: true, location_name: "id"))
    CreateSiteResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    CreateSiteResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    CreateSiteResponse.struct_class = Types::CreateSiteResponse

    CreateWorkerFleetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateWorkerFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateWorkerFleetRequest.add_member(:site, Shapes::ShapeRef.new(shape: SiteGenericIdentifier, required: true, location_name: "site"))
    CreateWorkerFleetRequest.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: WorkerFleetAdditionalFixedProperties, location_name: "additionalFixedProperties"))
    CreateWorkerFleetRequest.struct_class = Types::CreateWorkerFleetRequest

    CreateWorkerFleetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkerFleetArn, required: true, location_name: "arn"))
    CreateWorkerFleetResponse.add_member(:id, Shapes::ShapeRef.new(shape: WorkerFleetId, required: true, location_name: "id"))
    CreateWorkerFleetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    CreateWorkerFleetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    CreateWorkerFleetResponse.struct_class = Types::CreateWorkerFleetResponse

    CreateWorkerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateWorkerRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateWorkerRequest.add_member(:fleet, Shapes::ShapeRef.new(shape: WorkerFleetGenericIdentifier, required: true, location_name: "fleet"))
    CreateWorkerRequest.add_member(:additional_transient_properties, Shapes::ShapeRef.new(shape: WorkerAdditionalTransientPropertiesJson, location_name: "additionalTransientProperties"))
    CreateWorkerRequest.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: WorkerAdditionalFixedPropertiesJson, location_name: "additionalFixedProperties"))
    CreateWorkerRequest.add_member(:vendor_properties, Shapes::ShapeRef.new(shape: VendorProperties, location_name: "vendorProperties"))
    CreateWorkerRequest.add_member(:position, Shapes::ShapeRef.new(shape: PositionCoordinates, location_name: "position"))
    CreateWorkerRequest.add_member(:orientation, Shapes::ShapeRef.new(shape: Orientation, location_name: "orientation"))
    CreateWorkerRequest.struct_class = Types::CreateWorkerRequest

    CreateWorkerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkerArn, required: true, location_name: "arn"))
    CreateWorkerResponse.add_member(:id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location_name: "id"))
    CreateWorkerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    CreateWorkerResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    CreateWorkerResponse.add_member(:site, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "site"))
    CreateWorkerResponse.struct_class = Types::CreateWorkerResponse

    DeleteDestinationRequest.add_member(:id, Shapes::ShapeRef.new(shape: DestinationGenericIdentifier, required: true, location_name: "id"))
    DeleteDestinationRequest.struct_class = Types::DeleteDestinationRequest

    DeleteDestinationResponse.struct_class = Types::DeleteDestinationResponse

    DeleteSiteRequest.add_member(:id, Shapes::ShapeRef.new(shape: SiteGenericIdentifier, required: true, location_name: "id"))
    DeleteSiteRequest.struct_class = Types::DeleteSiteRequest

    DeleteSiteResponse.struct_class = Types::DeleteSiteResponse

    DeleteWorkerFleetRequest.add_member(:id, Shapes::ShapeRef.new(shape: WorkerFleetGenericIdentifier, required: true, location_name: "id"))
    DeleteWorkerFleetRequest.struct_class = Types::DeleteWorkerFleetRequest

    DeleteWorkerFleetResponse.struct_class = Types::DeleteWorkerFleetResponse

    DeleteWorkerRequest.add_member(:id, Shapes::ShapeRef.new(shape: WorkerGenericIdentifier, required: true, location_name: "id"))
    DeleteWorkerRequest.struct_class = Types::DeleteWorkerRequest

    DeleteWorkerResponse.struct_class = Types::DeleteWorkerResponse

    Destination.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationArn, required: true, location_name: "arn"))
    Destination.add_member(:id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "id"))
    Destination.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    Destination.add_member(:site, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "site"))
    Destination.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    Destination.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    Destination.add_member(:state, Shapes::ShapeRef.new(shape: DestinationState, required: true, location_name: "state"))
    Destination.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: DestinationAdditionalFixedProperties, location_name: "additionalFixedProperties"))
    Destination.struct_class = Types::Destination

    Destinations.member = Shapes::ShapeRef.new(shape: Destination)

    GetDestinationRequest.add_member(:id, Shapes::ShapeRef.new(shape: DestinationGenericIdentifier, required: true, location: "querystring", location_name: "id"))
    GetDestinationRequest.struct_class = Types::GetDestinationRequest

    GetDestinationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationArn, required: true, location_name: "arn"))
    GetDestinationResponse.add_member(:id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "id"))
    GetDestinationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetDestinationResponse.add_member(:site, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "site"))
    GetDestinationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    GetDestinationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    GetDestinationResponse.add_member(:state, Shapes::ShapeRef.new(shape: DestinationState, required: true, location_name: "state"))
    GetDestinationResponse.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: DestinationAdditionalFixedProperties, location_name: "additionalFixedProperties"))
    GetDestinationResponse.struct_class = Types::GetDestinationResponse

    GetSiteRequest.add_member(:id, Shapes::ShapeRef.new(shape: SiteGenericIdentifier, required: true, location: "querystring", location_name: "id"))
    GetSiteRequest.struct_class = Types::GetSiteRequest

    GetSiteResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "arn"))
    GetSiteResponse.add_member(:id, Shapes::ShapeRef.new(shape: SiteId, required: true, location_name: "id"))
    GetSiteResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetSiteResponse.add_member(:country_code, Shapes::ShapeRef.new(shape: SiteCountryCode, required: true, location_name: "countryCode"))
    GetSiteResponse.add_member(:description, Shapes::ShapeRef.new(shape: SiteDescription, location_name: "description"))
    GetSiteResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    GetSiteResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    GetSiteResponse.struct_class = Types::GetSiteResponse

    GetWorkerFleetRequest.add_member(:id, Shapes::ShapeRef.new(shape: WorkerFleetGenericIdentifier, required: true, location: "querystring", location_name: "id"))
    GetWorkerFleetRequest.struct_class = Types::GetWorkerFleetRequest

    GetWorkerFleetResponse.add_member(:id, Shapes::ShapeRef.new(shape: WorkerFleetId, required: true, location_name: "id"))
    GetWorkerFleetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkerFleetArn, required: true, location_name: "arn"))
    GetWorkerFleetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetWorkerFleetResponse.add_member(:site, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "site"))
    GetWorkerFleetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    GetWorkerFleetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    GetWorkerFleetResponse.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: WorkerFleetAdditionalFixedProperties, location_name: "additionalFixedProperties"))
    GetWorkerFleetResponse.struct_class = Types::GetWorkerFleetResponse

    GetWorkerRequest.add_member(:id, Shapes::ShapeRef.new(shape: WorkerGenericIdentifier, required: true, location: "querystring", location_name: "id"))
    GetWorkerRequest.struct_class = Types::GetWorkerRequest

    GetWorkerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkerArn, required: true, location_name: "arn"))
    GetWorkerResponse.add_member(:id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location_name: "id"))
    GetWorkerResponse.add_member(:fleet, Shapes::ShapeRef.new(shape: WorkerFleetArn, required: true, location_name: "fleet"))
    GetWorkerResponse.add_member(:site, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "site"))
    GetWorkerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    GetWorkerResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    GetWorkerResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetWorkerResponse.add_member(:additional_transient_properties, Shapes::ShapeRef.new(shape: WorkerAdditionalTransientPropertiesJson, location_name: "additionalTransientProperties"))
    GetWorkerResponse.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: WorkerAdditionalFixedPropertiesJson, location_name: "additionalFixedProperties"))
    GetWorkerResponse.add_member(:vendor_properties, Shapes::ShapeRef.new(shape: VendorProperties, location_name: "vendorProperties"))
    GetWorkerResponse.add_member(:position, Shapes::ShapeRef.new(shape: PositionCoordinates, location_name: "position"))
    GetWorkerResponse.add_member(:orientation, Shapes::ShapeRef.new(shape: Orientation, location_name: "orientation"))
    GetWorkerResponse.struct_class = Types::GetWorkerResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDestinationsRequest.add_member(:site, Shapes::ShapeRef.new(shape: SiteGenericIdentifier, required: true, location: "querystring", location_name: "site"))
    ListDestinationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "maxResults"))
    ListDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDestinationsRequest.add_member(:state, Shapes::ShapeRef.new(shape: DestinationState, location: "querystring", location_name: "state"))
    ListDestinationsRequest.struct_class = Types::ListDestinationsRequest

    ListDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDestinationsResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: Destinations, location_name: "destinations"))
    ListDestinationsResponse.struct_class = Types::ListDestinationsResponse

    ListSitesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSitesPageSize, location: "querystring", location_name: "maxResults"))
    ListSitesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSitesRequest.struct_class = Types::ListSitesRequest

    ListSitesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSitesResponse.add_member(:sites, Shapes::ShapeRef.new(shape: Sites, location_name: "sites"))
    ListSitesResponse.struct_class = Types::ListSitesResponse

    ListWorkerFleetsRequest.add_member(:site, Shapes::ShapeRef.new(shape: SiteGenericIdentifier, required: true, location: "querystring", location_name: "site"))
    ListWorkerFleetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkerFleetsPageSize, location: "querystring", location_name: "maxResults"))
    ListWorkerFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListWorkerFleetsRequest.struct_class = Types::ListWorkerFleetsRequest

    ListWorkerFleetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkerFleetsResponse.add_member(:worker_fleets, Shapes::ShapeRef.new(shape: WorkerFleets, location_name: "workerFleets"))
    ListWorkerFleetsResponse.struct_class = Types::ListWorkerFleetsResponse

    ListWorkersRequest.add_member(:site, Shapes::ShapeRef.new(shape: SiteGenericIdentifier, required: true, location: "querystring", location_name: "site"))
    ListWorkersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkersPageSize, location: "querystring", location_name: "maxResults"))
    ListWorkersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListWorkersRequest.add_member(:fleet, Shapes::ShapeRef.new(shape: WorkerFleetGenericIdentifier, location: "querystring", location_name: "fleet"))
    ListWorkersRequest.struct_class = Types::ListWorkersRequest

    ListWorkersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkersResponse.add_member(:workers, Shapes::ShapeRef.new(shape: Workers, location_name: "workers"))
    ListWorkersResponse.struct_class = Types::ListWorkersResponse

    Orientation.add_member(:degrees, Shapes::ShapeRef.new(shape: OrientationDegreesDouble, location_name: "degrees"))
    Orientation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Orientation.add_member_subclass(:degrees, Types::Orientation::Degrees)
    Orientation.add_member_subclass(:unknown, Types::Orientation::Unknown)
    Orientation.struct_class = Types::Orientation

    PositionCoordinates.add_member(:cartesian_coordinates, Shapes::ShapeRef.new(shape: CartesianCoordinates, location_name: "cartesianCoordinates"))
    PositionCoordinates.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PositionCoordinates.add_member_subclass(:cartesian_coordinates, Types::PositionCoordinates::CartesianCoordinates)
    PositionCoordinates.add_member_subclass(:unknown, Types::PositionCoordinates::Unknown)
    PositionCoordinates.struct_class = Types::PositionCoordinates

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Site.add_member(:arn, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "arn"))
    Site.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    Site.add_member(:country_code, Shapes::ShapeRef.new(shape: SiteCountryCode, required: true, location_name: "countryCode"))
    Site.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    Site.struct_class = Types::Site

    Sites.member = Shapes::ShapeRef.new(shape: Site)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateDestinationRequest.add_member(:id, Shapes::ShapeRef.new(shape: DestinationGenericIdentifier, required: true, location_name: "id"))
    UpdateDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateDestinationRequest.add_member(:state, Shapes::ShapeRef.new(shape: DestinationState, location_name: "state"))
    UpdateDestinationRequest.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: DestinationAdditionalFixedProperties, location_name: "additionalFixedProperties"))
    UpdateDestinationRequest.struct_class = Types::UpdateDestinationRequest

    UpdateDestinationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationArn, required: true, location_name: "arn"))
    UpdateDestinationResponse.add_member(:id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "id"))
    UpdateDestinationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateDestinationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    UpdateDestinationResponse.add_member(:state, Shapes::ShapeRef.new(shape: DestinationState, required: true, location_name: "state"))
    UpdateDestinationResponse.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: DestinationAdditionalFixedProperties, location_name: "additionalFixedProperties"))
    UpdateDestinationResponse.struct_class = Types::UpdateDestinationResponse

    UpdateSiteRequest.add_member(:id, Shapes::ShapeRef.new(shape: SiteGenericIdentifier, required: true, location_name: "id"))
    UpdateSiteRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateSiteRequest.add_member(:country_code, Shapes::ShapeRef.new(shape: SiteCountryCode, location_name: "countryCode"))
    UpdateSiteRequest.add_member(:description, Shapes::ShapeRef.new(shape: SiteDescription, location_name: "description"))
    UpdateSiteRequest.struct_class = Types::UpdateSiteRequest

    UpdateSiteResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "arn"))
    UpdateSiteResponse.add_member(:id, Shapes::ShapeRef.new(shape: SiteId, required: true, location_name: "id"))
    UpdateSiteResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateSiteResponse.add_member(:country_code, Shapes::ShapeRef.new(shape: SiteCountryCode, location_name: "countryCode"))
    UpdateSiteResponse.add_member(:description, Shapes::ShapeRef.new(shape: SiteDescription, location_name: "description"))
    UpdateSiteResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    UpdateSiteResponse.struct_class = Types::UpdateSiteResponse

    UpdateWorkerFleetRequest.add_member(:id, Shapes::ShapeRef.new(shape: WorkerFleetGenericIdentifier, required: true, location_name: "id"))
    UpdateWorkerFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateWorkerFleetRequest.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: WorkerFleetAdditionalFixedProperties, location_name: "additionalFixedProperties"))
    UpdateWorkerFleetRequest.struct_class = Types::UpdateWorkerFleetRequest

    UpdateWorkerFleetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkerFleetArn, required: true, location_name: "arn"))
    UpdateWorkerFleetResponse.add_member(:id, Shapes::ShapeRef.new(shape: WorkerFleetId, required: true, location_name: "id"))
    UpdateWorkerFleetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateWorkerFleetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    UpdateWorkerFleetResponse.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: WorkerFleetAdditionalFixedProperties, location_name: "additionalFixedProperties"))
    UpdateWorkerFleetResponse.struct_class = Types::UpdateWorkerFleetResponse

    UpdateWorkerRequest.add_member(:id, Shapes::ShapeRef.new(shape: WorkerGenericIdentifier, required: true, location_name: "id"))
    UpdateWorkerRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateWorkerRequest.add_member(:additional_transient_properties, Shapes::ShapeRef.new(shape: WorkerAdditionalTransientPropertiesJson, location_name: "additionalTransientProperties"))
    UpdateWorkerRequest.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: WorkerAdditionalFixedPropertiesJson, location_name: "additionalFixedProperties"))
    UpdateWorkerRequest.add_member(:vendor_properties, Shapes::ShapeRef.new(shape: VendorProperties, location_name: "vendorProperties"))
    UpdateWorkerRequest.add_member(:position, Shapes::ShapeRef.new(shape: PositionCoordinates, location_name: "position"))
    UpdateWorkerRequest.add_member(:orientation, Shapes::ShapeRef.new(shape: Orientation, location_name: "orientation"))
    UpdateWorkerRequest.struct_class = Types::UpdateWorkerRequest

    UpdateWorkerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkerArn, required: true, location_name: "arn"))
    UpdateWorkerResponse.add_member(:id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location_name: "id"))
    UpdateWorkerResponse.add_member(:fleet, Shapes::ShapeRef.new(shape: WorkerFleetArn, required: true, location_name: "fleet"))
    UpdateWorkerResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    UpdateWorkerResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UpdateWorkerResponse.add_member(:additional_transient_properties, Shapes::ShapeRef.new(shape: WorkerAdditionalTransientPropertiesJson, location_name: "additionalTransientProperties"))
    UpdateWorkerResponse.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: WorkerAdditionalFixedPropertiesJson, location_name: "additionalFixedProperties"))
    UpdateWorkerResponse.add_member(:orientation, Shapes::ShapeRef.new(shape: Orientation, location_name: "orientation"))
    UpdateWorkerResponse.add_member(:vendor_properties, Shapes::ShapeRef.new(shape: VendorProperties, location_name: "vendorProperties"))
    UpdateWorkerResponse.add_member(:position, Shapes::ShapeRef.new(shape: PositionCoordinates, location_name: "position"))
    UpdateWorkerResponse.struct_class = Types::UpdateWorkerResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VendorProperties.add_member(:vendor_worker_id, Shapes::ShapeRef.new(shape: VendorWorkerId, required: true, location_name: "vendorWorkerId"))
    VendorProperties.add_member(:vendor_worker_ip_address, Shapes::ShapeRef.new(shape: VendorWorkerIpAddress, location_name: "vendorWorkerIpAddress"))
    VendorProperties.add_member(:vendor_additional_transient_properties, Shapes::ShapeRef.new(shape: VendorAdditionalTransientPropertiesJson, location_name: "vendorAdditionalTransientProperties"))
    VendorProperties.add_member(:vendor_additional_fixed_properties, Shapes::ShapeRef.new(shape: VendorAdditionalFixedPropertiesJson, location_name: "vendorAdditionalFixedProperties"))
    VendorProperties.struct_class = Types::VendorProperties

    Worker.add_member(:arn, Shapes::ShapeRef.new(shape: WorkerArn, required: true, location_name: "arn"))
    Worker.add_member(:id, Shapes::ShapeRef.new(shape: WorkerId, required: true, location_name: "id"))
    Worker.add_member(:fleet, Shapes::ShapeRef.new(shape: WorkerFleetArn, required: true, location_name: "fleet"))
    Worker.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    Worker.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    Worker.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    Worker.add_member(:site, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "site"))
    Worker.add_member(:additional_transient_properties, Shapes::ShapeRef.new(shape: WorkerAdditionalTransientPropertiesJson, location_name: "additionalTransientProperties"))
    Worker.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: WorkerAdditionalFixedPropertiesJson, location_name: "additionalFixedProperties"))
    Worker.add_member(:vendor_properties, Shapes::ShapeRef.new(shape: VendorProperties, location_name: "vendorProperties"))
    Worker.add_member(:position, Shapes::ShapeRef.new(shape: PositionCoordinates, location_name: "position"))
    Worker.add_member(:orientation, Shapes::ShapeRef.new(shape: Orientation, location_name: "orientation"))
    Worker.struct_class = Types::Worker

    WorkerFleet.add_member(:arn, Shapes::ShapeRef.new(shape: WorkerFleetArn, required: true, location_name: "arn"))
    WorkerFleet.add_member(:id, Shapes::ShapeRef.new(shape: WorkerFleetId, required: true, location_name: "id"))
    WorkerFleet.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    WorkerFleet.add_member(:site, Shapes::ShapeRef.new(shape: SiteArn, required: true, location_name: "site"))
    WorkerFleet.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtTimestamp, required: true, location_name: "createdAt"))
    WorkerFleet.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAtTimestamp, required: true, location_name: "updatedAt"))
    WorkerFleet.add_member(:additional_fixed_properties, Shapes::ShapeRef.new(shape: WorkerFleetAdditionalFixedProperties, location_name: "additionalFixedProperties"))
    WorkerFleet.struct_class = Types::WorkerFleet

    WorkerFleets.member = Shapes::ShapeRef.new(shape: WorkerFleet)

    Workers.member = Shapes::ShapeRef.new(shape: Worker)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "iotroborunner",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT RoboRunner",
        "serviceId" => "IoT RoboRunner",
        "signatureVersion" => "v4",
        "signingName" => "iotroborunner",
        "uid" => "iot-roborunner-2018-05-10",
      }

      api.add_operation(:create_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDestination"
        o.http_method = "POST"
        o.http_request_uri = "/createDestination"
        o.input = Shapes::ShapeRef.new(shape: CreateDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSite"
        o.http_method = "POST"
        o.http_request_uri = "/createSite"
        o.input = Shapes::ShapeRef.new(shape: CreateSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorker"
        o.http_method = "POST"
        o.http_request_uri = "/createWorker"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_worker_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkerFleet"
        o.http_method = "POST"
        o.http_request_uri = "/createWorkerFleet"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkerFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkerFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDestination"
        o.http_method = "POST"
        o.http_request_uri = "/deleteDestination"
        o.input = Shapes::ShapeRef.new(shape: DeleteDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSite"
        o.http_method = "POST"
        o.http_request_uri = "/deleteSite"
        o.input = Shapes::ShapeRef.new(shape: DeleteSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorker"
        o.http_method = "POST"
        o.http_request_uri = "/deleteWorker"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_worker_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkerFleet"
        o.http_method = "POST"
        o.http_request_uri = "/deleteWorkerFleet"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkerFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkerFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDestination"
        o.http_method = "GET"
        o.http_request_uri = "/getDestination"
        o.input = Shapes::ShapeRef.new(shape: GetDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSite"
        o.http_method = "GET"
        o.http_request_uri = "/getSite"
        o.input = Shapes::ShapeRef.new(shape: GetSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorker"
        o.http_method = "GET"
        o.http_request_uri = "/getWorker"
        o.input = Shapes::ShapeRef.new(shape: GetWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_worker_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkerFleet"
        o.http_method = "GET"
        o.http_request_uri = "/getWorkerFleet"
        o.input = Shapes::ShapeRef.new(shape: GetWorkerFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkerFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDestinations"
        o.http_method = "GET"
        o.http_request_uri = "/listDestinations"
        o.input = Shapes::ShapeRef.new(shape: ListDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sites, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSites"
        o.http_method = "GET"
        o.http_request_uri = "/listSites"
        o.input = Shapes::ShapeRef.new(shape: ListSitesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSitesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_worker_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkerFleets"
        o.http_method = "GET"
        o.http_request_uri = "/listWorkerFleets"
        o.input = Shapes::ShapeRef.new(shape: ListWorkerFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkerFleetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkers"
        o.http_method = "GET"
        o.http_request_uri = "/listWorkers"
        o.input = Shapes::ShapeRef.new(shape: ListWorkersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDestination"
        o.http_method = "POST"
        o.http_request_uri = "/updateDestination"
        o.input = Shapes::ShapeRef.new(shape: UpdateDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_site, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSite"
        o.http_method = "POST"
        o.http_request_uri = "/updateSite"
        o.input = Shapes::ShapeRef.new(shape: UpdateSiteRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorker"
        o.http_method = "POST"
        o.http_request_uri = "/updateWorker"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_worker_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkerFleet"
        o.http_method = "POST"
        o.http_request_uri = "/updateWorkerFleet"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkerFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkerFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
