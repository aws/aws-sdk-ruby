# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LambdaWeb
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountQuotas = Shapes::StructureShape.new(name: 'AccountQuotas')
    AccountQuotasMaxEndpointsPerFunctionInteger = Shapes::IntegerShape.new(name: 'AccountQuotasMaxEndpointsPerFunctionInteger')
    AccountQuotasMaxRevisionsPerFunctionInteger = Shapes::IntegerShape.new(name: 'AccountQuotasMaxRevisionsPerFunctionInteger')
    AccountQuotasMaxTotalArmVCpusInteger = Shapes::IntegerShape.new(name: 'AccountQuotasMaxTotalArmVCpusInteger')
    AccountQuotasMaxTotalRateLimitInteger = Shapes::IntegerShape.new(name: 'AccountQuotasMaxTotalRateLimitInteger')
    AccountUsage = Shapes::StructureShape.new(name: 'AccountUsage')
    AccountUsageFunctionCountInteger = Shapes::IntegerShape.new(name: 'AccountUsageFunctionCountInteger')
    ApplicationLogLevel = Shapes::StringShape.new(name: 'ApplicationLogLevel')
    AuthType = Shapes::StringShape.new(name: 'AuthType')
    AutoDeploymentMode = Shapes::StringShape.new(name: 'AutoDeploymentMode')
    BuildConfig = Shapes::StructureShape.new(name: 'BuildConfig')
    CodeConfig = Shapes::StructureShape.new(name: 'CodeConfig')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateWebFunctionEndpointRequest = Shapes::StructureShape.new(name: 'CreateWebFunctionEndpointRequest')
    CreateWebFunctionEndpointResponse = Shapes::StructureShape.new(name: 'CreateWebFunctionEndpointResponse')
    CreateWebFunctionRequest = Shapes::StructureShape.new(name: 'CreateWebFunctionRequest')
    CreateWebFunctionResponse = Shapes::StructureShape.new(name: 'CreateWebFunctionResponse')
    CreateWebFunctionRevisionRequest = Shapes::StructureShape.new(name: 'CreateWebFunctionRevisionRequest')
    CreateWebFunctionRevisionResponse = Shapes::StructureShape.new(name: 'CreateWebFunctionRevisionResponse')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteWebFunctionEndpointRequest = Shapes::StructureShape.new(name: 'DeleteWebFunctionEndpointRequest')
    DeleteWebFunctionRequest = Shapes::StructureShape.new(name: 'DeleteWebFunctionRequest')
    DeleteWebFunctionRevisionRequest = Shapes::StructureShape.new(name: 'DeleteWebFunctionRevisionRequest')
    Description = Shapes::StringShape.new(name: 'Description')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    EndpointArn = Shapes::StringShape.new(name: 'EndpointArn')
    EndpointConfig = Shapes::StructureShape.new(name: 'EndpointConfig')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    EndpointState = Shapes::StringShape.new(name: 'EndpointState')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    EndpointUpdateStatus = Shapes::StringShape.new(name: 'EndpointUpdateStatus')
    EnvironmentVariables = Shapes::MapShape.new(name: 'EnvironmentVariables')
    EnvironmentVariablesKeyString = Shapes::StringShape.new(name: 'EnvironmentVariablesKeyString')
    EnvironmentVariablesValueString = Shapes::StringShape.new(name: 'EnvironmentVariablesValueString')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterNameString = Shapes::StringShape.new(name: 'FilterNameString')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    FilterValueListMemberString = Shapes::StringShape.new(name: 'FilterValueListMemberString')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    FunctionEndpointSummary = Shapes::StructureShape.new(name: 'FunctionEndpointSummary')
    FunctionEndpointSummaryList = Shapes::ListShape.new(name: 'FunctionEndpointSummaryList')
    FunctionName = Shapes::StringShape.new(name: 'FunctionName')
    FunctionRevisionSummary = Shapes::StructureShape.new(name: 'FunctionRevisionSummary')
    FunctionRevisionSummaryList = Shapes::ListShape.new(name: 'FunctionRevisionSummaryList')
    FunctionState = Shapes::StringShape.new(name: 'FunctionState')
    FunctionSummary = Shapes::StructureShape.new(name: 'FunctionSummary')
    FunctionSummaryList = Shapes::ListShape.new(name: 'FunctionSummaryList')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetWebAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetWebAccountSettingsRequest')
    GetWebAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetWebAccountSettingsResponse')
    GetWebFunctionEndpointRequest = Shapes::StructureShape.new(name: 'GetWebFunctionEndpointRequest')
    GetWebFunctionEndpointResponse = Shapes::StructureShape.new(name: 'GetWebFunctionEndpointResponse')
    GetWebFunctionRequest = Shapes::StructureShape.new(name: 'GetWebFunctionRequest')
    GetWebFunctionResponse = Shapes::StructureShape.new(name: 'GetWebFunctionResponse')
    GetWebFunctionRevisionRequest = Shapes::StructureShape.new(name: 'GetWebFunctionRevisionRequest')
    GetWebFunctionRevisionResponse = Shapes::StructureShape.new(name: 'GetWebFunctionRevisionResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    ListWebFunctionEndpointsRequest = Shapes::StructureShape.new(name: 'ListWebFunctionEndpointsRequest')
    ListWebFunctionEndpointsResponse = Shapes::StructureShape.new(name: 'ListWebFunctionEndpointsResponse')
    ListWebFunctionRevisionsRequest = Shapes::StructureShape.new(name: 'ListWebFunctionRevisionsRequest')
    ListWebFunctionRevisionsResponse = Shapes::StructureShape.new(name: 'ListWebFunctionRevisionsResponse')
    ListWebFunctionsRequest = Shapes::StructureShape.new(name: 'ListWebFunctionsRequest')
    ListWebFunctionsResponse = Shapes::StructureShape.new(name: 'ListWebFunctionsResponse')
    LoggingConfig = Shapes::StructureShape.new(name: 'LoggingConfig')
    LoggingConfigLogGroupString = Shapes::StringShape.new(name: 'LoggingConfigLogGroupString')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PolicyRevisionId = Shapes::StringShape.new(name: 'PolicyRevisionId')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    RegionalEndpoint = Shapes::StructureShape.new(name: 'RegionalEndpoint')
    RegionalEndpoints = Shapes::MapShape.new(name: 'RegionalEndpoints')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicy = Shapes::StringShape.new(name: 'ResourcePolicy')
    RevisionArn = Shapes::StringShape.new(name: 'RevisionArn')
    RevisionConfig = Shapes::StructureShape.new(name: 'RevisionConfig')
    RevisionError = Shapes::StructureShape.new(name: 'RevisionError')
    RevisionErrorAttributeString = Shapes::StringShape.new(name: 'RevisionErrorAttributeString')
    RevisionErrorErrorCodeString = Shapes::StringShape.new(name: 'RevisionErrorErrorCodeString')
    RevisionErrorErrorMessageString = Shapes::StringShape.new(name: 'RevisionErrorErrorMessageString')
    RevisionErrors = Shapes::ListShape.new(name: 'RevisionErrors')
    RevisionId = Shapes::StringShape.new(name: 'RevisionId')
    RevisionState = Shapes::StringShape.new(name: 'RevisionState')
    RevisionWeight = Shapes::StructureShape.new(name: 'RevisionWeight')
    RevisionWeightList = Shapes::ListShape.new(name: 'RevisionWeightList')
    RevisionWeightWeightInteger = Shapes::IntegerShape.new(name: 'RevisionWeightWeightInteger')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RuntimeConfig = Shapes::StructureShape.new(name: 'RuntimeConfig')
    RuntimeConfigRuntimeString = Shapes::StringShape.new(name: 'RuntimeConfigRuntimeString')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    S3ObjectBucketString = Shapes::StringShape.new(name: 'S3ObjectBucketString')
    S3ObjectKeyString = Shapes::StringShape.new(name: 'S3ObjectKeyString')
    S3ObjectVersionIdString = Shapes::StringShape.new(name: 'S3ObjectVersionIdString')
    ScalingConfig = Shapes::StructureShape.new(name: 'ScalingConfig')
    ScalingConfigMaxEnvironmentsInteger = Shapes::IntegerShape.new(name: 'ScalingConfigMaxEnvironmentsInteger')
    ServiceConfig = Shapes::StructureShape.new(name: 'ServiceConfig')
    ServiceConfigMaxConcurrencyPerEnvironmentInteger = Shapes::IntegerShape.new(name: 'ServiceConfigMaxConcurrencyPerEnvironmentInteger')
    ServiceConfigTimeoutSecondsInteger = Shapes::IntegerShape.new(name: 'ServiceConfigTimeoutSecondsInteger')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    SystemLogLevel = Shapes::StringShape.new(name: 'SystemLogLevel')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TagsValueString = Shapes::StringShape.new(name: 'TagsValueString')
    TelemetryConfig = Shapes::StructureShape.new(name: 'TelemetryConfig')
    ThrottleConfig = Shapes::StructureShape.new(name: 'ThrottleConfig')
    ThrottleConfigRateLimitInteger = Shapes::IntegerShape.new(name: 'ThrottleConfigRateLimitInteger')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateWebFunctionEndpointRequest = Shapes::StructureShape.new(name: 'UpdateWebFunctionEndpointRequest')
    UpdateWebFunctionEndpointResponse = Shapes::StructureShape.new(name: 'UpdateWebFunctionEndpointResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountQuotas.add_member(:max_total_arm_v_cpus, Shapes::ShapeRef.new(shape: AccountQuotasMaxTotalArmVCpusInteger, required: true, location_name: "maxTotalArmVCpus"))
    AccountQuotas.add_member(:max_total_rate_limit, Shapes::ShapeRef.new(shape: AccountQuotasMaxTotalRateLimitInteger, required: true, location_name: "maxTotalRateLimit"))
    AccountQuotas.add_member(:max_revisions_per_function, Shapes::ShapeRef.new(shape: AccountQuotasMaxRevisionsPerFunctionInteger, required: true, location_name: "maxRevisionsPerFunction"))
    AccountQuotas.add_member(:max_endpoints_per_function, Shapes::ShapeRef.new(shape: AccountQuotasMaxEndpointsPerFunctionInteger, required: true, location_name: "maxEndpointsPerFunction"))
    AccountQuotas.struct_class = Types::AccountQuotas

    AccountUsage.add_member(:function_count, Shapes::ShapeRef.new(shape: AccountUsageFunctionCountInteger, required: true, location_name: "functionCount"))
    AccountUsage.struct_class = Types::AccountUsage

    BuildConfig.add_member(:code_config, Shapes::ShapeRef.new(shape: CodeConfig, required: true, location_name: "codeConfig"))
    BuildConfig.add_member(:runtime_config, Shapes::ShapeRef.new(shape: RuntimeConfig, required: true, location_name: "runtimeConfig"))
    BuildConfig.struct_class = Types::BuildConfig

    CodeConfig.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, required: true, location_name: "s3Object"))
    CodeConfig.struct_class = Types::CodeConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateWebFunctionEndpointRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    CreateWebFunctionEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "endpointName"))
    CreateWebFunctionEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateWebFunctionEndpointRequest.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, required: true, location_name: "endpointType"))
    CreateWebFunctionEndpointRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "authType"))
    CreateWebFunctionEndpointRequest.add_member(:auto_deployment_mode, Shapes::ShapeRef.new(shape: AutoDeploymentMode, location_name: "autoDeploymentMode"))
    CreateWebFunctionEndpointRequest.add_member(:revision_weights, Shapes::ShapeRef.new(shape: RevisionWeightList, location_name: "revisionWeights"))
    CreateWebFunctionEndpointRequest.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    CreateWebFunctionEndpointRequest.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "scalingConfig"))
    CreateWebFunctionEndpointRequest.add_member(:throttle_config, Shapes::ShapeRef.new(shape: ThrottleConfig, location_name: "throttleConfig"))
    CreateWebFunctionEndpointRequest.struct_class = Types::CreateWebFunctionEndpointRequest

    CreateWebFunctionEndpointResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    CreateWebFunctionEndpointResponse.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "endpointArn"))
    CreateWebFunctionEndpointResponse.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "endpointName"))
    CreateWebFunctionEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateWebFunctionEndpointResponse.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, required: true, location_name: "endpointType"))
    CreateWebFunctionEndpointResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CreateWebFunctionEndpointResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "authType"))
    CreateWebFunctionEndpointResponse.add_member(:auto_deployment_mode, Shapes::ShapeRef.new(shape: AutoDeploymentMode, required: true, location_name: "autoDeploymentMode"))
    CreateWebFunctionEndpointResponse.add_member(:revision_weights, Shapes::ShapeRef.new(shape: RevisionWeightList, required: true, location_name: "revisionWeights"))
    CreateWebFunctionEndpointResponse.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "regions"))
    CreateWebFunctionEndpointResponse.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "scalingConfig"))
    CreateWebFunctionEndpointResponse.add_member(:throttle_config, Shapes::ShapeRef.new(shape: ThrottleConfig, location_name: "throttleConfig"))
    CreateWebFunctionEndpointResponse.add_member(:state, Shapes::ShapeRef.new(shape: EndpointState, required: true, location_name: "state"))
    CreateWebFunctionEndpointResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    CreateWebFunctionEndpointResponse.add_member(:update_status, Shapes::ShapeRef.new(shape: EndpointUpdateStatus, location_name: "updateStatus"))
    CreateWebFunctionEndpointResponse.add_member(:update_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "updateStatusReason"))
    CreateWebFunctionEndpointResponse.add_member(:regional_endpoints, Shapes::ShapeRef.new(shape: RegionalEndpoints, required: true, location_name: "regionalEndpoints"))
    CreateWebFunctionEndpointResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    CreateWebFunctionEndpointResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    CreateWebFunctionEndpointResponse.struct_class = Types::CreateWebFunctionEndpointResponse

    CreateWebFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "functionName"))
    CreateWebFunctionRequest.add_member(:revision_config, Shapes::ShapeRef.new(shape: RevisionConfig, location_name: "revisionConfig"))
    CreateWebFunctionRequest.add_member(:endpoint_config, Shapes::ShapeRef.new(shape: EndpointConfig, location_name: "endpointConfig"))
    CreateWebFunctionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateWebFunctionRequest.struct_class = Types::CreateWebFunctionRequest

    CreateWebFunctionResponse.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "functionName"))
    CreateWebFunctionResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    CreateWebFunctionResponse.add_member(:state, Shapes::ShapeRef.new(shape: FunctionState, required: true, location_name: "state"))
    CreateWebFunctionResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    CreateWebFunctionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    CreateWebFunctionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    CreateWebFunctionResponse.add_member(:revision, Shapes::ShapeRef.new(shape: FunctionRevisionSummary, location_name: "revision"))
    CreateWebFunctionResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: FunctionEndpointSummary, location_name: "endpoint"))
    CreateWebFunctionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateWebFunctionResponse.struct_class = Types::CreateWebFunctionResponse

    CreateWebFunctionRevisionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    CreateWebFunctionRevisionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateWebFunctionRevisionRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateWebFunctionRevisionRequest.add_member(:build_config, Shapes::ShapeRef.new(shape: BuildConfig, required: true, location_name: "buildConfig"))
    CreateWebFunctionRevisionRequest.add_member(:service_config, Shapes::ShapeRef.new(shape: ServiceConfig, required: true, location_name: "serviceConfig"))
    CreateWebFunctionRevisionRequest.struct_class = Types::CreateWebFunctionRevisionRequest

    CreateWebFunctionRevisionResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    CreateWebFunctionRevisionResponse.add_member(:revision_arn, Shapes::ShapeRef.new(shape: RevisionArn, required: true, location_name: "revisionArn"))
    CreateWebFunctionRevisionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location_name: "revisionId"))
    CreateWebFunctionRevisionResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateWebFunctionRevisionResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateWebFunctionRevisionResponse.add_member(:build_config, Shapes::ShapeRef.new(shape: BuildConfig, required: true, location_name: "buildConfig"))
    CreateWebFunctionRevisionResponse.add_member(:service_config, Shapes::ShapeRef.new(shape: ServiceConfig, required: true, location_name: "serviceConfig"))
    CreateWebFunctionRevisionResponse.add_member(:state, Shapes::ShapeRef.new(shape: RevisionState, required: true, location_name: "state"))
    CreateWebFunctionRevisionResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    CreateWebFunctionRevisionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: RevisionErrors, location_name: "errors"))
    CreateWebFunctionRevisionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    CreateWebFunctionRevisionResponse.struct_class = Types::CreateWebFunctionRevisionResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    DeleteResourcePolicyRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: PolicyRevisionId, location: "querystring", location_name: "RevisionId"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteWebFunctionEndpointRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    DeleteWebFunctionEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "endpointName"))
    DeleteWebFunctionEndpointRequest.struct_class = Types::DeleteWebFunctionEndpointRequest

    DeleteWebFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    DeleteWebFunctionRequest.struct_class = Types::DeleteWebFunctionRequest

    DeleteWebFunctionRevisionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    DeleteWebFunctionRevisionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location: "uri", location_name: "revisionId"))
    DeleteWebFunctionRevisionRequest.struct_class = Types::DeleteWebFunctionRevisionRequest

    EndpointConfig.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "endpointName"))
    EndpointConfig.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EndpointConfig.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, required: true, location_name: "endpointType"))
    EndpointConfig.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "authType"))
    EndpointConfig.add_member(:auto_deployment_mode, Shapes::ShapeRef.new(shape: AutoDeploymentMode, location_name: "autoDeploymentMode"))
    EndpointConfig.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    EndpointConfig.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "scalingConfig"))
    EndpointConfig.add_member(:throttle_config, Shapes::ShapeRef.new(shape: ThrottleConfig, location_name: "throttleConfig"))
    EndpointConfig.struct_class = Types::EndpointConfig

    EnvironmentVariables.key = Shapes::ShapeRef.new(shape: EnvironmentVariablesKeyString)
    EnvironmentVariables.value = Shapes::ShapeRef.new(shape: EnvironmentVariablesValueString)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterNameString, required: true, location_name: "name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValueListMemberString)

    FunctionEndpointSummary.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "endpointArn"))
    FunctionEndpointSummary.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "endpointName"))
    FunctionEndpointSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    FunctionEndpointSummary.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, required: true, location_name: "endpointType"))
    FunctionEndpointSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    FunctionEndpointSummary.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "authType"))
    FunctionEndpointSummary.add_member(:auto_deployment_mode, Shapes::ShapeRef.new(shape: AutoDeploymentMode, required: true, location_name: "autoDeploymentMode"))
    FunctionEndpointSummary.add_member(:revision_weights, Shapes::ShapeRef.new(shape: RevisionWeightList, required: true, location_name: "revisionWeights"))
    FunctionEndpointSummary.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "regions"))
    FunctionEndpointSummary.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "scalingConfig"))
    FunctionEndpointSummary.add_member(:throttle_config, Shapes::ShapeRef.new(shape: ThrottleConfig, location_name: "throttleConfig"))
    FunctionEndpointSummary.add_member(:state, Shapes::ShapeRef.new(shape: EndpointState, required: true, location_name: "state"))
    FunctionEndpointSummary.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    FunctionEndpointSummary.add_member(:update_status, Shapes::ShapeRef.new(shape: EndpointUpdateStatus, location_name: "updateStatus"))
    FunctionEndpointSummary.add_member(:update_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "updateStatusReason"))
    FunctionEndpointSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    FunctionEndpointSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    FunctionEndpointSummary.struct_class = Types::FunctionEndpointSummary

    FunctionEndpointSummaryList.member = Shapes::ShapeRef.new(shape: FunctionEndpointSummary)

    FunctionRevisionSummary.add_member(:revision_arn, Shapes::ShapeRef.new(shape: RevisionArn, required: true, location_name: "revisionArn"))
    FunctionRevisionSummary.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location_name: "revisionId"))
    FunctionRevisionSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    FunctionRevisionSummary.add_member(:state, Shapes::ShapeRef.new(shape: RevisionState, required: true, location_name: "state"))
    FunctionRevisionSummary.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    FunctionRevisionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    FunctionRevisionSummary.struct_class = Types::FunctionRevisionSummary

    FunctionRevisionSummaryList.member = Shapes::ShapeRef.new(shape: FunctionRevisionSummary)

    FunctionSummary.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "functionName"))
    FunctionSummary.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    FunctionSummary.add_member(:state, Shapes::ShapeRef.new(shape: FunctionState, required: true, location_name: "state"))
    FunctionSummary.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    FunctionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    FunctionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    FunctionSummary.struct_class = Types::FunctionSummary

    FunctionSummaryList.member = Shapes::ShapeRef.new(shape: FunctionSummary)

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "Policy"))
    GetResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: PolicyRevisionId, required: true, location_name: "RevisionId"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    GetWebAccountSettingsRequest.struct_class = Types::GetWebAccountSettingsRequest

    GetWebAccountSettingsResponse.add_member(:account_quotas, Shapes::ShapeRef.new(shape: AccountQuotas, required: true, location_name: "accountQuotas"))
    GetWebAccountSettingsResponse.add_member(:account_usage, Shapes::ShapeRef.new(shape: AccountUsage, required: true, location_name: "accountUsage"))
    GetWebAccountSettingsResponse.struct_class = Types::GetWebAccountSettingsResponse

    GetWebFunctionEndpointRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    GetWebFunctionEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "endpointName"))
    GetWebFunctionEndpointRequest.struct_class = Types::GetWebFunctionEndpointRequest

    GetWebFunctionEndpointResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    GetWebFunctionEndpointResponse.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "endpointArn"))
    GetWebFunctionEndpointResponse.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "endpointName"))
    GetWebFunctionEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetWebFunctionEndpointResponse.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, required: true, location_name: "endpointType"))
    GetWebFunctionEndpointResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    GetWebFunctionEndpointResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "authType"))
    GetWebFunctionEndpointResponse.add_member(:auto_deployment_mode, Shapes::ShapeRef.new(shape: AutoDeploymentMode, required: true, location_name: "autoDeploymentMode"))
    GetWebFunctionEndpointResponse.add_member(:revision_weights, Shapes::ShapeRef.new(shape: RevisionWeightList, required: true, location_name: "revisionWeights"))
    GetWebFunctionEndpointResponse.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "regions"))
    GetWebFunctionEndpointResponse.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "scalingConfig"))
    GetWebFunctionEndpointResponse.add_member(:throttle_config, Shapes::ShapeRef.new(shape: ThrottleConfig, location_name: "throttleConfig"))
    GetWebFunctionEndpointResponse.add_member(:state, Shapes::ShapeRef.new(shape: EndpointState, required: true, location_name: "state"))
    GetWebFunctionEndpointResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    GetWebFunctionEndpointResponse.add_member(:update_status, Shapes::ShapeRef.new(shape: EndpointUpdateStatus, location_name: "updateStatus"))
    GetWebFunctionEndpointResponse.add_member(:update_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "updateStatusReason"))
    GetWebFunctionEndpointResponse.add_member(:regional_endpoints, Shapes::ShapeRef.new(shape: RegionalEndpoints, required: true, location_name: "regionalEndpoints"))
    GetWebFunctionEndpointResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    GetWebFunctionEndpointResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    GetWebFunctionEndpointResponse.struct_class = Types::GetWebFunctionEndpointResponse

    GetWebFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    GetWebFunctionRequest.struct_class = Types::GetWebFunctionRequest

    GetWebFunctionResponse.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "functionName"))
    GetWebFunctionResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    GetWebFunctionResponse.add_member(:state, Shapes::ShapeRef.new(shape: FunctionState, required: true, location_name: "state"))
    GetWebFunctionResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    GetWebFunctionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    GetWebFunctionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    GetWebFunctionResponse.struct_class = Types::GetWebFunctionResponse

    GetWebFunctionRevisionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    GetWebFunctionRevisionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location: "uri", location_name: "revisionId"))
    GetWebFunctionRevisionRequest.struct_class = Types::GetWebFunctionRevisionRequest

    GetWebFunctionRevisionResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    GetWebFunctionRevisionResponse.add_member(:revision_arn, Shapes::ShapeRef.new(shape: RevisionArn, required: true, location_name: "revisionArn"))
    GetWebFunctionRevisionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location_name: "revisionId"))
    GetWebFunctionRevisionResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetWebFunctionRevisionResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetWebFunctionRevisionResponse.add_member(:build_config, Shapes::ShapeRef.new(shape: BuildConfig, required: true, location_name: "buildConfig"))
    GetWebFunctionRevisionResponse.add_member(:service_config, Shapes::ShapeRef.new(shape: ServiceConfig, required: true, location_name: "serviceConfig"))
    GetWebFunctionRevisionResponse.add_member(:state, Shapes::ShapeRef.new(shape: RevisionState, required: true, location_name: "state"))
    GetWebFunctionRevisionResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    GetWebFunctionRevisionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: RevisionErrors, location_name: "errors"))
    GetWebFunctionRevisionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    GetWebFunctionRevisionResponse.struct_class = Types::GetWebFunctionRevisionResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListTagsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resource"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    ListWebFunctionEndpointsRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    ListWebFunctionEndpointsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListWebFunctionEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListWebFunctionEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWebFunctionEndpointsRequest.struct_class = Types::ListWebFunctionEndpointsRequest

    ListWebFunctionEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: FunctionEndpointSummaryList, required: true, location_name: "endpoints"))
    ListWebFunctionEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWebFunctionEndpointsResponse.struct_class = Types::ListWebFunctionEndpointsResponse

    ListWebFunctionRevisionsRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    ListWebFunctionRevisionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListWebFunctionRevisionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListWebFunctionRevisionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWebFunctionRevisionsRequest.struct_class = Types::ListWebFunctionRevisionsRequest

    ListWebFunctionRevisionsResponse.add_member(:revisions, Shapes::ShapeRef.new(shape: FunctionRevisionSummaryList, required: true, location_name: "revisions"))
    ListWebFunctionRevisionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWebFunctionRevisionsResponse.struct_class = Types::ListWebFunctionRevisionsResponse

    ListWebFunctionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListWebFunctionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListWebFunctionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWebFunctionsRequest.struct_class = Types::ListWebFunctionsRequest

    ListWebFunctionsResponse.add_member(:functions, Shapes::ShapeRef.new(shape: FunctionSummaryList, required: true, location_name: "functions"))
    ListWebFunctionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWebFunctionsResponse.struct_class = Types::ListWebFunctionsResponse

    LoggingConfig.add_member(:log_group, Shapes::ShapeRef.new(shape: LoggingConfigLogGroupString, location_name: "logGroup"))
    LoggingConfig.add_member(:application_log_level, Shapes::ShapeRef.new(shape: ApplicationLogLevel, location_name: "applicationLogLevel"))
    LoggingConfig.add_member(:system_log_level, Shapes::ShapeRef.new(shape: SystemLogLevel, location_name: "systemLogLevel"))
    LoggingConfig.struct_class = Types::LoggingConfig

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "Policy"))
    PutResourcePolicyRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: "RevisionId"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "Policy"))
    PutResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: PolicyRevisionId, required: true, location_name: "RevisionId"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    RegionalEndpoint.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    RegionalEndpoint.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "authType"))
    RegionalEndpoint.add_member(:revision_weights, Shapes::ShapeRef.new(shape: RevisionWeightList, required: true, location_name: "revisionWeights"))
    RegionalEndpoint.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "scalingConfig"))
    RegionalEndpoint.add_member(:throttle_config, Shapes::ShapeRef.new(shape: ThrottleConfig, location_name: "throttleConfig"))
    RegionalEndpoint.add_member(:state, Shapes::ShapeRef.new(shape: EndpointState, required: true, location_name: "state"))
    RegionalEndpoint.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    RegionalEndpoint.add_member(:update_status, Shapes::ShapeRef.new(shape: EndpointUpdateStatus, location_name: "updateStatus"))
    RegionalEndpoint.add_member(:update_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "updateStatusReason"))
    RegionalEndpoint.struct_class = Types::RegionalEndpoint

    RegionalEndpoints.key = Shapes::ShapeRef.new(shape: Region)
    RegionalEndpoints.value = Shapes::ShapeRef.new(shape: RegionalEndpoint)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RevisionConfig.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RevisionConfig.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    RevisionConfig.add_member(:build_config, Shapes::ShapeRef.new(shape: BuildConfig, required: true, location_name: "buildConfig"))
    RevisionConfig.add_member(:service_config, Shapes::ShapeRef.new(shape: ServiceConfig, required: true, location_name: "serviceConfig"))
    RevisionConfig.struct_class = Types::RevisionConfig

    RevisionError.add_member(:attribute, Shapes::ShapeRef.new(shape: RevisionErrorAttributeString, required: true, location_name: "attribute"))
    RevisionError.add_member(:error_code, Shapes::ShapeRef.new(shape: RevisionErrorErrorCodeString, required: true, location_name: "errorCode"))
    RevisionError.add_member(:error_message, Shapes::ShapeRef.new(shape: RevisionErrorErrorMessageString, required: true, location_name: "errorMessage"))
    RevisionError.struct_class = Types::RevisionError

    RevisionErrors.member = Shapes::ShapeRef.new(shape: RevisionError)

    RevisionWeight.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location_name: "revisionId"))
    RevisionWeight.add_member(:weight, Shapes::ShapeRef.new(shape: RevisionWeightWeightInteger, required: true, location_name: "weight"))
    RevisionWeight.struct_class = Types::RevisionWeight

    RevisionWeightList.member = Shapes::ShapeRef.new(shape: RevisionWeight)

    RuntimeConfig.add_member(:runtime, Shapes::ShapeRef.new(shape: RuntimeConfigRuntimeString, required: true, location_name: "runtime"))
    RuntimeConfig.struct_class = Types::RuntimeConfig

    S3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3ObjectBucketString, required: true, location_name: "bucket"))
    S3Object.add_member(:key, Shapes::ShapeRef.new(shape: S3ObjectKeyString, required: true, location_name: "key"))
    S3Object.add_member(:version_id, Shapes::ShapeRef.new(shape: S3ObjectVersionIdString, location_name: "versionId"))
    S3Object.struct_class = Types::S3Object

    ScalingConfig.add_member(:max_environments, Shapes::ShapeRef.new(shape: ScalingConfigMaxEnvironmentsInteger, location_name: "maxEnvironments"))
    ScalingConfig.struct_class = Types::ScalingConfig

    ServiceConfig.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "executionRoleArn"))
    ServiceConfig.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: ServiceConfigTimeoutSecondsInteger, location_name: "timeoutSeconds"))
    ServiceConfig.add_member(:max_concurrency_per_environment, Shapes::ShapeRef.new(shape: ServiceConfigMaxConcurrencyPerEnvironmentInteger, location_name: "maxConcurrencyPerEnvironment"))
    ServiceConfig.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariables"))
    ServiceConfig.add_member(:telemetry_config, Shapes::ShapeRef.new(shape: TelemetryConfig, location_name: "telemetryConfig"))
    ServiceConfig.struct_class = Types::ServiceConfig

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resource"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagsValueString)

    TelemetryConfig.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig"))
    TelemetryConfig.struct_class = Types::TelemetryConfig

    ThrottleConfig.add_member(:rate_limit, Shapes::ShapeRef.new(shape: ThrottleConfigRateLimitInteger, location_name: "rateLimit"))
    ThrottleConfig.struct_class = Types::ThrottleConfig

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resource"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateWebFunctionEndpointRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "functionName"))
    UpdateWebFunctionEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "endpointName"))
    UpdateWebFunctionEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateWebFunctionEndpointRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    UpdateWebFunctionEndpointRequest.add_member(:auto_deployment_mode, Shapes::ShapeRef.new(shape: AutoDeploymentMode, location_name: "autoDeploymentMode"))
    UpdateWebFunctionEndpointRequest.add_member(:revision_weights, Shapes::ShapeRef.new(shape: RevisionWeightList, location_name: "revisionWeights"))
    UpdateWebFunctionEndpointRequest.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "scalingConfig"))
    UpdateWebFunctionEndpointRequest.add_member(:throttle_config, Shapes::ShapeRef.new(shape: ThrottleConfig, location_name: "throttleConfig"))
    UpdateWebFunctionEndpointRequest.struct_class = Types::UpdateWebFunctionEndpointRequest

    UpdateWebFunctionEndpointResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    UpdateWebFunctionEndpointResponse.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: EndpointArn, required: true, location_name: "endpointArn"))
    UpdateWebFunctionEndpointResponse.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "endpointName"))
    UpdateWebFunctionEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateWebFunctionEndpointResponse.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, required: true, location_name: "endpointType"))
    UpdateWebFunctionEndpointResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    UpdateWebFunctionEndpointResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "authType"))
    UpdateWebFunctionEndpointResponse.add_member(:auto_deployment_mode, Shapes::ShapeRef.new(shape: AutoDeploymentMode, required: true, location_name: "autoDeploymentMode"))
    UpdateWebFunctionEndpointResponse.add_member(:revision_weights, Shapes::ShapeRef.new(shape: RevisionWeightList, required: true, location_name: "revisionWeights"))
    UpdateWebFunctionEndpointResponse.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "regions"))
    UpdateWebFunctionEndpointResponse.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "scalingConfig"))
    UpdateWebFunctionEndpointResponse.add_member(:throttle_config, Shapes::ShapeRef.new(shape: ThrottleConfig, location_name: "throttleConfig"))
    UpdateWebFunctionEndpointResponse.add_member(:state, Shapes::ShapeRef.new(shape: EndpointState, required: true, location_name: "state"))
    UpdateWebFunctionEndpointResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stateReason"))
    UpdateWebFunctionEndpointResponse.add_member(:update_status, Shapes::ShapeRef.new(shape: EndpointUpdateStatus, location_name: "updateStatus"))
    UpdateWebFunctionEndpointResponse.add_member(:update_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "updateStatusReason"))
    UpdateWebFunctionEndpointResponse.add_member(:regional_endpoints, Shapes::ShapeRef.new(shape: RegionalEndpoints, required: true, location_name: "regionalEndpoints"))
    UpdateWebFunctionEndpointResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    UpdateWebFunctionEndpointResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    UpdateWebFunctionEndpointResponse.struct_class = Types::UpdateWebFunctionEndpointResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-03-07"

      api.metadata = {
        "apiVersion" => "2025-03-07",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "lambda",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Lambda Web",
        "serviceId" => "Lambda Web",
        "signatureVersion" => "v4",
        "signingName" => "lambda",
        "uid" => "lambda-web-2025-03-07",
      }

      api.add_operation(:create_web_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWebFunction"
        o.http_method = "PUT"
        o.http_request_uri = "/2025-03-07/web-functions"
        o.input = Shapes::ShapeRef.new(shape: CreateWebFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWebFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_web_function_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWebFunctionEndpoint"
        o.http_method = "PUT"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}/endpoints"
        o.input = Shapes::ShapeRef.new(shape: CreateWebFunctionEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWebFunctionEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_web_function_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWebFunctionRevision"
        o.http_method = "POST"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}/revisions"
        o.input = Shapes::ShapeRef.new(shape: CreateWebFunctionRevisionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWebFunctionRevisionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/2025-03-07/resource-policy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_web_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWebFunction"
        o.http_method = "DELETE"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWebFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_web_function_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWebFunctionEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}/endpoints/{endpointName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWebFunctionEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_web_function_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWebFunctionRevision"
        o.http_method = "DELETE"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}/revisions/{revisionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWebFunctionRevisionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/2025-03-07/resource-policy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_web_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWebAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/2025-03-07/web-account-settings"
        o.input = Shapes::ShapeRef.new(shape: GetWebAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWebAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_web_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWebFunction"
        o.http_method = "GET"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}"
        o.input = Shapes::ShapeRef.new(shape: GetWebFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWebFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_web_function_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWebFunctionEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}/endpoints/{endpointName}"
        o.input = Shapes::ShapeRef.new(shape: GetWebFunctionEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWebFunctionEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_web_function_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWebFunctionRevision"
        o.http_method = "GET"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}/revisions/{revisionId}"
        o.input = Shapes::ShapeRef.new(shape: GetWebFunctionRevisionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWebFunctionRevisionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "GET"
        o.http_request_uri = "/2025-03-07/tags/{resource}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_web_function_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebFunctionEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}/list-endpoints"
        o.input = Shapes::ShapeRef.new(shape: ListWebFunctionEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWebFunctionEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_web_function_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebFunctionRevisions"
        o.http_method = "POST"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}/list-revisions"
        o.input = Shapes::ShapeRef.new(shape: ListWebFunctionRevisionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWebFunctionRevisionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_web_functions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebFunctions"
        o.http_method = "POST"
        o.http_request_uri = "/2025-03-07/web-functions"
        o.input = Shapes::ShapeRef.new(shape: ListWebFunctionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWebFunctionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/2025-03-07/resource-policy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2025-03-07/tags/{resource}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2025-03-07/tags/{resource}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_web_function_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWebFunctionEndpoint"
        o.http_method = "PATCH"
        o.http_request_uri = "/2025-03-07/web-functions/{functionName}/endpoints/{endpointName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWebFunctionEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWebFunctionEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
