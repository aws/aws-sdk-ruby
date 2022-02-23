# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Transfer
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddressAllocationId = Shapes::StringShape.new(name: 'AddressAllocationId')
    AddressAllocationIds = Shapes::ListShape.new(name: 'AddressAllocationIds')
    Arn = Shapes::StringShape.new(name: 'Arn')
    CallbackToken = Shapes::StringShape.new(name: 'CallbackToken')
    Certificate = Shapes::StringShape.new(name: 'Certificate')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CopyStepDetails = Shapes::StructureShape.new(name: 'CopyStepDetails')
    CreateAccessRequest = Shapes::StructureShape.new(name: 'CreateAccessRequest')
    CreateAccessResponse = Shapes::StructureShape.new(name: 'CreateAccessResponse')
    CreateServerRequest = Shapes::StructureShape.new(name: 'CreateServerRequest')
    CreateServerResponse = Shapes::StructureShape.new(name: 'CreateServerResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    CreateWorkflowRequest = Shapes::StructureShape.new(name: 'CreateWorkflowRequest')
    CreateWorkflowResponse = Shapes::StructureShape.new(name: 'CreateWorkflowResponse')
    CustomStepDetails = Shapes::StructureShape.new(name: 'CustomStepDetails')
    CustomStepStatus = Shapes::StringShape.new(name: 'CustomStepStatus')
    CustomStepTarget = Shapes::StringShape.new(name: 'CustomStepTarget')
    CustomStepTimeoutSeconds = Shapes::IntegerShape.new(name: 'CustomStepTimeoutSeconds')
    DateImported = Shapes::TimestampShape.new(name: 'DateImported')
    DeleteAccessRequest = Shapes::StructureShape.new(name: 'DeleteAccessRequest')
    DeleteServerRequest = Shapes::StructureShape.new(name: 'DeleteServerRequest')
    DeleteSshPublicKeyRequest = Shapes::StructureShape.new(name: 'DeleteSshPublicKeyRequest')
    DeleteStepDetails = Shapes::StructureShape.new(name: 'DeleteStepDetails')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteWorkflowRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowRequest')
    DescribeAccessRequest = Shapes::StructureShape.new(name: 'DescribeAccessRequest')
    DescribeAccessResponse = Shapes::StructureShape.new(name: 'DescribeAccessResponse')
    DescribeExecutionRequest = Shapes::StructureShape.new(name: 'DescribeExecutionRequest')
    DescribeExecutionResponse = Shapes::StructureShape.new(name: 'DescribeExecutionResponse')
    DescribeSecurityPolicyRequest = Shapes::StructureShape.new(name: 'DescribeSecurityPolicyRequest')
    DescribeSecurityPolicyResponse = Shapes::StructureShape.new(name: 'DescribeSecurityPolicyResponse')
    DescribeServerRequest = Shapes::StructureShape.new(name: 'DescribeServerRequest')
    DescribeServerResponse = Shapes::StructureShape.new(name: 'DescribeServerResponse')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    DescribeWorkflowRequest = Shapes::StructureShape.new(name: 'DescribeWorkflowRequest')
    DescribeWorkflowResponse = Shapes::StructureShape.new(name: 'DescribeWorkflowResponse')
    DescribedAccess = Shapes::StructureShape.new(name: 'DescribedAccess')
    DescribedExecution = Shapes::StructureShape.new(name: 'DescribedExecution')
    DescribedSecurityPolicy = Shapes::StructureShape.new(name: 'DescribedSecurityPolicy')
    DescribedServer = Shapes::StructureShape.new(name: 'DescribedServer')
    DescribedUser = Shapes::StructureShape.new(name: 'DescribedUser')
    DescribedWorkflow = Shapes::StructureShape.new(name: 'DescribedWorkflow')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    Domain = Shapes::StringShape.new(name: 'Domain')
    EfsFileLocation = Shapes::StructureShape.new(name: 'EfsFileLocation')
    EfsFileSystemId = Shapes::StringShape.new(name: 'EfsFileSystemId')
    EfsPath = Shapes::StringShape.new(name: 'EfsPath')
    EndpointDetails = Shapes::StructureShape.new(name: 'EndpointDetails')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    ExecutionError = Shapes::StructureShape.new(name: 'ExecutionError')
    ExecutionErrorMessage = Shapes::StringShape.new(name: 'ExecutionErrorMessage')
    ExecutionErrorType = Shapes::StringShape.new(name: 'ExecutionErrorType')
    ExecutionId = Shapes::StringShape.new(name: 'ExecutionId')
    ExecutionResults = Shapes::StructureShape.new(name: 'ExecutionResults')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExecutionStepResult = Shapes::StructureShape.new(name: 'ExecutionStepResult')
    ExecutionStepResults = Shapes::ListShape.new(name: 'ExecutionStepResults')
    ExternalId = Shapes::StringShape.new(name: 'ExternalId')
    FileLocation = Shapes::StructureShape.new(name: 'FileLocation')
    Fips = Shapes::BooleanShape.new(name: 'Fips')
    Function = Shapes::StringShape.new(name: 'Function')
    HomeDirectory = Shapes::StringShape.new(name: 'HomeDirectory')
    HomeDirectoryMapEntry = Shapes::StructureShape.new(name: 'HomeDirectoryMapEntry')
    HomeDirectoryMappings = Shapes::ListShape.new(name: 'HomeDirectoryMappings')
    HomeDirectoryType = Shapes::StringShape.new(name: 'HomeDirectoryType')
    HostKey = Shapes::StringShape.new(name: 'HostKey')
    HostKeyFingerprint = Shapes::StringShape.new(name: 'HostKeyFingerprint')
    IdentityProviderDetails = Shapes::StructureShape.new(name: 'IdentityProviderDetails')
    IdentityProviderType = Shapes::StringShape.new(name: 'IdentityProviderType')
    ImportSshPublicKeyRequest = Shapes::StructureShape.new(name: 'ImportSshPublicKeyRequest')
    ImportSshPublicKeyResponse = Shapes::StructureShape.new(name: 'ImportSshPublicKeyResponse')
    InputFileLocation = Shapes::StructureShape.new(name: 'InputFileLocation')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ListAccessesRequest = Shapes::StructureShape.new(name: 'ListAccessesRequest')
    ListAccessesResponse = Shapes::StructureShape.new(name: 'ListAccessesResponse')
    ListExecutionsRequest = Shapes::StructureShape.new(name: 'ListExecutionsRequest')
    ListExecutionsResponse = Shapes::StructureShape.new(name: 'ListExecutionsResponse')
    ListSecurityPoliciesRequest = Shapes::StructureShape.new(name: 'ListSecurityPoliciesRequest')
    ListSecurityPoliciesResponse = Shapes::StructureShape.new(name: 'ListSecurityPoliciesResponse')
    ListServersRequest = Shapes::StructureShape.new(name: 'ListServersRequest')
    ListServersResponse = Shapes::StructureShape.new(name: 'ListServersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    ListWorkflowsRequest = Shapes::StructureShape.new(name: 'ListWorkflowsRequest')
    ListWorkflowsResponse = Shapes::StructureShape.new(name: 'ListWorkflowsResponse')
    ListedAccess = Shapes::StructureShape.new(name: 'ListedAccess')
    ListedAccesses = Shapes::ListShape.new(name: 'ListedAccesses')
    ListedExecution = Shapes::StructureShape.new(name: 'ListedExecution')
    ListedExecutions = Shapes::ListShape.new(name: 'ListedExecutions')
    ListedServer = Shapes::StructureShape.new(name: 'ListedServer')
    ListedServers = Shapes::ListShape.new(name: 'ListedServers')
    ListedUser = Shapes::StructureShape.new(name: 'ListedUser')
    ListedUsers = Shapes::ListShape.new(name: 'ListedUsers')
    ListedWorkflow = Shapes::StructureShape.new(name: 'ListedWorkflow')
    ListedWorkflows = Shapes::ListShape.new(name: 'ListedWorkflows')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    MapEntry = Shapes::StringShape.new(name: 'MapEntry')
    MapTarget = Shapes::StringShape.new(name: 'MapTarget')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NullableRole = Shapes::StringShape.new(name: 'NullableRole')
    OnUploadWorkflowDetails = Shapes::ListShape.new(name: 'OnUploadWorkflowDetails')
    OverwriteExisting = Shapes::StringShape.new(name: 'OverwriteExisting')
    PassiveIp = Shapes::StringShape.new(name: 'PassiveIp')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PosixId = Shapes::IntegerShape.new(name: 'PosixId')
    PosixProfile = Shapes::StructureShape.new(name: 'PosixProfile')
    PostAuthenticationLoginBanner = Shapes::StringShape.new(name: 'PostAuthenticationLoginBanner')
    PreAuthenticationLoginBanner = Shapes::StringShape.new(name: 'PreAuthenticationLoginBanner')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    ProtocolDetails = Shapes::StructureShape.new(name: 'ProtocolDetails')
    Protocols = Shapes::ListShape.new(name: 'Protocols')
    Resource = Shapes::StringShape.new(name: 'Resource')
    ResourceExistsException = Shapes::StructureShape.new(name: 'ResourceExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Response = Shapes::StringShape.new(name: 'Response')
    RetryAfterSeconds = Shapes::StringShape.new(name: 'RetryAfterSeconds')
    Role = Shapes::StringShape.new(name: 'Role')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Etag = Shapes::StringShape.new(name: 'S3Etag')
    S3FileLocation = Shapes::StructureShape.new(name: 'S3FileLocation')
    S3InputFileLocation = Shapes::StructureShape.new(name: 'S3InputFileLocation')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Tag = Shapes::StructureShape.new(name: 'S3Tag')
    S3TagKey = Shapes::StringShape.new(name: 'S3TagKey')
    S3TagValue = Shapes::StringShape.new(name: 'S3TagValue')
    S3Tags = Shapes::ListShape.new(name: 'S3Tags')
    S3VersionId = Shapes::StringShape.new(name: 'S3VersionId')
    SecondaryGids = Shapes::ListShape.new(name: 'SecondaryGids')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SecurityPolicyName = Shapes::StringShape.new(name: 'SecurityPolicyName')
    SecurityPolicyNames = Shapes::ListShape.new(name: 'SecurityPolicyNames')
    SecurityPolicyOption = Shapes::StringShape.new(name: 'SecurityPolicyOption')
    SecurityPolicyOptions = Shapes::ListShape.new(name: 'SecurityPolicyOptions')
    SendWorkflowStepStateRequest = Shapes::StructureShape.new(name: 'SendWorkflowStepStateRequest')
    SendWorkflowStepStateResponse = Shapes::StructureShape.new(name: 'SendWorkflowStepStateResponse')
    ServerId = Shapes::StringShape.new(name: 'ServerId')
    ServiceErrorMessage = Shapes::StringShape.new(name: 'ServiceErrorMessage')
    ServiceMetadata = Shapes::StructureShape.new(name: 'ServiceMetadata')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SourceFileLocation = Shapes::StringShape.new(name: 'SourceFileLocation')
    SourceIp = Shapes::StringShape.new(name: 'SourceIp')
    SshPublicKey = Shapes::StructureShape.new(name: 'SshPublicKey')
    SshPublicKeyBody = Shapes::StringShape.new(name: 'SshPublicKeyBody')
    SshPublicKeyCount = Shapes::IntegerShape.new(name: 'SshPublicKeyCount')
    SshPublicKeyId = Shapes::StringShape.new(name: 'SshPublicKeyId')
    SshPublicKeys = Shapes::ListShape.new(name: 'SshPublicKeys')
    StartServerRequest = Shapes::StructureShape.new(name: 'StartServerRequest')
    State = Shapes::StringShape.new(name: 'State')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    StepResultOutputsJson = Shapes::StringShape.new(name: 'StepResultOutputsJson')
    StopServerRequest = Shapes::StructureShape.new(name: 'StopServerRequest')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagStepDetails = Shapes::StructureShape.new(name: 'TagStepDetails')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TestIdentityProviderRequest = Shapes::StructureShape.new(name: 'TestIdentityProviderRequest')
    TestIdentityProviderResponse = Shapes::StructureShape.new(name: 'TestIdentityProviderResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TlsSessionResumptionMode = Shapes::StringShape.new(name: 'TlsSessionResumptionMode')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAccessRequest = Shapes::StructureShape.new(name: 'UpdateAccessRequest')
    UpdateAccessResponse = Shapes::StructureShape.new(name: 'UpdateAccessResponse')
    UpdateServerRequest = Shapes::StructureShape.new(name: 'UpdateServerRequest')
    UpdateServerResponse = Shapes::StructureShape.new(name: 'UpdateServerResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UserCount = Shapes::IntegerShape.new(name: 'UserCount')
    UserDetails = Shapes::StructureShape.new(name: 'UserDetails')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserPassword = Shapes::StringShape.new(name: 'UserPassword')
    VpcEndpointId = Shapes::StringShape.new(name: 'VpcEndpointId')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    WorkflowDescription = Shapes::StringShape.new(name: 'WorkflowDescription')
    WorkflowDetail = Shapes::StructureShape.new(name: 'WorkflowDetail')
    WorkflowDetails = Shapes::StructureShape.new(name: 'WorkflowDetails')
    WorkflowId = Shapes::StringShape.new(name: 'WorkflowId')
    WorkflowStep = Shapes::StructureShape.new(name: 'WorkflowStep')
    WorkflowStepName = Shapes::StringShape.new(name: 'WorkflowStepName')
    WorkflowStepType = Shapes::StringShape.new(name: 'WorkflowStepType')
    WorkflowSteps = Shapes::ListShape.new(name: 'WorkflowSteps')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddressAllocationIds.member = Shapes::ShapeRef.new(shape: AddressAllocationId)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CopyStepDetails.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: "Name"))
    CopyStepDetails.add_member(:destination_file_location, Shapes::ShapeRef.new(shape: InputFileLocation, location_name: "DestinationFileLocation"))
    CopyStepDetails.add_member(:overwrite_existing, Shapes::ShapeRef.new(shape: OverwriteExisting, location_name: "OverwriteExisting"))
    CopyStepDetails.add_member(:source_file_location, Shapes::ShapeRef.new(shape: SourceFileLocation, location_name: "SourceFileLocation"))
    CopyStepDetails.struct_class = Types::CopyStepDetails

    CreateAccessRequest.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    CreateAccessRequest.add_member(:home_directory_type, Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: "HomeDirectoryType"))
    CreateAccessRequest.add_member(:home_directory_mappings, Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: "HomeDirectoryMappings"))
    CreateAccessRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    CreateAccessRequest.add_member(:posix_profile, Shapes::ShapeRef.new(shape: PosixProfile, location_name: "PosixProfile"))
    CreateAccessRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    CreateAccessRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    CreateAccessRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, required: true, location_name: "ExternalId"))
    CreateAccessRequest.struct_class = Types::CreateAccessRequest

    CreateAccessResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    CreateAccessResponse.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, required: true, location_name: "ExternalId"))
    CreateAccessResponse.struct_class = Types::CreateAccessResponse

    CreateServerRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    CreateServerRequest.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    CreateServerRequest.add_member(:endpoint_details, Shapes::ShapeRef.new(shape: EndpointDetails, location_name: "EndpointDetails"))
    CreateServerRequest.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    CreateServerRequest.add_member(:host_key, Shapes::ShapeRef.new(shape: HostKey, location_name: "HostKey"))
    CreateServerRequest.add_member(:identity_provider_details, Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: "IdentityProviderDetails"))
    CreateServerRequest.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: "IdentityProviderType"))
    CreateServerRequest.add_member(:logging_role, Shapes::ShapeRef.new(shape: Role, location_name: "LoggingRole"))
    CreateServerRequest.add_member(:post_authentication_login_banner, Shapes::ShapeRef.new(shape: PostAuthenticationLoginBanner, location_name: "PostAuthenticationLoginBanner"))
    CreateServerRequest.add_member(:pre_authentication_login_banner, Shapes::ShapeRef.new(shape: PreAuthenticationLoginBanner, location_name: "PreAuthenticationLoginBanner"))
    CreateServerRequest.add_member(:protocols, Shapes::ShapeRef.new(shape: Protocols, location_name: "Protocols"))
    CreateServerRequest.add_member(:protocol_details, Shapes::ShapeRef.new(shape: ProtocolDetails, location_name: "ProtocolDetails"))
    CreateServerRequest.add_member(:security_policy_name, Shapes::ShapeRef.new(shape: SecurityPolicyName, location_name: "SecurityPolicyName"))
    CreateServerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateServerRequest.add_member(:workflow_details, Shapes::ShapeRef.new(shape: WorkflowDetails, location_name: "WorkflowDetails"))
    CreateServerRequest.struct_class = Types::CreateServerRequest

    CreateServerResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    CreateServerResponse.struct_class = Types::CreateServerResponse

    CreateUserRequest.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    CreateUserRequest.add_member(:home_directory_type, Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: "HomeDirectoryType"))
    CreateUserRequest.add_member(:home_directory_mappings, Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: "HomeDirectoryMappings"))
    CreateUserRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    CreateUserRequest.add_member(:posix_profile, Shapes::ShapeRef.new(shape: PosixProfile, location_name: "PosixProfile"))
    CreateUserRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    CreateUserRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    CreateUserRequest.add_member(:ssh_public_key_body, Shapes::ShapeRef.new(shape: SshPublicKeyBody, location_name: "SshPublicKeyBody"))
    CreateUserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    CreateUserResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    CreateWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: "Description"))
    CreateWorkflowRequest.add_member(:steps, Shapes::ShapeRef.new(shape: WorkflowSteps, required: true, location_name: "Steps"))
    CreateWorkflowRequest.add_member(:on_exception_steps, Shapes::ShapeRef.new(shape: WorkflowSteps, location_name: "OnExceptionSteps"))
    CreateWorkflowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateWorkflowRequest.struct_class = Types::CreateWorkflowRequest

    CreateWorkflowResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "WorkflowId"))
    CreateWorkflowResponse.struct_class = Types::CreateWorkflowResponse

    CustomStepDetails.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: "Name"))
    CustomStepDetails.add_member(:target, Shapes::ShapeRef.new(shape: CustomStepTarget, location_name: "Target"))
    CustomStepDetails.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: CustomStepTimeoutSeconds, location_name: "TimeoutSeconds"))
    CustomStepDetails.add_member(:source_file_location, Shapes::ShapeRef.new(shape: SourceFileLocation, location_name: "SourceFileLocation"))
    CustomStepDetails.struct_class = Types::CustomStepDetails

    DeleteAccessRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DeleteAccessRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, required: true, location_name: "ExternalId"))
    DeleteAccessRequest.struct_class = Types::DeleteAccessRequest

    DeleteServerRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DeleteServerRequest.struct_class = Types::DeleteServerRequest

    DeleteSshPublicKeyRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DeleteSshPublicKeyRequest.add_member(:ssh_public_key_id, Shapes::ShapeRef.new(shape: SshPublicKeyId, required: true, location_name: "SshPublicKeyId"))
    DeleteSshPublicKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    DeleteSshPublicKeyRequest.struct_class = Types::DeleteSshPublicKeyRequest

    DeleteStepDetails.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: "Name"))
    DeleteStepDetails.add_member(:source_file_location, Shapes::ShapeRef.new(shape: SourceFileLocation, location_name: "SourceFileLocation"))
    DeleteStepDetails.struct_class = Types::DeleteStepDetails

    DeleteUserRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DeleteUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteWorkflowRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "WorkflowId"))
    DeleteWorkflowRequest.struct_class = Types::DeleteWorkflowRequest

    DescribeAccessRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DescribeAccessRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, required: true, location_name: "ExternalId"))
    DescribeAccessRequest.struct_class = Types::DescribeAccessRequest

    DescribeAccessResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DescribeAccessResponse.add_member(:access, Shapes::ShapeRef.new(shape: DescribedAccess, required: true, location_name: "Access"))
    DescribeAccessResponse.struct_class = Types::DescribeAccessResponse

    DescribeExecutionRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, required: true, location_name: "ExecutionId"))
    DescribeExecutionRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "WorkflowId"))
    DescribeExecutionRequest.struct_class = Types::DescribeExecutionRequest

    DescribeExecutionResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "WorkflowId"))
    DescribeExecutionResponse.add_member(:execution, Shapes::ShapeRef.new(shape: DescribedExecution, required: true, location_name: "Execution"))
    DescribeExecutionResponse.struct_class = Types::DescribeExecutionResponse

    DescribeSecurityPolicyRequest.add_member(:security_policy_name, Shapes::ShapeRef.new(shape: SecurityPolicyName, required: true, location_name: "SecurityPolicyName"))
    DescribeSecurityPolicyRequest.struct_class = Types::DescribeSecurityPolicyRequest

    DescribeSecurityPolicyResponse.add_member(:security_policy, Shapes::ShapeRef.new(shape: DescribedSecurityPolicy, required: true, location_name: "SecurityPolicy"))
    DescribeSecurityPolicyResponse.struct_class = Types::DescribeSecurityPolicyResponse

    DescribeServerRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DescribeServerRequest.struct_class = Types::DescribeServerRequest

    DescribeServerResponse.add_member(:server, Shapes::ShapeRef.new(shape: DescribedServer, required: true, location_name: "Server"))
    DescribeServerResponse.struct_class = Types::DescribeServerResponse

    DescribeUserRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DescribeUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    DescribeUserRequest.struct_class = Types::DescribeUserRequest

    DescribeUserResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DescribeUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: DescribedUser, required: true, location_name: "User"))
    DescribeUserResponse.struct_class = Types::DescribeUserResponse

    DescribeWorkflowRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "WorkflowId"))
    DescribeWorkflowRequest.struct_class = Types::DescribeWorkflowRequest

    DescribeWorkflowResponse.add_member(:workflow, Shapes::ShapeRef.new(shape: DescribedWorkflow, required: true, location_name: "Workflow"))
    DescribeWorkflowResponse.struct_class = Types::DescribeWorkflowResponse

    DescribedAccess.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    DescribedAccess.add_member(:home_directory_mappings, Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: "HomeDirectoryMappings"))
    DescribedAccess.add_member(:home_directory_type, Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: "HomeDirectoryType"))
    DescribedAccess.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    DescribedAccess.add_member(:posix_profile, Shapes::ShapeRef.new(shape: PosixProfile, location_name: "PosixProfile"))
    DescribedAccess.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    DescribedAccess.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "ExternalId"))
    DescribedAccess.struct_class = Types::DescribedAccess

    DescribedExecution.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "ExecutionId"))
    DescribedExecution.add_member(:initial_file_location, Shapes::ShapeRef.new(shape: FileLocation, location_name: "InitialFileLocation"))
    DescribedExecution.add_member(:service_metadata, Shapes::ShapeRef.new(shape: ServiceMetadata, location_name: "ServiceMetadata"))
    DescribedExecution.add_member(:execution_role, Shapes::ShapeRef.new(shape: Role, location_name: "ExecutionRole"))
    DescribedExecution.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    DescribedExecution.add_member(:posix_profile, Shapes::ShapeRef.new(shape: PosixProfile, location_name: "PosixProfile"))
    DescribedExecution.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "Status"))
    DescribedExecution.add_member(:results, Shapes::ShapeRef.new(shape: ExecutionResults, location_name: "Results"))
    DescribedExecution.struct_class = Types::DescribedExecution

    DescribedSecurityPolicy.add_member(:fips, Shapes::ShapeRef.new(shape: Fips, location_name: "Fips"))
    DescribedSecurityPolicy.add_member(:security_policy_name, Shapes::ShapeRef.new(shape: SecurityPolicyName, required: true, location_name: "SecurityPolicyName"))
    DescribedSecurityPolicy.add_member(:ssh_ciphers, Shapes::ShapeRef.new(shape: SecurityPolicyOptions, location_name: "SshCiphers"))
    DescribedSecurityPolicy.add_member(:ssh_kexs, Shapes::ShapeRef.new(shape: SecurityPolicyOptions, location_name: "SshKexs"))
    DescribedSecurityPolicy.add_member(:ssh_macs, Shapes::ShapeRef.new(shape: SecurityPolicyOptions, location_name: "SshMacs"))
    DescribedSecurityPolicy.add_member(:tls_ciphers, Shapes::ShapeRef.new(shape: SecurityPolicyOptions, location_name: "TlsCiphers"))
    DescribedSecurityPolicy.struct_class = Types::DescribedSecurityPolicy

    DescribedServer.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    DescribedServer.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    DescribedServer.add_member(:protocol_details, Shapes::ShapeRef.new(shape: ProtocolDetails, location_name: "ProtocolDetails"))
    DescribedServer.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    DescribedServer.add_member(:endpoint_details, Shapes::ShapeRef.new(shape: EndpointDetails, location_name: "EndpointDetails"))
    DescribedServer.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    DescribedServer.add_member(:host_key_fingerprint, Shapes::ShapeRef.new(shape: HostKeyFingerprint, location_name: "HostKeyFingerprint"))
    DescribedServer.add_member(:identity_provider_details, Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: "IdentityProviderDetails"))
    DescribedServer.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: "IdentityProviderType"))
    DescribedServer.add_member(:logging_role, Shapes::ShapeRef.new(shape: Role, location_name: "LoggingRole"))
    DescribedServer.add_member(:post_authentication_login_banner, Shapes::ShapeRef.new(shape: PostAuthenticationLoginBanner, location_name: "PostAuthenticationLoginBanner"))
    DescribedServer.add_member(:pre_authentication_login_banner, Shapes::ShapeRef.new(shape: PreAuthenticationLoginBanner, location_name: "PreAuthenticationLoginBanner"))
    DescribedServer.add_member(:protocols, Shapes::ShapeRef.new(shape: Protocols, location_name: "Protocols"))
    DescribedServer.add_member(:security_policy_name, Shapes::ShapeRef.new(shape: SecurityPolicyName, location_name: "SecurityPolicyName"))
    DescribedServer.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, location_name: "ServerId"))
    DescribedServer.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    DescribedServer.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DescribedServer.add_member(:user_count, Shapes::ShapeRef.new(shape: UserCount, location_name: "UserCount"))
    DescribedServer.add_member(:workflow_details, Shapes::ShapeRef.new(shape: WorkflowDetails, location_name: "WorkflowDetails"))
    DescribedServer.struct_class = Types::DescribedServer

    DescribedUser.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    DescribedUser.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    DescribedUser.add_member(:home_directory_mappings, Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: "HomeDirectoryMappings"))
    DescribedUser.add_member(:home_directory_type, Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: "HomeDirectoryType"))
    DescribedUser.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    DescribedUser.add_member(:posix_profile, Shapes::ShapeRef.new(shape: PosixProfile, location_name: "PosixProfile"))
    DescribedUser.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    DescribedUser.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: SshPublicKeys, location_name: "SshPublicKeys"))
    DescribedUser.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DescribedUser.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    DescribedUser.struct_class = Types::DescribedUser

    DescribedWorkflow.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    DescribedWorkflow.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: "Description"))
    DescribedWorkflow.add_member(:steps, Shapes::ShapeRef.new(shape: WorkflowSteps, location_name: "Steps"))
    DescribedWorkflow.add_member(:on_exception_steps, Shapes::ShapeRef.new(shape: WorkflowSteps, location_name: "OnExceptionSteps"))
    DescribedWorkflow.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "WorkflowId"))
    DescribedWorkflow.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DescribedWorkflow.struct_class = Types::DescribedWorkflow

    EfsFileLocation.add_member(:file_system_id, Shapes::ShapeRef.new(shape: EfsFileSystemId, location_name: "FileSystemId"))
    EfsFileLocation.add_member(:path, Shapes::ShapeRef.new(shape: EfsPath, location_name: "Path"))
    EfsFileLocation.struct_class = Types::EfsFileLocation

    EndpointDetails.add_member(:address_allocation_ids, Shapes::ShapeRef.new(shape: AddressAllocationIds, location_name: "AddressAllocationIds"))
    EndpointDetails.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    EndpointDetails.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    EndpointDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    EndpointDetails.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    EndpointDetails.struct_class = Types::EndpointDetails

    ExecutionError.add_member(:type, Shapes::ShapeRef.new(shape: ExecutionErrorType, required: true, location_name: "Type"))
    ExecutionError.add_member(:message, Shapes::ShapeRef.new(shape: ExecutionErrorMessage, required: true, location_name: "Message"))
    ExecutionError.struct_class = Types::ExecutionError

    ExecutionResults.add_member(:steps, Shapes::ShapeRef.new(shape: ExecutionStepResults, location_name: "Steps"))
    ExecutionResults.add_member(:on_exception_steps, Shapes::ShapeRef.new(shape: ExecutionStepResults, location_name: "OnExceptionSteps"))
    ExecutionResults.struct_class = Types::ExecutionResults

    ExecutionStepResult.add_member(:step_type, Shapes::ShapeRef.new(shape: WorkflowStepType, location_name: "StepType"))
    ExecutionStepResult.add_member(:outputs, Shapes::ShapeRef.new(shape: StepResultOutputsJson, location_name: "Outputs"))
    ExecutionStepResult.add_member(:error, Shapes::ShapeRef.new(shape: ExecutionError, location_name: "Error"))
    ExecutionStepResult.struct_class = Types::ExecutionStepResult

    ExecutionStepResults.member = Shapes::ShapeRef.new(shape: ExecutionStepResult)

    FileLocation.add_member(:s3_file_location, Shapes::ShapeRef.new(shape: S3FileLocation, location_name: "S3FileLocation"))
    FileLocation.add_member(:efs_file_location, Shapes::ShapeRef.new(shape: EfsFileLocation, location_name: "EfsFileLocation"))
    FileLocation.struct_class = Types::FileLocation

    HomeDirectoryMapEntry.add_member(:entry, Shapes::ShapeRef.new(shape: MapEntry, required: true, location_name: "Entry"))
    HomeDirectoryMapEntry.add_member(:target, Shapes::ShapeRef.new(shape: MapTarget, required: true, location_name: "Target"))
    HomeDirectoryMapEntry.struct_class = Types::HomeDirectoryMapEntry

    HomeDirectoryMappings.member = Shapes::ShapeRef.new(shape: HomeDirectoryMapEntry)

    IdentityProviderDetails.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "Url"))
    IdentityProviderDetails.add_member(:invocation_role, Shapes::ShapeRef.new(shape: Role, location_name: "InvocationRole"))
    IdentityProviderDetails.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    IdentityProviderDetails.add_member(:function, Shapes::ShapeRef.new(shape: Function, location_name: "Function"))
    IdentityProviderDetails.struct_class = Types::IdentityProviderDetails

    ImportSshPublicKeyRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    ImportSshPublicKeyRequest.add_member(:ssh_public_key_body, Shapes::ShapeRef.new(shape: SshPublicKeyBody, required: true, location_name: "SshPublicKeyBody"))
    ImportSshPublicKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    ImportSshPublicKeyRequest.struct_class = Types::ImportSshPublicKeyRequest

    ImportSshPublicKeyResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    ImportSshPublicKeyResponse.add_member(:ssh_public_key_id, Shapes::ShapeRef.new(shape: SshPublicKeyId, required: true, location_name: "SshPublicKeyId"))
    ImportSshPublicKeyResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    ImportSshPublicKeyResponse.struct_class = Types::ImportSshPublicKeyResponse

    InputFileLocation.add_member(:s3_file_location, Shapes::ShapeRef.new(shape: S3InputFileLocation, location_name: "S3FileLocation"))
    InputFileLocation.add_member(:efs_file_location, Shapes::ShapeRef.new(shape: EfsFileLocation, location_name: "EfsFileLocation"))
    InputFileLocation.struct_class = Types::InputFileLocation

    InternalServiceError.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    InternalServiceError.struct_class = Types::InternalServiceError

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListAccessesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccessesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAccessesRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    ListAccessesRequest.struct_class = Types::ListAccessesRequest

    ListAccessesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAccessesResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    ListAccessesResponse.add_member(:accesses, Shapes::ShapeRef.new(shape: ListedAccesses, required: true, location_name: "Accesses"))
    ListAccessesResponse.struct_class = Types::ListAccessesResponse

    ListExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExecutionsRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "WorkflowId"))
    ListExecutionsRequest.struct_class = Types::ListExecutionsRequest

    ListExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExecutionsResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "WorkflowId"))
    ListExecutionsResponse.add_member(:executions, Shapes::ShapeRef.new(shape: ListedExecutions, required: true, location_name: "Executions"))
    ListExecutionsResponse.struct_class = Types::ListExecutionsResponse

    ListSecurityPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListSecurityPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSecurityPoliciesRequest.struct_class = Types::ListSecurityPoliciesRequest

    ListSecurityPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSecurityPoliciesResponse.add_member(:security_policy_names, Shapes::ShapeRef.new(shape: SecurityPolicyNames, required: true, location_name: "SecurityPolicyNames"))
    ListSecurityPoliciesResponse.struct_class = Types::ListSecurityPoliciesResponse

    ListServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServersRequest.struct_class = Types::ListServersRequest

    ListServersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServersResponse.add_member(:servers, Shapes::ShapeRef.new(shape: ListedServers, required: true, location_name: "Servers"))
    ListServersResponse.struct_class = Types::ListServersResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: ListedUsers, required: true, location_name: "Users"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    ListWorkflowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListWorkflowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkflowsRequest.struct_class = Types::ListWorkflowsRequest

    ListWorkflowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkflowsResponse.add_member(:workflows, Shapes::ShapeRef.new(shape: ListedWorkflows, required: true, location_name: "Workflows"))
    ListWorkflowsResponse.struct_class = Types::ListWorkflowsResponse

    ListedAccess.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    ListedAccess.add_member(:home_directory_type, Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: "HomeDirectoryType"))
    ListedAccess.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    ListedAccess.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "ExternalId"))
    ListedAccess.struct_class = Types::ListedAccess

    ListedAccesses.member = Shapes::ShapeRef.new(shape: ListedAccess)

    ListedExecution.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "ExecutionId"))
    ListedExecution.add_member(:initial_file_location, Shapes::ShapeRef.new(shape: FileLocation, location_name: "InitialFileLocation"))
    ListedExecution.add_member(:service_metadata, Shapes::ShapeRef.new(shape: ServiceMetadata, location_name: "ServiceMetadata"))
    ListedExecution.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "Status"))
    ListedExecution.struct_class = Types::ListedExecution

    ListedExecutions.member = Shapes::ShapeRef.new(shape: ListedExecution)

    ListedServer.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    ListedServer.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    ListedServer.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: "IdentityProviderType"))
    ListedServer.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    ListedServer.add_member(:logging_role, Shapes::ShapeRef.new(shape: Role, location_name: "LoggingRole"))
    ListedServer.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, location_name: "ServerId"))
    ListedServer.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    ListedServer.add_member(:user_count, Shapes::ShapeRef.new(shape: UserCount, location_name: "UserCount"))
    ListedServer.struct_class = Types::ListedServer

    ListedServers.member = Shapes::ShapeRef.new(shape: ListedServer)

    ListedUser.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    ListedUser.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    ListedUser.add_member(:home_directory_type, Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: "HomeDirectoryType"))
    ListedUser.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    ListedUser.add_member(:ssh_public_key_count, Shapes::ShapeRef.new(shape: SshPublicKeyCount, location_name: "SshPublicKeyCount"))
    ListedUser.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    ListedUser.struct_class = Types::ListedUser

    ListedUsers.member = Shapes::ShapeRef.new(shape: ListedUser)

    ListedWorkflow.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "WorkflowId"))
    ListedWorkflow.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: "Description"))
    ListedWorkflow.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ListedWorkflow.struct_class = Types::ListedWorkflow

    ListedWorkflows.member = Shapes::ShapeRef.new(shape: ListedWorkflow)

    LoggingConfiguration.add_member(:logging_role, Shapes::ShapeRef.new(shape: Role, location_name: "LoggingRole"))
    LoggingConfiguration.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "LogGroupName"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    OnUploadWorkflowDetails.member = Shapes::ShapeRef.new(shape: WorkflowDetail)

    PosixProfile.add_member(:uid, Shapes::ShapeRef.new(shape: PosixId, required: true, location_name: "Uid"))
    PosixProfile.add_member(:gid, Shapes::ShapeRef.new(shape: PosixId, required: true, location_name: "Gid"))
    PosixProfile.add_member(:secondary_gids, Shapes::ShapeRef.new(shape: SecondaryGids, location_name: "SecondaryGids"))
    PosixProfile.struct_class = Types::PosixProfile

    ProtocolDetails.add_member(:passive_ip, Shapes::ShapeRef.new(shape: PassiveIp, location_name: "PassiveIp"))
    ProtocolDetails.add_member(:tls_session_resumption_mode, Shapes::ShapeRef.new(shape: TlsSessionResumptionMode, location_name: "TlsSessionResumptionMode"))
    ProtocolDetails.struct_class = Types::ProtocolDetails

    Protocols.member = Shapes::ShapeRef.new(shape: Protocol)

    ResourceExistsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ResourceExistsException.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    ResourceExistsException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ResourceExistsException.struct_class = Types::ResourceExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3FileLocation.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "Bucket"))
    S3FileLocation.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, location_name: "Key"))
    S3FileLocation.add_member(:version_id, Shapes::ShapeRef.new(shape: S3VersionId, location_name: "VersionId"))
    S3FileLocation.add_member(:etag, Shapes::ShapeRef.new(shape: S3Etag, location_name: "Etag"))
    S3FileLocation.struct_class = Types::S3FileLocation

    S3InputFileLocation.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "Bucket"))
    S3InputFileLocation.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, location_name: "Key"))
    S3InputFileLocation.struct_class = Types::S3InputFileLocation

    S3Tag.add_member(:key, Shapes::ShapeRef.new(shape: S3TagKey, required: true, location_name: "Key"))
    S3Tag.add_member(:value, Shapes::ShapeRef.new(shape: S3TagValue, required: true, location_name: "Value"))
    S3Tag.struct_class = Types::S3Tag

    S3Tags.member = Shapes::ShapeRef.new(shape: S3Tag)

    SecondaryGids.member = Shapes::ShapeRef.new(shape: PosixId)

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SecurityPolicyNames.member = Shapes::ShapeRef.new(shape: SecurityPolicyName)

    SecurityPolicyOptions.member = Shapes::ShapeRef.new(shape: SecurityPolicyOption)

    SendWorkflowStepStateRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "WorkflowId"))
    SendWorkflowStepStateRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, required: true, location_name: "ExecutionId"))
    SendWorkflowStepStateRequest.add_member(:token, Shapes::ShapeRef.new(shape: CallbackToken, required: true, location_name: "Token"))
    SendWorkflowStepStateRequest.add_member(:status, Shapes::ShapeRef.new(shape: CustomStepStatus, required: true, location_name: "Status"))
    SendWorkflowStepStateRequest.struct_class = Types::SendWorkflowStepStateRequest

    SendWorkflowStepStateResponse.struct_class = Types::SendWorkflowStepStateResponse

    ServiceMetadata.add_member(:user_details, Shapes::ShapeRef.new(shape: UserDetails, required: true, location_name: "UserDetails"))
    ServiceMetadata.struct_class = Types::ServiceMetadata

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SshPublicKey.add_member(:date_imported, Shapes::ShapeRef.new(shape: DateImported, required: true, location_name: "DateImported"))
    SshPublicKey.add_member(:ssh_public_key_body, Shapes::ShapeRef.new(shape: SshPublicKeyBody, required: true, location_name: "SshPublicKeyBody"))
    SshPublicKey.add_member(:ssh_public_key_id, Shapes::ShapeRef.new(shape: SshPublicKeyId, required: true, location_name: "SshPublicKeyId"))
    SshPublicKey.struct_class = Types::SshPublicKey

    SshPublicKeys.member = Shapes::ShapeRef.new(shape: SshPublicKey)

    StartServerRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    StartServerRequest.struct_class = Types::StartServerRequest

    StopServerRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    StopServerRequest.struct_class = Types::StopServerRequest

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagStepDetails.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: "Name"))
    TagStepDetails.add_member(:tags, Shapes::ShapeRef.new(shape: S3Tags, location_name: "Tags"))
    TagStepDetails.add_member(:source_file_location, Shapes::ShapeRef.new(shape: SourceFileLocation, location_name: "SourceFileLocation"))
    TagStepDetails.struct_class = Types::TagStepDetails

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TestIdentityProviderRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    TestIdentityProviderRequest.add_member(:server_protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "ServerProtocol"))
    TestIdentityProviderRequest.add_member(:source_ip, Shapes::ShapeRef.new(shape: SourceIp, location_name: "SourceIp"))
    TestIdentityProviderRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    TestIdentityProviderRequest.add_member(:user_password, Shapes::ShapeRef.new(shape: UserPassword, location_name: "UserPassword"))
    TestIdentityProviderRequest.struct_class = Types::TestIdentityProviderRequest

    TestIdentityProviderResponse.add_member(:response, Shapes::ShapeRef.new(shape: Response, location_name: "Response"))
    TestIdentityProviderResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: StatusCode, required: true, location_name: "StatusCode"))
    TestIdentityProviderResponse.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    TestIdentityProviderResponse.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "Url"))
    TestIdentityProviderResponse.struct_class = Types::TestIdentityProviderResponse

    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAccessRequest.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    UpdateAccessRequest.add_member(:home_directory_type, Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: "HomeDirectoryType"))
    UpdateAccessRequest.add_member(:home_directory_mappings, Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: "HomeDirectoryMappings"))
    UpdateAccessRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    UpdateAccessRequest.add_member(:posix_profile, Shapes::ShapeRef.new(shape: PosixProfile, location_name: "PosixProfile"))
    UpdateAccessRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    UpdateAccessRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UpdateAccessRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, required: true, location_name: "ExternalId"))
    UpdateAccessRequest.struct_class = Types::UpdateAccessRequest

    UpdateAccessResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UpdateAccessResponse.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, required: true, location_name: "ExternalId"))
    UpdateAccessResponse.struct_class = Types::UpdateAccessResponse

    UpdateServerRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    UpdateServerRequest.add_member(:protocol_details, Shapes::ShapeRef.new(shape: ProtocolDetails, location_name: "ProtocolDetails"))
    UpdateServerRequest.add_member(:endpoint_details, Shapes::ShapeRef.new(shape: EndpointDetails, location_name: "EndpointDetails"))
    UpdateServerRequest.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    UpdateServerRequest.add_member(:host_key, Shapes::ShapeRef.new(shape: HostKey, location_name: "HostKey"))
    UpdateServerRequest.add_member(:identity_provider_details, Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: "IdentityProviderDetails"))
    UpdateServerRequest.add_member(:logging_role, Shapes::ShapeRef.new(shape: NullableRole, location_name: "LoggingRole"))
    UpdateServerRequest.add_member(:post_authentication_login_banner, Shapes::ShapeRef.new(shape: PostAuthenticationLoginBanner, location_name: "PostAuthenticationLoginBanner"))
    UpdateServerRequest.add_member(:pre_authentication_login_banner, Shapes::ShapeRef.new(shape: PreAuthenticationLoginBanner, location_name: "PreAuthenticationLoginBanner"))
    UpdateServerRequest.add_member(:protocols, Shapes::ShapeRef.new(shape: Protocols, location_name: "Protocols"))
    UpdateServerRequest.add_member(:security_policy_name, Shapes::ShapeRef.new(shape: SecurityPolicyName, location_name: "SecurityPolicyName"))
    UpdateServerRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UpdateServerRequest.add_member(:workflow_details, Shapes::ShapeRef.new(shape: WorkflowDetails, location_name: "WorkflowDetails"))
    UpdateServerRequest.struct_class = Types::UpdateServerRequest

    UpdateServerResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UpdateServerResponse.struct_class = Types::UpdateServerResponse

    UpdateUserRequest.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    UpdateUserRequest.add_member(:home_directory_type, Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: "HomeDirectoryType"))
    UpdateUserRequest.add_member(:home_directory_mappings, Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: "HomeDirectoryMappings"))
    UpdateUserRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    UpdateUserRequest.add_member(:posix_profile, Shapes::ShapeRef.new(shape: PosixProfile, location_name: "PosixProfile"))
    UpdateUserRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    UpdateUserRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UpdateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UpdateUserResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    UserDetails.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    UserDetails.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UserDetails.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    UserDetails.struct_class = Types::UserDetails

    WorkflowDetail.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location_name: "WorkflowId"))
    WorkflowDetail.add_member(:execution_role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "ExecutionRole"))
    WorkflowDetail.struct_class = Types::WorkflowDetail

    WorkflowDetails.add_member(:on_upload, Shapes::ShapeRef.new(shape: OnUploadWorkflowDetails, required: true, location_name: "OnUpload"))
    WorkflowDetails.struct_class = Types::WorkflowDetails

    WorkflowStep.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowStepType, location_name: "Type"))
    WorkflowStep.add_member(:copy_step_details, Shapes::ShapeRef.new(shape: CopyStepDetails, location_name: "CopyStepDetails"))
    WorkflowStep.add_member(:custom_step_details, Shapes::ShapeRef.new(shape: CustomStepDetails, location_name: "CustomStepDetails"))
    WorkflowStep.add_member(:delete_step_details, Shapes::ShapeRef.new(shape: DeleteStepDetails, location_name: "DeleteStepDetails"))
    WorkflowStep.add_member(:tag_step_details, Shapes::ShapeRef.new(shape: TagStepDetails, location_name: "TagStepDetails"))
    WorkflowStep.struct_class = Types::WorkflowStep

    WorkflowSteps.member = Shapes::ShapeRef.new(shape: WorkflowStep)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-05"

      api.metadata = {
        "apiVersion" => "2018-11-05",
        "endpointPrefix" => "transfer",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "AWS Transfer",
        "serviceFullName" => "AWS Transfer Family",
        "serviceId" => "Transfer",
        "signatureVersion" => "v4",
        "signingName" => "transfer",
        "targetPrefix" => "TransferService",
        "uid" => "transfer-2018-11-05",
      }

      api.add_operation(:create_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_ssh_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSshPublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSshPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_security_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSecurityPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSecurityPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSecurityPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:import_ssh_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportSshPublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportSshPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportSshPublicKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_accesses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccesses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccessesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
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
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflows"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:send_workflow_step_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendWorkflowStepState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendWorkflowStepStateRequest)
        o.output = Shapes::ShapeRef.new(shape: SendWorkflowStepStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartServerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopServerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:test_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestIdentityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: TestIdentityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
