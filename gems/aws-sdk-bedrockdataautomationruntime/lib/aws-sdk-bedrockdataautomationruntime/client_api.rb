# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BedrockDataAutomationRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssetProcessingConfiguration = Shapes::StructureShape.new(name: 'AssetProcessingConfiguration')
    AutomationJobStatus = Shapes::StringShape.new(name: 'AutomationJobStatus')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Blueprint = Shapes::StructureShape.new(name: 'Blueprint')
    BlueprintArn = Shapes::StringShape.new(name: 'BlueprintArn')
    BlueprintList = Shapes::ListShape.new(name: 'BlueprintList')
    BlueprintStage = Shapes::StringShape.new(name: 'BlueprintStage')
    BlueprintVersion = Shapes::StringShape.new(name: 'BlueprintVersion')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CustomOutputStatus = Shapes::StringShape.new(name: 'CustomOutputStatus')
    DataAutomationArn = Shapes::StringShape.new(name: 'DataAutomationArn')
    DataAutomationConfiguration = Shapes::StructureShape.new(name: 'DataAutomationConfiguration')
    DataAutomationProfileArn = Shapes::StringShape.new(name: 'DataAutomationProfileArn')
    DataAutomationStage = Shapes::StringShape.new(name: 'DataAutomationStage')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionContextKey = Shapes::StringShape.new(name: 'EncryptionContextKey')
    EncryptionContextMap = Shapes::MapShape.new(name: 'EncryptionContextMap')
    EncryptionContextValue = Shapes::StringShape.new(name: 'EncryptionContextValue')
    EventBridgeConfiguration = Shapes::StructureShape.new(name: 'EventBridgeConfiguration')
    GetDataAutomationStatusRequest = Shapes::StructureShape.new(name: 'GetDataAutomationStatusRequest')
    GetDataAutomationStatusResponse = Shapes::StructureShape.new(name: 'GetDataAutomationStatusResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    InputConfiguration = Shapes::StructureShape.new(name: 'InputConfiguration')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvocationArn = Shapes::StringShape.new(name: 'InvocationArn')
    InvokeDataAutomationAsyncRequest = Shapes::StructureShape.new(name: 'InvokeDataAutomationAsyncRequest')
    InvokeDataAutomationAsyncResponse = Shapes::StructureShape.new(name: 'InvokeDataAutomationAsyncResponse')
    InvokeDataAutomationRequest = Shapes::StructureShape.new(name: 'InvokeDataAutomationRequest')
    InvokeDataAutomationResponse = Shapes::StructureShape.new(name: 'InvokeDataAutomationResponse')
    KMSKeyId = Shapes::StringShape.new(name: 'KMSKeyId')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    OutputConfiguration = Shapes::StructureShape.new(name: 'OutputConfiguration')
    OutputSegment = Shapes::StructureShape.new(name: 'OutputSegment')
    OutputSegmentList = Shapes::ListShape.new(name: 'OutputSegmentList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SemanticModality = Shapes::StringShape.new(name: 'SemanticModality')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    SyncInputConfiguration = Shapes::StructureShape.new(name: 'SyncInputConfiguration')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimestampSegment = Shapes::StructureShape.new(name: 'TimestampSegment')
    TimestampSegmentEndTimeMillisLong = Shapes::IntegerShape.new(name: 'TimestampSegmentEndTimeMillisLong')
    TimestampSegmentStartTimeMillisLong = Shapes::IntegerShape.new(name: 'TimestampSegmentStartTimeMillisLong')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VideoAssetProcessingConfiguration = Shapes::StructureShape.new(name: 'VideoAssetProcessingConfiguration')
    VideoSegmentConfiguration = Shapes::UnionShape.new(name: 'VideoSegmentConfiguration')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssetProcessingConfiguration.add_member(:video, Shapes::ShapeRef.new(shape: VideoAssetProcessingConfiguration, location_name: "video"))
    AssetProcessingConfiguration.struct_class = Types::AssetProcessingConfiguration

    Blueprint.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, required: true, location_name: "blueprintArn"))
    Blueprint.add_member(:version, Shapes::ShapeRef.new(shape: BlueprintVersion, location_name: "version"))
    Blueprint.add_member(:stage, Shapes::ShapeRef.new(shape: BlueprintStage, location_name: "stage"))
    Blueprint.struct_class = Types::Blueprint

    BlueprintList.member = Shapes::ShapeRef.new(shape: Blueprint)

    DataAutomationConfiguration.add_member(:data_automation_project_arn, Shapes::ShapeRef.new(shape: DataAutomationArn, required: true, location_name: "dataAutomationProjectArn"))
    DataAutomationConfiguration.add_member(:stage, Shapes::ShapeRef.new(shape: DataAutomationStage, location_name: "stage"))
    DataAutomationConfiguration.struct_class = Types::DataAutomationConfiguration

    EncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, required: true, location_name: "kmsKeyId"))
    EncryptionConfiguration.add_member(:kms_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "kmsEncryptionContext"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    EncryptionContextMap.key = Shapes::ShapeRef.new(shape: EncryptionContextKey)
    EncryptionContextMap.value = Shapes::ShapeRef.new(shape: EncryptionContextValue)

    EventBridgeConfiguration.add_member(:event_bridge_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "eventBridgeEnabled"))
    EventBridgeConfiguration.struct_class = Types::EventBridgeConfiguration

    GetDataAutomationStatusRequest.add_member(:invocation_arn, Shapes::ShapeRef.new(shape: InvocationArn, required: true, location_name: "invocationArn"))
    GetDataAutomationStatusRequest.struct_class = Types::GetDataAutomationStatusRequest

    GetDataAutomationStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: AutomationJobStatus, location_name: "status"))
    GetDataAutomationStatusResponse.add_member(:error_type, Shapes::ShapeRef.new(shape: String, location_name: "errorType"))
    GetDataAutomationStatusResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    GetDataAutomationStatusResponse.add_member(:output_configuration, Shapes::ShapeRef.new(shape: OutputConfiguration, location_name: "outputConfiguration"))
    GetDataAutomationStatusResponse.add_member(:job_submission_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "jobSubmissionTime"))
    GetDataAutomationStatusResponse.add_member(:job_completion_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "jobCompletionTime"))
    GetDataAutomationStatusResponse.add_member(:job_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "jobDurationInSeconds"))
    GetDataAutomationStatusResponse.struct_class = Types::GetDataAutomationStatusResponse

    InputConfiguration.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    InputConfiguration.add_member(:asset_processing_configuration, Shapes::ShapeRef.new(shape: AssetProcessingConfiguration, location_name: "assetProcessingConfiguration"))
    InputConfiguration.struct_class = Types::InputConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvokeDataAutomationAsyncRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    InvokeDataAutomationAsyncRequest.add_member(:input_configuration, Shapes::ShapeRef.new(shape: InputConfiguration, required: true, location_name: "inputConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:output_configuration, Shapes::ShapeRef.new(shape: OutputConfiguration, required: true, location_name: "outputConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:data_automation_configuration, Shapes::ShapeRef.new(shape: DataAutomationConfiguration, location_name: "dataAutomationConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "notificationConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:blueprints, Shapes::ShapeRef.new(shape: BlueprintList, location_name: "blueprints"))
    InvokeDataAutomationAsyncRequest.add_member(:data_automation_profile_arn, Shapes::ShapeRef.new(shape: DataAutomationProfileArn, required: true, location_name: "dataAutomationProfileArn"))
    InvokeDataAutomationAsyncRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    InvokeDataAutomationAsyncRequest.struct_class = Types::InvokeDataAutomationAsyncRequest

    InvokeDataAutomationAsyncResponse.add_member(:invocation_arn, Shapes::ShapeRef.new(shape: InvocationArn, required: true, location_name: "invocationArn"))
    InvokeDataAutomationAsyncResponse.struct_class = Types::InvokeDataAutomationAsyncResponse

    InvokeDataAutomationRequest.add_member(:input_configuration, Shapes::ShapeRef.new(shape: SyncInputConfiguration, required: true, location_name: "inputConfiguration"))
    InvokeDataAutomationRequest.add_member(:data_automation_configuration, Shapes::ShapeRef.new(shape: DataAutomationConfiguration, location_name: "dataAutomationConfiguration"))
    InvokeDataAutomationRequest.add_member(:blueprints, Shapes::ShapeRef.new(shape: BlueprintList, location_name: "blueprints"))
    InvokeDataAutomationRequest.add_member(:data_automation_profile_arn, Shapes::ShapeRef.new(shape: DataAutomationProfileArn, required: true, location_name: "dataAutomationProfileArn"))
    InvokeDataAutomationRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    InvokeDataAutomationRequest.struct_class = Types::InvokeDataAutomationRequest

    InvokeDataAutomationResponse.add_member(:semantic_modality, Shapes::ShapeRef.new(shape: SemanticModality, required: true, location_name: "semanticModality"))
    InvokeDataAutomationResponse.add_member(:output_segments, Shapes::ShapeRef.new(shape: OutputSegmentList, required: true, location_name: "outputSegments"))
    InvokeDataAutomationResponse.struct_class = Types::InvokeDataAutomationResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "resourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NotificationConfiguration.add_member(:event_bridge_configuration, Shapes::ShapeRef.new(shape: EventBridgeConfiguration, required: true, location_name: "eventBridgeConfiguration"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    OutputConfiguration.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    OutputConfiguration.struct_class = Types::OutputConfiguration

    OutputSegment.add_member(:custom_output_status, Shapes::ShapeRef.new(shape: CustomOutputStatus, location_name: "customOutputStatus"))
    OutputSegment.add_member(:custom_output, Shapes::ShapeRef.new(shape: String, location_name: "customOutput"))
    OutputSegment.add_member(:standard_output, Shapes::ShapeRef.new(shape: String, location_name: "standardOutput"))
    OutputSegment.struct_class = Types::OutputSegment

    OutputSegmentList.member = Shapes::ShapeRef.new(shape: OutputSegment)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SyncInputConfiguration.add_member(:bytes, Shapes::ShapeRef.new(shape: Blob, location_name: "bytes"))
    SyncInputConfiguration.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri"))
    SyncInputConfiguration.struct_class = Types::SyncInputConfiguration

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "resourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimestampSegment.add_member(:start_time_millis, Shapes::ShapeRef.new(shape: TimestampSegmentStartTimeMillisLong, required: true, location_name: "startTimeMillis"))
    TimestampSegment.add_member(:end_time_millis, Shapes::ShapeRef.new(shape: TimestampSegmentEndTimeMillisLong, required: true, location_name: "endTimeMillis"))
    TimestampSegment.struct_class = Types::TimestampSegment

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "resourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VideoAssetProcessingConfiguration.add_member(:segment_configuration, Shapes::ShapeRef.new(shape: VideoSegmentConfiguration, location_name: "segmentConfiguration"))
    VideoAssetProcessingConfiguration.struct_class = Types::VideoAssetProcessingConfiguration

    VideoSegmentConfiguration.add_member(:timestamp_segment, Shapes::ShapeRef.new(shape: TimestampSegment, location_name: "timestampSegment"))
    VideoSegmentConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VideoSegmentConfiguration.add_member_subclass(:timestamp_segment, Types::VideoSegmentConfiguration::TimestampSegment)
    VideoSegmentConfiguration.add_member_subclass(:unknown, Types::VideoSegmentConfiguration::Unknown)
    VideoSegmentConfiguration.struct_class = Types::VideoSegmentConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-06-13"

      api.metadata = {
        "apiVersion" => "2024-06-13",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bedrock-data-automation-runtime",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Runtime for Amazon Bedrock Data Automation",
        "serviceId" => "Bedrock Data Automation Runtime",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "targetPrefix" => "AmazonBedrockKeystoneRuntimeService",
        "uid" => "bedrock-data-automation-runtime-2024-06-13",
      }

      api.add_operation(:get_data_automation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataAutomationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataAutomationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataAutomationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:invoke_data_automation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeDataAutomation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: InvokeDataAutomationRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeDataAutomationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:invoke_data_automation_async, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeDataAutomationAsync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: InvokeDataAutomationAsyncRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeDataAutomationAsyncResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
