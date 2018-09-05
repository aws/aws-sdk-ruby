# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CognitoIdentity
  # @api private
  module ClientApi

    include Seahorse::Model

    ARNString = Shapes::StringShape.new(name: 'ARNString')
    AccessKeyString = Shapes::StringShape.new(name: 'AccessKeyString')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AmbiguousRoleResolutionType = Shapes::StringShape.new(name: 'AmbiguousRoleResolutionType')
    ClaimName = Shapes::StringShape.new(name: 'ClaimName')
    ClaimValue = Shapes::StringShape.new(name: 'ClaimValue')
    CognitoIdentityProvider = Shapes::StructureShape.new(name: 'CognitoIdentityProvider')
    CognitoIdentityProviderClientId = Shapes::StringShape.new(name: 'CognitoIdentityProviderClientId')
    CognitoIdentityProviderList = Shapes::ListShape.new(name: 'CognitoIdentityProviderList')
    CognitoIdentityProviderName = Shapes::StringShape.new(name: 'CognitoIdentityProviderName')
    CognitoIdentityProviderTokenCheck = Shapes::BooleanShape.new(name: 'CognitoIdentityProviderTokenCheck')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CreateIdentityPoolInput = Shapes::StructureShape.new(name: 'CreateIdentityPoolInput')
    Credentials = Shapes::StructureShape.new(name: 'Credentials')
    DateType = Shapes::TimestampShape.new(name: 'DateType')
    DeleteIdentitiesInput = Shapes::StructureShape.new(name: 'DeleteIdentitiesInput')
    DeleteIdentitiesResponse = Shapes::StructureShape.new(name: 'DeleteIdentitiesResponse')
    DeleteIdentityPoolInput = Shapes::StructureShape.new(name: 'DeleteIdentityPoolInput')
    DescribeIdentityInput = Shapes::StructureShape.new(name: 'DescribeIdentityInput')
    DescribeIdentityPoolInput = Shapes::StructureShape.new(name: 'DescribeIdentityPoolInput')
    DeveloperProviderName = Shapes::StringShape.new(name: 'DeveloperProviderName')
    DeveloperUserAlreadyRegisteredException = Shapes::StructureShape.new(name: 'DeveloperUserAlreadyRegisteredException')
    DeveloperUserIdentifier = Shapes::StringShape.new(name: 'DeveloperUserIdentifier')
    DeveloperUserIdentifierList = Shapes::ListShape.new(name: 'DeveloperUserIdentifierList')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ExternalServiceException = Shapes::StructureShape.new(name: 'ExternalServiceException')
    GetCredentialsForIdentityInput = Shapes::StructureShape.new(name: 'GetCredentialsForIdentityInput')
    GetCredentialsForIdentityResponse = Shapes::StructureShape.new(name: 'GetCredentialsForIdentityResponse')
    GetIdInput = Shapes::StructureShape.new(name: 'GetIdInput')
    GetIdResponse = Shapes::StructureShape.new(name: 'GetIdResponse')
    GetIdentityPoolRolesInput = Shapes::StructureShape.new(name: 'GetIdentityPoolRolesInput')
    GetIdentityPoolRolesResponse = Shapes::StructureShape.new(name: 'GetIdentityPoolRolesResponse')
    GetOpenIdTokenForDeveloperIdentityInput = Shapes::StructureShape.new(name: 'GetOpenIdTokenForDeveloperIdentityInput')
    GetOpenIdTokenForDeveloperIdentityResponse = Shapes::StructureShape.new(name: 'GetOpenIdTokenForDeveloperIdentityResponse')
    GetOpenIdTokenInput = Shapes::StructureShape.new(name: 'GetOpenIdTokenInput')
    GetOpenIdTokenResponse = Shapes::StructureShape.new(name: 'GetOpenIdTokenResponse')
    HideDisabled = Shapes::BooleanShape.new(name: 'HideDisabled')
    IdentitiesList = Shapes::ListShape.new(name: 'IdentitiesList')
    IdentityDescription = Shapes::StructureShape.new(name: 'IdentityDescription')
    IdentityId = Shapes::StringShape.new(name: 'IdentityId')
    IdentityIdList = Shapes::ListShape.new(name: 'IdentityIdList')
    IdentityPool = Shapes::StructureShape.new(name: 'IdentityPool')
    IdentityPoolId = Shapes::StringShape.new(name: 'IdentityPoolId')
    IdentityPoolName = Shapes::StringShape.new(name: 'IdentityPoolName')
    IdentityPoolShortDescription = Shapes::StructureShape.new(name: 'IdentityPoolShortDescription')
    IdentityPoolUnauthenticated = Shapes::BooleanShape.new(name: 'IdentityPoolUnauthenticated')
    IdentityPoolsList = Shapes::ListShape.new(name: 'IdentityPoolsList')
    IdentityProviderId = Shapes::StringShape.new(name: 'IdentityProviderId')
    IdentityProviderName = Shapes::StringShape.new(name: 'IdentityProviderName')
    IdentityProviderToken = Shapes::StringShape.new(name: 'IdentityProviderToken')
    IdentityProviders = Shapes::MapShape.new(name: 'IdentityProviders')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidIdentityPoolConfigurationException = Shapes::StructureShape.new(name: 'InvalidIdentityPoolConfigurationException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListIdentitiesInput = Shapes::StructureShape.new(name: 'ListIdentitiesInput')
    ListIdentitiesResponse = Shapes::StructureShape.new(name: 'ListIdentitiesResponse')
    ListIdentityPoolsInput = Shapes::StructureShape.new(name: 'ListIdentityPoolsInput')
    ListIdentityPoolsResponse = Shapes::StructureShape.new(name: 'ListIdentityPoolsResponse')
    LoginsList = Shapes::ListShape.new(name: 'LoginsList')
    LoginsMap = Shapes::MapShape.new(name: 'LoginsMap')
    LookupDeveloperIdentityInput = Shapes::StructureShape.new(name: 'LookupDeveloperIdentityInput')
    LookupDeveloperIdentityResponse = Shapes::StructureShape.new(name: 'LookupDeveloperIdentityResponse')
    MappingRule = Shapes::StructureShape.new(name: 'MappingRule')
    MappingRuleMatchType = Shapes::StringShape.new(name: 'MappingRuleMatchType')
    MappingRulesList = Shapes::ListShape.new(name: 'MappingRulesList')
    MergeDeveloperIdentitiesInput = Shapes::StructureShape.new(name: 'MergeDeveloperIdentitiesInput')
    MergeDeveloperIdentitiesResponse = Shapes::StructureShape.new(name: 'MergeDeveloperIdentitiesResponse')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    OIDCProviderList = Shapes::ListShape.new(name: 'OIDCProviderList')
    OIDCToken = Shapes::StringShape.new(name: 'OIDCToken')
    PaginationKey = Shapes::StringShape.new(name: 'PaginationKey')
    QueryLimit = Shapes::IntegerShape.new(name: 'QueryLimit')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleMapping = Shapes::StructureShape.new(name: 'RoleMapping')
    RoleMappingMap = Shapes::MapShape.new(name: 'RoleMappingMap')
    RoleMappingType = Shapes::StringShape.new(name: 'RoleMappingType')
    RoleType = Shapes::StringShape.new(name: 'RoleType')
    RolesMap = Shapes::MapShape.new(name: 'RolesMap')
    RulesConfigurationType = Shapes::StructureShape.new(name: 'RulesConfigurationType')
    SAMLProviderList = Shapes::ListShape.new(name: 'SAMLProviderList')
    SecretKeyString = Shapes::StringShape.new(name: 'SecretKeyString')
    SessionTokenString = Shapes::StringShape.new(name: 'SessionTokenString')
    SetIdentityPoolRolesInput = Shapes::StructureShape.new(name: 'SetIdentityPoolRolesInput')
    String = Shapes::StringShape.new(name: 'String')
    TokenDuration = Shapes::IntegerShape.new(name: 'TokenDuration')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnlinkDeveloperIdentityInput = Shapes::StructureShape.new(name: 'UnlinkDeveloperIdentityInput')
    UnlinkIdentityInput = Shapes::StructureShape.new(name: 'UnlinkIdentityInput')
    UnprocessedIdentityId = Shapes::StructureShape.new(name: 'UnprocessedIdentityId')
    UnprocessedIdentityIdList = Shapes::ListShape.new(name: 'UnprocessedIdentityIdList')

    CognitoIdentityProvider.add_member(:provider_name, Shapes::ShapeRef.new(shape: CognitoIdentityProviderName, location_name: "ProviderName"))
    CognitoIdentityProvider.add_member(:client_id, Shapes::ShapeRef.new(shape: CognitoIdentityProviderClientId, location_name: "ClientId"))
    CognitoIdentityProvider.add_member(:server_side_token_check, Shapes::ShapeRef.new(shape: CognitoIdentityProviderTokenCheck, location_name: "ServerSideTokenCheck", metadata: {"box"=>true}))
    CognitoIdentityProvider.struct_class = Types::CognitoIdentityProvider

    CognitoIdentityProviderList.member = Shapes::ShapeRef.new(shape: CognitoIdentityProvider)

    CreateIdentityPoolInput.add_member(:identity_pool_name, Shapes::ShapeRef.new(shape: IdentityPoolName, required: true, location_name: "IdentityPoolName"))
    CreateIdentityPoolInput.add_member(:allow_unauthenticated_identities, Shapes::ShapeRef.new(shape: IdentityPoolUnauthenticated, required: true, location_name: "AllowUnauthenticatedIdentities"))
    CreateIdentityPoolInput.add_member(:supported_login_providers, Shapes::ShapeRef.new(shape: IdentityProviders, location_name: "SupportedLoginProviders"))
    CreateIdentityPoolInput.add_member(:developer_provider_name, Shapes::ShapeRef.new(shape: DeveloperProviderName, location_name: "DeveloperProviderName"))
    CreateIdentityPoolInput.add_member(:open_id_connect_provider_arns, Shapes::ShapeRef.new(shape: OIDCProviderList, location_name: "OpenIdConnectProviderARNs"))
    CreateIdentityPoolInput.add_member(:cognito_identity_providers, Shapes::ShapeRef.new(shape: CognitoIdentityProviderList, location_name: "CognitoIdentityProviders"))
    CreateIdentityPoolInput.add_member(:saml_provider_arns, Shapes::ShapeRef.new(shape: SAMLProviderList, location_name: "SamlProviderARNs"))
    CreateIdentityPoolInput.struct_class = Types::CreateIdentityPoolInput

    Credentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: AccessKeyString, location_name: "AccessKeyId"))
    Credentials.add_member(:secret_key, Shapes::ShapeRef.new(shape: SecretKeyString, location_name: "SecretKey"))
    Credentials.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionTokenString, location_name: "SessionToken"))
    Credentials.add_member(:expiration, Shapes::ShapeRef.new(shape: DateType, location_name: "Expiration"))
    Credentials.struct_class = Types::Credentials

    DeleteIdentitiesInput.add_member(:identity_ids_to_delete, Shapes::ShapeRef.new(shape: IdentityIdList, required: true, location_name: "IdentityIdsToDelete"))
    DeleteIdentitiesInput.struct_class = Types::DeleteIdentitiesInput

    DeleteIdentitiesResponse.add_member(:unprocessed_identity_ids, Shapes::ShapeRef.new(shape: UnprocessedIdentityIdList, location_name: "UnprocessedIdentityIds"))
    DeleteIdentitiesResponse.struct_class = Types::DeleteIdentitiesResponse

    DeleteIdentityPoolInput.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    DeleteIdentityPoolInput.struct_class = Types::DeleteIdentityPoolInput

    DescribeIdentityInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location_name: "IdentityId"))
    DescribeIdentityInput.struct_class = Types::DescribeIdentityInput

    DescribeIdentityPoolInput.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    DescribeIdentityPoolInput.struct_class = Types::DescribeIdentityPoolInput

    DeveloperUserIdentifierList.member = Shapes::ShapeRef.new(shape: DeveloperUserIdentifier)

    GetCredentialsForIdentityInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location_name: "IdentityId"))
    GetCredentialsForIdentityInput.add_member(:logins, Shapes::ShapeRef.new(shape: LoginsMap, location_name: "Logins"))
    GetCredentialsForIdentityInput.add_member(:custom_role_arn, Shapes::ShapeRef.new(shape: ARNString, location_name: "CustomRoleArn"))
    GetCredentialsForIdentityInput.struct_class = Types::GetCredentialsForIdentityInput

    GetCredentialsForIdentityResponse.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    GetCredentialsForIdentityResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, location_name: "Credentials"))
    GetCredentialsForIdentityResponse.struct_class = Types::GetCredentialsForIdentityResponse

    GetIdInput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    GetIdInput.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    GetIdInput.add_member(:logins, Shapes::ShapeRef.new(shape: LoginsMap, location_name: "Logins"))
    GetIdInput.struct_class = Types::GetIdInput

    GetIdResponse.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    GetIdResponse.struct_class = Types::GetIdResponse

    GetIdentityPoolRolesInput.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    GetIdentityPoolRolesInput.struct_class = Types::GetIdentityPoolRolesInput

    GetIdentityPoolRolesResponse.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    GetIdentityPoolRolesResponse.add_member(:roles, Shapes::ShapeRef.new(shape: RolesMap, location_name: "Roles"))
    GetIdentityPoolRolesResponse.add_member(:role_mappings, Shapes::ShapeRef.new(shape: RoleMappingMap, location_name: "RoleMappings"))
    GetIdentityPoolRolesResponse.struct_class = Types::GetIdentityPoolRolesResponse

    GetOpenIdTokenForDeveloperIdentityInput.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    GetOpenIdTokenForDeveloperIdentityInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    GetOpenIdTokenForDeveloperIdentityInput.add_member(:logins, Shapes::ShapeRef.new(shape: LoginsMap, required: true, location_name: "Logins"))
    GetOpenIdTokenForDeveloperIdentityInput.add_member(:token_duration, Shapes::ShapeRef.new(shape: TokenDuration, location_name: "TokenDuration"))
    GetOpenIdTokenForDeveloperIdentityInput.struct_class = Types::GetOpenIdTokenForDeveloperIdentityInput

    GetOpenIdTokenForDeveloperIdentityResponse.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    GetOpenIdTokenForDeveloperIdentityResponse.add_member(:token, Shapes::ShapeRef.new(shape: OIDCToken, location_name: "Token"))
    GetOpenIdTokenForDeveloperIdentityResponse.struct_class = Types::GetOpenIdTokenForDeveloperIdentityResponse

    GetOpenIdTokenInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location_name: "IdentityId"))
    GetOpenIdTokenInput.add_member(:logins, Shapes::ShapeRef.new(shape: LoginsMap, location_name: "Logins"))
    GetOpenIdTokenInput.struct_class = Types::GetOpenIdTokenInput

    GetOpenIdTokenResponse.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    GetOpenIdTokenResponse.add_member(:token, Shapes::ShapeRef.new(shape: OIDCToken, location_name: "Token"))
    GetOpenIdTokenResponse.struct_class = Types::GetOpenIdTokenResponse

    IdentitiesList.member = Shapes::ShapeRef.new(shape: IdentityDescription)

    IdentityDescription.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    IdentityDescription.add_member(:logins, Shapes::ShapeRef.new(shape: LoginsList, location_name: "Logins"))
    IdentityDescription.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    IdentityDescription.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "LastModifiedDate"))
    IdentityDescription.struct_class = Types::IdentityDescription

    IdentityIdList.member = Shapes::ShapeRef.new(shape: IdentityId)

    IdentityPool.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    IdentityPool.add_member(:identity_pool_name, Shapes::ShapeRef.new(shape: IdentityPoolName, required: true, location_name: "IdentityPoolName"))
    IdentityPool.add_member(:allow_unauthenticated_identities, Shapes::ShapeRef.new(shape: IdentityPoolUnauthenticated, required: true, location_name: "AllowUnauthenticatedIdentities"))
    IdentityPool.add_member(:supported_login_providers, Shapes::ShapeRef.new(shape: IdentityProviders, location_name: "SupportedLoginProviders"))
    IdentityPool.add_member(:developer_provider_name, Shapes::ShapeRef.new(shape: DeveloperProviderName, location_name: "DeveloperProviderName"))
    IdentityPool.add_member(:open_id_connect_provider_arns, Shapes::ShapeRef.new(shape: OIDCProviderList, location_name: "OpenIdConnectProviderARNs"))
    IdentityPool.add_member(:cognito_identity_providers, Shapes::ShapeRef.new(shape: CognitoIdentityProviderList, location_name: "CognitoIdentityProviders"))
    IdentityPool.add_member(:saml_provider_arns, Shapes::ShapeRef.new(shape: SAMLProviderList, location_name: "SamlProviderARNs"))
    IdentityPool.struct_class = Types::IdentityPool

    IdentityPoolShortDescription.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    IdentityPoolShortDescription.add_member(:identity_pool_name, Shapes::ShapeRef.new(shape: IdentityPoolName, location_name: "IdentityPoolName"))
    IdentityPoolShortDescription.struct_class = Types::IdentityPoolShortDescription

    IdentityPoolsList.member = Shapes::ShapeRef.new(shape: IdentityPoolShortDescription)

    IdentityProviders.key = Shapes::ShapeRef.new(shape: IdentityProviderName)
    IdentityProviders.value = Shapes::ShapeRef.new(shape: IdentityProviderId)

    ListIdentitiesInput.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    ListIdentitiesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryLimit, required: true, location_name: "MaxResults"))
    ListIdentitiesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListIdentitiesInput.add_member(:hide_disabled, Shapes::ShapeRef.new(shape: HideDisabled, location_name: "HideDisabled"))
    ListIdentitiesInput.struct_class = Types::ListIdentitiesInput

    ListIdentitiesResponse.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    ListIdentitiesResponse.add_member(:identities, Shapes::ShapeRef.new(shape: IdentitiesList, location_name: "Identities"))
    ListIdentitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListIdentitiesResponse.struct_class = Types::ListIdentitiesResponse

    ListIdentityPoolsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryLimit, required: true, location_name: "MaxResults"))
    ListIdentityPoolsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListIdentityPoolsInput.struct_class = Types::ListIdentityPoolsInput

    ListIdentityPoolsResponse.add_member(:identity_pools, Shapes::ShapeRef.new(shape: IdentityPoolsList, location_name: "IdentityPools"))
    ListIdentityPoolsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListIdentityPoolsResponse.struct_class = Types::ListIdentityPoolsResponse

    LoginsList.member = Shapes::ShapeRef.new(shape: IdentityProviderName)

    LoginsMap.key = Shapes::ShapeRef.new(shape: IdentityProviderName)
    LoginsMap.value = Shapes::ShapeRef.new(shape: IdentityProviderToken)

    LookupDeveloperIdentityInput.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    LookupDeveloperIdentityInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    LookupDeveloperIdentityInput.add_member(:developer_user_identifier, Shapes::ShapeRef.new(shape: DeveloperUserIdentifier, location_name: "DeveloperUserIdentifier"))
    LookupDeveloperIdentityInput.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryLimit, location_name: "MaxResults"))
    LookupDeveloperIdentityInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    LookupDeveloperIdentityInput.struct_class = Types::LookupDeveloperIdentityInput

    LookupDeveloperIdentityResponse.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    LookupDeveloperIdentityResponse.add_member(:developer_user_identifier_list, Shapes::ShapeRef.new(shape: DeveloperUserIdentifierList, location_name: "DeveloperUserIdentifierList"))
    LookupDeveloperIdentityResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    LookupDeveloperIdentityResponse.struct_class = Types::LookupDeveloperIdentityResponse

    MappingRule.add_member(:claim, Shapes::ShapeRef.new(shape: ClaimName, required: true, location_name: "Claim"))
    MappingRule.add_member(:match_type, Shapes::ShapeRef.new(shape: MappingRuleMatchType, required: true, location_name: "MatchType"))
    MappingRule.add_member(:value, Shapes::ShapeRef.new(shape: ClaimValue, required: true, location_name: "Value"))
    MappingRule.add_member(:role_arn, Shapes::ShapeRef.new(shape: ARNString, required: true, location_name: "RoleARN"))
    MappingRule.struct_class = Types::MappingRule

    MappingRulesList.member = Shapes::ShapeRef.new(shape: MappingRule)

    MergeDeveloperIdentitiesInput.add_member(:source_user_identifier, Shapes::ShapeRef.new(shape: DeveloperUserIdentifier, required: true, location_name: "SourceUserIdentifier"))
    MergeDeveloperIdentitiesInput.add_member(:destination_user_identifier, Shapes::ShapeRef.new(shape: DeveloperUserIdentifier, required: true, location_name: "DestinationUserIdentifier"))
    MergeDeveloperIdentitiesInput.add_member(:developer_provider_name, Shapes::ShapeRef.new(shape: DeveloperProviderName, required: true, location_name: "DeveloperProviderName"))
    MergeDeveloperIdentitiesInput.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    MergeDeveloperIdentitiesInput.struct_class = Types::MergeDeveloperIdentitiesInput

    MergeDeveloperIdentitiesResponse.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    MergeDeveloperIdentitiesResponse.struct_class = Types::MergeDeveloperIdentitiesResponse

    OIDCProviderList.member = Shapes::ShapeRef.new(shape: ARNString)

    RoleMapping.add_member(:type, Shapes::ShapeRef.new(shape: RoleMappingType, required: true, location_name: "Type"))
    RoleMapping.add_member(:ambiguous_role_resolution, Shapes::ShapeRef.new(shape: AmbiguousRoleResolutionType, location_name: "AmbiguousRoleResolution"))
    RoleMapping.add_member(:rules_configuration, Shapes::ShapeRef.new(shape: RulesConfigurationType, location_name: "RulesConfiguration"))
    RoleMapping.struct_class = Types::RoleMapping

    RoleMappingMap.key = Shapes::ShapeRef.new(shape: IdentityProviderName)
    RoleMappingMap.value = Shapes::ShapeRef.new(shape: RoleMapping)

    RolesMap.key = Shapes::ShapeRef.new(shape: RoleType)
    RolesMap.value = Shapes::ShapeRef.new(shape: ARNString)

    RulesConfigurationType.add_member(:rules, Shapes::ShapeRef.new(shape: MappingRulesList, required: true, location_name: "Rules"))
    RulesConfigurationType.struct_class = Types::RulesConfigurationType

    SAMLProviderList.member = Shapes::ShapeRef.new(shape: ARNString)

    SetIdentityPoolRolesInput.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    SetIdentityPoolRolesInput.add_member(:roles, Shapes::ShapeRef.new(shape: RolesMap, required: true, location_name: "Roles"))
    SetIdentityPoolRolesInput.add_member(:role_mappings, Shapes::ShapeRef.new(shape: RoleMappingMap, location_name: "RoleMappings"))
    SetIdentityPoolRolesInput.struct_class = Types::SetIdentityPoolRolesInput

    UnlinkDeveloperIdentityInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location_name: "IdentityId"))
    UnlinkDeveloperIdentityInput.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, required: true, location_name: "IdentityPoolId"))
    UnlinkDeveloperIdentityInput.add_member(:developer_provider_name, Shapes::ShapeRef.new(shape: DeveloperProviderName, required: true, location_name: "DeveloperProviderName"))
    UnlinkDeveloperIdentityInput.add_member(:developer_user_identifier, Shapes::ShapeRef.new(shape: DeveloperUserIdentifier, required: true, location_name: "DeveloperUserIdentifier"))
    UnlinkDeveloperIdentityInput.struct_class = Types::UnlinkDeveloperIdentityInput

    UnlinkIdentityInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location_name: "IdentityId"))
    UnlinkIdentityInput.add_member(:logins, Shapes::ShapeRef.new(shape: LoginsMap, required: true, location_name: "Logins"))
    UnlinkIdentityInput.add_member(:logins_to_remove, Shapes::ShapeRef.new(shape: LoginsList, required: true, location_name: "LoginsToRemove"))
    UnlinkIdentityInput.struct_class = Types::UnlinkIdentityInput

    UnprocessedIdentityId.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    UnprocessedIdentityId.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    UnprocessedIdentityId.struct_class = Types::UnprocessedIdentityId

    UnprocessedIdentityIdList.member = Shapes::ShapeRef.new(shape: UnprocessedIdentityId)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-06-30"

      api.metadata = {
        "apiVersion" => "2014-06-30",
        "endpointPrefix" => "cognito-identity",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Cognito Identity",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSCognitoIdentityService",
        "uid" => "cognito-identity-2014-06-30",
      }

      api.add_operation(:create_identity_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIdentityPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIdentityPoolInput)
        o.output = Shapes::ShapeRef.new(shape: IdentityPool)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_identities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIdentities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIdentitiesInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteIdentitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_identity_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIdentityPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIdentityPoolInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeIdentityInput)
        o.output = Shapes::ShapeRef.new(shape: IdentityDescription)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_identity_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIdentityPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeIdentityPoolInput)
        o.output = Shapes::ShapeRef.new(shape: IdentityPool)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_credentials_for_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCredentialsForIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o.input = Shapes::ShapeRef.new(shape: GetCredentialsForIdentityInput)
        o.output = Shapes::ShapeRef.new(shape: GetCredentialsForIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIdentityPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ExternalServiceException)
      end)

      api.add_operation(:get_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o.input = Shapes::ShapeRef.new(shape: GetIdInput)
        o.output = Shapes::ShapeRef.new(shape: GetIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ExternalServiceException)
      end)

      api.add_operation(:get_identity_pool_roles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdentityPoolRoles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIdentityPoolRolesInput)
        o.output = Shapes::ShapeRef.new(shape: GetIdentityPoolRolesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_open_id_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOpenIdToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o.input = Shapes::ShapeRef.new(shape: GetOpenIdTokenInput)
        o.output = Shapes::ShapeRef.new(shape: GetOpenIdTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ExternalServiceException)
      end)

      api.add_operation(:get_open_id_token_for_developer_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOpenIdTokenForDeveloperIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOpenIdTokenForDeveloperIdentityInput)
        o.output = Shapes::ShapeRef.new(shape: GetOpenIdTokenForDeveloperIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: DeveloperUserAlreadyRegisteredException)
      end)

      api.add_operation(:list_identities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdentities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIdentitiesInput)
        o.output = Shapes::ShapeRef.new(shape: ListIdentitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_identity_pools, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdentityPools"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIdentityPoolsInput)
        o.output = Shapes::ShapeRef.new(shape: ListIdentityPoolsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:lookup_developer_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LookupDeveloperIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: LookupDeveloperIdentityInput)
        o.output = Shapes::ShapeRef.new(shape: LookupDeveloperIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:merge_developer_identities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MergeDeveloperIdentities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MergeDeveloperIdentitiesInput)
        o.output = Shapes::ShapeRef.new(shape: MergeDeveloperIdentitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:set_identity_pool_roles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetIdentityPoolRoles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetIdentityPoolRolesInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:unlink_developer_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnlinkDeveloperIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UnlinkDeveloperIdentityInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:unlink_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnlinkIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o.input = Shapes::ShapeRef.new(shape: UnlinkIdentityInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ExternalServiceException)
      end)

      api.add_operation(:update_identity_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIdentityPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IdentityPool)
        o.output = Shapes::ShapeRef.new(shape: IdentityPool)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)
    end

  end
end
