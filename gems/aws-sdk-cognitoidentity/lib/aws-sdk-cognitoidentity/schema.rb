# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentity
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARNString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#ARNString', name: 'ARNString', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AccessKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#AccessKeyString', name: 'AccessKeyString')
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^\\d+$"})
    AmbiguousRoleResolutionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentity#AmbiguousRoleResolutionType', name: 'AmbiguousRoleResolutionType')
    ClaimName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#ClaimName', name: 'ClaimName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    ClaimValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#ClaimValue', name: 'ClaimValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ClassicFlow = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cognitoidentity#ClassicFlow', name: 'ClassicFlow')
    CognitoIdentityProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#CognitoIdentityProvider', name: 'CognitoIdentityProvider')
    CognitoIdentityProviderClientId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#CognitoIdentityProviderClientId', name: 'CognitoIdentityProviderClientId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w_]+$"})
    CognitoIdentityProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#CognitoIdentityProviderList', name: 'CognitoIdentityProviderList')
    CognitoIdentityProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#CognitoIdentityProviderName', name: 'CognitoIdentityProviderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w._:/-]+$"})
    CognitoIdentityProviderTokenCheck = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cognitoidentity#CognitoIdentityProviderTokenCheck', name: 'CognitoIdentityProviderTokenCheck', traits: {"smithy.api#default" => false})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateIdentityPoolInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#CreateIdentityPoolInput', name: 'CreateIdentityPoolInput')
    CreateIdentityPoolOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#CreateIdentityPoolOutput', name: 'CreateIdentityPoolOutput')
    Credentials = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#Credentials', name: 'Credentials')
    DateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.cognitoidentity#DateType', name: 'DateType')
    DeleteIdentitiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#DeleteIdentitiesInput', name: 'DeleteIdentitiesInput')
    DeleteIdentitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#DeleteIdentitiesResponse', name: 'DeleteIdentitiesResponse')
    DeleteIdentityPoolInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#DeleteIdentityPoolInput', name: 'DeleteIdentityPoolInput')
    DescribeIdentityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#DescribeIdentityInput', name: 'DescribeIdentityInput')
    DescribeIdentityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#DescribeIdentityOutput', name: 'DescribeIdentityOutput')
    DescribeIdentityPoolInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#DescribeIdentityPoolInput', name: 'DescribeIdentityPoolInput')
    DescribeIdentityPoolOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#DescribeIdentityPoolOutput', name: 'DescribeIdentityPoolOutput')
    DeveloperProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#DeveloperProviderName', name: 'DeveloperProviderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w._-]+$"})
    DeveloperUserAlreadyRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#DeveloperUserAlreadyRegisteredException', name: 'DeveloperUserAlreadyRegisteredException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeveloperUserIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#DeveloperUserIdentifier', name: 'DeveloperUserIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    DeveloperUserIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#DeveloperUserIdentifierList', name: 'DeveloperUserIdentifierList')
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentity#ErrorCode', name: 'ErrorCode')
    ExternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#ExternalServiceException', name: 'ExternalServiceException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GetCredentialsForIdentityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetCredentialsForIdentityInput', name: 'GetCredentialsForIdentityInput')
    GetCredentialsForIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetCredentialsForIdentityResponse', name: 'GetCredentialsForIdentityResponse')
    GetIdInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetIdInput', name: 'GetIdInput')
    GetIdResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetIdResponse', name: 'GetIdResponse')
    GetIdentityPoolRolesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetIdentityPoolRolesInput', name: 'GetIdentityPoolRolesInput')
    GetIdentityPoolRolesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetIdentityPoolRolesResponse', name: 'GetIdentityPoolRolesResponse')
    GetOpenIdTokenForDeveloperIdentityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetOpenIdTokenForDeveloperIdentityInput', name: 'GetOpenIdTokenForDeveloperIdentityInput')
    GetOpenIdTokenForDeveloperIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetOpenIdTokenForDeveloperIdentityResponse', name: 'GetOpenIdTokenForDeveloperIdentityResponse')
    GetOpenIdTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetOpenIdTokenInput', name: 'GetOpenIdTokenInput')
    GetOpenIdTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetOpenIdTokenResponse', name: 'GetOpenIdTokenResponse')
    GetPrincipalTagAttributeMapInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetPrincipalTagAttributeMapInput', name: 'GetPrincipalTagAttributeMapInput')
    GetPrincipalTagAttributeMapResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#GetPrincipalTagAttributeMapResponse', name: 'GetPrincipalTagAttributeMapResponse')
    HideDisabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cognitoidentity#HideDisabled', name: 'HideDisabled', traits: {"smithy.api#default" => false})
    IdentitiesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#IdentitiesList', name: 'IdentitiesList')
    IdentityDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#IdentityDescription', name: 'IdentityDescription')
    IdentityId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#IdentityId', name: 'IdentityId', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+:[0-9a-f-]+$"})
    IdentityIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#IdentityIdList', name: 'IdentityIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}})
    IdentityPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#IdentityPoolId', name: 'IdentityPoolId', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+:[0-9a-f-]+$"})
    IdentityPoolName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#IdentityPoolName', name: 'IdentityPoolName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\s+=,.@-]+$"})
    IdentityPoolShortDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#IdentityPoolShortDescription', name: 'IdentityPoolShortDescription')
    IdentityPoolTagsListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#IdentityPoolTagsListType', name: 'IdentityPoolTagsListType')
    IdentityPoolTagsType = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentity#IdentityPoolTagsType', name: 'IdentityPoolTagsType')
    IdentityPoolUnauthenticated = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cognitoidentity#IdentityPoolUnauthenticated', name: 'IdentityPoolUnauthenticated', traits: {"smithy.api#default" => false})
    IdentityPoolsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#IdentityPoolsList', name: 'IdentityPoolsList')
    IdentityProviderId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#IdentityProviderId', name: 'IdentityProviderId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w.;_/-]+$"})
    IdentityProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#IdentityProviderName', name: 'IdentityProviderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    IdentityProviderToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#IdentityProviderToken', name: 'IdentityProviderToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 50000}, "smithy.api#sensitive" => {}})
    IdentityProviders = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentity#IdentityProviders', name: 'IdentityProviders', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#InternalErrorException', name: 'InternalErrorException', traits: {"smithy.api#error" => "server"})
    InvalidIdentityPoolConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#InvalidIdentityPoolConfigurationException', name: 'InvalidIdentityPoolConfigurationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListIdentitiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#ListIdentitiesInput', name: 'ListIdentitiesInput')
    ListIdentitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#ListIdentitiesResponse', name: 'ListIdentitiesResponse')
    ListIdentityPoolsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#ListIdentityPoolsInput', name: 'ListIdentityPoolsInput')
    ListIdentityPoolsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#ListIdentityPoolsResponse', name: 'ListIdentityPoolsResponse')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LoginsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#LoginsList', name: 'LoginsList')
    LoginsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentity#LoginsMap', name: 'LoginsMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    LookupDeveloperIdentityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#LookupDeveloperIdentityInput', name: 'LookupDeveloperIdentityInput')
    LookupDeveloperIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#LookupDeveloperIdentityResponse', name: 'LookupDeveloperIdentityResponse')
    MappingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#MappingRule', name: 'MappingRule')
    MappingRuleMatchType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentity#MappingRuleMatchType', name: 'MappingRuleMatchType')
    MappingRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#MappingRulesList', name: 'MappingRulesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    MergeDeveloperIdentitiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#MergeDeveloperIdentitiesInput', name: 'MergeDeveloperIdentitiesInput')
    MergeDeveloperIdentitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#MergeDeveloperIdentitiesResponse', name: 'MergeDeveloperIdentitiesResponse')
    NotAuthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#NotAuthorizedException', name: 'NotAuthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    OIDCProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#OIDCProviderList', name: 'OIDCProviderList')
    OIDCToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#OIDCToken', name: 'OIDCToken', traits: {"smithy.api#sensitive" => {}})
    PaginationKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#PaginationKey', name: 'PaginationKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#pattern" => "^[\\S]+$"})
    PrincipalTagID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#PrincipalTagID', name: 'PrincipalTagID', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PrincipalTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#PrincipalTagValue', name: 'PrincipalTagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    PrincipalTags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentity#PrincipalTags', name: 'PrincipalTags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    QueryLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentity#QueryLimit', name: 'QueryLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    ResourceConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#ResourceConflictException', name: 'ResourceConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#RoleMapping', name: 'RoleMapping')
    RoleMappingMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentity#RoleMappingMap', name: 'RoleMappingMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RoleMappingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentity#RoleMappingType', name: 'RoleMappingType')
    RoleType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#RoleType', name: 'RoleType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(un)?authenticated$"})
    RolesMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentity#RolesMap', name: 'RolesMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    RulesConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#RulesConfigurationType', name: 'RulesConfigurationType')
    SAMLProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#SAMLProviderList', name: 'SAMLProviderList')
    SecretKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#SecretKeyString', name: 'SecretKeyString', traits: {"smithy.api#sensitive" => {}})
    SessionTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#SessionTokenString', name: 'SessionTokenString')
    SetIdentityPoolRolesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#SetIdentityPoolRolesInput', name: 'SetIdentityPoolRolesInput')
    SetPrincipalTagAttributeMapInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#SetPrincipalTagAttributeMapInput', name: 'SetPrincipalTagAttributeMapInput')
    SetPrincipalTagAttributeMapResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#SetPrincipalTagAttributeMapResponse', name: 'SetPrincipalTagAttributeMapResponse')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#String', name: 'String')
    TagKeysType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#TagKeysType', name: 'TagKeysType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#TagResourceInput', name: 'TagResourceInput')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#TagResourceResponse', name: 'TagResourceResponse')
    TagValueType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentity#TagValueType', name: 'TagValueType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TokenDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentity#TokenDuration', name: 'TokenDuration', traits: {"smithy.api#range" => {"min" => 1, "max" => 86400}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnlinkDeveloperIdentityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#UnlinkDeveloperIdentityInput', name: 'UnlinkDeveloperIdentityInput')
    UnlinkIdentityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#UnlinkIdentityInput', name: 'UnlinkIdentityInput')
    UnprocessedIdentityId = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#UnprocessedIdentityId', name: 'UnprocessedIdentityId')
    UnprocessedIdentityIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentity#UnprocessedIdentityIdList', name: 'UnprocessedIdentityIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateIdentityPoolInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#UpdateIdentityPoolInput', name: 'UpdateIdentityPoolInput')
    UpdateIdentityPoolOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentity#UpdateIdentityPoolOutput', name: 'UpdateIdentityPoolOutput')
    UseDefaults = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cognitoidentity#UseDefaults', name: 'UseDefaults')

    AmbiguousRoleResolutionType.add_member(:authenticated_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHENTICATED_ROLE', traits: {"smithy.api#enumValue" => "AuthenticatedRole"}))
    AmbiguousRoleResolutionType.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "Deny"}))
    CognitoIdentityProvider.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoIdentityProviderName, location_name: 'ProviderName'))
    CognitoIdentityProvider.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoIdentityProviderClientId, location_name: 'ClientId'))
    CognitoIdentityProvider.add_member(:server_side_token_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoIdentityProviderTokenCheck, location_name: 'ServerSideTokenCheck', traits: {"smithy.api#default" => nil}))
    CognitoIdentityProvider.type = Types::CognitoIdentityProvider
    CognitoIdentityProviderList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoIdentityProvider)
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    CreateIdentityPoolInput.add_member(:identity_pool_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolName, location_name: 'IdentityPoolName', traits: {"smithy.api#required" => {}}))
    CreateIdentityPoolInput.add_member(:allow_unauthenticated_identities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolUnauthenticated, location_name: 'AllowUnauthenticatedIdentities', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateIdentityPoolInput.add_member(:allow_classic_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassicFlow, location_name: 'AllowClassicFlow'))
    CreateIdentityPoolInput.add_member(:supported_login_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviders, location_name: 'SupportedLoginProviders'))
    CreateIdentityPoolInput.add_member(:developer_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperProviderName, location_name: 'DeveloperProviderName'))
    CreateIdentityPoolInput.add_member(:open_id_connect_provider_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OIDCProviderList, location_name: 'OpenIdConnectProviderARNs'))
    CreateIdentityPoolInput.add_member(:cognito_identity_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoIdentityProviderList, location_name: 'CognitoIdentityProviders'))
    CreateIdentityPoolInput.add_member(:saml_provider_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLProviderList, location_name: 'SamlProviderARNs'))
    CreateIdentityPoolInput.add_member(:identity_pool_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolTagsType, location_name: 'IdentityPoolTags'))
    CreateIdentityPoolInput.type = Types::CreateIdentityPoolInput
    CreateIdentityPoolOutput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    CreateIdentityPoolOutput.add_member(:identity_pool_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolName, location_name: 'IdentityPoolName', traits: {"smithy.api#required" => {}}))
    CreateIdentityPoolOutput.add_member(:allow_unauthenticated_identities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolUnauthenticated, location_name: 'AllowUnauthenticatedIdentities', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateIdentityPoolOutput.add_member(:allow_classic_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassicFlow, location_name: 'AllowClassicFlow'))
    CreateIdentityPoolOutput.add_member(:supported_login_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviders, location_name: 'SupportedLoginProviders'))
    CreateIdentityPoolOutput.add_member(:developer_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperProviderName, location_name: 'DeveloperProviderName'))
    CreateIdentityPoolOutput.add_member(:open_id_connect_provider_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OIDCProviderList, location_name: 'OpenIdConnectProviderARNs'))
    CreateIdentityPoolOutput.add_member(:cognito_identity_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoIdentityProviderList, location_name: 'CognitoIdentityProviders'))
    CreateIdentityPoolOutput.add_member(:saml_provider_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLProviderList, location_name: 'SamlProviderARNs'))
    CreateIdentityPoolOutput.add_member(:identity_pool_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolTagsType, location_name: 'IdentityPoolTags'))
    CreateIdentityPoolOutput.type = Types::CreateIdentityPoolOutput
    Credentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyString, location_name: 'AccessKeyId'))
    Credentials.add_member(:secret_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretKeyString, location_name: 'SecretKey'))
    Credentials.add_member(:session_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionTokenString, location_name: 'SessionToken'))
    Credentials.add_member(:expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'Expiration'))
    Credentials.type = Types::Credentials
    DeleteIdentitiesInput.add_member(:identity_ids_to_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityIdList, location_name: 'IdentityIdsToDelete', traits: {"smithy.api#required" => {}}))
    DeleteIdentitiesInput.type = Types::DeleteIdentitiesInput
    DeleteIdentitiesResponse.add_member(:unprocessed_identity_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedIdentityIdList, location_name: 'UnprocessedIdentityIds'))
    DeleteIdentitiesResponse.type = Types::DeleteIdentitiesResponse
    DeleteIdentityPoolInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    DeleteIdentityPoolInput.type = Types::DeleteIdentityPoolInput
    DescribeIdentityInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId', traits: {"smithy.api#required" => {}}))
    DescribeIdentityInput.type = Types::DescribeIdentityInput
    DescribeIdentityOutput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    DescribeIdentityOutput.add_member(:logins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoginsList, location_name: 'Logins'))
    DescribeIdentityOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    DescribeIdentityOutput.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    DescribeIdentityOutput.type = Types::DescribeIdentityOutput
    DescribeIdentityPoolInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    DescribeIdentityPoolInput.type = Types::DescribeIdentityPoolInput
    DescribeIdentityPoolOutput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    DescribeIdentityPoolOutput.add_member(:identity_pool_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolName, location_name: 'IdentityPoolName', traits: {"smithy.api#required" => {}}))
    DescribeIdentityPoolOutput.add_member(:allow_unauthenticated_identities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolUnauthenticated, location_name: 'AllowUnauthenticatedIdentities', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DescribeIdentityPoolOutput.add_member(:allow_classic_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassicFlow, location_name: 'AllowClassicFlow'))
    DescribeIdentityPoolOutput.add_member(:supported_login_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviders, location_name: 'SupportedLoginProviders'))
    DescribeIdentityPoolOutput.add_member(:developer_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperProviderName, location_name: 'DeveloperProviderName'))
    DescribeIdentityPoolOutput.add_member(:open_id_connect_provider_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OIDCProviderList, location_name: 'OpenIdConnectProviderARNs'))
    DescribeIdentityPoolOutput.add_member(:cognito_identity_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoIdentityProviderList, location_name: 'CognitoIdentityProviders'))
    DescribeIdentityPoolOutput.add_member(:saml_provider_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLProviderList, location_name: 'SamlProviderARNs'))
    DescribeIdentityPoolOutput.add_member(:identity_pool_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolTagsType, location_name: 'IdentityPoolTags'))
    DescribeIdentityPoolOutput.type = Types::DescribeIdentityPoolOutput
    DeveloperUserAlreadyRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    DeveloperUserAlreadyRegisteredException.type = Types::DeveloperUserAlreadyRegisteredException
    DeveloperUserIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperUserIdentifier)
    ErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "AccessDenied"}))
    ErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVER_ERROR', traits: {"smithy.api#enumValue" => "InternalServerError"}))
    ExternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ExternalServiceException.type = Types::ExternalServiceException
    GetCredentialsForIdentityInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId', traits: {"smithy.api#required" => {}}))
    GetCredentialsForIdentityInput.add_member(:logins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoginsMap, location_name: 'Logins'))
    GetCredentialsForIdentityInput.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARNString, location_name: 'CustomRoleArn'))
    GetCredentialsForIdentityInput.type = Types::GetCredentialsForIdentityInput
    GetCredentialsForIdentityResponse.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    GetCredentialsForIdentityResponse.add_member(:credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Credentials, location_name: 'Credentials'))
    GetCredentialsForIdentityResponse.type = Types::GetCredentialsForIdentityResponse
    GetIdInput.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    GetIdInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    GetIdInput.add_member(:logins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoginsMap, location_name: 'Logins'))
    GetIdInput.type = Types::GetIdInput
    GetIdResponse.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    GetIdResponse.type = Types::GetIdResponse
    GetIdentityPoolRolesInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    GetIdentityPoolRolesInput.type = Types::GetIdentityPoolRolesInput
    GetIdentityPoolRolesResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId'))
    GetIdentityPoolRolesResponse.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RolesMap, location_name: 'Roles'))
    GetIdentityPoolRolesResponse.add_member(:role_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleMappingMap, location_name: 'RoleMappings'))
    GetIdentityPoolRolesResponse.type = Types::GetIdentityPoolRolesResponse
    GetOpenIdTokenForDeveloperIdentityInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    GetOpenIdTokenForDeveloperIdentityInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    GetOpenIdTokenForDeveloperIdentityInput.add_member(:logins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoginsMap, location_name: 'Logins', traits: {"smithy.api#required" => {}}))
    GetOpenIdTokenForDeveloperIdentityInput.add_member(:principal_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalTags, location_name: 'PrincipalTags'))
    GetOpenIdTokenForDeveloperIdentityInput.add_member(:token_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenDuration, location_name: 'TokenDuration'))
    GetOpenIdTokenForDeveloperIdentityInput.type = Types::GetOpenIdTokenForDeveloperIdentityInput
    GetOpenIdTokenForDeveloperIdentityResponse.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    GetOpenIdTokenForDeveloperIdentityResponse.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OIDCToken, location_name: 'Token'))
    GetOpenIdTokenForDeveloperIdentityResponse.type = Types::GetOpenIdTokenForDeveloperIdentityResponse
    GetOpenIdTokenInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId', traits: {"smithy.api#required" => {}}))
    GetOpenIdTokenInput.add_member(:logins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoginsMap, location_name: 'Logins'))
    GetOpenIdTokenInput.type = Types::GetOpenIdTokenInput
    GetOpenIdTokenResponse.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    GetOpenIdTokenResponse.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OIDCToken, location_name: 'Token'))
    GetOpenIdTokenResponse.type = Types::GetOpenIdTokenResponse
    GetPrincipalTagAttributeMapInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    GetPrincipalTagAttributeMapInput.add_member(:identity_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: 'IdentityProviderName', traits: {"smithy.api#required" => {}}))
    GetPrincipalTagAttributeMapInput.type = Types::GetPrincipalTagAttributeMapInput
    GetPrincipalTagAttributeMapResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId'))
    GetPrincipalTagAttributeMapResponse.add_member(:identity_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: 'IdentityProviderName'))
    GetPrincipalTagAttributeMapResponse.add_member(:use_defaults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UseDefaults, location_name: 'UseDefaults'))
    GetPrincipalTagAttributeMapResponse.add_member(:principal_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalTags, location_name: 'PrincipalTags'))
    GetPrincipalTagAttributeMapResponse.type = Types::GetPrincipalTagAttributeMapResponse
    IdentitiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityDescription)
    IdentityDescription.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    IdentityDescription.add_member(:logins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoginsList, location_name: 'Logins'))
    IdentityDescription.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    IdentityDescription.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    IdentityDescription.type = Types::IdentityDescription
    IdentityIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId)
    IdentityPoolShortDescription.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId'))
    IdentityPoolShortDescription.add_member(:identity_pool_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolName, location_name: 'IdentityPoolName'))
    IdentityPoolShortDescription.type = Types::IdentityPoolShortDescription
    IdentityPoolTagsListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeysType)
    IdentityPoolTagsType.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeysType)
    IdentityPoolTagsType.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueType)
    IdentityPoolsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolShortDescription)
    IdentityProviders.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName)
    IdentityProviders.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderId)
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InternalErrorException.type = Types::InternalErrorException
    InvalidIdentityPoolConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidIdentityPoolConfigurationException.type = Types::InvalidIdentityPoolConfigurationException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListIdentitiesInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    ListIdentitiesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimit, location_name: 'MaxResults', traits: {"smithy.api#required" => {}}))
    ListIdentitiesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListIdentitiesInput.add_member(:hide_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HideDisabled, location_name: 'HideDisabled', traits: {"smithy.api#default" => false}))
    ListIdentitiesInput.type = Types::ListIdentitiesInput
    ListIdentitiesResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId'))
    ListIdentitiesResponse.add_member(:identities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitiesList, location_name: 'Identities'))
    ListIdentitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListIdentitiesResponse.type = Types::ListIdentitiesResponse
    ListIdentityPoolsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimit, location_name: 'MaxResults', traits: {"smithy.api#required" => {}}))
    ListIdentityPoolsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListIdentityPoolsInput.type = Types::ListIdentityPoolsInput
    ListIdentityPoolsResponse.add_member(:identity_pools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolsList, location_name: 'IdentityPools'))
    ListIdentityPoolsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListIdentityPoolsResponse.type = Types::ListIdentityPoolsResponse
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARNString, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolTagsType, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LoginsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName)
    LoginsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName)
    LoginsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderToken)
    LookupDeveloperIdentityInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    LookupDeveloperIdentityInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    LookupDeveloperIdentityInput.add_member(:developer_user_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperUserIdentifier, location_name: 'DeveloperUserIdentifier'))
    LookupDeveloperIdentityInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimit, location_name: 'MaxResults'))
    LookupDeveloperIdentityInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    LookupDeveloperIdentityInput.type = Types::LookupDeveloperIdentityInput
    LookupDeveloperIdentityResponse.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    LookupDeveloperIdentityResponse.add_member(:developer_user_identifier_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperUserIdentifierList, location_name: 'DeveloperUserIdentifierList'))
    LookupDeveloperIdentityResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    LookupDeveloperIdentityResponse.type = Types::LookupDeveloperIdentityResponse
    MappingRule.add_member(:claim, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClaimName, location_name: 'Claim', traits: {"smithy.api#required" => {}}))
    MappingRule.add_member(:match_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingRuleMatchType, location_name: 'MatchType', traits: {"smithy.api#required" => {}}))
    MappingRule.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClaimValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    MappingRule.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARNString, location_name: 'RoleARN', traits: {"smithy.api#required" => {}}))
    MappingRule.type = Types::MappingRule
    MappingRuleMatchType.add_member(:equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "Equals"}))
    MappingRuleMatchType.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "Contains"}))
    MappingRuleMatchType.add_member(:starts_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTS_WITH', traits: {"smithy.api#enumValue" => "StartsWith"}))
    MappingRuleMatchType.add_member(:not_equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUAL', traits: {"smithy.api#enumValue" => "NotEqual"}))
    MappingRulesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingRule)
    MergeDeveloperIdentitiesInput.add_member(:source_user_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperUserIdentifier, location_name: 'SourceUserIdentifier', traits: {"smithy.api#required" => {}}))
    MergeDeveloperIdentitiesInput.add_member(:destination_user_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperUserIdentifier, location_name: 'DestinationUserIdentifier', traits: {"smithy.api#required" => {}}))
    MergeDeveloperIdentitiesInput.add_member(:developer_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperProviderName, location_name: 'DeveloperProviderName', traits: {"smithy.api#required" => {}}))
    MergeDeveloperIdentitiesInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    MergeDeveloperIdentitiesInput.type = Types::MergeDeveloperIdentitiesInput
    MergeDeveloperIdentitiesResponse.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    MergeDeveloperIdentitiesResponse.type = Types::MergeDeveloperIdentitiesResponse
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    NotAuthorizedException.type = Types::NotAuthorizedException
    OIDCProviderList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARNString)
    PrincipalTags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalTagID)
    PrincipalTags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalTagValue)
    ResourceConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceConflictException.type = Types::ResourceConflictException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoleMapping.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleMappingType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    RoleMapping.add_member(:ambiguous_role_resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmbiguousRoleResolutionType, location_name: 'AmbiguousRoleResolution'))
    RoleMapping.add_member(:rules_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulesConfigurationType, location_name: 'RulesConfiguration'))
    RoleMapping.type = Types::RoleMapping
    RoleMappingMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName)
    RoleMappingMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleMapping)
    RoleMappingType.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOKEN', traits: {"smithy.api#enumValue" => "Token"}))
    RoleMappingType.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULES', traits: {"smithy.api#enumValue" => "Rules"}))
    RolesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleType)
    RolesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARNString)
    RulesConfigurationType.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MappingRulesList, location_name: 'Rules', traits: {"smithy.api#required" => {}}))
    RulesConfigurationType.type = Types::RulesConfigurationType
    SAMLProviderList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARNString)
    SetIdentityPoolRolesInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    SetIdentityPoolRolesInput.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RolesMap, location_name: 'Roles', traits: {"smithy.api#required" => {}}))
    SetIdentityPoolRolesInput.add_member(:role_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleMappingMap, location_name: 'RoleMappings'))
    SetIdentityPoolRolesInput.type = Types::SetIdentityPoolRolesInput
    SetPrincipalTagAttributeMapInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    SetPrincipalTagAttributeMapInput.add_member(:identity_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: 'IdentityProviderName', traits: {"smithy.api#required" => {}}))
    SetPrincipalTagAttributeMapInput.add_member(:use_defaults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UseDefaults, location_name: 'UseDefaults'))
    SetPrincipalTagAttributeMapInput.add_member(:principal_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalTags, location_name: 'PrincipalTags'))
    SetPrincipalTagAttributeMapInput.type = Types::SetPrincipalTagAttributeMapInput
    SetPrincipalTagAttributeMapResponse.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId'))
    SetPrincipalTagAttributeMapResponse.add_member(:identity_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderName, location_name: 'IdentityProviderName'))
    SetPrincipalTagAttributeMapResponse.add_member(:use_defaults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UseDefaults, location_name: 'UseDefaults'))
    SetPrincipalTagAttributeMapResponse.add_member(:principal_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalTags, location_name: 'PrincipalTags'))
    SetPrincipalTagAttributeMapResponse.type = Types::SetPrincipalTagAttributeMapResponse
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARNString, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolTagsType, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceResponse.type = Types::TagResourceResponse
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnlinkDeveloperIdentityInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId', traits: {"smithy.api#required" => {}}))
    UnlinkDeveloperIdentityInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    UnlinkDeveloperIdentityInput.add_member(:developer_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperProviderName, location_name: 'DeveloperProviderName', traits: {"smithy.api#required" => {}}))
    UnlinkDeveloperIdentityInput.add_member(:developer_user_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperUserIdentifier, location_name: 'DeveloperUserIdentifier', traits: {"smithy.api#required" => {}}))
    UnlinkDeveloperIdentityInput.type = Types::UnlinkDeveloperIdentityInput
    UnlinkIdentityInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId', traits: {"smithy.api#required" => {}}))
    UnlinkIdentityInput.add_member(:logins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoginsMap, location_name: 'Logins', traits: {"smithy.api#required" => {}}))
    UnlinkIdentityInput.add_member(:logins_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoginsList, location_name: 'LoginsToRemove', traits: {"smithy.api#required" => {}}))
    UnlinkIdentityInput.type = Types::UnlinkIdentityInput
    UnprocessedIdentityId.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    UnprocessedIdentityId.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    UnprocessedIdentityId.type = Types::UnprocessedIdentityId
    UnprocessedIdentityIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedIdentityId)
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARNString, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolTagsListType, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateIdentityPoolInput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    UpdateIdentityPoolInput.add_member(:identity_pool_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolName, location_name: 'IdentityPoolName', traits: {"smithy.api#required" => {}}))
    UpdateIdentityPoolInput.add_member(:allow_unauthenticated_identities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolUnauthenticated, location_name: 'AllowUnauthenticatedIdentities', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateIdentityPoolInput.add_member(:allow_classic_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassicFlow, location_name: 'AllowClassicFlow'))
    UpdateIdentityPoolInput.add_member(:supported_login_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviders, location_name: 'SupportedLoginProviders'))
    UpdateIdentityPoolInput.add_member(:developer_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperProviderName, location_name: 'DeveloperProviderName'))
    UpdateIdentityPoolInput.add_member(:open_id_connect_provider_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OIDCProviderList, location_name: 'OpenIdConnectProviderARNs'))
    UpdateIdentityPoolInput.add_member(:cognito_identity_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoIdentityProviderList, location_name: 'CognitoIdentityProviders'))
    UpdateIdentityPoolInput.add_member(:saml_provider_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLProviderList, location_name: 'SamlProviderARNs'))
    UpdateIdentityPoolInput.add_member(:identity_pool_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolTagsType, location_name: 'IdentityPoolTags'))
    UpdateIdentityPoolInput.type = Types::UpdateIdentityPoolInput
    UpdateIdentityPoolOutput.add_member(:identity_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: 'IdentityPoolId', traits: {"smithy.api#required" => {}}))
    UpdateIdentityPoolOutput.add_member(:identity_pool_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolName, location_name: 'IdentityPoolName', traits: {"smithy.api#required" => {}}))
    UpdateIdentityPoolOutput.add_member(:allow_unauthenticated_identities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolUnauthenticated, location_name: 'AllowUnauthenticatedIdentities', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateIdentityPoolOutput.add_member(:allow_classic_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassicFlow, location_name: 'AllowClassicFlow'))
    UpdateIdentityPoolOutput.add_member(:supported_login_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviders, location_name: 'SupportedLoginProviders'))
    UpdateIdentityPoolOutput.add_member(:developer_provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperProviderName, location_name: 'DeveloperProviderName'))
    UpdateIdentityPoolOutput.add_member(:open_id_connect_provider_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OIDCProviderList, location_name: 'OpenIdConnectProviderARNs'))
    UpdateIdentityPoolOutput.add_member(:cognito_identity_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CognitoIdentityProviderList, location_name: 'CognitoIdentityProviders'))
    UpdateIdentityPoolOutput.add_member(:saml_provider_ar_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SAMLProviderList, location_name: 'SamlProviderARNs'))
    UpdateIdentityPoolOutput.add_member(:identity_pool_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityPoolTagsType, location_name: 'IdentityPoolTags'))
    UpdateIdentityPoolOutput.type = Types::UpdateIdentityPoolOutput

    AWSCognitoIdentityService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cognitoidentity#AWSCognitoIdentityService"
      service.name = "AWSCognitoIdentityService"
      service.version = "2014-06-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Cognito Identity", "arnNamespace" => "cognito-identity", "cloudFormationName" => "Cognito", "cloudTrailEventSource" => "cognito-identity.amazonaws.com", "endpointPrefix" => "cognito-identity"}, "aws.auth#sigv4" => {"name" => "cognito-identity"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Cognito Identity", "smithy.api#xmlNamespace" => {"uri" => "http://cognito-identity.amazonaws.com/doc/2014-06-30/"}}
      service.add_operation(:create_identity_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#CreateIdentityPool"
        operation.name = "CreateIdentityPool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentityPoolInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentityPoolOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_identities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#DeleteIdentities"
        operation.name = "DeleteIdentities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentitiesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_identity_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#DeleteIdentityPool"
        operation.name = "DeleteIdentityPool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityPoolInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#DescribeIdentity"
        operation.name = "DescribeIdentity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_identity_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#DescribeIdentityPool"
        operation.name = "DescribeIdentityPool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityPoolInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityPoolOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_credentials_for_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#GetCredentialsForIdentity"
        operation.name = "GetCredentialsForIdentity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCredentialsForIdentityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCredentialsForIdentityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIdentityPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#GetId"
        operation.name = "GetId"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_identity_pool_roles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#GetIdentityPoolRoles"
        operation.name = "GetIdentityPoolRoles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityPoolRolesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityPoolRolesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_open_id_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#GetOpenIdToken"
        operation.name = "GetOpenIdToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOpenIdTokenInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOpenIdTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_open_id_token_for_developer_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#GetOpenIdTokenForDeveloperIdentity"
        operation.name = "GetOpenIdTokenForDeveloperIdentity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOpenIdTokenForDeveloperIdentityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOpenIdTokenForDeveloperIdentityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeveloperUserAlreadyRegisteredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_principal_tag_attribute_map, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#GetPrincipalTagAttributeMap"
        operation.name = "GetPrincipalTagAttributeMap"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrincipalTagAttributeMapInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrincipalTagAttributeMapResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_identities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#ListIdentities"
        operation.name = "ListIdentities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentitiesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_identity_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#ListIdentityPools"
        operation.name = "ListIdentityPools"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityPoolsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityPoolsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListIdentityPoolsSuccess", "params" => {"MaxResults" => 10}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListIdentityPools.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:lookup_developer_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#LookupDeveloperIdentity"
        operation.name = "LookupDeveloperIdentity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LookupDeveloperIdentityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LookupDeveloperIdentityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:merge_developer_identities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#MergeDeveloperIdentities"
        operation.name = "MergeDeveloperIdentities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MergeDeveloperIdentitiesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MergeDeveloperIdentitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:set_identity_pool_roles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#SetIdentityPoolRoles"
        operation.name = "SetIdentityPoolRoles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetIdentityPoolRolesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:set_principal_tag_attribute_map, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#SetPrincipalTagAttributeMap"
        operation.name = "SetPrincipalTagAttributeMap"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetPrincipalTagAttributeMapInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetPrincipalTagAttributeMapResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:unlink_developer_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#UnlinkDeveloperIdentity"
        operation.name = "UnlinkDeveloperIdentity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnlinkDeveloperIdentityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:unlink_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#UnlinkIdentity"
        operation.name = "UnlinkIdentity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnlinkIdentityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_identity_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentity#UpdateIdentityPool"
        operation.name = "UpdateIdentityPool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdentityPoolInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdentityPoolOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
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
