# frozen_string_literal: true

# This is generated code!

module Aws::BedrockDataAutomationRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AssetProcessingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#AssetProcessingConfiguration", name: "AssetProcessingConfiguration")
    AutomationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomationruntime#AutomationJobStatus", name: "AutomationJobStatus")
    Blueprint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#Blueprint", name: "Blueprint")
    BlueprintArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#BlueprintArn", name: "BlueprintArn", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:(aws|[0-9]{12}):blueprint/(bedrock-data-insights-public-[a-zA-Z0-9-_]{1,30}|bedrock-data-automation-public-[a-zA-Z0-9-_]{1,30}|[a-zA-Z0-9-]{12,36})$"})
    BlueprintList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomationruntime#BlueprintList", name: "BlueprintList", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    BlueprintStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomationruntime#BlueprintStage", name: "BlueprintStage")
    BlueprintVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#BlueprintVersion", name: "BlueprintVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9]*$"})
    DataAutomationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#DataAutomationArn", name: "DataAutomationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:(aws|[0-9]{12}):data-automation-project/[a-zA-Z0-9-_]+$"})
    DataAutomationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#DataAutomationConfiguration", name: "DataAutomationConfiguration")
    DataAutomationProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#DataAutomationProfileArn", name: "DataAutomationProfileArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:(aws|[0-9]{12}):data-automation-profile/[a-zA-Z0-9-_.]+$"})
    DataAutomationStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomationruntime#DataAutomationStage", name: "DataAutomationStage")
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#EncryptionContextKey", name: "EncryptionContextKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^.*\\S.*$"})
    EncryptionContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockdataautomationruntime#EncryptionContextMap", name: "EncryptionContextMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EncryptionContextValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#EncryptionContextValue", name: "EncryptionContextValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^.*\\S.*$"})
    EventBridgeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#EventBridgeConfiguration", name: "EventBridgeConfiguration")
    GetDataAutomationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#GetDataAutomationStatusRequest", name: "GetDataAutomationStatusRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrockdataautomationruntime#AutomationJobResource"}]})
    GetDataAutomationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#GetDataAutomationStatusResponse", name: "GetDataAutomationStatusResponse")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    InputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#InputConfiguration", name: "InputConfiguration")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvocationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#InvocationArn", name: "InvocationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:(insights-invocation|data-automation-invocation)/[a-zA-Z0-9-_]+$"})
    InvokeDataAutomationAsyncRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#InvokeDataAutomationAsyncRequest", name: "InvokeDataAutomationAsyncRequest")
    InvokeDataAutomationAsyncResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#InvokeDataAutomationAsyncResponse", name: "InvokeDataAutomationAsyncResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrockdataautomationruntime#AutomationJobResource"}]})
    KMSKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#KMSKeyId", name: "KMSKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]+$"})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#NonBlankString", name: "NonBlankString", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    NotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#NotificationConfiguration", name: "NotificationConfiguration")
    OutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#OutputConfiguration", name: "OutputConfiguration")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/[^\\x00-\\x1F\\x7F\\{^}%`\\]\">\\[~<#|]*)?$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomationruntime#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomationruntime#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomationruntime#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:data-automation-invocation/[a-zA-Z0-9-_]+$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimestampSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#TimestampSegment", name: "TimestampSegment")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#UntagResourceResponse", name: "UntagResourceResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VideoAssetProcessingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomationruntime#VideoAssetProcessingConfiguration", name: "VideoAssetProcessingConfiguration")
    VideoSegmentConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockdataautomationruntime#VideoSegmentConfiguration", name: "VideoSegmentConfiguration")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AssetProcessingConfiguration.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoAssetProcessingConfiguration, name: "video"))
    AssetProcessingConfiguration.type = Types::AssetProcessingConfiguration
    AutomationJobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "Created"}))
    AutomationJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    AutomationJobStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    AutomationJobStatus.add_member(:service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_ERROR", traits: {"smithy.api#enumValue" => "ServiceError"}))
    AutomationJobStatus.add_member(:client_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_ERROR", traits: {"smithy.api#enumValue" => "ClientError"}))
    Blueprint.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#required" => {}}))
    Blueprint.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "version"))
    Blueprint.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "stage"))
    Blueprint.type = Types::Blueprint
    BlueprintList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Blueprint, name: "member"))
    BlueprintStage.add_member(:development, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVELOPMENT", traits: {"smithy.api#enumValue" => "DEVELOPMENT"}))
    BlueprintStage.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    DataAutomationConfiguration.add_member(:data_automation_project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationArn, name: "dataAutomationProjectArn", traits: {"smithy.api#required" => {}}))
    DataAutomationConfiguration.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationStage, name: "stage"))
    DataAutomationConfiguration.type = Types::DataAutomationConfiguration
    DataAutomationStage.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    DataAutomationStage.add_member(:development, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVELOPMENT", traits: {"smithy.api#enumValue" => "DEVELOPMENT"}))
    EncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyId, name: "kmsKeyId", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "kmsEncryptionContext"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionContextMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextKey, name: "key"))
    EncryptionContextMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextValue, name: "value"))
    EventBridgeConfiguration.add_member(:event_bridge_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "eventBridgeEnabled", traits: {"smithy.api#required" => {}}))
    EventBridgeConfiguration.type = Types::EventBridgeConfiguration
    GetDataAutomationStatusRequest.add_member(:invocation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationArn, name: "invocationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAutomationStatusRequest.type = Types::GetDataAutomationStatusRequest
    GetDataAutomationStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationJobStatus, name: "status"))
    GetDataAutomationStatusResponse.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorType"))
    GetDataAutomationStatusResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    GetDataAutomationStatusResponse.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfiguration, name: "outputConfiguration"))
    GetDataAutomationStatusResponse.type = Types::GetDataAutomationStatusResponse
    InputConfiguration.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "s3Uri", traits: {"smithy.api#required" => {}}))
    InputConfiguration.add_member(:asset_processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetProcessingConfiguration, name: "assetProcessingConfiguration"))
    InputConfiguration.type = Types::InputConfiguration
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvokeDataAutomationAsyncRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    InvokeDataAutomationAsyncRequest.add_member(:input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConfiguration, name: "inputConfiguration", traits: {"smithy.api#required" => {}}))
    InvokeDataAutomationAsyncRequest.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfiguration, name: "outputConfiguration", traits: {"smithy.api#required" => {}}))
    InvokeDataAutomationAsyncRequest.add_member(:data_automation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationConfiguration, name: "dataAutomationConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:notification_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfiguration, name: "notificationConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:blueprints, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintList, name: "blueprints"))
    InvokeDataAutomationAsyncRequest.add_member(:data_automation_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProfileArn, name: "dataAutomationProfileArn", traits: {"smithy.api#required" => {}}))
    InvokeDataAutomationAsyncRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    InvokeDataAutomationAsyncRequest.type = Types::InvokeDataAutomationAsyncRequest
    InvokeDataAutomationAsyncResponse.add_member(:invocation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationArn, name: "invocationArn", traits: {"smithy.api#required" => {}}))
    InvokeDataAutomationAsyncResponse.type = Types::InvokeDataAutomationAsyncResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "resourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NotificationConfiguration.add_member(:event_bridge_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeConfiguration, name: "eventBridgeConfiguration", traits: {"smithy.api#required" => {}}))
    NotificationConfiguration.type = Types::NotificationConfiguration
    OutputConfiguration.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "s3Uri", traits: {"smithy.api#required" => {}}))
    OutputConfiguration.type = Types::OutputConfiguration
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "resourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TimestampSegment.add_member(:start_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "startTimeMillis", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    TimestampSegment.add_member(:end_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "endTimeMillis", traits: {"smithy.api#range" => {"min" => 300000}, "smithy.api#required" => {}}))
    TimestampSegment.type = Types::TimestampSegment
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "resourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ValidationException.type = Types::ValidationException
    VideoAssetProcessingConfiguration.add_member(:segment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoSegmentConfiguration, name: "segmentConfiguration"))
    VideoAssetProcessingConfiguration.type = Types::VideoAssetProcessingConfiguration
    VideoSegmentConfiguration.add_member(:timestamp_segment, Types::VideoSegmentConfiguration::TimestampSegment, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampSegment, name: "timestampSegment"))
    VideoSegmentConfiguration.add_member(:unknown, Types::VideoSegmentConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VideoSegmentConfiguration.type = Types::VideoSegmentConfiguration

    AmazonBedrockKeystoneRuntimeService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bedrockdataautomationruntime#AmazonBedrockKeystoneRuntimeService"
      service.name = "AmazonBedrockKeystoneRuntimeService"
      service.version = "2024-06-13"
      service.traits = {"aws.api#service" => {"sdkId" => "Bedrock Data Automation Runtime", "arnNamespace" => "bedrock", "endpointPrefix" => "bedrock-data-automation-runtime", "cloudTrailEventSource" => "bedrock.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "bedrock"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Runtime for Amazon Bedrock Data Automation"}
      service.add_operation(:get_data_automation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomationruntime#GetDataAutomationStatus"
        operation.name = "GetDataAutomationStatus"
        operation.input = GetDataAutomationStatusRequest
        operation.output = GetDataAutomationStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:invoke_data_automation_async, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomationruntime#InvokeDataAutomationAsync"
        operation.name = "InvokeDataAutomationAsync"
        operation.input = InvokeDataAutomationAsyncRequest
        operation.output = InvokeDataAutomationAsyncResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomationruntime#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomationruntime#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomationruntime#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
