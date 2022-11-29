# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ARCZonalShift
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AppliedStatus = Shapes::StringShape.new(name: 'AppliedStatus')
    AppliedWeights = Shapes::MapShape.new(name: 'AppliedWeights')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    CancelZonalShiftRequest = Shapes::StructureShape.new(name: 'CancelZonalShiftRequest')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    ExpiresIn = Shapes::StringShape.new(name: 'ExpiresIn')
    ExpiryTime = Shapes::TimestampShape.new(name: 'ExpiryTime')
    GetManagedResourceRequest = Shapes::StructureShape.new(name: 'GetManagedResourceRequest')
    GetManagedResourceResponse = Shapes::StructureShape.new(name: 'GetManagedResourceResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListManagedResourcesRequest = Shapes::StructureShape.new(name: 'ListManagedResourcesRequest')
    ListManagedResourcesResponse = Shapes::StructureShape.new(name: 'ListManagedResourcesResponse')
    ListZonalShiftsRequest = Shapes::StructureShape.new(name: 'ListZonalShiftsRequest')
    ListZonalShiftsResponse = Shapes::StructureShape.new(name: 'ListZonalShiftsResponse')
    ManagedResourceSummaries = Shapes::ListShape.new(name: 'ManagedResourceSummaries')
    ManagedResourceSummary = Shapes::StructureShape.new(name: 'ManagedResourceSummary')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    StartTime = Shapes::TimestampShape.new(name: 'StartTime')
    StartZonalShiftRequest = Shapes::StructureShape.new(name: 'StartZonalShiftRequest')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateZonalShiftRequest = Shapes::StructureShape.new(name: 'UpdateZonalShiftRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Weight = Shapes::FloatShape.new(name: 'Weight')
    ZonalShift = Shapes::StructureShape.new(name: 'ZonalShift')
    ZonalShiftComment = Shapes::StringShape.new(name: 'ZonalShiftComment')
    ZonalShiftId = Shapes::StringShape.new(name: 'ZonalShiftId')
    ZonalShiftInResource = Shapes::StructureShape.new(name: 'ZonalShiftInResource')
    ZonalShiftStatus = Shapes::StringShape.new(name: 'ZonalShiftStatus')
    ZonalShiftSummaries = Shapes::ListShape.new(name: 'ZonalShiftSummaries')
    ZonalShiftSummary = Shapes::StructureShape.new(name: 'ZonalShiftSummary')
    ZonalShiftsInResource = Shapes::ListShape.new(name: 'ZonalShiftsInResource')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AppliedWeights.key = Shapes::ShapeRef.new(shape: AvailabilityZone)
    AppliedWeights.value = Shapes::ShapeRef.new(shape: Weight)

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    CancelZonalShiftRequest.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: ZonalShiftId, required: true, location: "uri", location_name: "zonalShiftId"))
    CancelZonalShiftRequest.struct_class = Types::CancelZonalShiftRequest

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, required: true, location_name: "reason"))
    ConflictException.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: String, location_name: "zonalShiftId"))
    ConflictException.struct_class = Types::ConflictException

    GetManagedResourceRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "resourceIdentifier"))
    GetManagedResourceRequest.struct_class = Types::GetManagedResourceRequest

    GetManagedResourceResponse.add_member(:applied_weights, Shapes::ShapeRef.new(shape: AppliedWeights, required: true, location_name: "appliedWeights"))
    GetManagedResourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    GetManagedResourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    GetManagedResourceResponse.add_member(:zonal_shifts, Shapes::ShapeRef.new(shape: ZonalShiftsInResource, required: true, location_name: "zonalShifts"))
    GetManagedResourceResponse.struct_class = Types::GetManagedResourceResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListManagedResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListManagedResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListManagedResourcesRequest.struct_class = Types::ListManagedResourcesRequest

    ListManagedResourcesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ManagedResourceSummaries, required: true, location_name: "items"))
    ListManagedResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListManagedResourcesResponse.struct_class = Types::ListManagedResourcesResponse

    ListZonalShiftsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListZonalShiftsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListZonalShiftsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ZonalShiftStatus, location: "querystring", location_name: "status"))
    ListZonalShiftsRequest.struct_class = Types::ListZonalShiftsRequest

    ListZonalShiftsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ZonalShiftSummaries, location_name: "items"))
    ListZonalShiftsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListZonalShiftsResponse.struct_class = Types::ListZonalShiftsResponse

    ManagedResourceSummaries.member = Shapes::ShapeRef.new(shape: ManagedResourceSummary)

    ManagedResourceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    ManagedResourceSummary.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, required: true, location_name: "availabilityZones"))
    ManagedResourceSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ManagedResourceSummary.struct_class = Types::ManagedResourceSummary

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    StartZonalShiftRequest.add_member(:away_from, Shapes::ShapeRef.new(shape: AvailabilityZone, required: true, location_name: "awayFrom"))
    StartZonalShiftRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ZonalShiftComment, required: true, location_name: "comment"))
    StartZonalShiftRequest.add_member(:expires_in, Shapes::ShapeRef.new(shape: ExpiresIn, required: true, location_name: "expiresIn"))
    StartZonalShiftRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    StartZonalShiftRequest.struct_class = Types::StartZonalShiftRequest

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateZonalShiftRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ZonalShiftComment, location_name: "comment"))
    UpdateZonalShiftRequest.add_member(:expires_in, Shapes::ShapeRef.new(shape: ExpiresIn, location_name: "expiresIn"))
    UpdateZonalShiftRequest.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: ZonalShiftId, required: true, location: "uri", location_name: "zonalShiftId"))
    UpdateZonalShiftRequest.struct_class = Types::UpdateZonalShiftRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ZonalShift.add_member(:away_from, Shapes::ShapeRef.new(shape: AvailabilityZone, required: true, location_name: "awayFrom"))
    ZonalShift.add_member(:comment, Shapes::ShapeRef.new(shape: ZonalShiftComment, required: true, location_name: "comment"))
    ZonalShift.add_member(:expiry_time, Shapes::ShapeRef.new(shape: ExpiryTime, required: true, location_name: "expiryTime"))
    ZonalShift.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    ZonalShift.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, required: true, location_name: "startTime"))
    ZonalShift.add_member(:status, Shapes::ShapeRef.new(shape: ZonalShiftStatus, required: true, location_name: "status"))
    ZonalShift.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: ZonalShiftId, required: true, location_name: "zonalShiftId"))
    ZonalShift.struct_class = Types::ZonalShift

    ZonalShiftInResource.add_member(:applied_status, Shapes::ShapeRef.new(shape: AppliedStatus, required: true, location_name: "appliedStatus"))
    ZonalShiftInResource.add_member(:away_from, Shapes::ShapeRef.new(shape: AvailabilityZone, required: true, location_name: "awayFrom"))
    ZonalShiftInResource.add_member(:comment, Shapes::ShapeRef.new(shape: ZonalShiftComment, required: true, location_name: "comment"))
    ZonalShiftInResource.add_member(:expiry_time, Shapes::ShapeRef.new(shape: ExpiryTime, required: true, location_name: "expiryTime"))
    ZonalShiftInResource.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    ZonalShiftInResource.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, required: true, location_name: "startTime"))
    ZonalShiftInResource.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: ZonalShiftId, required: true, location_name: "zonalShiftId"))
    ZonalShiftInResource.struct_class = Types::ZonalShiftInResource

    ZonalShiftSummaries.member = Shapes::ShapeRef.new(shape: ZonalShiftSummary)

    ZonalShiftSummary.add_member(:away_from, Shapes::ShapeRef.new(shape: AvailabilityZone, required: true, location_name: "awayFrom"))
    ZonalShiftSummary.add_member(:comment, Shapes::ShapeRef.new(shape: ZonalShiftComment, required: true, location_name: "comment"))
    ZonalShiftSummary.add_member(:expiry_time, Shapes::ShapeRef.new(shape: ExpiryTime, required: true, location_name: "expiryTime"))
    ZonalShiftSummary.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    ZonalShiftSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, required: true, location_name: "startTime"))
    ZonalShiftSummary.add_member(:status, Shapes::ShapeRef.new(shape: ZonalShiftStatus, required: true, location_name: "status"))
    ZonalShiftSummary.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: ZonalShiftId, required: true, location_name: "zonalShiftId"))
    ZonalShiftSummary.struct_class = Types::ZonalShiftSummary

    ZonalShiftsInResource.member = Shapes::ShapeRef.new(shape: ZonalShiftInResource)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-10-30"

      api.metadata = {
        "apiVersion" => "2022-10-30",
        "endpointPrefix" => "arc-zonal-shift",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS ARC - Zonal Shift",
        "serviceId" => "ARC Zonal Shift",
        "signatureVersion" => "v4",
        "signingName" => "arc-zonal-shift",
        "uid" => "arc-zonal-shift-2022-10-30",
      }

      api.add_operation(:cancel_zonal_shift, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelZonalShift"
        o.http_method = "DELETE"
        o.http_request_uri = "/zonalshifts/{zonalShiftId}"
        o.input = Shapes::ShapeRef.new(shape: CancelZonalShiftRequest)
        o.output = Shapes::ShapeRef.new(shape: ZonalShift)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_managed_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedResource"
        o.http_method = "GET"
        o.http_request_uri = "/managedresources/{resourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_managed_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedResources"
        o.http_method = "GET"
        o.http_request_uri = "/managedresources"
        o.input = Shapes::ShapeRef.new(shape: ListManagedResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_zonal_shifts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListZonalShifts"
        o.http_method = "GET"
        o.http_request_uri = "/zonalshifts"
        o.input = Shapes::ShapeRef.new(shape: ListZonalShiftsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListZonalShiftsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_zonal_shift, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartZonalShift"
        o.http_method = "POST"
        o.http_request_uri = "/zonalshifts"
        o.input = Shapes::ShapeRef.new(shape: StartZonalShiftRequest)
        o.output = Shapes::ShapeRef.new(shape: ZonalShift)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_zonal_shift, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateZonalShift"
        o.http_method = "PATCH"
        o.http_request_uri = "/zonalshifts/{zonalShiftId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateZonalShiftRequest)
        o.output = Shapes::ShapeRef.new(shape: ZonalShift)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
