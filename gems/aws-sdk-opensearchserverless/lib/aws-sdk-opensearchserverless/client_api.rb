# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpenSearchServerless
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessPolicyDetail = Shapes::StructureShape.new(name: 'AccessPolicyDetail')
    AccessPolicyStats = Shapes::StructureShape.new(name: 'AccessPolicyStats')
    AccessPolicySummaries = Shapes::ListShape.new(name: 'AccessPolicySummaries')
    AccessPolicySummary = Shapes::StructureShape.new(name: 'AccessPolicySummary')
    AccessPolicyType = Shapes::StringShape.new(name: 'AccessPolicyType')
    AccountSettingsDetail = Shapes::StructureShape.new(name: 'AccountSettingsDetail')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BatchGetCollectionRequest = Shapes::StructureShape.new(name: 'BatchGetCollectionRequest')
    BatchGetCollectionResponse = Shapes::StructureShape.new(name: 'BatchGetCollectionResponse')
    BatchGetVpcEndpointRequest = Shapes::StructureShape.new(name: 'BatchGetVpcEndpointRequest')
    BatchGetVpcEndpointResponse = Shapes::StructureShape.new(name: 'BatchGetVpcEndpointResponse')
    CapacityLimits = Shapes::StructureShape.new(name: 'CapacityLimits')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CollectionDetail = Shapes::StructureShape.new(name: 'CollectionDetail')
    CollectionDetails = Shapes::ListShape.new(name: 'CollectionDetails')
    CollectionErrorDetail = Shapes::StructureShape.new(name: 'CollectionErrorDetail')
    CollectionErrorDetails = Shapes::ListShape.new(name: 'CollectionErrorDetails')
    CollectionFilters = Shapes::StructureShape.new(name: 'CollectionFilters')
    CollectionId = Shapes::StringShape.new(name: 'CollectionId')
    CollectionIds = Shapes::ListShape.new(name: 'CollectionIds')
    CollectionName = Shapes::StringShape.new(name: 'CollectionName')
    CollectionNames = Shapes::ListShape.new(name: 'CollectionNames')
    CollectionStatus = Shapes::StringShape.new(name: 'CollectionStatus')
    CollectionSummaries = Shapes::ListShape.new(name: 'CollectionSummaries')
    CollectionSummary = Shapes::StructureShape.new(name: 'CollectionSummary')
    CollectionType = Shapes::StringShape.new(name: 'CollectionType')
    ConfigDescription = Shapes::StringShape.new(name: 'ConfigDescription')
    ConfigName = Shapes::StringShape.new(name: 'ConfigName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAccessPolicyRequest = Shapes::StructureShape.new(name: 'CreateAccessPolicyRequest')
    CreateAccessPolicyResponse = Shapes::StructureShape.new(name: 'CreateAccessPolicyResponse')
    CreateCollectionDetail = Shapes::StructureShape.new(name: 'CreateCollectionDetail')
    CreateCollectionRequest = Shapes::StructureShape.new(name: 'CreateCollectionRequest')
    CreateCollectionRequestDescriptionString = Shapes::StringShape.new(name: 'CreateCollectionRequestDescriptionString')
    CreateCollectionResponse = Shapes::StructureShape.new(name: 'CreateCollectionResponse')
    CreateSecurityConfigRequest = Shapes::StructureShape.new(name: 'CreateSecurityConfigRequest')
    CreateSecurityConfigResponse = Shapes::StructureShape.new(name: 'CreateSecurityConfigResponse')
    CreateSecurityPolicyRequest = Shapes::StructureShape.new(name: 'CreateSecurityPolicyRequest')
    CreateSecurityPolicyResponse = Shapes::StructureShape.new(name: 'CreateSecurityPolicyResponse')
    CreateVpcEndpointDetail = Shapes::StructureShape.new(name: 'CreateVpcEndpointDetail')
    CreateVpcEndpointRequest = Shapes::StructureShape.new(name: 'CreateVpcEndpointRequest')
    CreateVpcEndpointResponse = Shapes::StructureShape.new(name: 'CreateVpcEndpointResponse')
    DeleteAccessPolicyRequest = Shapes::StructureShape.new(name: 'DeleteAccessPolicyRequest')
    DeleteAccessPolicyResponse = Shapes::StructureShape.new(name: 'DeleteAccessPolicyResponse')
    DeleteCollectionDetail = Shapes::StructureShape.new(name: 'DeleteCollectionDetail')
    DeleteCollectionRequest = Shapes::StructureShape.new(name: 'DeleteCollectionRequest')
    DeleteCollectionResponse = Shapes::StructureShape.new(name: 'DeleteCollectionResponse')
    DeleteSecurityConfigRequest = Shapes::StructureShape.new(name: 'DeleteSecurityConfigRequest')
    DeleteSecurityConfigResponse = Shapes::StructureShape.new(name: 'DeleteSecurityConfigResponse')
    DeleteSecurityPolicyRequest = Shapes::StructureShape.new(name: 'DeleteSecurityPolicyRequest')
    DeleteSecurityPolicyResponse = Shapes::StructureShape.new(name: 'DeleteSecurityPolicyResponse')
    DeleteVpcEndpointDetail = Shapes::StructureShape.new(name: 'DeleteVpcEndpointDetail')
    DeleteVpcEndpointRequest = Shapes::StructureShape.new(name: 'DeleteVpcEndpointRequest')
    DeleteVpcEndpointResponse = Shapes::StructureShape.new(name: 'DeleteVpcEndpointResponse')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    GetAccessPolicyRequest = Shapes::StructureShape.new(name: 'GetAccessPolicyRequest')
    GetAccessPolicyResponse = Shapes::StructureShape.new(name: 'GetAccessPolicyResponse')
    GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetAccountSettingsResponse')
    GetPoliciesStatsRequest = Shapes::StructureShape.new(name: 'GetPoliciesStatsRequest')
    GetPoliciesStatsResponse = Shapes::StructureShape.new(name: 'GetPoliciesStatsResponse')
    GetSecurityConfigRequest = Shapes::StructureShape.new(name: 'GetSecurityConfigRequest')
    GetSecurityConfigResponse = Shapes::StructureShape.new(name: 'GetSecurityConfigResponse')
    GetSecurityPolicyRequest = Shapes::StructureShape.new(name: 'GetSecurityPolicyRequest')
    GetSecurityPolicyResponse = Shapes::StructureShape.new(name: 'GetSecurityPolicyResponse')
    IndexingCapacityValue = Shapes::IntegerShape.new(name: 'IndexingCapacityValue')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAccessPoliciesRequest = Shapes::StructureShape.new(name: 'ListAccessPoliciesRequest')
    ListAccessPoliciesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAccessPoliciesRequestMaxResultsInteger')
    ListAccessPoliciesRequestResourceList = Shapes::ListShape.new(name: 'ListAccessPoliciesRequestResourceList')
    ListAccessPoliciesResponse = Shapes::StructureShape.new(name: 'ListAccessPoliciesResponse')
    ListCollectionsRequest = Shapes::StructureShape.new(name: 'ListCollectionsRequest')
    ListCollectionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCollectionsRequestMaxResultsInteger')
    ListCollectionsResponse = Shapes::StructureShape.new(name: 'ListCollectionsResponse')
    ListSecurityConfigsRequest = Shapes::StructureShape.new(name: 'ListSecurityConfigsRequest')
    ListSecurityConfigsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSecurityConfigsRequestMaxResultsInteger')
    ListSecurityConfigsResponse = Shapes::StructureShape.new(name: 'ListSecurityConfigsResponse')
    ListSecurityPoliciesRequest = Shapes::StructureShape.new(name: 'ListSecurityPoliciesRequest')
    ListSecurityPoliciesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSecurityPoliciesRequestMaxResultsInteger')
    ListSecurityPoliciesRequestResourceList = Shapes::ListShape.new(name: 'ListSecurityPoliciesRequestResourceList')
    ListSecurityPoliciesResponse = Shapes::StructureShape.new(name: 'ListSecurityPoliciesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListVpcEndpointsRequest = Shapes::StructureShape.new(name: 'ListVpcEndpointsRequest')
    ListVpcEndpointsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListVpcEndpointsRequestMaxResultsInteger')
    ListVpcEndpointsResponse = Shapes::StructureShape.new(name: 'ListVpcEndpointsResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    OcuLimitExceededException = Shapes::StructureShape.new(name: 'OcuLimitExceededException')
    PolicyDescription = Shapes::StringShape.new(name: 'PolicyDescription')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyVersion = Shapes::StringShape.new(name: 'PolicyVersion')
    Resource = Shapes::StringShape.new(name: 'Resource')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SamlConfigOptions = Shapes::StructureShape.new(name: 'SamlConfigOptions')
    SamlConfigOptionsSessionTimeoutInteger = Shapes::IntegerShape.new(name: 'SamlConfigOptionsSessionTimeoutInteger')
    SearchCapacityValue = Shapes::IntegerShape.new(name: 'SearchCapacityValue')
    SecurityConfigDetail = Shapes::StructureShape.new(name: 'SecurityConfigDetail')
    SecurityConfigId = Shapes::StringShape.new(name: 'SecurityConfigId')
    SecurityConfigStats = Shapes::StructureShape.new(name: 'SecurityConfigStats')
    SecurityConfigSummaries = Shapes::ListShape.new(name: 'SecurityConfigSummaries')
    SecurityConfigSummary = Shapes::StructureShape.new(name: 'SecurityConfigSummary')
    SecurityConfigType = Shapes::StringShape.new(name: 'SecurityConfigType')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SecurityPolicyDetail = Shapes::StructureShape.new(name: 'SecurityPolicyDetail')
    SecurityPolicyStats = Shapes::StructureShape.new(name: 'SecurityPolicyStats')
    SecurityPolicySummaries = Shapes::ListShape.new(name: 'SecurityPolicySummaries')
    SecurityPolicySummary = Shapes::StructureShape.new(name: 'SecurityPolicySummary')
    SecurityPolicyType = Shapes::StringShape.new(name: 'SecurityPolicyType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAccessPolicyRequest = Shapes::StructureShape.new(name: 'UpdateAccessPolicyRequest')
    UpdateAccessPolicyResponse = Shapes::StructureShape.new(name: 'UpdateAccessPolicyResponse')
    UpdateAccountSettingsRequest = Shapes::StructureShape.new(name: 'UpdateAccountSettingsRequest')
    UpdateAccountSettingsResponse = Shapes::StructureShape.new(name: 'UpdateAccountSettingsResponse')
    UpdateCollectionDetail = Shapes::StructureShape.new(name: 'UpdateCollectionDetail')
    UpdateCollectionRequest = Shapes::StructureShape.new(name: 'UpdateCollectionRequest')
    UpdateCollectionRequestDescriptionString = Shapes::StringShape.new(name: 'UpdateCollectionRequestDescriptionString')
    UpdateCollectionResponse = Shapes::StructureShape.new(name: 'UpdateCollectionResponse')
    UpdateSecurityConfigRequest = Shapes::StructureShape.new(name: 'UpdateSecurityConfigRequest')
    UpdateSecurityConfigResponse = Shapes::StructureShape.new(name: 'UpdateSecurityConfigResponse')
    UpdateSecurityPolicyRequest = Shapes::StructureShape.new(name: 'UpdateSecurityPolicyRequest')
    UpdateSecurityPolicyResponse = Shapes::StructureShape.new(name: 'UpdateSecurityPolicyResponse')
    UpdateVpcEndpointDetail = Shapes::StructureShape.new(name: 'UpdateVpcEndpointDetail')
    UpdateVpcEndpointRequest = Shapes::StructureShape.new(name: 'UpdateVpcEndpointRequest')
    UpdateVpcEndpointResponse = Shapes::StructureShape.new(name: 'UpdateVpcEndpointResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VpcEndpointDetail = Shapes::StructureShape.new(name: 'VpcEndpointDetail')
    VpcEndpointDetails = Shapes::ListShape.new(name: 'VpcEndpointDetails')
    VpcEndpointErrorDetail = Shapes::StructureShape.new(name: 'VpcEndpointErrorDetail')
    VpcEndpointErrorDetails = Shapes::ListShape.new(name: 'VpcEndpointErrorDetails')
    VpcEndpointFilters = Shapes::StructureShape.new(name: 'VpcEndpointFilters')
    VpcEndpointId = Shapes::StringShape.new(name: 'VpcEndpointId')
    VpcEndpointIds = Shapes::ListShape.new(name: 'VpcEndpointIds')
    VpcEndpointName = Shapes::StringShape.new(name: 'VpcEndpointName')
    VpcEndpointStatus = Shapes::StringShape.new(name: 'VpcEndpointStatus')
    VpcEndpointSummaries = Shapes::ListShape.new(name: 'VpcEndpointSummaries')
    VpcEndpointSummary = Shapes::StructureShape.new(name: 'VpcEndpointSummary')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    samlGroupAttribute = Shapes::StringShape.new(name: 'samlGroupAttribute')
    samlMetadata = Shapes::StringShape.new(name: 'samlMetadata')
    samlUserAttribute = Shapes::StringShape.new(name: 'samlUserAttribute')

    AccessPolicyDetail.add_member(:created_date, Shapes::ShapeRef.new(shape: Long, location_name: "createdDate"))
    AccessPolicyDetail.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "description"))
    AccessPolicyDetail.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedDate"))
    AccessPolicyDetail.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "name"))
    AccessPolicyDetail.add_member(:policy, Shapes::ShapeRef.new(shape: Document, location_name: "policy"))
    AccessPolicyDetail.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, location_name: "policyVersion"))
    AccessPolicyDetail.add_member(:type, Shapes::ShapeRef.new(shape: AccessPolicyType, location_name: "type"))
    AccessPolicyDetail.struct_class = Types::AccessPolicyDetail

    AccessPolicyStats.add_member(:data_policy_count, Shapes::ShapeRef.new(shape: Long, location_name: "DataPolicyCount"))
    AccessPolicyStats.struct_class = Types::AccessPolicyStats

    AccessPolicySummaries.member = Shapes::ShapeRef.new(shape: AccessPolicySummary)

    AccessPolicySummary.add_member(:created_date, Shapes::ShapeRef.new(shape: Long, location_name: "createdDate"))
    AccessPolicySummary.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "description"))
    AccessPolicySummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedDate"))
    AccessPolicySummary.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "name"))
    AccessPolicySummary.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, location_name: "policyVersion"))
    AccessPolicySummary.add_member(:type, Shapes::ShapeRef.new(shape: AccessPolicyType, location_name: "type"))
    AccessPolicySummary.struct_class = Types::AccessPolicySummary

    AccountSettingsDetail.add_member(:capacity_limits, Shapes::ShapeRef.new(shape: CapacityLimits, location_name: "capacityLimits"))
    AccountSettingsDetail.struct_class = Types::AccountSettingsDetail

    BatchGetCollectionRequest.add_member(:ids, Shapes::ShapeRef.new(shape: CollectionIds, location_name: "ids"))
    BatchGetCollectionRequest.add_member(:names, Shapes::ShapeRef.new(shape: CollectionNames, location_name: "names"))
    BatchGetCollectionRequest.struct_class = Types::BatchGetCollectionRequest

    BatchGetCollectionResponse.add_member(:collection_details, Shapes::ShapeRef.new(shape: CollectionDetails, location_name: "collectionDetails"))
    BatchGetCollectionResponse.add_member(:collection_error_details, Shapes::ShapeRef.new(shape: CollectionErrorDetails, location_name: "collectionErrorDetails"))
    BatchGetCollectionResponse.struct_class = Types::BatchGetCollectionResponse

    BatchGetVpcEndpointRequest.add_member(:ids, Shapes::ShapeRef.new(shape: VpcEndpointIds, required: true, location_name: "ids"))
    BatchGetVpcEndpointRequest.struct_class = Types::BatchGetVpcEndpointRequest

    BatchGetVpcEndpointResponse.add_member(:vpc_endpoint_details, Shapes::ShapeRef.new(shape: VpcEndpointDetails, location_name: "vpcEndpointDetails"))
    BatchGetVpcEndpointResponse.add_member(:vpc_endpoint_error_details, Shapes::ShapeRef.new(shape: VpcEndpointErrorDetails, location_name: "vpcEndpointErrorDetails"))
    BatchGetVpcEndpointResponse.struct_class = Types::BatchGetVpcEndpointResponse

    CapacityLimits.add_member(:max_indexing_capacity_in_ocu, Shapes::ShapeRef.new(shape: IndexingCapacityValue, location_name: "maxIndexingCapacityInOCU"))
    CapacityLimits.add_member(:max_search_capacity_in_ocu, Shapes::ShapeRef.new(shape: SearchCapacityValue, location_name: "maxSearchCapacityInOCU"))
    CapacityLimits.struct_class = Types::CapacityLimits

    CollectionDetail.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    CollectionDetail.add_member(:collection_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "collectionEndpoint"))
    CollectionDetail.add_member(:created_date, Shapes::ShapeRef.new(shape: Long, location_name: "createdDate"))
    CollectionDetail.add_member(:dashboard_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "dashboardEndpoint"))
    CollectionDetail.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CollectionDetail.add_member(:id, Shapes::ShapeRef.new(shape: CollectionId, location_name: "id"))
    CollectionDetail.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyArn"))
    CollectionDetail.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedDate"))
    CollectionDetail.add_member(:name, Shapes::ShapeRef.new(shape: CollectionName, location_name: "name"))
    CollectionDetail.add_member(:status, Shapes::ShapeRef.new(shape: CollectionStatus, location_name: "status"))
    CollectionDetail.add_member(:type, Shapes::ShapeRef.new(shape: CollectionType, location_name: "type"))
    CollectionDetail.struct_class = Types::CollectionDetail

    CollectionDetails.member = Shapes::ShapeRef.new(shape: CollectionDetail)

    CollectionErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    CollectionErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    CollectionErrorDetail.add_member(:id, Shapes::ShapeRef.new(shape: CollectionId, location_name: "id"))
    CollectionErrorDetail.add_member(:name, Shapes::ShapeRef.new(shape: CollectionName, location_name: "name"))
    CollectionErrorDetail.struct_class = Types::CollectionErrorDetail

    CollectionErrorDetails.member = Shapes::ShapeRef.new(shape: CollectionErrorDetail)

    CollectionFilters.add_member(:name, Shapes::ShapeRef.new(shape: CollectionName, location_name: "name"))
    CollectionFilters.add_member(:status, Shapes::ShapeRef.new(shape: CollectionStatus, location_name: "status"))
    CollectionFilters.struct_class = Types::CollectionFilters

    CollectionIds.member = Shapes::ShapeRef.new(shape: CollectionId)

    CollectionNames.member = Shapes::ShapeRef.new(shape: CollectionName)

    CollectionSummaries.member = Shapes::ShapeRef.new(shape: CollectionSummary)

    CollectionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    CollectionSummary.add_member(:id, Shapes::ShapeRef.new(shape: CollectionId, location_name: "id"))
    CollectionSummary.add_member(:name, Shapes::ShapeRef.new(shape: CollectionName, location_name: "name"))
    CollectionSummary.add_member(:status, Shapes::ShapeRef.new(shape: CollectionStatus, location_name: "status"))
    CollectionSummary.struct_class = Types::CollectionSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAccessPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAccessPolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "description"))
    CreateAccessPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    CreateAccessPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policy"))
    CreateAccessPolicyRequest.add_member(:type, Shapes::ShapeRef.new(shape: AccessPolicyType, required: true, location_name: "type"))
    CreateAccessPolicyRequest.struct_class = Types::CreateAccessPolicyRequest

    CreateAccessPolicyResponse.add_member(:access_policy_detail, Shapes::ShapeRef.new(shape: AccessPolicyDetail, location_name: "accessPolicyDetail"))
    CreateAccessPolicyResponse.struct_class = Types::CreateAccessPolicyResponse

    CreateCollectionDetail.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    CreateCollectionDetail.add_member(:created_date, Shapes::ShapeRef.new(shape: Long, location_name: "createdDate"))
    CreateCollectionDetail.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateCollectionDetail.add_member(:id, Shapes::ShapeRef.new(shape: CollectionId, location_name: "id"))
    CreateCollectionDetail.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyArn"))
    CreateCollectionDetail.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedDate"))
    CreateCollectionDetail.add_member(:name, Shapes::ShapeRef.new(shape: CollectionName, location_name: "name"))
    CreateCollectionDetail.add_member(:status, Shapes::ShapeRef.new(shape: CollectionStatus, location_name: "status"))
    CreateCollectionDetail.add_member(:type, Shapes::ShapeRef.new(shape: CollectionType, location_name: "type"))
    CreateCollectionDetail.struct_class = Types::CreateCollectionDetail

    CreateCollectionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateCollectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: CreateCollectionRequestDescriptionString, location_name: "description"))
    CreateCollectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: CollectionName, required: true, location_name: "name"))
    CreateCollectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateCollectionRequest.add_member(:type, Shapes::ShapeRef.new(shape: CollectionType, location_name: "type"))
    CreateCollectionRequest.struct_class = Types::CreateCollectionRequest

    CreateCollectionResponse.add_member(:create_collection_detail, Shapes::ShapeRef.new(shape: CreateCollectionDetail, location_name: "createCollectionDetail"))
    CreateCollectionResponse.struct_class = Types::CreateCollectionResponse

    CreateSecurityConfigRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateSecurityConfigRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConfigDescription, location_name: "description"))
    CreateSecurityConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConfigName, required: true, location_name: "name"))
    CreateSecurityConfigRequest.add_member(:saml_options, Shapes::ShapeRef.new(shape: SamlConfigOptions, location_name: "samlOptions"))
    CreateSecurityConfigRequest.add_member(:type, Shapes::ShapeRef.new(shape: SecurityConfigType, required: true, location_name: "type"))
    CreateSecurityConfigRequest.struct_class = Types::CreateSecurityConfigRequest

    CreateSecurityConfigResponse.add_member(:security_config_detail, Shapes::ShapeRef.new(shape: SecurityConfigDetail, location_name: "securityConfigDetail"))
    CreateSecurityConfigResponse.struct_class = Types::CreateSecurityConfigResponse

    CreateSecurityPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateSecurityPolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "description"))
    CreateSecurityPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    CreateSecurityPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policy"))
    CreateSecurityPolicyRequest.add_member(:type, Shapes::ShapeRef.new(shape: SecurityPolicyType, required: true, location_name: "type"))
    CreateSecurityPolicyRequest.struct_class = Types::CreateSecurityPolicyRequest

    CreateSecurityPolicyResponse.add_member(:security_policy_detail, Shapes::ShapeRef.new(shape: SecurityPolicyDetail, location_name: "securityPolicyDetail"))
    CreateSecurityPolicyResponse.struct_class = Types::CreateSecurityPolicyResponse

    CreateVpcEndpointDetail.add_member(:id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "id"))
    CreateVpcEndpointDetail.add_member(:name, Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: "name"))
    CreateVpcEndpointDetail.add_member(:status, Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: "status"))
    CreateVpcEndpointDetail.struct_class = Types::CreateVpcEndpointDetail

    CreateVpcEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVpcEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: VpcEndpointName, required: true, location_name: "name"))
    CreateVpcEndpointRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    CreateVpcEndpointRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    CreateVpcEndpointRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    CreateVpcEndpointRequest.struct_class = Types::CreateVpcEndpointRequest

    CreateVpcEndpointResponse.add_member(:create_vpc_endpoint_detail, Shapes::ShapeRef.new(shape: CreateVpcEndpointDetail, location_name: "createVpcEndpointDetail"))
    CreateVpcEndpointResponse.struct_class = Types::CreateVpcEndpointResponse

    DeleteAccessPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAccessPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    DeleteAccessPolicyRequest.add_member(:type, Shapes::ShapeRef.new(shape: AccessPolicyType, required: true, location_name: "type"))
    DeleteAccessPolicyRequest.struct_class = Types::DeleteAccessPolicyRequest

    DeleteAccessPolicyResponse.struct_class = Types::DeleteAccessPolicyResponse

    DeleteCollectionDetail.add_member(:id, Shapes::ShapeRef.new(shape: CollectionId, location_name: "id"))
    DeleteCollectionDetail.add_member(:name, Shapes::ShapeRef.new(shape: CollectionName, location_name: "name"))
    DeleteCollectionDetail.add_member(:status, Shapes::ShapeRef.new(shape: CollectionStatus, location_name: "status"))
    DeleteCollectionDetail.struct_class = Types::DeleteCollectionDetail

    DeleteCollectionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteCollectionRequest.add_member(:id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "id"))
    DeleteCollectionRequest.struct_class = Types::DeleteCollectionRequest

    DeleteCollectionResponse.add_member(:delete_collection_detail, Shapes::ShapeRef.new(shape: DeleteCollectionDetail, location_name: "deleteCollectionDetail"))
    DeleteCollectionResponse.struct_class = Types::DeleteCollectionResponse

    DeleteSecurityConfigRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteSecurityConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: SecurityConfigId, required: true, location_name: "id"))
    DeleteSecurityConfigRequest.struct_class = Types::DeleteSecurityConfigRequest

    DeleteSecurityConfigResponse.struct_class = Types::DeleteSecurityConfigResponse

    DeleteSecurityPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteSecurityPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    DeleteSecurityPolicyRequest.add_member(:type, Shapes::ShapeRef.new(shape: SecurityPolicyType, required: true, location_name: "type"))
    DeleteSecurityPolicyRequest.struct_class = Types::DeleteSecurityPolicyRequest

    DeleteSecurityPolicyResponse.struct_class = Types::DeleteSecurityPolicyResponse

    DeleteVpcEndpointDetail.add_member(:id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "id"))
    DeleteVpcEndpointDetail.add_member(:name, Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: "name"))
    DeleteVpcEndpointDetail.add_member(:status, Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: "status"))
    DeleteVpcEndpointDetail.struct_class = Types::DeleteVpcEndpointDetail

    DeleteVpcEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteVpcEndpointRequest.add_member(:id, Shapes::ShapeRef.new(shape: VpcEndpointId, required: true, location_name: "id"))
    DeleteVpcEndpointRequest.struct_class = Types::DeleteVpcEndpointRequest

    DeleteVpcEndpointResponse.add_member(:delete_vpc_endpoint_detail, Shapes::ShapeRef.new(shape: DeleteVpcEndpointDetail, location_name: "deleteVpcEndpointDetail"))
    DeleteVpcEndpointResponse.struct_class = Types::DeleteVpcEndpointResponse

    GetAccessPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    GetAccessPolicyRequest.add_member(:type, Shapes::ShapeRef.new(shape: AccessPolicyType, required: true, location_name: "type"))
    GetAccessPolicyRequest.struct_class = Types::GetAccessPolicyRequest

    GetAccessPolicyResponse.add_member(:access_policy_detail, Shapes::ShapeRef.new(shape: AccessPolicyDetail, location_name: "accessPolicyDetail"))
    GetAccessPolicyResponse.struct_class = Types::GetAccessPolicyResponse

    GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_settings_detail, Shapes::ShapeRef.new(shape: AccountSettingsDetail, location_name: "accountSettingsDetail"))
    GetAccountSettingsResponse.struct_class = Types::GetAccountSettingsResponse

    GetPoliciesStatsRequest.struct_class = Types::GetPoliciesStatsRequest

    GetPoliciesStatsResponse.add_member(:access_policy_stats, Shapes::ShapeRef.new(shape: AccessPolicyStats, location_name: "AccessPolicyStats"))
    GetPoliciesStatsResponse.add_member(:security_config_stats, Shapes::ShapeRef.new(shape: SecurityConfigStats, location_name: "SecurityConfigStats"))
    GetPoliciesStatsResponse.add_member(:security_policy_stats, Shapes::ShapeRef.new(shape: SecurityPolicyStats, location_name: "SecurityPolicyStats"))
    GetPoliciesStatsResponse.add_member(:total_policy_count, Shapes::ShapeRef.new(shape: Long, location_name: "TotalPolicyCount"))
    GetPoliciesStatsResponse.struct_class = Types::GetPoliciesStatsResponse

    GetSecurityConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: SecurityConfigId, required: true, location_name: "id"))
    GetSecurityConfigRequest.struct_class = Types::GetSecurityConfigRequest

    GetSecurityConfigResponse.add_member(:security_config_detail, Shapes::ShapeRef.new(shape: SecurityConfigDetail, location_name: "securityConfigDetail"))
    GetSecurityConfigResponse.struct_class = Types::GetSecurityConfigResponse

    GetSecurityPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    GetSecurityPolicyRequest.add_member(:type, Shapes::ShapeRef.new(shape: SecurityPolicyType, required: true, location_name: "type"))
    GetSecurityPolicyRequest.struct_class = Types::GetSecurityPolicyRequest

    GetSecurityPolicyResponse.add_member(:security_policy_detail, Shapes::ShapeRef.new(shape: SecurityPolicyDetail, location_name: "securityPolicyDetail"))
    GetSecurityPolicyResponse.struct_class = Types::GetSecurityPolicyResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAccessPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAccessPoliciesRequestMaxResultsInteger, location_name: "maxResults"))
    ListAccessPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAccessPoliciesRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ListAccessPoliciesRequestResourceList, location_name: "resource"))
    ListAccessPoliciesRequest.add_member(:type, Shapes::ShapeRef.new(shape: AccessPolicyType, required: true, location_name: "type"))
    ListAccessPoliciesRequest.struct_class = Types::ListAccessPoliciesRequest

    ListAccessPoliciesRequestResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ListAccessPoliciesResponse.add_member(:access_policy_summaries, Shapes::ShapeRef.new(shape: AccessPolicySummaries, location_name: "accessPolicySummaries"))
    ListAccessPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAccessPoliciesResponse.struct_class = Types::ListAccessPoliciesResponse

    ListCollectionsRequest.add_member(:collection_filters, Shapes::ShapeRef.new(shape: CollectionFilters, location_name: "collectionFilters"))
    ListCollectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCollectionsRequestMaxResultsInteger, location_name: "maxResults"))
    ListCollectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCollectionsRequest.struct_class = Types::ListCollectionsRequest

    ListCollectionsResponse.add_member(:collection_summaries, Shapes::ShapeRef.new(shape: CollectionSummaries, location_name: "collectionSummaries"))
    ListCollectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCollectionsResponse.struct_class = Types::ListCollectionsResponse

    ListSecurityConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSecurityConfigsRequestMaxResultsInteger, location_name: "maxResults"))
    ListSecurityConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSecurityConfigsRequest.add_member(:type, Shapes::ShapeRef.new(shape: SecurityConfigType, required: true, location_name: "type"))
    ListSecurityConfigsRequest.struct_class = Types::ListSecurityConfigsRequest

    ListSecurityConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSecurityConfigsResponse.add_member(:security_config_summaries, Shapes::ShapeRef.new(shape: SecurityConfigSummaries, location_name: "securityConfigSummaries"))
    ListSecurityConfigsResponse.struct_class = Types::ListSecurityConfigsResponse

    ListSecurityPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSecurityPoliciesRequestMaxResultsInteger, location_name: "maxResults"))
    ListSecurityPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSecurityPoliciesRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ListSecurityPoliciesRequestResourceList, location_name: "resource"))
    ListSecurityPoliciesRequest.add_member(:type, Shapes::ShapeRef.new(shape: SecurityPolicyType, required: true, location_name: "type"))
    ListSecurityPoliciesRequest.struct_class = Types::ListSecurityPoliciesRequest

    ListSecurityPoliciesRequestResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ListSecurityPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSecurityPoliciesResponse.add_member(:security_policy_summaries, Shapes::ShapeRef.new(shape: SecurityPolicySummaries, location_name: "securityPolicySummaries"))
    ListSecurityPoliciesResponse.struct_class = Types::ListSecurityPoliciesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListVpcEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListVpcEndpointsRequestMaxResultsInteger, location_name: "maxResults"))
    ListVpcEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVpcEndpointsRequest.add_member(:vpc_endpoint_filters, Shapes::ShapeRef.new(shape: VpcEndpointFilters, location_name: "vpcEndpointFilters"))
    ListVpcEndpointsRequest.struct_class = Types::ListVpcEndpointsRequest

    ListVpcEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVpcEndpointsResponse.add_member(:vpc_endpoint_summaries, Shapes::ShapeRef.new(shape: VpcEndpointSummaries, location_name: "vpcEndpointSummaries"))
    ListVpcEndpointsResponse.struct_class = Types::ListVpcEndpointsResponse

    OcuLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    OcuLimitExceededException.struct_class = Types::OcuLimitExceededException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SamlConfigOptions.add_member(:group_attribute, Shapes::ShapeRef.new(shape: samlGroupAttribute, location_name: "groupAttribute"))
    SamlConfigOptions.add_member(:metadata, Shapes::ShapeRef.new(shape: samlMetadata, required: true, location_name: "metadata"))
    SamlConfigOptions.add_member(:session_timeout, Shapes::ShapeRef.new(shape: SamlConfigOptionsSessionTimeoutInteger, location_name: "sessionTimeout"))
    SamlConfigOptions.add_member(:user_attribute, Shapes::ShapeRef.new(shape: samlUserAttribute, location_name: "userAttribute"))
    SamlConfigOptions.struct_class = Types::SamlConfigOptions

    SecurityConfigDetail.add_member(:config_version, Shapes::ShapeRef.new(shape: PolicyVersion, location_name: "configVersion"))
    SecurityConfigDetail.add_member(:created_date, Shapes::ShapeRef.new(shape: Long, location_name: "createdDate"))
    SecurityConfigDetail.add_member(:description, Shapes::ShapeRef.new(shape: ConfigDescription, location_name: "description"))
    SecurityConfigDetail.add_member(:id, Shapes::ShapeRef.new(shape: SecurityConfigId, location_name: "id"))
    SecurityConfigDetail.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedDate"))
    SecurityConfigDetail.add_member(:saml_options, Shapes::ShapeRef.new(shape: SamlConfigOptions, location_name: "samlOptions"))
    SecurityConfigDetail.add_member(:type, Shapes::ShapeRef.new(shape: SecurityConfigType, location_name: "type"))
    SecurityConfigDetail.struct_class = Types::SecurityConfigDetail

    SecurityConfigStats.add_member(:saml_config_count, Shapes::ShapeRef.new(shape: Long, location_name: "SamlConfigCount"))
    SecurityConfigStats.struct_class = Types::SecurityConfigStats

    SecurityConfigSummaries.member = Shapes::ShapeRef.new(shape: SecurityConfigSummary)

    SecurityConfigSummary.add_member(:config_version, Shapes::ShapeRef.new(shape: PolicyVersion, location_name: "configVersion"))
    SecurityConfigSummary.add_member(:created_date, Shapes::ShapeRef.new(shape: Long, location_name: "createdDate"))
    SecurityConfigSummary.add_member(:description, Shapes::ShapeRef.new(shape: ConfigDescription, location_name: "description"))
    SecurityConfigSummary.add_member(:id, Shapes::ShapeRef.new(shape: SecurityConfigId, location_name: "id"))
    SecurityConfigSummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedDate"))
    SecurityConfigSummary.add_member(:type, Shapes::ShapeRef.new(shape: SecurityConfigType, location_name: "type"))
    SecurityConfigSummary.struct_class = Types::SecurityConfigSummary

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SecurityPolicyDetail.add_member(:created_date, Shapes::ShapeRef.new(shape: Long, location_name: "createdDate"))
    SecurityPolicyDetail.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "description"))
    SecurityPolicyDetail.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedDate"))
    SecurityPolicyDetail.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "name"))
    SecurityPolicyDetail.add_member(:policy, Shapes::ShapeRef.new(shape: Document, location_name: "policy"))
    SecurityPolicyDetail.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, location_name: "policyVersion"))
    SecurityPolicyDetail.add_member(:type, Shapes::ShapeRef.new(shape: SecurityPolicyType, location_name: "type"))
    SecurityPolicyDetail.struct_class = Types::SecurityPolicyDetail

    SecurityPolicyStats.add_member(:encryption_policy_count, Shapes::ShapeRef.new(shape: Long, location_name: "EncryptionPolicyCount"))
    SecurityPolicyStats.add_member(:network_policy_count, Shapes::ShapeRef.new(shape: Long, location_name: "NetworkPolicyCount"))
    SecurityPolicyStats.struct_class = Types::SecurityPolicyStats

    SecurityPolicySummaries.member = Shapes::ShapeRef.new(shape: SecurityPolicySummary)

    SecurityPolicySummary.add_member(:created_date, Shapes::ShapeRef.new(shape: Long, location_name: "createdDate"))
    SecurityPolicySummary.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "description"))
    SecurityPolicySummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedDate"))
    SecurityPolicySummary.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "name"))
    SecurityPolicySummary.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, location_name: "policyVersion"))
    SecurityPolicySummary.add_member(:type, Shapes::ShapeRef.new(shape: SecurityPolicyType, location_name: "type"))
    SecurityPolicySummary.struct_class = Types::SecurityPolicySummary

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAccessPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateAccessPolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "description"))
    UpdateAccessPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    UpdateAccessPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policy"))
    UpdateAccessPolicyRequest.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, required: true, location_name: "policyVersion"))
    UpdateAccessPolicyRequest.add_member(:type, Shapes::ShapeRef.new(shape: AccessPolicyType, required: true, location_name: "type"))
    UpdateAccessPolicyRequest.struct_class = Types::UpdateAccessPolicyRequest

    UpdateAccessPolicyResponse.add_member(:access_policy_detail, Shapes::ShapeRef.new(shape: AccessPolicyDetail, location_name: "accessPolicyDetail"))
    UpdateAccessPolicyResponse.struct_class = Types::UpdateAccessPolicyResponse

    UpdateAccountSettingsRequest.add_member(:capacity_limits, Shapes::ShapeRef.new(shape: CapacityLimits, location_name: "capacityLimits"))
    UpdateAccountSettingsRequest.struct_class = Types::UpdateAccountSettingsRequest

    UpdateAccountSettingsResponse.add_member(:account_settings_detail, Shapes::ShapeRef.new(shape: AccountSettingsDetail, location_name: "accountSettingsDetail"))
    UpdateAccountSettingsResponse.struct_class = Types::UpdateAccountSettingsResponse

    UpdateCollectionDetail.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    UpdateCollectionDetail.add_member(:created_date, Shapes::ShapeRef.new(shape: Long, location_name: "createdDate"))
    UpdateCollectionDetail.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateCollectionDetail.add_member(:id, Shapes::ShapeRef.new(shape: CollectionId, location_name: "id"))
    UpdateCollectionDetail.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedDate"))
    UpdateCollectionDetail.add_member(:name, Shapes::ShapeRef.new(shape: CollectionName, location_name: "name"))
    UpdateCollectionDetail.add_member(:status, Shapes::ShapeRef.new(shape: CollectionStatus, location_name: "status"))
    UpdateCollectionDetail.add_member(:type, Shapes::ShapeRef.new(shape: CollectionType, location_name: "type"))
    UpdateCollectionDetail.struct_class = Types::UpdateCollectionDetail

    UpdateCollectionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateCollectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateCollectionRequestDescriptionString, location_name: "description"))
    UpdateCollectionRequest.add_member(:id, Shapes::ShapeRef.new(shape: CollectionId, required: true, location_name: "id"))
    UpdateCollectionRequest.struct_class = Types::UpdateCollectionRequest

    UpdateCollectionResponse.add_member(:update_collection_detail, Shapes::ShapeRef.new(shape: UpdateCollectionDetail, location_name: "updateCollectionDetail"))
    UpdateCollectionResponse.struct_class = Types::UpdateCollectionResponse

    UpdateSecurityConfigRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateSecurityConfigRequest.add_member(:config_version, Shapes::ShapeRef.new(shape: PolicyVersion, required: true, location_name: "configVersion"))
    UpdateSecurityConfigRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConfigDescription, location_name: "description"))
    UpdateSecurityConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: SecurityConfigId, required: true, location_name: "id"))
    UpdateSecurityConfigRequest.add_member(:saml_options, Shapes::ShapeRef.new(shape: SamlConfigOptions, location_name: "samlOptions"))
    UpdateSecurityConfigRequest.struct_class = Types::UpdateSecurityConfigRequest

    UpdateSecurityConfigResponse.add_member(:security_config_detail, Shapes::ShapeRef.new(shape: SecurityConfigDetail, location_name: "securityConfigDetail"))
    UpdateSecurityConfigResponse.struct_class = Types::UpdateSecurityConfigResponse

    UpdateSecurityPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateSecurityPolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "description"))
    UpdateSecurityPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    UpdateSecurityPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policy"))
    UpdateSecurityPolicyRequest.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, required: true, location_name: "policyVersion"))
    UpdateSecurityPolicyRequest.add_member(:type, Shapes::ShapeRef.new(shape: SecurityPolicyType, required: true, location_name: "type"))
    UpdateSecurityPolicyRequest.struct_class = Types::UpdateSecurityPolicyRequest

    UpdateSecurityPolicyResponse.add_member(:security_policy_detail, Shapes::ShapeRef.new(shape: SecurityPolicyDetail, location_name: "securityPolicyDetail"))
    UpdateSecurityPolicyResponse.struct_class = Types::UpdateSecurityPolicyResponse

    UpdateVpcEndpointDetail.add_member(:id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "id"))
    UpdateVpcEndpointDetail.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedDate"))
    UpdateVpcEndpointDetail.add_member(:name, Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: "name"))
    UpdateVpcEndpointDetail.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    UpdateVpcEndpointDetail.add_member(:status, Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: "status"))
    UpdateVpcEndpointDetail.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "subnetIds"))
    UpdateVpcEndpointDetail.struct_class = Types::UpdateVpcEndpointDetail

    UpdateVpcEndpointRequest.add_member(:add_security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "addSecurityGroupIds"))
    UpdateVpcEndpointRequest.add_member(:add_subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "addSubnetIds"))
    UpdateVpcEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateVpcEndpointRequest.add_member(:id, Shapes::ShapeRef.new(shape: VpcEndpointId, required: true, location_name: "id"))
    UpdateVpcEndpointRequest.add_member(:remove_security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "removeSecurityGroupIds"))
    UpdateVpcEndpointRequest.add_member(:remove_subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "removeSubnetIds"))
    UpdateVpcEndpointRequest.struct_class = Types::UpdateVpcEndpointRequest

    UpdateVpcEndpointResponse.add_member(:update_vpc_endpoint_detail, Shapes::ShapeRef.new(shape: UpdateVpcEndpointDetail, location_name: "UpdateVpcEndpointDetail"))
    UpdateVpcEndpointResponse.struct_class = Types::UpdateVpcEndpointResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VpcEndpointDetail.add_member(:created_date, Shapes::ShapeRef.new(shape: Long, location_name: "createdDate"))
    VpcEndpointDetail.add_member(:id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "id"))
    VpcEndpointDetail.add_member(:name, Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: "name"))
    VpcEndpointDetail.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    VpcEndpointDetail.add_member(:status, Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: "status"))
    VpcEndpointDetail.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "subnetIds"))
    VpcEndpointDetail.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    VpcEndpointDetail.struct_class = Types::VpcEndpointDetail

    VpcEndpointDetails.member = Shapes::ShapeRef.new(shape: VpcEndpointDetail)

    VpcEndpointErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    VpcEndpointErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    VpcEndpointErrorDetail.add_member(:id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "id"))
    VpcEndpointErrorDetail.struct_class = Types::VpcEndpointErrorDetail

    VpcEndpointErrorDetails.member = Shapes::ShapeRef.new(shape: VpcEndpointErrorDetail)

    VpcEndpointFilters.add_member(:status, Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: "status"))
    VpcEndpointFilters.struct_class = Types::VpcEndpointFilters

    VpcEndpointIds.member = Shapes::ShapeRef.new(shape: VpcEndpointId)

    VpcEndpointSummaries.member = Shapes::ShapeRef.new(shape: VpcEndpointSummary)

    VpcEndpointSummary.add_member(:id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "id"))
    VpcEndpointSummary.add_member(:name, Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: "name"))
    VpcEndpointSummary.add_member(:status, Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: "status"))
    VpcEndpointSummary.struct_class = Types::VpcEndpointSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-11-01"

      api.metadata = {
        "apiVersion" => "2021-11-01",
        "endpointPrefix" => "aoss",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "OpenSearch Service Serverless",
        "serviceId" => "OpenSearchServerless",
        "signatureVersion" => "v4",
        "signingName" => "aoss",
        "targetPrefix" => "OpenSearchServerless",
        "uid" => "opensearchserverless-2021-11-01",
      }

      api.add_operation(:batch_get_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:batch_get_vpc_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetVpcEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetVpcEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetVpcEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: OcuLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_security_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSecurityConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSecurityConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSecurityConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_security_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSecurityPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSecurityPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSecurityPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_vpc_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVpcEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVpcEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVpcEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_security_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSecurityConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSecurityConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSecurityConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_security_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSecurityPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSecurityPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSecurityPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_vpc_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVpcEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVpcEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVpcEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_policies_stats, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPoliciesStats"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPoliciesStatsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPoliciesStatsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_security_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSecurityConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSecurityConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSecurityConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_security_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSecurityPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSecurityPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSecurityPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_access_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccessPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCollectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCollectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_vpc_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVpcEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVpcEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVpcEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccessPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCollectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCollectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_security_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSecurityConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSecurityConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSecurityConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_security_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSecurityPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSecurityPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSecurityPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_vpc_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVpcEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateVpcEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVpcEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
