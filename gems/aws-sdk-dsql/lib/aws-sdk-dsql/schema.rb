# frozen_string_literal: true

# This is generated code!

module Aws::DSQL
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:.+$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[!-~]+$"})
    ClusterArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#ClusterArn", name: "ClusterArn", traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.dsql#DSQL", "resource" => "com.amazonaws.dsql#Cluster"}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:dsql:[a-z0-9-]{1,20}:[0-9]{12}:cluster/[a-z0-9]{26}$"})
    ClusterArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dsql#ClusterArnList", name: "ClusterArnList", traits: {"smithy.api#uniqueItems" => {}})
    ClusterCreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dsql#ClusterCreationTime", name: "ClusterCreationTime")
    ClusterId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#ClusterId", name: "ClusterId", traits: {"smithy.api#pattern" => "^[a-z0-9]{26}$"})
    ClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dsql#ClusterList", name: "ClusterList", traits: {"smithy.api#uniqueItems" => {}})
    ClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#ClusterStatus", name: "ClusterStatus")
    ClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ClusterSummary", name: "ClusterSummary")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#CreateClusterInput", name: "CreateClusterInput")
    CreateClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#CreateClusterOutput", name: "CreateClusterOutput")
    DeleteClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#DeleteClusterInput", name: "DeleteClusterInput")
    DeleteClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#DeleteClusterOutput", name: "DeleteClusterOutput")
    DeletionProtectionEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dsql#DeletionProtectionEnabled", name: "DeletionProtectionEnabled")
    EncryptionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#EncryptionDetails", name: "EncryptionDetails")
    EncryptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#EncryptionStatus", name: "EncryptionStatus")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#EncryptionType", name: "EncryptionType")
    GetClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetClusterInput", name: "GetClusterInput")
    GetClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetClusterOutput", name: "GetClusterOutput")
    GetVpcEndpointServiceNameInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetVpcEndpointServiceNameInput", name: "GetVpcEndpointServiceNameInput")
    GetVpcEndpointServiceNameOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetVpcEndpointServiceNameOutput", name: "GetVpcEndpointServiceNameOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsEncryptionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#KmsEncryptionKey", name: "KmsEncryptionKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:/_-]+$"})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#KmsKeyArn", name: "KmsKeyArn", traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Key"}})
    ListClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ListClustersInput", name: "ListClustersInput")
    ListClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ListClustersOutput", name: "ListClustersOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dsql#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MultiRegionProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#MultiRegionProperties", name: "MultiRegionProperties")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#NextToken", name: "NextToken")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#Region", name: "Region", traits: {"smithy.api#length" => {"max" => 50}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#ServiceName", name: "ServiceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^com\\.amazonaws\\.[a-z0-9-]+\\.dsql-[a-f0-9]{6}$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.:/=+\\-@ ]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dsql#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dsql#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.:/=+\\-@ ]*$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#UntagResourceInput", name: "UntagResourceInput")
    UpdateClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#UpdateClusterInput", name: "UpdateClusterInput")
    UpdateClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#UpdateClusterOutput", name: "UpdateClusterOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dsql#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ClusterArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterArn)
    ClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSummary)
    ClusterStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterStatus.add_member(:idle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IDLE", traits: {"smithy.api#enumValue" => "IDLE"}))
    ClusterStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ClusterStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ClusterStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ClusterStatus.add_member(:pending_setup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_SETUP", traits: {"smithy.api#enumValue" => "PENDING_SETUP"}))
    ClusterStatus.add_member(:pending_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_DELETE", traits: {"smithy.api#enumValue" => "PENDING_DELETE"}))
    ClusterSummary.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    ClusterSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ClusterSummary.type = Types::ClusterSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CreateClusterInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "deletionProtectionEnabled", traits: {"smithy.api#default" => true}))
    CreateClusterInput.add_member(:kms_encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsEncryptionKey, location_name: "kmsEncryptionKey", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateClusterInput.add_member(:multi_region_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionProperties, location_name: "multiRegionProperties", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterInput.type = Types::CreateClusterInput
    CreateClusterOutput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    CreateClusterOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CreateClusterOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterCreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    CreateClusterOutput.add_member(:multi_region_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionProperties, location_name: "multiRegionProperties", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterOutput.add_member(:encryption_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionDetails, location_name: "encryptionDetails", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterOutput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "deletionProtectionEnabled", traits: {"smithy.api#required" => {}}))
    CreateClusterOutput.type = Types::CreateClusterOutput
    DeleteClusterInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#httpQuery" => "client-token", "smithy.api#idempotencyToken" => {}}))
    DeleteClusterInput.type = Types::DeleteClusterInput
    DeleteClusterOutput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    DeleteClusterOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    DeleteClusterOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterCreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    DeleteClusterOutput.type = Types::DeleteClusterOutput
    EncryptionDetails.add_member(:encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: "encryptionType", traits: {"smithy.api#required" => {}}))
    EncryptionDetails.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    EncryptionDetails.add_member(:encryption_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionStatus, location_name: "encryptionStatus", traits: {"smithy.api#required" => {}}))
    EncryptionDetails.type = Types::EncryptionDetails
    EncryptionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EncryptionStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    EncryptionStatus.add_member(:kms_key_inaccessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS_KEY_INACCESSIBLE", traits: {"smithy.api#enumValue" => "KMS_KEY_INACCESSIBLE"}))
    EncryptionStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    EncryptionType.add_member(:aws_owned_kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_OWNED_KMS_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KMS_KEY"}))
    EncryptionType.add_member(:customer_managed_kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER_MANAGED_KMS_KEY", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KMS_KEY"}))
    GetClusterInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetClusterInput.type = Types::GetClusterInput
    GetClusterOutput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    GetClusterOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetClusterOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterCreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetClusterOutput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "deletionProtectionEnabled", traits: {"smithy.api#required" => {}}))
    GetClusterOutput.add_member(:multi_region_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionProperties, location_name: "multiRegionProperties", traits: {"smithy.api#notProperty" => {}}))
    GetClusterOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#notProperty" => {}}))
    GetClusterOutput.add_member(:encryption_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionDetails, location_name: "encryptionDetails", traits: {"smithy.api#notProperty" => {}}))
    GetClusterOutput.type = Types::GetClusterOutput
    GetVpcEndpointServiceNameInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVpcEndpointServiceNameInput.type = Types::GetVpcEndpointServiceNameInput
    GetVpcEndpointServiceNameOutput.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: "serviceName", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetVpcEndpointServiceNameOutput.type = Types::GetVpcEndpointServiceNameOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListClustersInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "max-results"}))
    ListClustersInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListClustersInput.type = Types::ListClustersInput
    ListClustersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListClustersOutput.add_member(:clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterList, location_name: "clusters", traits: {"smithy.api#required" => {}}))
    ListClustersOutput.type = Types::ListClustersOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MultiRegionProperties.add_member(:witness_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: "witnessRegion"))
    MultiRegionProperties.add_member(:clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterArnList, location_name: "clusters"))
    MultiRegionProperties.type = Types::MultiRegionProperties
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateClusterInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClusterInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "deletionProtectionEnabled"))
    UpdateClusterInput.add_member(:kms_encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsEncryptionKey, location_name: "kmsEncryptionKey", traits: {"smithy.api#notProperty" => {}}))
    UpdateClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateClusterInput.add_member(:multi_region_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionProperties, location_name: "multiRegionProperties", traits: {"smithy.api#notProperty" => {}}))
    UpdateClusterInput.type = Types::UpdateClusterInput
    UpdateClusterOutput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    UpdateClusterOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    UpdateClusterOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterCreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    UpdateClusterOutput.type = Types::UpdateClusterOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETION_PROTECTION_ENABLED", traits: {"smithy.api#enumValue" => "deletionProtectionEnabled"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))

    DSQL = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dsql#DSQL"
      service.name = "DSQL"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "DSQL", "arnNamespace" => "dsql", "endpointPrefix" => "dsql", "cloudTrailEventSource" => "dsql.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "dsql"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon Aurora DSQL"}
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create new clusters."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster"}}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a cluster and all of its data."}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/cluster/{identifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#GetCluster"
        operation.name = "GetCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a cluster."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster/{identifier}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetClusterNotFound", "params" => {"identifier" => "ruabtlcu6nqjdl6k6jjcug67ta"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.dsql#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_vpc_endpoint_service_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#GetVpcEndpointServiceName"
        operation.name = "GetVpcEndpointServiceName"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVpcEndpointServiceNameInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVpcEndpointServiceNameOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get the VPC Endpoint Service Name for a cluster"}, "smithy.api#http" => {"code" => 200, "uri" => "/clusters/{identifier}/vpc-endpoint-service-name", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetVpcEndpointServiceNameNotFound", "params" => {"identifier" => "ruabtlcu6nqjdl6k6jjcug67ta"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.dsql#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#ListClusters"
        operation.name = "ListClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of cluster ARNs associated with the current endpoint and account."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListClustersSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all tags for an ARN."}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to add tags to an ARN."}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from an ARN."}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to modify the deletion protection status of a given cluster."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster/{identifier}"}}
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
