# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Transfer
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    CreateServerRequest = Shapes::StructureShape.new(name: 'CreateServerRequest')
    CreateServerResponse = Shapes::StructureShape.new(name: 'CreateServerResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    DateImported = Shapes::TimestampShape.new(name: 'DateImported')
    DeleteServerRequest = Shapes::StructureShape.new(name: 'DeleteServerRequest')
    DeleteSshPublicKeyRequest = Shapes::StructureShape.new(name: 'DeleteSshPublicKeyRequest')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DescribeServerRequest = Shapes::StructureShape.new(name: 'DescribeServerRequest')
    DescribeServerResponse = Shapes::StructureShape.new(name: 'DescribeServerResponse')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    DescribedServer = Shapes::StructureShape.new(name: 'DescribedServer')
    DescribedUser = Shapes::StructureShape.new(name: 'DescribedUser')
    EndpointDetails = Shapes::StructureShape.new(name: 'EndpointDetails')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    HomeDirectory = Shapes::StringShape.new(name: 'HomeDirectory')
    HostKey = Shapes::StringShape.new(name: 'HostKey')
    HostKeyFingerprint = Shapes::StringShape.new(name: 'HostKeyFingerprint')
    IdentityProviderDetails = Shapes::StructureShape.new(name: 'IdentityProviderDetails')
    IdentityProviderType = Shapes::StringShape.new(name: 'IdentityProviderType')
    ImportSshPublicKeyRequest = Shapes::StructureShape.new(name: 'ImportSshPublicKeyRequest')
    ImportSshPublicKeyResponse = Shapes::StructureShape.new(name: 'ImportSshPublicKeyResponse')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ListServersRequest = Shapes::StructureShape.new(name: 'ListServersRequest')
    ListServersResponse = Shapes::StructureShape.new(name: 'ListServersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    ListedServer = Shapes::StructureShape.new(name: 'ListedServer')
    ListedServers = Shapes::ListShape.new(name: 'ListedServers')
    ListedUser = Shapes::StructureShape.new(name: 'ListedUser')
    ListedUsers = Shapes::ListShape.new(name: 'ListedUsers')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NullableRole = Shapes::StringShape.new(name: 'NullableRole')
    Policy = Shapes::StringShape.new(name: 'Policy')
    Resource = Shapes::StringShape.new(name: 'Resource')
    ResourceExistsException = Shapes::StructureShape.new(name: 'ResourceExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Role = Shapes::StringShape.new(name: 'Role')
    ServerId = Shapes::StringShape.new(name: 'ServerId')
    ServiceErrorMessage = Shapes::StringShape.new(name: 'ServiceErrorMessage')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SshPublicKey = Shapes::StructureShape.new(name: 'SshPublicKey')
    SshPublicKeyBody = Shapes::StringShape.new(name: 'SshPublicKeyBody')
    SshPublicKeyCount = Shapes::IntegerShape.new(name: 'SshPublicKeyCount')
    SshPublicKeyId = Shapes::StringShape.new(name: 'SshPublicKeyId')
    SshPublicKeys = Shapes::ListShape.new(name: 'SshPublicKeys')
    StartServerRequest = Shapes::StructureShape.new(name: 'StartServerRequest')
    State = Shapes::StringShape.new(name: 'State')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    StopServerRequest = Shapes::StructureShape.new(name: 'StopServerRequest')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TestIdentityProviderRequest = Shapes::StructureShape.new(name: 'TestIdentityProviderRequest')
    TestIdentityProviderResponse = Shapes::StructureShape.new(name: 'TestIdentityProviderResponse')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateServerRequest = Shapes::StructureShape.new(name: 'UpdateServerRequest')
    UpdateServerResponse = Shapes::StructureShape.new(name: 'UpdateServerResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UserCount = Shapes::IntegerShape.new(name: 'UserCount')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserPassword = Shapes::StringShape.new(name: 'UserPassword')
    VpcEndpointId = Shapes::StringShape.new(name: 'VpcEndpointId')

    CreateServerRequest.add_member(:endpoint_details, Shapes::ShapeRef.new(shape: EndpointDetails, location_name: "EndpointDetails"))
    CreateServerRequest.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    CreateServerRequest.add_member(:host_key, Shapes::ShapeRef.new(shape: HostKey, location_name: "HostKey"))
    CreateServerRequest.add_member(:identity_provider_details, Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: "IdentityProviderDetails"))
    CreateServerRequest.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: "IdentityProviderType"))
    CreateServerRequest.add_member(:logging_role, Shapes::ShapeRef.new(shape: Role, location_name: "LoggingRole"))
    CreateServerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateServerRequest.struct_class = Types::CreateServerRequest

    CreateServerResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    CreateServerResponse.struct_class = Types::CreateServerResponse

    CreateUserRequest.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    CreateUserRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    CreateUserRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    CreateUserRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    CreateUserRequest.add_member(:ssh_public_key_body, Shapes::ShapeRef.new(shape: SshPublicKeyBody, location_name: "SshPublicKeyBody"))
    CreateUserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    CreateUserResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    DeleteServerRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DeleteServerRequest.struct_class = Types::DeleteServerRequest

    DeleteSshPublicKeyRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DeleteSshPublicKeyRequest.add_member(:ssh_public_key_id, Shapes::ShapeRef.new(shape: SshPublicKeyId, required: true, location_name: "SshPublicKeyId"))
    DeleteSshPublicKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    DeleteSshPublicKeyRequest.struct_class = Types::DeleteSshPublicKeyRequest

    DeleteUserRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    DeleteUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

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

    DescribedServer.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    DescribedServer.add_member(:endpoint_details, Shapes::ShapeRef.new(shape: EndpointDetails, location_name: "EndpointDetails"))
    DescribedServer.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    DescribedServer.add_member(:host_key_fingerprint, Shapes::ShapeRef.new(shape: HostKeyFingerprint, location_name: "HostKeyFingerprint"))
    DescribedServer.add_member(:identity_provider_details, Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: "IdentityProviderDetails"))
    DescribedServer.add_member(:identity_provider_type, Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: "IdentityProviderType"))
    DescribedServer.add_member(:logging_role, Shapes::ShapeRef.new(shape: Role, location_name: "LoggingRole"))
    DescribedServer.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, location_name: "ServerId"))
    DescribedServer.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    DescribedServer.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DescribedServer.add_member(:user_count, Shapes::ShapeRef.new(shape: UserCount, location_name: "UserCount"))
    DescribedServer.struct_class = Types::DescribedServer

    DescribedUser.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    DescribedUser.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    DescribedUser.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    DescribedUser.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    DescribedUser.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: SshPublicKeys, location_name: "SshPublicKeys"))
    DescribedUser.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DescribedUser.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    DescribedUser.struct_class = Types::DescribedUser

    EndpointDetails.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    EndpointDetails.struct_class = Types::EndpointDetails

    IdentityProviderDetails.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "Url"))
    IdentityProviderDetails.add_member(:invocation_role, Shapes::ShapeRef.new(shape: Role, location_name: "InvocationRole"))
    IdentityProviderDetails.struct_class = Types::IdentityProviderDetails

    ImportSshPublicKeyRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    ImportSshPublicKeyRequest.add_member(:ssh_public_key_body, Shapes::ShapeRef.new(shape: SshPublicKeyBody, required: true, location_name: "SshPublicKeyBody"))
    ImportSshPublicKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    ImportSshPublicKeyRequest.struct_class = Types::ImportSshPublicKeyRequest

    ImportSshPublicKeyResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    ImportSshPublicKeyResponse.add_member(:ssh_public_key_id, Shapes::ShapeRef.new(shape: SshPublicKeyId, required: true, location_name: "SshPublicKeyId"))
    ImportSshPublicKeyResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    ImportSshPublicKeyResponse.struct_class = Types::ImportSshPublicKeyResponse

    InternalServiceError.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    InternalServiceError.struct_class = Types::InternalServiceError

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

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

    ListedServer.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
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
    ListedUser.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    ListedUser.add_member(:ssh_public_key_count, Shapes::ShapeRef.new(shape: SshPublicKeyCount, location_name: "SshPublicKeyCount"))
    ListedUser.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    ListedUser.struct_class = Types::ListedUser

    ListedUsers.member = Shapes::ShapeRef.new(shape: ListedUser)

    ResourceExistsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ResourceExistsException.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    ResourceExistsException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ResourceExistsException.struct_class = Types::ResourceExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

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

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TestIdentityProviderRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    TestIdentityProviderRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    TestIdentityProviderRequest.add_member(:user_password, Shapes::ShapeRef.new(shape: UserPassword, location_name: "UserPassword"))
    TestIdentityProviderRequest.struct_class = Types::TestIdentityProviderRequest

    TestIdentityProviderResponse.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    TestIdentityProviderResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: StatusCode, required: true, location_name: "StatusCode"))
    TestIdentityProviderResponse.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "Url"))
    TestIdentityProviderResponse.struct_class = Types::TestIdentityProviderResponse

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateServerRequest.add_member(:endpoint_details, Shapes::ShapeRef.new(shape: EndpointDetails, location_name: "EndpointDetails"))
    UpdateServerRequest.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    UpdateServerRequest.add_member(:host_key, Shapes::ShapeRef.new(shape: HostKey, location_name: "HostKey"))
    UpdateServerRequest.add_member(:identity_provider_details, Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: "IdentityProviderDetails"))
    UpdateServerRequest.add_member(:logging_role, Shapes::ShapeRef.new(shape: NullableRole, location_name: "LoggingRole"))
    UpdateServerRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UpdateServerRequest.struct_class = Types::UpdateServerRequest

    UpdateServerResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UpdateServerResponse.struct_class = Types::UpdateServerResponse

    UpdateUserRequest.add_member(:home_directory, Shapes::ShapeRef.new(shape: HomeDirectory, location_name: "HomeDirectory"))
    UpdateUserRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    UpdateUserRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    UpdateUserRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UpdateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "ServerId"))
    UpdateUserResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-05"

      api.metadata = {
        "apiVersion" => "2018-11-05",
        "endpointPrefix" => "transfer",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "AWS Transfer",
        "serviceFullName" => "AWS Transfer for SFTP",
        "serviceId" => "Transfer",
        "signatureVersion" => "v4",
        "signingName" => "transfer",
        "targetPrefix" => "TransferService",
        "uid" => "transfer-2018-11-05",
      }

      api.add_operation(:create_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
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

      api.add_operation(:delete_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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
      end)

      api.add_operation(:update_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
      end)
    end

  end
end
