# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Braket
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    CancelQuantumTaskRequest = Shapes::StructureShape.new(name: 'CancelQuantumTaskRequest')
    CancelQuantumTaskResponse = Shapes::StructureShape.new(name: 'CancelQuantumTaskResponse')
    CancellationStatus = Shapes::StringShape.new(name: 'CancellationStatus')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateQuantumTaskRequest = Shapes::StructureShape.new(name: 'CreateQuantumTaskRequest')
    CreateQuantumTaskRequestDeviceParametersString = Shapes::StringShape.new(name: 'CreateQuantumTaskRequestDeviceParametersString')
    CreateQuantumTaskRequestOutputS3BucketString = Shapes::StringShape.new(name: 'CreateQuantumTaskRequestOutputS3BucketString')
    CreateQuantumTaskRequestOutputS3KeyPrefixString = Shapes::StringShape.new(name: 'CreateQuantumTaskRequestOutputS3KeyPrefixString')
    CreateQuantumTaskRequestShotsLong = Shapes::IntegerShape.new(name: 'CreateQuantumTaskRequestShotsLong')
    CreateQuantumTaskResponse = Shapes::StructureShape.new(name: 'CreateQuantumTaskResponse')
    DeviceArn = Shapes::StringShape.new(name: 'DeviceArn')
    DeviceOfflineException = Shapes::StructureShape.new(name: 'DeviceOfflineException')
    DeviceRetiredException = Shapes::StructureShape.new(name: 'DeviceRetiredException')
    DeviceStatus = Shapes::StringShape.new(name: 'DeviceStatus')
    DeviceSummary = Shapes::StructureShape.new(name: 'DeviceSummary')
    DeviceSummaryList = Shapes::ListShape.new(name: 'DeviceSummaryList')
    DeviceType = Shapes::StringShape.new(name: 'DeviceType')
    GetDeviceRequest = Shapes::StructureShape.new(name: 'GetDeviceRequest')
    GetDeviceResponse = Shapes::StructureShape.new(name: 'GetDeviceResponse')
    GetQuantumTaskRequest = Shapes::StructureShape.new(name: 'GetQuantumTaskRequest')
    GetQuantumTaskResponse = Shapes::StructureShape.new(name: 'GetQuantumTaskResponse')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    JsonValue = Shapes::StringShape.new(name: 'JsonValue')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    QuantumTaskArn = Shapes::StringShape.new(name: 'QuantumTaskArn')
    QuantumTaskStatus = Shapes::StringShape.new(name: 'QuantumTaskStatus')
    QuantumTaskSummary = Shapes::StructureShape.new(name: 'QuantumTaskSummary')
    QuantumTaskSummaryList = Shapes::ListShape.new(name: 'QuantumTaskSummaryList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SearchDevicesFilter = Shapes::StructureShape.new(name: 'SearchDevicesFilter')
    SearchDevicesFilterNameString = Shapes::StringShape.new(name: 'SearchDevicesFilterNameString')
    SearchDevicesFilterValuesList = Shapes::ListShape.new(name: 'SearchDevicesFilterValuesList')
    SearchDevicesRequest = Shapes::StructureShape.new(name: 'SearchDevicesRequest')
    SearchDevicesRequestFiltersList = Shapes::ListShape.new(name: 'SearchDevicesRequestFiltersList')
    SearchDevicesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchDevicesRequestMaxResultsInteger')
    SearchDevicesResponse = Shapes::StructureShape.new(name: 'SearchDevicesResponse')
    SearchQuantumTasksFilter = Shapes::StructureShape.new(name: 'SearchQuantumTasksFilter')
    SearchQuantumTasksFilterOperator = Shapes::StringShape.new(name: 'SearchQuantumTasksFilterOperator')
    SearchQuantumTasksFilterValuesList = Shapes::ListShape.new(name: 'SearchQuantumTasksFilterValuesList')
    SearchQuantumTasksRequest = Shapes::StructureShape.new(name: 'SearchQuantumTasksRequest')
    SearchQuantumTasksRequestFiltersList = Shapes::ListShape.new(name: 'SearchQuantumTasksRequestFiltersList')
    SearchQuantumTasksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchQuantumTasksRequestMaxResultsInteger')
    SearchQuantumTasksResponse = Shapes::StructureShape.new(name: 'SearchQuantumTasksResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    String256 = Shapes::StringShape.new(name: 'String256')
    String64 = Shapes::StringShape.new(name: 'String64')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CancelQuantumTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CancelQuantumTaskRequest.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location: "uri", location_name: "quantumTaskArn"))
    CancelQuantumTaskRequest.struct_class = Types::CancelQuantumTaskRequest

    CancelQuantumTaskResponse.add_member(:cancellation_status, Shapes::ShapeRef.new(shape: CancellationStatus, required: true, location_name: "cancellationStatus"))
    CancelQuantumTaskResponse.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location_name: "quantumTaskArn"))
    CancelQuantumTaskResponse.struct_class = Types::CancelQuantumTaskResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateQuantumTaskRequest.add_member(:action, Shapes::ShapeRef.new(shape: JsonValue, required: true, location_name: "action", metadata: {"jsonvalue"=>true}))
    CreateQuantumTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateQuantumTaskRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "deviceArn"))
    CreateQuantumTaskRequest.add_member(:device_parameters, Shapes::ShapeRef.new(shape: CreateQuantumTaskRequestDeviceParametersString, location_name: "deviceParameters", metadata: {"jsonvalue"=>true}))
    CreateQuantumTaskRequest.add_member(:output_s3_bucket, Shapes::ShapeRef.new(shape: CreateQuantumTaskRequestOutputS3BucketString, required: true, location_name: "outputS3Bucket"))
    CreateQuantumTaskRequest.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: CreateQuantumTaskRequestOutputS3KeyPrefixString, required: true, location_name: "outputS3KeyPrefix"))
    CreateQuantumTaskRequest.add_member(:shots, Shapes::ShapeRef.new(shape: CreateQuantumTaskRequestShotsLong, required: true, location_name: "shots"))
    CreateQuantumTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateQuantumTaskRequest.struct_class = Types::CreateQuantumTaskRequest

    CreateQuantumTaskResponse.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location_name: "quantumTaskArn"))
    CreateQuantumTaskResponse.struct_class = Types::CreateQuantumTaskResponse

    DeviceOfflineException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DeviceOfflineException.struct_class = Types::DeviceOfflineException

    DeviceRetiredException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DeviceRetiredException.struct_class = Types::DeviceRetiredException

    DeviceSummary.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "deviceArn"))
    DeviceSummary.add_member(:device_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "deviceName"))
    DeviceSummary.add_member(:device_status, Shapes::ShapeRef.new(shape: DeviceStatus, required: true, location_name: "deviceStatus"))
    DeviceSummary.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, required: true, location_name: "deviceType"))
    DeviceSummary.add_member(:provider_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "providerName"))
    DeviceSummary.struct_class = Types::DeviceSummary

    DeviceSummaryList.member = Shapes::ShapeRef.new(shape: DeviceSummary)

    GetDeviceRequest.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location: "uri", location_name: "deviceArn"))
    GetDeviceRequest.struct_class = Types::GetDeviceRequest

    GetDeviceResponse.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "deviceArn"))
    GetDeviceResponse.add_member(:device_capabilities, Shapes::ShapeRef.new(shape: JsonValue, required: true, location_name: "deviceCapabilities", metadata: {"jsonvalue"=>true}))
    GetDeviceResponse.add_member(:device_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "deviceName"))
    GetDeviceResponse.add_member(:device_status, Shapes::ShapeRef.new(shape: DeviceStatus, required: true, location_name: "deviceStatus"))
    GetDeviceResponse.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, required: true, location_name: "deviceType"))
    GetDeviceResponse.add_member(:provider_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "providerName"))
    GetDeviceResponse.struct_class = Types::GetDeviceResponse

    GetQuantumTaskRequest.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location: "uri", location_name: "quantumTaskArn"))
    GetQuantumTaskRequest.struct_class = Types::GetQuantumTaskRequest

    GetQuantumTaskResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetQuantumTaskResponse.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "deviceArn"))
    GetQuantumTaskResponse.add_member(:device_parameters, Shapes::ShapeRef.new(shape: JsonValue, required: true, location_name: "deviceParameters", metadata: {"jsonvalue"=>true}))
    GetQuantumTaskResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endedAt"))
    GetQuantumTaskResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetQuantumTaskResponse.add_member(:output_s3_bucket, Shapes::ShapeRef.new(shape: String, required: true, location_name: "outputS3Bucket"))
    GetQuantumTaskResponse.add_member(:output_s3_directory, Shapes::ShapeRef.new(shape: String, required: true, location_name: "outputS3Directory"))
    GetQuantumTaskResponse.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location_name: "quantumTaskArn"))
    GetQuantumTaskResponse.add_member(:shots, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "shots"))
    GetQuantumTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: QuantumTaskStatus, required: true, location_name: "status"))
    GetQuantumTaskResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetQuantumTaskResponse.struct_class = Types::GetQuantumTaskResponse

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    QuantumTaskSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    QuantumTaskSummary.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "deviceArn"))
    QuantumTaskSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endedAt"))
    QuantumTaskSummary.add_member(:output_s3_bucket, Shapes::ShapeRef.new(shape: String, required: true, location_name: "outputS3Bucket"))
    QuantumTaskSummary.add_member(:output_s3_directory, Shapes::ShapeRef.new(shape: String, required: true, location_name: "outputS3Directory"))
    QuantumTaskSummary.add_member(:quantum_task_arn, Shapes::ShapeRef.new(shape: QuantumTaskArn, required: true, location_name: "quantumTaskArn"))
    QuantumTaskSummary.add_member(:shots, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "shots"))
    QuantumTaskSummary.add_member(:status, Shapes::ShapeRef.new(shape: QuantumTaskStatus, required: true, location_name: "status"))
    QuantumTaskSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    QuantumTaskSummary.struct_class = Types::QuantumTaskSummary

    QuantumTaskSummaryList.member = Shapes::ShapeRef.new(shape: QuantumTaskSummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SearchDevicesFilter.add_member(:name, Shapes::ShapeRef.new(shape: SearchDevicesFilterNameString, required: true, location_name: "name"))
    SearchDevicesFilter.add_member(:values, Shapes::ShapeRef.new(shape: SearchDevicesFilterValuesList, required: true, location_name: "values"))
    SearchDevicesFilter.struct_class = Types::SearchDevicesFilter

    SearchDevicesFilterValuesList.member = Shapes::ShapeRef.new(shape: String256)

    SearchDevicesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchDevicesRequestFiltersList, required: true, location_name: "filters"))
    SearchDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchDevicesRequestMaxResultsInteger, location_name: "maxResults"))
    SearchDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchDevicesRequest.struct_class = Types::SearchDevicesRequest

    SearchDevicesRequestFiltersList.member = Shapes::ShapeRef.new(shape: SearchDevicesFilter)

    SearchDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceSummaryList, required: true, location_name: "devices"))
    SearchDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchDevicesResponse.struct_class = Types::SearchDevicesResponse

    SearchQuantumTasksFilter.add_member(:name, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "name"))
    SearchQuantumTasksFilter.add_member(:operator, Shapes::ShapeRef.new(shape: SearchQuantumTasksFilterOperator, required: true, location_name: "operator"))
    SearchQuantumTasksFilter.add_member(:values, Shapes::ShapeRef.new(shape: SearchQuantumTasksFilterValuesList, required: true, location_name: "values"))
    SearchQuantumTasksFilter.struct_class = Types::SearchQuantumTasksFilter

    SearchQuantumTasksFilterValuesList.member = Shapes::ShapeRef.new(shape: String256)

    SearchQuantumTasksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchQuantumTasksRequestFiltersList, required: true, location_name: "filters"))
    SearchQuantumTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchQuantumTasksRequestMaxResultsInteger, location_name: "maxResults"))
    SearchQuantumTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchQuantumTasksRequest.struct_class = Types::SearchQuantumTasksRequest

    SearchQuantumTasksRequestFiltersList.member = Shapes::ShapeRef.new(shape: SearchQuantumTasksFilter)

    SearchQuantumTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchQuantumTasksResponse.add_member(:quantum_tasks, Shapes::ShapeRef.new(shape: QuantumTaskSummaryList, required: true, location_name: "quantumTasks"))
    SearchQuantumTasksResponse.struct_class = Types::SearchQuantumTasksResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-09-01"

      api.metadata = {
        "apiVersion" => "2019-09-01",
        "endpointPrefix" => "braket",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Braket",
        "serviceId" => "Braket",
        "signatureVersion" => "v4",
        "signingName" => "braket",
        "uid" => "braket-2019-09-01",
      }

      api.add_operation(:cancel_quantum_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelQuantumTask"
        o.http_method = "PUT"
        o.http_request_uri = "/quantum-task/{quantumTaskArn}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelQuantumTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelQuantumTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_quantum_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQuantumTask"
        o.http_method = "POST"
        o.http_request_uri = "/quantum-task"
        o.input = Shapes::ShapeRef.new(shape: CreateQuantumTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQuantumTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceOfflineException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevice"
        o.http_method = "GET"
        o.http_request_uri = "/device/{deviceArn}"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceOfflineException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceRetiredException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_quantum_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQuantumTask"
        o.http_method = "GET"
        o.http_request_uri = "/quantum-task/{quantumTaskArn}"
        o.input = Shapes::ShapeRef.new(shape: GetQuantumTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQuantumTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:search_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchDevices"
        o.http_method = "POST"
        o.http_request_uri = "/devices"
        o.input = Shapes::ShapeRef.new(shape: SearchDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_quantum_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchQuantumTasks"
        o.http_method = "POST"
        o.http_request_uri = "/quantum-tasks"
        o.input = Shapes::ShapeRef.new(shape: SearchQuantumTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchQuantumTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
