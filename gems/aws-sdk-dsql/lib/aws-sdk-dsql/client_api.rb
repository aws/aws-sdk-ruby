# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DSQL
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BypassPolicyLockoutSafetyCheck = Shapes::BooleanShape.new(name: 'BypassPolicyLockoutSafetyCheck')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ClusterArn = Shapes::StringShape.new(name: 'ClusterArn')
    ClusterArnList = Shapes::ListShape.new(name: 'ClusterArnList')
    ClusterCreationTime = Shapes::TimestampShape.new(name: 'ClusterCreationTime')
    ClusterId = Shapes::StringShape.new(name: 'ClusterId')
    ClusterList = Shapes::ListShape.new(name: 'ClusterList')
    ClusterStatus = Shapes::StringShape.new(name: 'ClusterStatus')
    ClusterSummary = Shapes::StructureShape.new(name: 'ClusterSummary')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateClusterInput = Shapes::StructureShape.new(name: 'CreateClusterInput')
    CreateClusterOutput = Shapes::StructureShape.new(name: 'CreateClusterOutput')
    DeleteClusterInput = Shapes::StructureShape.new(name: 'DeleteClusterInput')
    DeleteClusterOutput = Shapes::StructureShape.new(name: 'DeleteClusterOutput')
    DeleteClusterPolicyInput = Shapes::StructureShape.new(name: 'DeleteClusterPolicyInput')
    DeleteClusterPolicyOutput = Shapes::StructureShape.new(name: 'DeleteClusterPolicyOutput')
    DeletionProtectionEnabled = Shapes::BooleanShape.new(name: 'DeletionProtectionEnabled')
    EncryptionDetails = Shapes::StructureShape.new(name: 'EncryptionDetails')
    EncryptionStatus = Shapes::StringShape.new(name: 'EncryptionStatus')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    GetClusterInput = Shapes::StructureShape.new(name: 'GetClusterInput')
    GetClusterOutput = Shapes::StructureShape.new(name: 'GetClusterOutput')
    GetClusterPolicyInput = Shapes::StructureShape.new(name: 'GetClusterPolicyInput')
    GetClusterPolicyOutput = Shapes::StructureShape.new(name: 'GetClusterPolicyOutput')
    GetVpcEndpointServiceNameInput = Shapes::StructureShape.new(name: 'GetVpcEndpointServiceNameInput')
    GetVpcEndpointServiceNameOutput = Shapes::StructureShape.new(name: 'GetVpcEndpointServiceNameOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsEncryptionKey = Shapes::StringShape.new(name: 'KmsEncryptionKey')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListClustersInput = Shapes::StructureShape.new(name: 'ListClustersInput')
    ListClustersOutput = Shapes::StructureShape.new(name: 'ListClustersOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MultiRegionProperties = Shapes::StructureShape.new(name: 'MultiRegionProperties')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PolicyVersion = Shapes::StringShape.new(name: 'PolicyVersion')
    PutClusterPolicyInput = Shapes::StructureShape.new(name: 'PutClusterPolicyInput')
    PutClusterPolicyOutput = Shapes::StructureShape.new(name: 'PutClusterPolicyOutput')
    Region = Shapes::StringShape.new(name: 'Region')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateClusterInput = Shapes::StructureShape.new(name: 'UpdateClusterInput')
    UpdateClusterOutput = Shapes::StructureShape.new(name: 'UpdateClusterOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ClusterArnList.member = Shapes::ShapeRef.new(shape: ClusterArn)

    ClusterList.member = Shapes::ShapeRef.new(shape: ClusterSummary)

    ClusterSummary.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "identifier"))
    ClusterSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ClusterArn, required: true, location_name: "arn"))
    ClusterSummary.struct_class = Types::ClusterSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateClusterInput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "deletionProtectionEnabled"))
    CreateClusterInput.add_member(:kms_encryption_key, Shapes::ShapeRef.new(shape: KmsEncryptionKey, location_name: "kmsEncryptionKey"))
    CreateClusterInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateClusterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateClusterInput.add_member(:multi_region_properties, Shapes::ShapeRef.new(shape: MultiRegionProperties, location_name: "multiRegionProperties"))
    CreateClusterInput.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policy"))
    CreateClusterInput.add_member(:bypass_policy_lockout_safety_check, Shapes::ShapeRef.new(shape: BypassPolicyLockoutSafetyCheck, location_name: "bypassPolicyLockoutSafetyCheck"))
    CreateClusterInput.struct_class = Types::CreateClusterInput

    CreateClusterOutput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "identifier"))
    CreateClusterOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ClusterArn, required: true, location_name: "arn"))
    CreateClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, required: true, location_name: "status"))
    CreateClusterOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: ClusterCreationTime, required: true, location_name: "creationTime"))
    CreateClusterOutput.add_member(:multi_region_properties, Shapes::ShapeRef.new(shape: MultiRegionProperties, location_name: "multiRegionProperties"))
    CreateClusterOutput.add_member(:encryption_details, Shapes::ShapeRef.new(shape: EncryptionDetails, location_name: "encryptionDetails"))
    CreateClusterOutput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, required: true, location_name: "deletionProtectionEnabled"))
    CreateClusterOutput.struct_class = Types::CreateClusterOutput

    DeleteClusterInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location: "uri", location_name: "identifier"))
    DeleteClusterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "client-token", metadata: {"idempotencyToken" => true}))
    DeleteClusterInput.struct_class = Types::DeleteClusterInput

    DeleteClusterOutput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "identifier"))
    DeleteClusterOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ClusterArn, required: true, location_name: "arn"))
    DeleteClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, required: true, location_name: "status"))
    DeleteClusterOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: ClusterCreationTime, required: true, location_name: "creationTime"))
    DeleteClusterOutput.struct_class = Types::DeleteClusterOutput

    DeleteClusterPolicyInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location: "uri", location_name: "identifier"))
    DeleteClusterPolicyInput.add_member(:expected_policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, location: "querystring", location_name: "expected-policy-version"))
    DeleteClusterPolicyInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "client-token", metadata: {"idempotencyToken" => true}))
    DeleteClusterPolicyInput.struct_class = Types::DeleteClusterPolicyInput

    DeleteClusterPolicyOutput.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, required: true, location_name: "policyVersion"))
    DeleteClusterPolicyOutput.struct_class = Types::DeleteClusterPolicyOutput

    EncryptionDetails.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    EncryptionDetails.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    EncryptionDetails.add_member(:encryption_status, Shapes::ShapeRef.new(shape: EncryptionStatus, required: true, location_name: "encryptionStatus"))
    EncryptionDetails.struct_class = Types::EncryptionDetails

    GetClusterInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location: "uri", location_name: "identifier"))
    GetClusterInput.struct_class = Types::GetClusterInput

    GetClusterOutput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "identifier"))
    GetClusterOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ClusterArn, required: true, location_name: "arn"))
    GetClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, required: true, location_name: "status"))
    GetClusterOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: ClusterCreationTime, required: true, location_name: "creationTime"))
    GetClusterOutput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, required: true, location_name: "deletionProtectionEnabled"))
    GetClusterOutput.add_member(:multi_region_properties, Shapes::ShapeRef.new(shape: MultiRegionProperties, location_name: "multiRegionProperties"))
    GetClusterOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetClusterOutput.add_member(:encryption_details, Shapes::ShapeRef.new(shape: EncryptionDetails, location_name: "encryptionDetails"))
    GetClusterOutput.struct_class = Types::GetClusterOutput

    GetClusterPolicyInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location: "uri", location_name: "identifier"))
    GetClusterPolicyInput.struct_class = Types::GetClusterPolicyInput

    GetClusterPolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policy"))
    GetClusterPolicyOutput.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, required: true, location_name: "policyVersion"))
    GetClusterPolicyOutput.struct_class = Types::GetClusterPolicyOutput

    GetVpcEndpointServiceNameInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location: "uri", location_name: "identifier"))
    GetVpcEndpointServiceNameInput.struct_class = Types::GetVpcEndpointServiceNameInput

    GetVpcEndpointServiceNameOutput.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "serviceName"))
    GetVpcEndpointServiceNameOutput.struct_class = Types::GetVpcEndpointServiceNameOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListClustersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListClustersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListClustersInput.struct_class = Types::ListClustersInput

    ListClustersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListClustersOutput.add_member(:clusters, Shapes::ShapeRef.new(shape: ClusterList, required: true, location_name: "clusters"))
    ListClustersOutput.struct_class = Types::ListClustersOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    MultiRegionProperties.add_member(:witness_region, Shapes::ShapeRef.new(shape: Region, location_name: "witnessRegion"))
    MultiRegionProperties.add_member(:clusters, Shapes::ShapeRef.new(shape: ClusterArnList, location_name: "clusters"))
    MultiRegionProperties.struct_class = Types::MultiRegionProperties

    PutClusterPolicyInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location: "uri", location_name: "identifier"))
    PutClusterPolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policy"))
    PutClusterPolicyInput.add_member(:bypass_policy_lockout_safety_check, Shapes::ShapeRef.new(shape: BypassPolicyLockoutSafetyCheck, location_name: "bypassPolicyLockoutSafetyCheck"))
    PutClusterPolicyInput.add_member(:expected_policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, location_name: "expectedPolicyVersion"))
    PutClusterPolicyInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    PutClusterPolicyInput.struct_class = Types::PutClusterPolicyInput

    PutClusterPolicyOutput.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, required: true, location_name: "policyVersion"))
    PutClusterPolicyOutput.struct_class = Types::PutClusterPolicyOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UpdateClusterInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location: "uri", location_name: "identifier"))
    UpdateClusterInput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "deletionProtectionEnabled"))
    UpdateClusterInput.add_member(:kms_encryption_key, Shapes::ShapeRef.new(shape: KmsEncryptionKey, location_name: "kmsEncryptionKey"))
    UpdateClusterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateClusterInput.add_member(:multi_region_properties, Shapes::ShapeRef.new(shape: MultiRegionProperties, location_name: "multiRegionProperties"))
    UpdateClusterInput.struct_class = Types::UpdateClusterInput

    UpdateClusterOutput.add_member(:identifier, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "identifier"))
    UpdateClusterOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ClusterArn, required: true, location_name: "arn"))
    UpdateClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, required: true, location_name: "status"))
    UpdateClusterOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: ClusterCreationTime, required: true, location_name: "creationTime"))
    UpdateClusterOutput.struct_class = Types::UpdateClusterOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "dsql",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Aurora DSQL",
        "serviceId" => "DSQL",
        "signatureVersion" => "v4",
        "signingName" => "dsql",
        "uid" => "dsql-2018-05-10",
      }

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/cluster"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterInput)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "DELETE"
        o.http_request_uri = "/cluster/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_cluster_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteClusterPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/cluster/{identifier}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCluster"
        o.http_method = "GET"
        o.http_request_uri = "/cluster/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetClusterInput)
        o.output = Shapes::ShapeRef.new(shape: GetClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_cluster_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetClusterPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/cluster/{identifier}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetClusterPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetClusterPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_vpc_endpoint_service_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVpcEndpointServiceName"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{identifier}/vpc-endpoint-service-name"
        o.input = Shapes::ShapeRef.new(shape: GetVpcEndpointServiceNameInput)
        o.output = Shapes::ShapeRef.new(shape: GetVpcEndpointServiceNameOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "GET"
        o.http_request_uri = "/cluster"
        o.input = Shapes::ShapeRef.new(shape: ListClustersInput)
        o.output = Shapes::ShapeRef.new(shape: ListClustersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_cluster_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutClusterPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/cluster/{identifier}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutClusterPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutClusterPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/cluster/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
