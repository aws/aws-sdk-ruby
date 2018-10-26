# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lambda
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountLimit = Shapes::StructureShape.new(name: 'AccountLimit')
    AccountUsage = Shapes::StructureShape.new(name: 'AccountUsage')
    Action = Shapes::StringShape.new(name: 'Action')
    AddPermissionRequest = Shapes::StructureShape.new(name: 'AddPermissionRequest')
    AddPermissionResponse = Shapes::StructureShape.new(name: 'AddPermissionResponse')
    AdditionalVersion = Shapes::StringShape.new(name: 'AdditionalVersion')
    AdditionalVersionWeights = Shapes::MapShape.new(name: 'AdditionalVersionWeights')
    Alias = Shapes::StringShape.new(name: 'Alias')
    AliasConfiguration = Shapes::StructureShape.new(name: 'AliasConfiguration')
    AliasList = Shapes::ListShape.new(name: 'AliasList')
    AliasRoutingConfiguration = Shapes::StructureShape.new(name: 'AliasRoutingConfiguration')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BatchSize = Shapes::IntegerShape.new(name: 'BatchSize')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    BlobStream = Shapes::BlobShape.new(name: 'BlobStream')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CodeStorageExceededException = Shapes::StructureShape.new(name: 'CodeStorageExceededException')
    Concurrency = Shapes::StructureShape.new(name: 'Concurrency')
    CreateAliasRequest = Shapes::StructureShape.new(name: 'CreateAliasRequest')
    CreateEventSourceMappingRequest = Shapes::StructureShape.new(name: 'CreateEventSourceMappingRequest')
    CreateFunctionRequest = Shapes::StructureShape.new(name: 'CreateFunctionRequest')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeadLetterConfig = Shapes::StructureShape.new(name: 'DeadLetterConfig')
    DeleteAliasRequest = Shapes::StructureShape.new(name: 'DeleteAliasRequest')
    DeleteEventSourceMappingRequest = Shapes::StructureShape.new(name: 'DeleteEventSourceMappingRequest')
    DeleteFunctionConcurrencyRequest = Shapes::StructureShape.new(name: 'DeleteFunctionConcurrencyRequest')
    DeleteFunctionRequest = Shapes::StructureShape.new(name: 'DeleteFunctionRequest')
    Description = Shapes::StringShape.new(name: 'Description')
    EC2AccessDeniedException = Shapes::StructureShape.new(name: 'EC2AccessDeniedException')
    EC2ThrottledException = Shapes::StructureShape.new(name: 'EC2ThrottledException')
    EC2UnexpectedException = Shapes::StructureShape.new(name: 'EC2UnexpectedException')
    ENILimitReachedException = Shapes::StructureShape.new(name: 'ENILimitReachedException')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentError = Shapes::StructureShape.new(name: 'EnvironmentError')
    EnvironmentResponse = Shapes::StructureShape.new(name: 'EnvironmentResponse')
    EnvironmentVariableName = Shapes::StringShape.new(name: 'EnvironmentVariableName')
    EnvironmentVariableValue = Shapes::StringShape.new(name: 'EnvironmentVariableValue')
    EnvironmentVariables = Shapes::MapShape.new(name: 'EnvironmentVariables')
    EventSourceMappingConfiguration = Shapes::StructureShape.new(name: 'EventSourceMappingConfiguration')
    EventSourceMappingsList = Shapes::ListShape.new(name: 'EventSourceMappingsList')
    EventSourcePosition = Shapes::StringShape.new(name: 'EventSourcePosition')
    EventSourceToken = Shapes::StringShape.new(name: 'EventSourceToken')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    FunctionCode = Shapes::StructureShape.new(name: 'FunctionCode')
    FunctionCodeLocation = Shapes::StructureShape.new(name: 'FunctionCodeLocation')
    FunctionConfiguration = Shapes::StructureShape.new(name: 'FunctionConfiguration')
    FunctionList = Shapes::ListShape.new(name: 'FunctionList')
    FunctionName = Shapes::StringShape.new(name: 'FunctionName')
    FunctionVersion = Shapes::StringShape.new(name: 'FunctionVersion')
    GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetAccountSettingsResponse')
    GetAliasRequest = Shapes::StructureShape.new(name: 'GetAliasRequest')
    GetEventSourceMappingRequest = Shapes::StructureShape.new(name: 'GetEventSourceMappingRequest')
    GetFunctionConfigurationRequest = Shapes::StructureShape.new(name: 'GetFunctionConfigurationRequest')
    GetFunctionRequest = Shapes::StructureShape.new(name: 'GetFunctionRequest')
    GetFunctionResponse = Shapes::StructureShape.new(name: 'GetFunctionResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    Handler = Shapes::StringShape.new(name: 'Handler')
    HttpStatus = Shapes::IntegerShape.new(name: 'HttpStatus')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRequestContentException = Shapes::StructureShape.new(name: 'InvalidRequestContentException')
    InvalidRuntimeException = Shapes::StructureShape.new(name: 'InvalidRuntimeException')
    InvalidSecurityGroupIDException = Shapes::StructureShape.new(name: 'InvalidSecurityGroupIDException')
    InvalidSubnetIDException = Shapes::StructureShape.new(name: 'InvalidSubnetIDException')
    InvalidZipFileException = Shapes::StructureShape.new(name: 'InvalidZipFileException')
    InvocationRequest = Shapes::StructureShape.new(name: 'InvocationRequest')
    InvocationResponse = Shapes::StructureShape.new(name: 'InvocationResponse')
    InvocationType = Shapes::StringShape.new(name: 'InvocationType')
    InvokeAsyncRequest = Shapes::StructureShape.new(name: 'InvokeAsyncRequest')
    InvokeAsyncResponse = Shapes::StructureShape.new(name: 'InvokeAsyncResponse')
    KMSAccessDeniedException = Shapes::StructureShape.new(name: 'KMSAccessDeniedException')
    KMSDisabledException = Shapes::StructureShape.new(name: 'KMSDisabledException')
    KMSInvalidStateException = Shapes::StructureShape.new(name: 'KMSInvalidStateException')
    KMSKeyArn = Shapes::StringShape.new(name: 'KMSKeyArn')
    KMSNotFoundException = Shapes::StructureShape.new(name: 'KMSNotFoundException')
    ListAliasesRequest = Shapes::StructureShape.new(name: 'ListAliasesRequest')
    ListAliasesResponse = Shapes::StructureShape.new(name: 'ListAliasesResponse')
    ListEventSourceMappingsRequest = Shapes::StructureShape.new(name: 'ListEventSourceMappingsRequest')
    ListEventSourceMappingsResponse = Shapes::StructureShape.new(name: 'ListEventSourceMappingsResponse')
    ListFunctionsRequest = Shapes::StructureShape.new(name: 'ListFunctionsRequest')
    ListFunctionsResponse = Shapes::StructureShape.new(name: 'ListFunctionsResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    ListVersionsByFunctionRequest = Shapes::StructureShape.new(name: 'ListVersionsByFunctionRequest')
    ListVersionsByFunctionResponse = Shapes::StructureShape.new(name: 'ListVersionsByFunctionResponse')
    LogType = Shapes::StringShape.new(name: 'LogType')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MasterRegion = Shapes::StringShape.new(name: 'MasterRegion')
    MaxListItems = Shapes::IntegerShape.new(name: 'MaxListItems')
    MemorySize = Shapes::IntegerShape.new(name: 'MemorySize')
    NameSpacedFunctionArn = Shapes::StringShape.new(name: 'NameSpacedFunctionArn')
    NamespacedFunctionName = Shapes::StringShape.new(name: 'NamespacedFunctionName')
    NamespacedStatementId = Shapes::StringShape.new(name: 'NamespacedStatementId')
    PolicyLengthExceededException = Shapes::StructureShape.new(name: 'PolicyLengthExceededException')
    PreconditionFailedException = Shapes::StructureShape.new(name: 'PreconditionFailedException')
    Principal = Shapes::StringShape.new(name: 'Principal')
    PublishVersionRequest = Shapes::StructureShape.new(name: 'PublishVersionRequest')
    PutFunctionConcurrencyRequest = Shapes::StructureShape.new(name: 'PutFunctionConcurrencyRequest')
    Qualifier = Shapes::StringShape.new(name: 'Qualifier')
    RemovePermissionRequest = Shapes::StructureShape.new(name: 'RemovePermissionRequest')
    RequestTooLargeException = Shapes::StructureShape.new(name: 'RequestTooLargeException')
    ReservedConcurrentExecutions = Shapes::IntegerShape.new(name: 'ReservedConcurrentExecutions')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Runtime = Shapes::StringShape.new(name: 'Runtime')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    SourceOwner = Shapes::StringShape.new(name: 'SourceOwner')
    StatementId = Shapes::StringShape.new(name: 'StatementId')
    String = Shapes::StringShape.new(name: 'String')
    SubnetIPAddressLimitReachedException = Shapes::StructureShape.new(name: 'SubnetIPAddressLimitReachedException')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottleReason = Shapes::StringShape.new(name: 'ThrottleReason')
    Timeout = Shapes::IntegerShape.new(name: 'Timeout')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TracingConfig = Shapes::StructureShape.new(name: 'TracingConfig')
    TracingConfigResponse = Shapes::StructureShape.new(name: 'TracingConfigResponse')
    TracingMode = Shapes::StringShape.new(name: 'TracingMode')
    UnreservedConcurrentExecutions = Shapes::IntegerShape.new(name: 'UnreservedConcurrentExecutions')
    UnsupportedMediaTypeException = Shapes::StructureShape.new(name: 'UnsupportedMediaTypeException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAliasRequest = Shapes::StructureShape.new(name: 'UpdateAliasRequest')
    UpdateEventSourceMappingRequest = Shapes::StructureShape.new(name: 'UpdateEventSourceMappingRequest')
    UpdateFunctionCodeRequest = Shapes::StructureShape.new(name: 'UpdateFunctionCodeRequest')
    UpdateFunctionConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateFunctionConfigurationRequest')
    Version = Shapes::StringShape.new(name: 'Version')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    VpcConfigResponse = Shapes::StructureShape.new(name: 'VpcConfigResponse')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    Weight = Shapes::FloatShape.new(name: 'Weight')

    AccountLimit.add_member(:total_code_size, Shapes::ShapeRef.new(shape: Long, location_name: "TotalCodeSize"))
    AccountLimit.add_member(:code_size_unzipped, Shapes::ShapeRef.new(shape: Long, location_name: "CodeSizeUnzipped"))
    AccountLimit.add_member(:code_size_zipped, Shapes::ShapeRef.new(shape: Long, location_name: "CodeSizeZipped"))
    AccountLimit.add_member(:concurrent_executions, Shapes::ShapeRef.new(shape: Integer, location_name: "ConcurrentExecutions"))
    AccountLimit.add_member(:unreserved_concurrent_executions, Shapes::ShapeRef.new(shape: UnreservedConcurrentExecutions, location_name: "UnreservedConcurrentExecutions"))
    AccountLimit.struct_class = Types::AccountLimit

    AccountUsage.add_member(:total_code_size, Shapes::ShapeRef.new(shape: Long, location_name: "TotalCodeSize"))
    AccountUsage.add_member(:function_count, Shapes::ShapeRef.new(shape: Long, location_name: "FunctionCount"))
    AccountUsage.struct_class = Types::AccountUsage

    AddPermissionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    AddPermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "StatementId"))
    AddPermissionRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    AddPermissionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location_name: "Principal"))
    AddPermissionRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceArn"))
    AddPermissionRequest.add_member(:source_account, Shapes::ShapeRef.new(shape: SourceOwner, location_name: "SourceAccount"))
    AddPermissionRequest.add_member(:event_source_token, Shapes::ShapeRef.new(shape: EventSourceToken, location_name: "EventSourceToken"))
    AddPermissionRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: Qualifier, location: "querystring", location_name: "Qualifier"))
    AddPermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    AddPermissionRequest.struct_class = Types::AddPermissionRequest

    AddPermissionResponse.add_member(:statement, Shapes::ShapeRef.new(shape: String, location_name: "Statement"))
    AddPermissionResponse.struct_class = Types::AddPermissionResponse

    AdditionalVersionWeights.key = Shapes::ShapeRef.new(shape: AdditionalVersion)
    AdditionalVersionWeights.value = Shapes::ShapeRef.new(shape: Weight)

    AliasConfiguration.add_member(:alias_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "AliasArn"))
    AliasConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: Alias, location_name: "Name"))
    AliasConfiguration.add_member(:function_version, Shapes::ShapeRef.new(shape: Version, location_name: "FunctionVersion"))
    AliasConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    AliasConfiguration.add_member(:routing_config, Shapes::ShapeRef.new(shape: AliasRoutingConfiguration, location_name: "RoutingConfig"))
    AliasConfiguration.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    AliasConfiguration.struct_class = Types::AliasConfiguration

    AliasList.member = Shapes::ShapeRef.new(shape: AliasConfiguration)

    AliasRoutingConfiguration.add_member(:additional_version_weights, Shapes::ShapeRef.new(shape: AdditionalVersionWeights, location_name: "AdditionalVersionWeights"))
    AliasRoutingConfiguration.struct_class = Types::AliasRoutingConfiguration

    Concurrency.add_member(:reserved_concurrent_executions, Shapes::ShapeRef.new(shape: ReservedConcurrentExecutions, location_name: "ReservedConcurrentExecutions"))
    Concurrency.struct_class = Types::Concurrency

    CreateAliasRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    CreateAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: Alias, required: true, location_name: "Name"))
    CreateAliasRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "FunctionVersion"))
    CreateAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateAliasRequest.add_member(:routing_config, Shapes::ShapeRef.new(shape: AliasRoutingConfiguration, location_name: "RoutingConfig"))
    CreateAliasRequest.struct_class = Types::CreateAliasRequest

    CreateEventSourceMappingRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "EventSourceArn"))
    CreateEventSourceMappingRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "FunctionName"))
    CreateEventSourceMappingRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "Enabled"))
    CreateEventSourceMappingRequest.add_member(:batch_size, Shapes::ShapeRef.new(shape: BatchSize, location_name: "BatchSize"))
    CreateEventSourceMappingRequest.add_member(:starting_position, Shapes::ShapeRef.new(shape: EventSourcePosition, location_name: "StartingPosition"))
    CreateEventSourceMappingRequest.add_member(:starting_position_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "StartingPositionTimestamp"))
    CreateEventSourceMappingRequest.struct_class = Types::CreateEventSourceMappingRequest

    CreateFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "FunctionName"))
    CreateFunctionRequest.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, required: true, location_name: "Runtime"))
    CreateFunctionRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "Role"))
    CreateFunctionRequest.add_member(:handler, Shapes::ShapeRef.new(shape: Handler, required: true, location_name: "Handler"))
    CreateFunctionRequest.add_member(:code, Shapes::ShapeRef.new(shape: FunctionCode, required: true, location_name: "Code"))
    CreateFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFunctionRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    CreateFunctionRequest.add_member(:memory_size, Shapes::ShapeRef.new(shape: MemorySize, location_name: "MemorySize"))
    CreateFunctionRequest.add_member(:publish, Shapes::ShapeRef.new(shape: Boolean, location_name: "Publish"))
    CreateFunctionRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateFunctionRequest.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    CreateFunctionRequest.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "Environment"))
    CreateFunctionRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KMSKeyArn"))
    CreateFunctionRequest.add_member(:tracing_config, Shapes::ShapeRef.new(shape: TracingConfig, location_name: "TracingConfig"))
    CreateFunctionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateFunctionRequest.struct_class = Types::CreateFunctionRequest

    DeadLetterConfig.add_member(:target_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TargetArn"))
    DeadLetterConfig.struct_class = Types::DeadLetterConfig

    DeleteAliasRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: Alias, required: true, location: "uri", location_name: "Name"))
    DeleteAliasRequest.struct_class = Types::DeleteAliasRequest

    DeleteEventSourceMappingRequest.add_member(:uuid, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "UUID"))
    DeleteEventSourceMappingRequest.struct_class = Types::DeleteEventSourceMappingRequest

    DeleteFunctionConcurrencyRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteFunctionConcurrencyRequest.struct_class = Types::DeleteFunctionConcurrencyRequest

    DeleteFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteFunctionRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: Qualifier, location: "querystring", location_name: "Qualifier"))
    DeleteFunctionRequest.struct_class = Types::DeleteFunctionRequest

    Environment.add_member(:variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "Variables"))
    Environment.struct_class = Types::Environment

    EnvironmentError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    EnvironmentError.add_member(:message, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Message"))
    EnvironmentError.struct_class = Types::EnvironmentError

    EnvironmentResponse.add_member(:variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "Variables"))
    EnvironmentResponse.add_member(:error, Shapes::ShapeRef.new(shape: EnvironmentError, location_name: "Error"))
    EnvironmentResponse.struct_class = Types::EnvironmentResponse

    EnvironmentVariables.key = Shapes::ShapeRef.new(shape: EnvironmentVariableName)
    EnvironmentVariables.value = Shapes::ShapeRef.new(shape: EnvironmentVariableValue)

    EventSourceMappingConfiguration.add_member(:uuid, Shapes::ShapeRef.new(shape: String, location_name: "UUID"))
    EventSourceMappingConfiguration.add_member(:batch_size, Shapes::ShapeRef.new(shape: BatchSize, location_name: "BatchSize"))
    EventSourceMappingConfiguration.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventSourceArn"))
    EventSourceMappingConfiguration.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "FunctionArn"))
    EventSourceMappingConfiguration.add_member(:last_modified, Shapes::ShapeRef.new(shape: Date, location_name: "LastModified"))
    EventSourceMappingConfiguration.add_member(:last_processing_result, Shapes::ShapeRef.new(shape: String, location_name: "LastProcessingResult"))
    EventSourceMappingConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    EventSourceMappingConfiguration.add_member(:state_transition_reason, Shapes::ShapeRef.new(shape: String, location_name: "StateTransitionReason"))
    EventSourceMappingConfiguration.struct_class = Types::EventSourceMappingConfiguration

    EventSourceMappingsList.member = Shapes::ShapeRef.new(shape: EventSourceMappingConfiguration)

    FunctionCode.add_member(:zip_file, Shapes::ShapeRef.new(shape: Blob, location_name: "ZipFile"))
    FunctionCode.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    FunctionCode.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    FunctionCode.add_member(:s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "S3ObjectVersion"))
    FunctionCode.struct_class = Types::FunctionCode

    FunctionCodeLocation.add_member(:repository_type, Shapes::ShapeRef.new(shape: String, location_name: "RepositoryType"))
    FunctionCodeLocation.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "Location"))
    FunctionCodeLocation.struct_class = Types::FunctionCodeLocation

    FunctionConfiguration.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, location_name: "FunctionName"))
    FunctionConfiguration.add_member(:function_arn, Shapes::ShapeRef.new(shape: NameSpacedFunctionArn, location_name: "FunctionArn"))
    FunctionConfiguration.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, location_name: "Runtime"))
    FunctionConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "Role"))
    FunctionConfiguration.add_member(:handler, Shapes::ShapeRef.new(shape: Handler, location_name: "Handler"))
    FunctionConfiguration.add_member(:code_size, Shapes::ShapeRef.new(shape: Long, location_name: "CodeSize"))
    FunctionConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    FunctionConfiguration.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    FunctionConfiguration.add_member(:memory_size, Shapes::ShapeRef.new(shape: MemorySize, location_name: "MemorySize"))
    FunctionConfiguration.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModified"))
    FunctionConfiguration.add_member(:code_sha_256, Shapes::ShapeRef.new(shape: String, location_name: "CodeSha256"))
    FunctionConfiguration.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "Version"))
    FunctionConfiguration.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfigResponse, location_name: "VpcConfig"))
    FunctionConfiguration.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    FunctionConfiguration.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentResponse, location_name: "Environment"))
    FunctionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KMSKeyArn"))
    FunctionConfiguration.add_member(:tracing_config, Shapes::ShapeRef.new(shape: TracingConfigResponse, location_name: "TracingConfig"))
    FunctionConfiguration.add_member(:master_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "MasterArn"))
    FunctionConfiguration.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    FunctionConfiguration.struct_class = Types::FunctionConfiguration

    FunctionList.member = Shapes::ShapeRef.new(shape: FunctionConfiguration)

    GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_limit, Shapes::ShapeRef.new(shape: AccountLimit, location_name: "AccountLimit"))
    GetAccountSettingsResponse.add_member(:account_usage, Shapes::ShapeRef.new(shape: AccountUsage, location_name: "AccountUsage"))
    GetAccountSettingsResponse.struct_class = Types::GetAccountSettingsResponse

    GetAliasRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: Alias, required: true, location: "uri", location_name: "Name"))
    GetAliasRequest.struct_class = Types::GetAliasRequest

    GetEventSourceMappingRequest.add_member(:uuid, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "UUID"))
    GetEventSourceMappingRequest.struct_class = Types::GetEventSourceMappingRequest

    GetFunctionConfigurationRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionConfigurationRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: Qualifier, location: "querystring", location_name: "Qualifier"))
    GetFunctionConfigurationRequest.struct_class = Types::GetFunctionConfigurationRequest

    GetFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: Qualifier, location: "querystring", location_name: "Qualifier"))
    GetFunctionRequest.struct_class = Types::GetFunctionRequest

    GetFunctionResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: "Configuration"))
    GetFunctionResponse.add_member(:code, Shapes::ShapeRef.new(shape: FunctionCodeLocation, location_name: "Code"))
    GetFunctionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    GetFunctionResponse.add_member(:concurrency, Shapes::ShapeRef.new(shape: Concurrency, location_name: "Concurrency"))
    GetFunctionResponse.struct_class = Types::GetFunctionResponse

    GetPolicyRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetPolicyRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: Qualifier, location: "querystring", location_name: "Qualifier"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    GetPolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    InvocationRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    InvocationRequest.add_member(:invocation_type, Shapes::ShapeRef.new(shape: InvocationType, location: "header", location_name: "X-Amz-Invocation-Type"))
    InvocationRequest.add_member(:log_type, Shapes::ShapeRef.new(shape: LogType, location: "header", location_name: "X-Amz-Log-Type"))
    InvocationRequest.add_member(:client_context, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amz-Client-Context"))
    InvocationRequest.add_member(:payload, Shapes::ShapeRef.new(shape: Blob, location_name: "Payload"))
    InvocationRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: Qualifier, location: "querystring", location_name: "Qualifier"))
    InvocationRequest.struct_class = Types::InvocationRequest
    InvocationRequest[:payload] = :payload
    InvocationRequest[:payload_member] = InvocationRequest.member(:payload)

    InvocationResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location: "statusCode", location_name: "StatusCode"))
    InvocationResponse.add_member(:function_error, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amz-Function-Error"))
    InvocationResponse.add_member(:log_result, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amz-Log-Result"))
    InvocationResponse.add_member(:payload, Shapes::ShapeRef.new(shape: Blob, location_name: "Payload"))
    InvocationResponse.add_member(:executed_version, Shapes::ShapeRef.new(shape: Version, location: "header", location_name: "X-Amz-Executed-Version"))
    InvocationResponse.struct_class = Types::InvocationResponse
    InvocationResponse[:payload] = :payload
    InvocationResponse[:payload_member] = InvocationResponse.member(:payload)

    InvokeAsyncRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    InvokeAsyncRequest.add_member(:invoke_args, Shapes::ShapeRef.new(shape: BlobStream, required: true, location_name: "InvokeArgs"))
    InvokeAsyncRequest.struct_class = Types::InvokeAsyncRequest
    InvokeAsyncRequest[:payload] = :invoke_args
    InvokeAsyncRequest[:payload_member] = InvokeAsyncRequest.member(:invoke_args)

    InvokeAsyncResponse.add_member(:status, Shapes::ShapeRef.new(shape: HttpStatus, location: "statusCode", location_name: "Status"))
    InvokeAsyncResponse.struct_class = Types::InvokeAsyncResponse

    ListAliasesRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    ListAliasesRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "FunctionVersion"))
    ListAliasesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListAliasesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListAliasesRequest.struct_class = Types::ListAliasesRequest

    ListAliasesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListAliasesResponse.add_member(:aliases, Shapes::ShapeRef.new(shape: AliasList, location_name: "Aliases"))
    ListAliasesResponse.struct_class = Types::ListAliasesResponse

    ListEventSourceMappingsRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "EventSourceArn"))
    ListEventSourceMappingsRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, location: "querystring", location_name: "FunctionName"))
    ListEventSourceMappingsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListEventSourceMappingsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListEventSourceMappingsRequest.struct_class = Types::ListEventSourceMappingsRequest

    ListEventSourceMappingsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListEventSourceMappingsResponse.add_member(:event_source_mappings, Shapes::ShapeRef.new(shape: EventSourceMappingsList, location_name: "EventSourceMappings"))
    ListEventSourceMappingsResponse.struct_class = Types::ListEventSourceMappingsResponse

    ListFunctionsRequest.add_member(:master_region, Shapes::ShapeRef.new(shape: MasterRegion, location: "querystring", location_name: "MasterRegion"))
    ListFunctionsRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: FunctionVersion, location: "querystring", location_name: "FunctionVersion"))
    ListFunctionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListFunctionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListFunctionsRequest.struct_class = Types::ListFunctionsRequest

    ListFunctionsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListFunctionsResponse.add_member(:functions, Shapes::ShapeRef.new(shape: FunctionList, location_name: "Functions"))
    ListFunctionsResponse.struct_class = Types::ListFunctionsResponse

    ListTagsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location: "uri", location_name: "ARN"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    ListVersionsByFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    ListVersionsByFunctionRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListVersionsByFunctionRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListVersionsByFunctionRequest.struct_class = Types::ListVersionsByFunctionRequest

    ListVersionsByFunctionResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListVersionsByFunctionResponse.add_member(:versions, Shapes::ShapeRef.new(shape: FunctionList, location_name: "Versions"))
    ListVersionsByFunctionResponse.struct_class = Types::ListVersionsByFunctionResponse

    PublishVersionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    PublishVersionRequest.add_member(:code_sha_256, Shapes::ShapeRef.new(shape: String, location_name: "CodeSha256"))
    PublishVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    PublishVersionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    PublishVersionRequest.struct_class = Types::PublishVersionRequest

    PutFunctionConcurrencyRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    PutFunctionConcurrencyRequest.add_member(:reserved_concurrent_executions, Shapes::ShapeRef.new(shape: ReservedConcurrentExecutions, required: true, location_name: "ReservedConcurrentExecutions"))
    PutFunctionConcurrencyRequest.struct_class = Types::PutFunctionConcurrencyRequest

    RemovePermissionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    RemovePermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: NamespacedStatementId, required: true, location: "uri", location_name: "StatementId"))
    RemovePermissionRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: Qualifier, location: "querystring", location_name: "Qualifier"))
    RemovePermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "RevisionId"))
    RemovePermissionRequest.struct_class = Types::RemovePermissionRequest

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location: "uri", location_name: "ARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TracingConfig.add_member(:mode, Shapes::ShapeRef.new(shape: TracingMode, location_name: "Mode"))
    TracingConfig.struct_class = Types::TracingConfig

    TracingConfigResponse.add_member(:mode, Shapes::ShapeRef.new(shape: TracingMode, location_name: "Mode"))
    TracingConfigResponse.struct_class = Types::TracingConfigResponse

    UntagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location: "uri", location_name: "ARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAliasRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    UpdateAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: Alias, required: true, location: "uri", location_name: "Name"))
    UpdateAliasRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: Version, location_name: "FunctionVersion"))
    UpdateAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateAliasRequest.add_member(:routing_config, Shapes::ShapeRef.new(shape: AliasRoutingConfiguration, location_name: "RoutingConfig"))
    UpdateAliasRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    UpdateAliasRequest.struct_class = Types::UpdateAliasRequest

    UpdateEventSourceMappingRequest.add_member(:uuid, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "UUID"))
    UpdateEventSourceMappingRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, location_name: "FunctionName"))
    UpdateEventSourceMappingRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "Enabled"))
    UpdateEventSourceMappingRequest.add_member(:batch_size, Shapes::ShapeRef.new(shape: BatchSize, location_name: "BatchSize"))
    UpdateEventSourceMappingRequest.struct_class = Types::UpdateEventSourceMappingRequest

    UpdateFunctionCodeRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    UpdateFunctionCodeRequest.add_member(:zip_file, Shapes::ShapeRef.new(shape: Blob, location_name: "ZipFile"))
    UpdateFunctionCodeRequest.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    UpdateFunctionCodeRequest.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    UpdateFunctionCodeRequest.add_member(:s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "S3ObjectVersion"))
    UpdateFunctionCodeRequest.add_member(:publish, Shapes::ShapeRef.new(shape: Boolean, location_name: "Publish"))
    UpdateFunctionCodeRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun"))
    UpdateFunctionCodeRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    UpdateFunctionCodeRequest.struct_class = Types::UpdateFunctionCodeRequest

    UpdateFunctionConfigurationRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    UpdateFunctionConfigurationRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "Role"))
    UpdateFunctionConfigurationRequest.add_member(:handler, Shapes::ShapeRef.new(shape: Handler, location_name: "Handler"))
    UpdateFunctionConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFunctionConfigurationRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    UpdateFunctionConfigurationRequest.add_member(:memory_size, Shapes::ShapeRef.new(shape: MemorySize, location_name: "MemorySize"))
    UpdateFunctionConfigurationRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    UpdateFunctionConfigurationRequest.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "Environment"))
    UpdateFunctionConfigurationRequest.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, location_name: "Runtime"))
    UpdateFunctionConfigurationRequest.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    UpdateFunctionConfigurationRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KMSKeyArn"))
    UpdateFunctionConfigurationRequest.add_member(:tracing_config, Shapes::ShapeRef.new(shape: TracingConfig, location_name: "TracingConfig"))
    UpdateFunctionConfigurationRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    UpdateFunctionConfigurationRequest.struct_class = Types::UpdateFunctionConfigurationRequest

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    VpcConfig.struct_class = Types::VpcConfig

    VpcConfigResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    VpcConfigResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    VpcConfigResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    VpcConfigResponse.struct_class = Types::VpcConfigResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-03-31"

      api.metadata = {
        "apiVersion" => "2015-03-31",
        "endpointPrefix" => "lambda",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Lambda",
        "serviceId" => "Lambda",
        "signatureVersion" => "v4",
        "uid" => "lambda-2015-03-31",
      }

      api.add_operation(:add_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddPermission"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/policy"
        o.input = Shapes::ShapeRef.new(shape: AddPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: AddPermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:create_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/aliases"
        o.input = Shapes::ShapeRef.new(shape: CreateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: AliasConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_event_source_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventSourceMapping"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/event-source-mappings/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventSourceMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: EventSourceMappingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFunction"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/functions"
        o.input = Shapes::ShapeRef.new(shape: CreateFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: CodeStorageExceededException)
      end)

      api.add_operation(:delete_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlias"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/aliases/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_event_source_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventSourceMapping"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-03-31/event-source-mappings/{UUID}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventSourceMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: EventSourceMappingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunction"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:delete_function_concurrency, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunctionConcurrency"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-10-31/functions/{FunctionName}/concurrency"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionConcurrencyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/2016-08-19/account-settings/"
        o.input = Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:get_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAlias"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/aliases/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: AliasConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_event_source_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventSourceMapping"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/event-source-mappings/{UUID}"
        o.input = Shapes::ShapeRef.new(shape: GetEventSourceMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: EventSourceMappingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunction"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:get_function_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/configuration"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:invoke, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Invoke"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/invocations"
        o.input = Shapes::ShapeRef.new(shape: InvocationRequest)
        o.output = Shapes::ShapeRef.new(shape: InvocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestContentException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedMediaTypeException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: EC2UnexpectedException)
        o.errors << Shapes::ShapeRef.new(shape: SubnetIPAddressLimitReachedException)
        o.errors << Shapes::ShapeRef.new(shape: ENILimitReachedException)
        o.errors << Shapes::ShapeRef.new(shape: EC2ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: EC2AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetIDException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurityGroupIDException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidZipFileException)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRuntimeException)
      end)

      api.add_operation(:invoke_async, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeAsync"
        o.http_method = "POST"
        o.http_request_uri = "/2014-11-13/functions/{FunctionName}/invoke-async/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: InvokeAsyncRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeAsyncResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestContentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRuntimeException)
      end)

      api.add_operation(:list_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAliases"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/aliases"
        o.input = Shapes::ShapeRef.new(shape: ListAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_event_source_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventSourceMappings"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/event-source-mappings/"
        o.input = Shapes::ShapeRef.new(shape: ListEventSourceMappingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventSourceMappingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_functions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctions"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-31/tags/{ARN}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_versions_by_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVersionsByFunction"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListVersionsByFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVersionsByFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:publish_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishVersion"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/versions"
        o.input = Shapes::ShapeRef.new(shape: PublishVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: CodeStorageExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:put_function_concurrency, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFunctionConcurrency"
        o.http_method = "PUT"
        o.http_request_uri = "/2017-10-31/functions/{FunctionName}/concurrency"
        o.input = Shapes::ShapeRef.new(shape: PutFunctionConcurrencyRequest)
        o.output = Shapes::ShapeRef.new(shape: Concurrency)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:remove_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemovePermission"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/policy/{StatementId}"
        o.input = Shapes::ShapeRef.new(shape: RemovePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-31/tags/{ARN}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-03-31/tags/{ARN}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/aliases/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: AliasConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:update_event_source_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventSourceMapping"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-03-31/event-source-mappings/{UUID}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventSourceMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: EventSourceMappingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:update_function_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunctionCode"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/code"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: CodeStorageExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:update_function_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunctionConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)
    end

  end
end
