# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentityProvider
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#AWSAccountIdType', name: 'AWSAccountIdType', traits: {"smithy.api#length" => {"min" => 0, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    AccessTokenValidityType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#AccessTokenValidityType', name: 'AccessTokenValidityType', traits: {"smithy.api#range" => {"min" => 1, "max" => 86400}})
    AccountRecoverySettingType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AccountRecoverySettingType', name: 'AccountRecoverySettingType')
    AccountTakeoverActionNotifyType = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cognitoidentityprovider#AccountTakeoverActionNotifyType', name: 'AccountTakeoverActionNotifyType', traits: {"smithy.api#default" => false})
    AccountTakeoverActionType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AccountTakeoverActionType', name: 'AccountTakeoverActionType')
    AccountTakeoverActionsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AccountTakeoverActionsType', name: 'AccountTakeoverActionsType')
    AccountTakeoverEventActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#AccountTakeoverEventActionType', name: 'AccountTakeoverEventActionType')
    AccountTakeoverRiskConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AccountTakeoverRiskConfigurationType', name: 'AccountTakeoverRiskConfigurationType')
    AddCustomAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AddCustomAttributesRequest', name: 'AddCustomAttributesRequest')
    AddCustomAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AddCustomAttributesResponse', name: 'AddCustomAttributesResponse')
    AdminAddUserToGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminAddUserToGroupRequest', name: 'AdminAddUserToGroupRequest')
    AdminConfirmSignUpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminConfirmSignUpRequest', name: 'AdminConfirmSignUpRequest')
    AdminConfirmSignUpResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminConfirmSignUpResponse', name: 'AdminConfirmSignUpResponse')
    AdminCreateUserConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminCreateUserConfigType', name: 'AdminCreateUserConfigType')
    AdminCreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminCreateUserRequest', name: 'AdminCreateUserRequest')
    AdminCreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminCreateUserResponse', name: 'AdminCreateUserResponse')
    AdminCreateUserUnusedAccountValidityDaysType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminCreateUserUnusedAccountValidityDaysType', name: 'AdminCreateUserUnusedAccountValidityDaysType', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 365}})
    AdminDeleteUserAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminDeleteUserAttributesRequest', name: 'AdminDeleteUserAttributesRequest')
    AdminDeleteUserAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminDeleteUserAttributesResponse', name: 'AdminDeleteUserAttributesResponse')
    AdminDeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminDeleteUserRequest', name: 'AdminDeleteUserRequest')
    AdminDisableProviderForUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminDisableProviderForUserRequest', name: 'AdminDisableProviderForUserRequest')
    AdminDisableProviderForUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminDisableProviderForUserResponse', name: 'AdminDisableProviderForUserResponse')
    AdminDisableUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminDisableUserRequest', name: 'AdminDisableUserRequest')
    AdminDisableUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminDisableUserResponse', name: 'AdminDisableUserResponse')
    AdminEnableUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminEnableUserRequest', name: 'AdminEnableUserRequest')
    AdminEnableUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminEnableUserResponse', name: 'AdminEnableUserResponse')
    AdminForgetDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminForgetDeviceRequest', name: 'AdminForgetDeviceRequest')
    AdminGetDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminGetDeviceRequest', name: 'AdminGetDeviceRequest')
    AdminGetDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminGetDeviceResponse', name: 'AdminGetDeviceResponse')
    AdminGetUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminGetUserRequest', name: 'AdminGetUserRequest')
    AdminGetUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminGetUserResponse', name: 'AdminGetUserResponse')
    AdminInitiateAuthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminInitiateAuthRequest', name: 'AdminInitiateAuthRequest')
    AdminInitiateAuthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminInitiateAuthResponse', name: 'AdminInitiateAuthResponse')
    AdminLinkProviderForUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminLinkProviderForUserRequest', name: 'AdminLinkProviderForUserRequest')
    AdminLinkProviderForUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminLinkProviderForUserResponse', name: 'AdminLinkProviderForUserResponse')
    AdminListDevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminListDevicesRequest', name: 'AdminListDevicesRequest')
    AdminListDevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminListDevicesResponse', name: 'AdminListDevicesResponse')
    AdminListGroupsForUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminListGroupsForUserRequest', name: 'AdminListGroupsForUserRequest')
    AdminListGroupsForUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminListGroupsForUserResponse', name: 'AdminListGroupsForUserResponse')
    AdminListUserAuthEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminListUserAuthEventsRequest', name: 'AdminListUserAuthEventsRequest')
    AdminListUserAuthEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminListUserAuthEventsResponse', name: 'AdminListUserAuthEventsResponse')
    AdminRemoveUserFromGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminRemoveUserFromGroupRequest', name: 'AdminRemoveUserFromGroupRequest')
    AdminResetUserPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminResetUserPasswordRequest', name: 'AdminResetUserPasswordRequest')
    AdminResetUserPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminResetUserPasswordResponse', name: 'AdminResetUserPasswordResponse')
    AdminRespondToAuthChallengeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminRespondToAuthChallengeRequest', name: 'AdminRespondToAuthChallengeRequest')
    AdminRespondToAuthChallengeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminRespondToAuthChallengeResponse', name: 'AdminRespondToAuthChallengeResponse')
    AdminSetUserMFAPreferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminSetUserMFAPreferenceRequest', name: 'AdminSetUserMFAPreferenceRequest')
    AdminSetUserMFAPreferenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminSetUserMFAPreferenceResponse', name: 'AdminSetUserMFAPreferenceResponse')
    AdminSetUserPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminSetUserPasswordRequest', name: 'AdminSetUserPasswordRequest')
    AdminSetUserPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminSetUserPasswordResponse', name: 'AdminSetUserPasswordResponse')
    AdminSetUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminSetUserSettingsRequest', name: 'AdminSetUserSettingsRequest')
    AdminSetUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminSetUserSettingsResponse', name: 'AdminSetUserSettingsResponse')
    AdminUpdateAuthEventFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminUpdateAuthEventFeedbackRequest', name: 'AdminUpdateAuthEventFeedbackRequest')
    AdminUpdateAuthEventFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminUpdateAuthEventFeedbackResponse', name: 'AdminUpdateAuthEventFeedbackResponse')
    AdminUpdateDeviceStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminUpdateDeviceStatusRequest', name: 'AdminUpdateDeviceStatusRequest')
    AdminUpdateDeviceStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminUpdateDeviceStatusResponse', name: 'AdminUpdateDeviceStatusResponse')
    AdminUpdateUserAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminUpdateUserAttributesRequest', name: 'AdminUpdateUserAttributesRequest')
    AdminUpdateUserAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminUpdateUserAttributesResponse', name: 'AdminUpdateUserAttributesResponse')
    AdminUserGlobalSignOutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminUserGlobalSignOutRequest', name: 'AdminUserGlobalSignOutRequest')
    AdminUserGlobalSignOutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdminUserGlobalSignOutResponse', name: 'AdminUserGlobalSignOutResponse')
    AdvancedSecurityAdditionalFlowsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdvancedSecurityAdditionalFlowsType', name: 'AdvancedSecurityAdditionalFlowsType')
    AdvancedSecurityEnabledModeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdvancedSecurityEnabledModeType', name: 'AdvancedSecurityEnabledModeType')
    AdvancedSecurityModeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#AdvancedSecurityModeType', name: 'AdvancedSecurityModeType')
    AliasAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#AliasAttributeType', name: 'AliasAttributeType')
    AliasAttributesListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#AliasAttributesListType', name: 'AliasAttributesListType')
    AliasExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AliasExistsException', name: 'AliasExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AllowedFirstAuthFactorsListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#AllowedFirstAuthFactorsListType', name: 'AllowedFirstAuthFactorsListType', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AnalyticsConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AnalyticsConfigurationType', name: 'AnalyticsConfigurationType')
    AnalyticsMetadataType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AnalyticsMetadataType', name: 'AnalyticsMetadataType')
    ArnType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ArnType', name: 'ArnType', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?$"})
    AssetBytesType = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.cognitoidentityprovider#AssetBytesType', name: 'AssetBytesType', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000000}})
    AssetCategoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#AssetCategoryType', name: 'AssetCategoryType')
    AssetExtensionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#AssetExtensionType', name: 'AssetExtensionType')
    AssetListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#AssetListType', name: 'AssetListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    AssetType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AssetType', name: 'AssetType')
    AssociateSoftwareTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AssociateSoftwareTokenRequest', name: 'AssociateSoftwareTokenRequest')
    AssociateSoftwareTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AssociateSoftwareTokenResponse', name: 'AssociateSoftwareTokenResponse')
    AttributeDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#AttributeDataType', name: 'AttributeDataType')
    AttributeListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#AttributeListType', name: 'AttributeListType')
    AttributeMappingKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#AttributeMappingKeyType', name: 'AttributeMappingKeyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    AttributeMappingType = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentityprovider#AttributeMappingType', name: 'AttributeMappingType')
    AttributeNameListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#AttributeNameListType', name: 'AttributeNameListType')
    AttributeNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#AttributeNameType', name: 'AttributeNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    AttributeType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AttributeType', name: 'AttributeType')
    AttributeValueType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#AttributeValueType', name: 'AttributeValueType', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    AttributesRequireVerificationBeforeUpdateType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#AttributesRequireVerificationBeforeUpdateType', name: 'AttributesRequireVerificationBeforeUpdateType')
    AuthEventType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AuthEventType', name: 'AuthEventType')
    AuthEventsType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#AuthEventsType', name: 'AuthEventsType')
    AuthFactorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#AuthFactorType', name: 'AuthFactorType')
    AuthFlowType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#AuthFlowType', name: 'AuthFlowType')
    AuthParametersType = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentityprovider#AuthParametersType', name: 'AuthParametersType', traits: {"smithy.api#sensitive" => {}})
    AuthSessionValidityType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#AuthSessionValidityType', name: 'AuthSessionValidityType', traits: {"smithy.api#range" => {"min" => 3, "max" => 15}})
    AuthenticationResultType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#AuthenticationResultType', name: 'AuthenticationResultType')
    AvailableChallengeListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#AvailableChallengeListType', name: 'AvailableChallengeListType')
    BlockedIPRangeListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#BlockedIPRangeListType', name: 'BlockedIPRangeListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    BooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cognitoidentityprovider#BooleanType', name: 'BooleanType', traits: {"smithy.api#default" => false})
    CSSType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#CSSType', name: 'CSSType', traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}})
    CSSVersionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#CSSVersionType', name: 'CSSVersionType')
    CallbackURLsListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#CallbackURLsListType', name: 'CallbackURLsListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ChallengeName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#ChallengeName', name: 'ChallengeName')
    ChallengeNameType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#ChallengeNameType', name: 'ChallengeNameType')
    ChallengeParametersType = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentityprovider#ChallengeParametersType', name: 'ChallengeParametersType')
    ChallengeResponse = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#ChallengeResponse', name: 'ChallengeResponse')
    ChallengeResponseListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#ChallengeResponseListType', name: 'ChallengeResponseListType')
    ChallengeResponseType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ChallengeResponseType', name: 'ChallengeResponseType')
    ChallengeResponsesType = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentityprovider#ChallengeResponsesType', name: 'ChallengeResponsesType', traits: {"smithy.api#sensitive" => {}})
    ChangePasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ChangePasswordRequest', name: 'ChangePasswordRequest')
    ChangePasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ChangePasswordResponse', name: 'ChangePasswordResponse')
    ClientIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ClientIdType', name: 'ClientIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+]+$", "smithy.api#sensitive" => {}})
    ClientMetadataType = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentityprovider#ClientMetadataType', name: 'ClientMetadataType')
    ClientNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ClientNameType', name: 'ClientNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\s+=,.@-]+$"})
    ClientPermissionListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#ClientPermissionListType', name: 'ClientPermissionListType')
    ClientPermissionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ClientPermissionType', name: 'ClientPermissionType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ClientSecretType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ClientSecretType', name: 'ClientSecretType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w+]+$", "smithy.api#sensitive" => {}})
    CloudWatchLogsConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CloudWatchLogsConfigurationType', name: 'CloudWatchLogsConfigurationType')
    CodeDeliveryDetailsListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#CodeDeliveryDetailsListType', name: 'CodeDeliveryDetailsListType')
    CodeDeliveryDetailsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CodeDeliveryDetailsType', name: 'CodeDeliveryDetailsType')
    CodeDeliveryFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CodeDeliveryFailureException', name: 'CodeDeliveryFailureException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CodeMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CodeMismatchException', name: 'CodeMismatchException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ColorSchemeModeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#ColorSchemeModeType', name: 'ColorSchemeModeType')
    CompleteWebAuthnRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CompleteWebAuthnRegistrationRequest', name: 'CompleteWebAuthnRegistrationRequest')
    CompleteWebAuthnRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CompleteWebAuthnRegistrationResponse', name: 'CompleteWebAuthnRegistrationResponse')
    CompletionMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#CompletionMessageType', name: 'CompletionMessageType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$"})
    CompromisedCredentialsActionsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CompromisedCredentialsActionsType', name: 'CompromisedCredentialsActionsType')
    CompromisedCredentialsEventActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#CompromisedCredentialsEventActionType', name: 'CompromisedCredentialsEventActionType')
    CompromisedCredentialsRiskConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CompromisedCredentialsRiskConfigurationType', name: 'CompromisedCredentialsRiskConfigurationType')
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfiguredUserAuthFactorsListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#ConfiguredUserAuthFactorsListType', name: 'ConfiguredUserAuthFactorsListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 8}})
    ConfirmDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ConfirmDeviceRequest', name: 'ConfirmDeviceRequest')
    ConfirmDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ConfirmDeviceResponse', name: 'ConfirmDeviceResponse')
    ConfirmForgotPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ConfirmForgotPasswordRequest', name: 'ConfirmForgotPasswordRequest')
    ConfirmForgotPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ConfirmForgotPasswordResponse', name: 'ConfirmForgotPasswordResponse')
    ConfirmSignUpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ConfirmSignUpRequest', name: 'ConfirmSignUpRequest')
    ConfirmSignUpResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ConfirmSignUpResponse', name: 'ConfirmSignUpResponse')
    ConfirmationCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ConfirmationCodeType', name: 'ConfirmationCodeType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    ContextDataType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ContextDataType', name: 'ContextDataType')
    CreateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateGroupRequest', name: 'CreateGroupRequest')
    CreateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateGroupResponse', name: 'CreateGroupResponse')
    CreateIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateIdentityProviderRequest', name: 'CreateIdentityProviderRequest')
    CreateIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateIdentityProviderResponse', name: 'CreateIdentityProviderResponse')
    CreateManagedLoginBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateManagedLoginBrandingRequest', name: 'CreateManagedLoginBrandingRequest')
    CreateManagedLoginBrandingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateManagedLoginBrandingResponse', name: 'CreateManagedLoginBrandingResponse')
    CreateResourceServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateResourceServerRequest', name: 'CreateResourceServerRequest')
    CreateResourceServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateResourceServerResponse', name: 'CreateResourceServerResponse')
    CreateUserImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateUserImportJobRequest', name: 'CreateUserImportJobRequest')
    CreateUserImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateUserImportJobResponse', name: 'CreateUserImportJobResponse')
    CreateUserPoolClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateUserPoolClientRequest', name: 'CreateUserPoolClientRequest')
    CreateUserPoolClientResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateUserPoolClientResponse', name: 'CreateUserPoolClientResponse')
    CreateUserPoolDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateUserPoolDomainRequest', name: 'CreateUserPoolDomainRequest')
    CreateUserPoolDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateUserPoolDomainResponse', name: 'CreateUserPoolDomainResponse')
    CreateUserPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateUserPoolRequest', name: 'CreateUserPoolRequest')
    CreateUserPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CreateUserPoolResponse', name: 'CreateUserPoolResponse')
    CustomAttributeNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#CustomAttributeNameType', name: 'CustomAttributeNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    CustomAttributesListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#CustomAttributesListType', name: 'CustomAttributesListType', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    CustomDomainConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CustomDomainConfigType', name: 'CustomDomainConfigType')
    CustomEmailLambdaVersionConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CustomEmailLambdaVersionConfigType', name: 'CustomEmailLambdaVersionConfigType')
    CustomEmailSenderLambdaVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#CustomEmailSenderLambdaVersionType', name: 'CustomEmailSenderLambdaVersionType')
    CustomSMSLambdaVersionConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#CustomSMSLambdaVersionConfigType', name: 'CustomSMSLambdaVersionConfigType')
    CustomSMSSenderLambdaVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#CustomSMSSenderLambdaVersionType', name: 'CustomSMSSenderLambdaVersionType')
    DateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.cognitoidentityprovider#DateType', name: 'DateType')
    DefaultEmailOptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#DefaultEmailOptionType', name: 'DefaultEmailOptionType')
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteGroupRequest', name: 'DeleteGroupRequest')
    DeleteIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteIdentityProviderRequest', name: 'DeleteIdentityProviderRequest')
    DeleteManagedLoginBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteManagedLoginBrandingRequest', name: 'DeleteManagedLoginBrandingRequest')
    DeleteResourceServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteResourceServerRequest', name: 'DeleteResourceServerRequest')
    DeleteUserAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteUserAttributesRequest', name: 'DeleteUserAttributesRequest')
    DeleteUserAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteUserAttributesResponse', name: 'DeleteUserAttributesResponse')
    DeleteUserPoolClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteUserPoolClientRequest', name: 'DeleteUserPoolClientRequest')
    DeleteUserPoolDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteUserPoolDomainRequest', name: 'DeleteUserPoolDomainRequest')
    DeleteUserPoolDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteUserPoolDomainResponse', name: 'DeleteUserPoolDomainResponse')
    DeleteUserPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteUserPoolRequest', name: 'DeleteUserPoolRequest')
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteUserRequest', name: 'DeleteUserRequest')
    DeleteWebAuthnCredentialRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteWebAuthnCredentialRequest', name: 'DeleteWebAuthnCredentialRequest')
    DeleteWebAuthnCredentialResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeleteWebAuthnCredentialResponse', name: 'DeleteWebAuthnCredentialResponse')
    DeletionProtectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeletionProtectionType', name: 'DeletionProtectionType')
    DeliveryMediumListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeliveryMediumListType', name: 'DeliveryMediumListType')
    DeliveryMediumType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeliveryMediumType', name: 'DeliveryMediumType')
    DescribeIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeIdentityProviderRequest', name: 'DescribeIdentityProviderRequest')
    DescribeIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeIdentityProviderResponse', name: 'DescribeIdentityProviderResponse')
    DescribeManagedLoginBrandingByClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBrandingByClientRequest', name: 'DescribeManagedLoginBrandingByClientRequest')
    DescribeManagedLoginBrandingByClientResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBrandingByClientResponse', name: 'DescribeManagedLoginBrandingByClientResponse')
    DescribeManagedLoginBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBrandingRequest', name: 'DescribeManagedLoginBrandingRequest')
    DescribeManagedLoginBrandingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBrandingResponse', name: 'DescribeManagedLoginBrandingResponse')
    DescribeResourceServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeResourceServerRequest', name: 'DescribeResourceServerRequest')
    DescribeResourceServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeResourceServerResponse', name: 'DescribeResourceServerResponse')
    DescribeRiskConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeRiskConfigurationRequest', name: 'DescribeRiskConfigurationRequest')
    DescribeRiskConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeRiskConfigurationResponse', name: 'DescribeRiskConfigurationResponse')
    DescribeUserImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeUserImportJobRequest', name: 'DescribeUserImportJobRequest')
    DescribeUserImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeUserImportJobResponse', name: 'DescribeUserImportJobResponse')
    DescribeUserPoolClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeUserPoolClientRequest', name: 'DescribeUserPoolClientRequest')
    DescribeUserPoolClientResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeUserPoolClientResponse', name: 'DescribeUserPoolClientResponse')
    DescribeUserPoolDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeUserPoolDomainRequest', name: 'DescribeUserPoolDomainRequest')
    DescribeUserPoolDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeUserPoolDomainResponse', name: 'DescribeUserPoolDomainResponse')
    DescribeUserPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeUserPoolRequest', name: 'DescribeUserPoolRequest')
    DescribeUserPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescribeUserPoolResponse', name: 'DescribeUserPoolResponse')
    DescriptionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#DescriptionType', name: 'DescriptionType', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    DeviceConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeviceConfigurationType', name: 'DeviceConfigurationType')
    DeviceKeyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeviceKeyExistsException', name: 'DeviceKeyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeviceKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeviceKeyType', name: 'DeviceKeyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+_[0-9a-f-]+$"})
    DeviceListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeviceListType', name: 'DeviceListType')
    DeviceNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeviceNameType', name: 'DeviceNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    DeviceRememberedStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeviceRememberedStatusType', name: 'DeviceRememberedStatusType')
    DeviceSecretVerifierConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeviceSecretVerifierConfigType', name: 'DeviceSecretVerifierConfigType')
    DeviceType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DeviceType', name: 'DeviceType')
    Document = ::Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.cognitoidentityprovider#Document', name: 'Document')
    DomainDescriptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DomainDescriptionType', name: 'DomainDescriptionType')
    DomainStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#DomainStatusType', name: 'DomainStatusType')
    DomainType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#DomainType', name: 'DomainType', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$"})
    DomainVersionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#DomainVersionType', name: 'DomainVersionType', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    DuplicateProviderException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#DuplicateProviderException', name: 'DuplicateProviderException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EmailAddressType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailAddressType', name: 'EmailAddressType', traits: {"smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+@[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    EmailConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailConfigurationType', name: 'EmailConfigurationType')
    EmailInviteMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailInviteMessageType', name: 'EmailInviteMessageType', traits: {"smithy.api#length" => {"min" => 6, "max" => 20000}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*$"})
    EmailMfaConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailMfaConfigType', name: 'EmailMfaConfigType')
    EmailMfaMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailMfaMessageType', name: 'EmailMfaMessageType', traits: {"smithy.api#length" => {"min" => 6, "max" => 20000}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*$"})
    EmailMfaSettingsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailMfaSettingsType', name: 'EmailMfaSettingsType')
    EmailMfaSubjectType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailMfaSubjectType', name: 'EmailMfaSubjectType', traits: {"smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+$"})
    EmailNotificationBodyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailNotificationBodyType', name: 'EmailNotificationBodyType', traits: {"smithy.api#length" => {"min" => 6, "max" => 20000}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+$"})
    EmailNotificationSubjectType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailNotificationSubjectType', name: 'EmailNotificationSubjectType', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+$"})
    EmailSendingAccountType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailSendingAccountType', name: 'EmailSendingAccountType')
    EmailVerificationMessageByLinkType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailVerificationMessageByLinkType', name: 'EmailVerificationMessageByLinkType', traits: {"smithy.api#length" => {"min" => 6, "max" => 20000}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{##[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*##\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*$"})
    EmailVerificationMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailVerificationMessageType', name: 'EmailVerificationMessageType', traits: {"smithy.api#length" => {"min" => 6, "max" => 20000}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*$"})
    EmailVerificationSubjectByLinkType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailVerificationSubjectByLinkType', name: 'EmailVerificationSubjectByLinkType', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+$"})
    EmailVerificationSubjectType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EmailVerificationSubjectType', name: 'EmailVerificationSubjectType', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+$"})
    EnableSoftwareTokenMFAException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#EnableSoftwareTokenMFAException', name: 'EnableSoftwareTokenMFAException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventContextDataType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#EventContextDataType', name: 'EventContextDataType')
    EventFeedbackType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#EventFeedbackType', name: 'EventFeedbackType')
    EventFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#EventFilterType', name: 'EventFilterType')
    EventFiltersType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#EventFiltersType', name: 'EventFiltersType')
    EventIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#EventIdType', name: 'EventIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\w+-]+$"})
    EventResponseType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#EventResponseType', name: 'EventResponseType')
    EventRiskType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#EventRiskType', name: 'EventRiskType')
    EventSourceName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#EventSourceName', name: 'EventSourceName')
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#EventType', name: 'EventType')
    ExpiredCodeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ExpiredCodeException', name: 'ExpiredCodeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ExplicitAuthFlowsListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#ExplicitAuthFlowsListType', name: 'ExplicitAuthFlowsListType')
    ExplicitAuthFlowsType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#ExplicitAuthFlowsType', name: 'ExplicitAuthFlowsType')
    FeatureType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#FeatureType', name: 'FeatureType')
    FeatureUnavailableInTierException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#FeatureUnavailableInTierException', name: 'FeatureUnavailableInTierException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FeedbackValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#FeedbackValueType', name: 'FeedbackValueType')
    FirehoseConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#FirehoseConfigurationType', name: 'FirehoseConfigurationType')
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ForceAliasCreation = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cognitoidentityprovider#ForceAliasCreation', name: 'ForceAliasCreation', traits: {"smithy.api#default" => false})
    ForgetDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ForgetDeviceRequest', name: 'ForgetDeviceRequest')
    ForgotPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ForgotPasswordRequest', name: 'ForgotPasswordRequest')
    ForgotPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ForgotPasswordResponse', name: 'ForgotPasswordResponse')
    GenerateSecret = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cognitoidentityprovider#GenerateSecret', name: 'GenerateSecret', traits: {"smithy.api#default" => false})
    GetCSVHeaderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetCSVHeaderRequest', name: 'GetCSVHeaderRequest')
    GetCSVHeaderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetCSVHeaderResponse', name: 'GetCSVHeaderResponse')
    GetDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetDeviceRequest', name: 'GetDeviceRequest')
    GetDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetDeviceResponse', name: 'GetDeviceResponse')
    GetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetGroupRequest', name: 'GetGroupRequest')
    GetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetGroupResponse', name: 'GetGroupResponse')
    GetIdentityProviderByIdentifierRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetIdentityProviderByIdentifierRequest', name: 'GetIdentityProviderByIdentifierRequest')
    GetIdentityProviderByIdentifierResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetIdentityProviderByIdentifierResponse', name: 'GetIdentityProviderByIdentifierResponse')
    GetLogDeliveryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetLogDeliveryConfigurationRequest', name: 'GetLogDeliveryConfigurationRequest')
    GetLogDeliveryConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetLogDeliveryConfigurationResponse', name: 'GetLogDeliveryConfigurationResponse')
    GetSigningCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetSigningCertificateRequest', name: 'GetSigningCertificateRequest')
    GetSigningCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetSigningCertificateResponse', name: 'GetSigningCertificateResponse')
    GetTokensFromRefreshTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetTokensFromRefreshTokenRequest', name: 'GetTokensFromRefreshTokenRequest')
    GetTokensFromRefreshTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetTokensFromRefreshTokenResponse', name: 'GetTokensFromRefreshTokenResponse')
    GetUICustomizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetUICustomizationRequest', name: 'GetUICustomizationRequest')
    GetUICustomizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetUICustomizationResponse', name: 'GetUICustomizationResponse')
    GetUserAttributeVerificationCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetUserAttributeVerificationCodeRequest', name: 'GetUserAttributeVerificationCodeRequest')
    GetUserAttributeVerificationCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetUserAttributeVerificationCodeResponse', name: 'GetUserAttributeVerificationCodeResponse')
    GetUserAuthFactorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetUserAuthFactorsRequest', name: 'GetUserAuthFactorsRequest')
    GetUserAuthFactorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetUserAuthFactorsResponse', name: 'GetUserAuthFactorsResponse')
    GetUserPoolMfaConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetUserPoolMfaConfigRequest', name: 'GetUserPoolMfaConfigRequest')
    GetUserPoolMfaConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetUserPoolMfaConfigResponse', name: 'GetUserPoolMfaConfigResponse')
    GetUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetUserRequest', name: 'GetUserRequest')
    GetUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GetUserResponse', name: 'GetUserResponse')
    GlobalSignOutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GlobalSignOutRequest', name: 'GlobalSignOutRequest')
    GlobalSignOutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GlobalSignOutResponse', name: 'GlobalSignOutResponse')
    GroupExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GroupExistsException', name: 'GroupExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GroupListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#GroupListType', name: 'GroupListType')
    GroupNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#GroupNameType', name: 'GroupNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    GroupType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#GroupType', name: 'GroupType')
    HexStringType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#HexStringType', name: 'HexStringType', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]+$"})
    HttpHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#HttpHeader', name: 'HttpHeader')
    HttpHeaderList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#HttpHeaderList', name: 'HttpHeaderList')
    IdTokenValidityType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#IdTokenValidityType', name: 'IdTokenValidityType', traits: {"smithy.api#range" => {"min" => 1, "max" => 86400}})
    IdentityProviderType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#IdentityProviderType', name: 'IdentityProviderType')
    IdentityProviderTypeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#IdentityProviderTypeType', name: 'IdentityProviderTypeType')
    IdpIdentifierType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#IdpIdentifierType', name: 'IdpIdentifierType', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[\\w\\s+=.@-]+$"})
    IdpIdentifiersListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#IdpIdentifiersListType', name: 'IdpIdentifiersListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ImageFileType = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.cognitoidentityprovider#ImageFileType', name: 'ImageFileType', traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}})
    ImageUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ImageUrlType', name: 'ImageUrlType')
    InitiateAuthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InitiateAuthRequest', name: 'InitiateAuthRequest')
    InitiateAuthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InitiateAuthResponse', name: 'InitiateAuthResponse')
    IntegerType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#IntegerType', name: 'IntegerType', traits: {"smithy.api#default" => 0})
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InternalErrorException', name: 'InternalErrorException', traits: {"smithy.api#error" => "server"})
    InvalidEmailRoleAccessPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InvalidEmailRoleAccessPolicyException', name: 'InvalidEmailRoleAccessPolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLambdaResponseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InvalidLambdaResponseException', name: 'InvalidLambdaResponseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOAuthFlowException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InvalidOAuthFlowException', name: 'InvalidOAuthFlowException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterExceptionReasonCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#InvalidParameterExceptionReasonCodeType', name: 'InvalidParameterExceptionReasonCodeType')
    InvalidPasswordException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InvalidPasswordException', name: 'InvalidPasswordException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSmsRoleAccessPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InvalidSmsRoleAccessPolicyException', name: 'InvalidSmsRoleAccessPolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSmsRoleTrustRelationshipException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InvalidSmsRoleTrustRelationshipException', name: 'InvalidSmsRoleTrustRelationshipException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUserPoolConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#InvalidUserPoolConfigurationException', name: 'InvalidUserPoolConfigurationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LambdaConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#LambdaConfigType', name: 'LambdaConfigType')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListDevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListDevicesRequest', name: 'ListDevicesRequest')
    ListDevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListDevicesResponse', name: 'ListDevicesResponse')
    ListGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListGroupsRequest', name: 'ListGroupsRequest')
    ListGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListGroupsResponse', name: 'ListGroupsResponse')
    ListIdentityProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListIdentityProvidersRequest', name: 'ListIdentityProvidersRequest')
    ListIdentityProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListIdentityProvidersResponse', name: 'ListIdentityProvidersResponse')
    ListOfStringTypes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListOfStringTypes', name: 'ListOfStringTypes')
    ListProvidersLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListProvidersLimitType', name: 'ListProvidersLimitType', traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    ListResourceServersLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListResourceServersLimitType', name: 'ListResourceServersLimitType', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListResourceServersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListResourceServersRequest', name: 'ListResourceServersRequest')
    ListResourceServersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListResourceServersResponse', name: 'ListResourceServersResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListUserImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListUserImportJobsRequest', name: 'ListUserImportJobsRequest')
    ListUserImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListUserImportJobsResponse', name: 'ListUserImportJobsResponse')
    ListUserPoolClientsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListUserPoolClientsRequest', name: 'ListUserPoolClientsRequest')
    ListUserPoolClientsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListUserPoolClientsResponse', name: 'ListUserPoolClientsResponse')
    ListUserPoolsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListUserPoolsRequest', name: 'ListUserPoolsRequest')
    ListUserPoolsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListUserPoolsResponse', name: 'ListUserPoolsResponse')
    ListUsersInGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListUsersInGroupRequest', name: 'ListUsersInGroupRequest')
    ListUsersInGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListUsersInGroupResponse', name: 'ListUsersInGroupResponse')
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListUsersRequest', name: 'ListUsersRequest')
    ListUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListUsersResponse', name: 'ListUsersResponse')
    ListWebAuthnCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListWebAuthnCredentialsRequest', name: 'ListWebAuthnCredentialsRequest')
    ListWebAuthnCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ListWebAuthnCredentialsResponse', name: 'ListWebAuthnCredentialsResponse')
    LogConfigurationListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#LogConfigurationListType', name: 'LogConfigurationListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    LogConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#LogConfigurationType', name: 'LogConfigurationType')
    LogDeliveryConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#LogDeliveryConfigurationType', name: 'LogDeliveryConfigurationType')
    LogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#LogLevel', name: 'LogLevel')
    LogoutURLsListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#LogoutURLsListType', name: 'LogoutURLsListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    LongType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#LongType', name: 'LongType', traits: {"smithy.api#default" => 0})
    MFAMethodNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#MFAMethodNotFoundException', name: 'MFAMethodNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MFAOptionListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#MFAOptionListType', name: 'MFAOptionListType')
    MFAOptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#MFAOptionType', name: 'MFAOptionType')
    ManagedLoginBrandingExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ManagedLoginBrandingExistsException', name: 'ManagedLoginBrandingExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ManagedLoginBrandingIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ManagedLoginBrandingIdType', name: 'ManagedLoginBrandingIdType', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[4][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    ManagedLoginBrandingType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ManagedLoginBrandingType', name: 'ManagedLoginBrandingType')
    MessageActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#MessageActionType', name: 'MessageActionType')
    MessageTemplateType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#MessageTemplateType', name: 'MessageTemplateType')
    MessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#MessageType', name: 'MessageType')
    NewDeviceMetadataType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#NewDeviceMetadataType', name: 'NewDeviceMetadataType')
    NotAuthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#NotAuthorizedException', name: 'NotAuthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    NotifyConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#NotifyConfigurationType', name: 'NotifyConfigurationType')
    NotifyEmailType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#NotifyEmailType', name: 'NotifyEmailType')
    NumberAttributeConstraintsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#NumberAttributeConstraintsType', name: 'NumberAttributeConstraintsType')
    OAuthFlowType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#OAuthFlowType', name: 'OAuthFlowType')
    OAuthFlowsType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#OAuthFlowsType', name: 'OAuthFlowsType', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    PaginationKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#PaginationKey', name: 'PaginationKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#pattern" => "^[\\S]+$"})
    PaginationKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#PaginationKeyType', name: 'PaginationKeyType', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\S]+$"})
    PasswordHistoryPolicyViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#PasswordHistoryPolicyViolationException', name: 'PasswordHistoryPolicyViolationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PasswordHistorySizeType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#PasswordHistorySizeType', name: 'PasswordHistorySizeType', traits: {"smithy.api#range" => {"min" => 0, "max" => 24}})
    PasswordPolicyMinLengthType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#PasswordPolicyMinLengthType', name: 'PasswordPolicyMinLengthType', traits: {"smithy.api#range" => {"min" => 6, "max" => 99}})
    PasswordPolicyType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#PasswordPolicyType', name: 'PasswordPolicyType')
    PasswordResetRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#PasswordResetRequiredException', name: 'PasswordResetRequiredException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PasswordType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#PasswordType', name: 'PasswordType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$", "smithy.api#sensitive" => {}})
    PoolQueryLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#PoolQueryLimitType', name: 'PoolQueryLimitType', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    PreSignedUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#PreSignedUrlType', name: 'PreSignedUrlType', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    PreTokenGenerationLambdaVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#PreTokenGenerationLambdaVersionType', name: 'PreTokenGenerationLambdaVersionType')
    PreTokenGenerationVersionConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#PreTokenGenerationVersionConfigType', name: 'PreTokenGenerationVersionConfigType')
    PrecedenceType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#PrecedenceType', name: 'PrecedenceType', traits: {"smithy.api#range" => {"min" => 0}})
    PreconditionNotMetException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#PreconditionNotMetException', name: 'PreconditionNotMetException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PreventUserExistenceErrorTypes = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#PreventUserExistenceErrorTypes', name: 'PreventUserExistenceErrorTypes')
    PriorityType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#PriorityType', name: 'PriorityType', traits: {"smithy.api#range" => {"min" => 1, "max" => 2}})
    ProviderDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ProviderDescription', name: 'ProviderDescription')
    ProviderDetailsType = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentityprovider#ProviderDetailsType', name: 'ProviderDetailsType')
    ProviderNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ProviderNameType', name: 'ProviderNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\p{Z}]+$"})
    ProviderNameTypeV2 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ProviderNameTypeV2', name: 'ProviderNameTypeV2', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[^_\\p{Z}][\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}][^_\\p{Z}]+$"})
    ProviderUserIdentifierType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ProviderUserIdentifierType', name: 'ProviderUserIdentifierType')
    ProvidersListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#ProvidersListType', name: 'ProvidersListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    QueryLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#QueryLimit', name: 'QueryLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    QueryLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#QueryLimitType', name: 'QueryLimitType', traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    RecoveryMechanismsType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#RecoveryMechanismsType', name: 'RecoveryMechanismsType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    RecoveryOptionNameType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#RecoveryOptionNameType', name: 'RecoveryOptionNameType')
    RecoveryOptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#RecoveryOptionType', name: 'RecoveryOptionType')
    RedirectUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#RedirectUrlType', name: 'RedirectUrlType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    RefreshTokenReuseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#RefreshTokenReuseException', name: 'RefreshTokenReuseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RefreshTokenRotationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#RefreshTokenRotationType', name: 'RefreshTokenRotationType')
    RefreshTokenValidityType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#RefreshTokenValidityType', name: 'RefreshTokenValidityType', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 315360000}})
    RegionCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#RegionCodeType', name: 'RegionCodeType', traits: {"smithy.api#length" => {"min" => 5, "max" => 32}})
    RelyingPartyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#RelyingPartyIdType', name: 'RelyingPartyIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}})
    ResendConfirmationCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResendConfirmationCodeRequest', name: 'ResendConfirmationCodeRequest')
    ResendConfirmationCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResendConfirmationCodeResponse', name: 'ResendConfirmationCodeResponse')
    ResourceIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResourceIdType', name: 'ResourceIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[\\w\\- ]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceServerIdentifierType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResourceServerIdentifierType', name: 'ResourceServerIdentifierType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\x21\\x23-\\x5B\\x5D-\\x7E]+$"})
    ResourceServerNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResourceServerNameType', name: 'ResourceServerNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w\\s+=,.@-]+$"})
    ResourceServerScopeDescriptionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResourceServerScopeDescriptionType', name: 'ResourceServerScopeDescriptionType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceServerScopeListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResourceServerScopeListType', name: 'ResourceServerScopeListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResourceServerScopeNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResourceServerScopeNameType', name: 'ResourceServerScopeNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\x21\\x23-\\x2E\\x30-\\x5B\\x5D-\\x7E]+$"})
    ResourceServerScopeType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResourceServerScopeType', name: 'ResourceServerScopeType')
    ResourceServerType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResourceServerType', name: 'ResourceServerType')
    ResourceServersListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#ResourceServersListType', name: 'ResourceServersListType')
    RespondToAuthChallengeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#RespondToAuthChallengeRequest', name: 'RespondToAuthChallengeRequest')
    RespondToAuthChallengeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#RespondToAuthChallengeResponse', name: 'RespondToAuthChallengeResponse')
    RetryGracePeriodSecondsType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#RetryGracePeriodSecondsType', name: 'RetryGracePeriodSecondsType', traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    RevokeTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#RevokeTokenRequest', name: 'RevokeTokenRequest')
    RevokeTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#RevokeTokenResponse', name: 'RevokeTokenResponse')
    RiskConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#RiskConfigurationType', name: 'RiskConfigurationType')
    RiskDecisionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#RiskDecisionType', name: 'RiskDecisionType')
    RiskExceptionConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#RiskExceptionConfigurationType', name: 'RiskExceptionConfigurationType')
    RiskLevelType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#RiskLevelType', name: 'RiskLevelType')
    S3ArnType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#S3ArnType', name: 'S3ArnType', traits: {"smithy.api#length" => {"min" => 3, "max" => 1024}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:::[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?$"})
    S3BucketType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#S3BucketType', name: 'S3BucketType', traits: {"smithy.api#length" => {"min" => 3, "max" => 1024}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$"})
    S3ConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#S3ConfigurationType', name: 'S3ConfigurationType')
    SESConfigurationSet = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#SESConfigurationSet', name: 'SESConfigurationSet', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    SMSMfaSettingsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SMSMfaSettingsType', name: 'SMSMfaSettingsType')
    SchemaAttributeType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SchemaAttributeType', name: 'SchemaAttributeType')
    SchemaAttributesListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#SchemaAttributesListType', name: 'SchemaAttributesListType', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ScopeDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#ScopeDoesNotExistException', name: 'ScopeDoesNotExistException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScopeListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#ScopeListType', name: 'ScopeListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ScopeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#ScopeType', name: 'ScopeType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\x21\\x23-\\x5B\\x5D-\\x7E]+$"})
    SearchPaginationTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#SearchPaginationTokenType', name: 'SearchPaginationTokenType', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\S]+$"})
    SearchedAttributeNamesListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#SearchedAttributeNamesListType', name: 'SearchedAttributeNamesListType')
    SecretCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#SecretCodeType', name: 'SecretCodeType', traits: {"smithy.api#length" => {"min" => 16}, "smithy.api#pattern" => "^[A-Za-z0-9]+$", "smithy.api#sensitive" => {}})
    SecretHashType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#SecretHashType', name: 'SecretHashType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=/]+$", "smithy.api#sensitive" => {}})
    SessionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#SessionType', name: 'SessionType', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#sensitive" => {}})
    SetLogDeliveryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetLogDeliveryConfigurationRequest', name: 'SetLogDeliveryConfigurationRequest')
    SetLogDeliveryConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetLogDeliveryConfigurationResponse', name: 'SetLogDeliveryConfigurationResponse')
    SetRiskConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetRiskConfigurationRequest', name: 'SetRiskConfigurationRequest')
    SetRiskConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetRiskConfigurationResponse', name: 'SetRiskConfigurationResponse')
    SetUICustomizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetUICustomizationRequest', name: 'SetUICustomizationRequest')
    SetUICustomizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetUICustomizationResponse', name: 'SetUICustomizationResponse')
    SetUserMFAPreferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetUserMFAPreferenceRequest', name: 'SetUserMFAPreferenceRequest')
    SetUserMFAPreferenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetUserMFAPreferenceResponse', name: 'SetUserMFAPreferenceResponse')
    SetUserPoolMfaConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetUserPoolMfaConfigRequest', name: 'SetUserPoolMfaConfigRequest')
    SetUserPoolMfaConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetUserPoolMfaConfigResponse', name: 'SetUserPoolMfaConfigResponse')
    SetUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetUserSettingsRequest', name: 'SetUserSettingsRequest')
    SetUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SetUserSettingsResponse', name: 'SetUserSettingsResponse')
    SignInPolicyType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SignInPolicyType', name: 'SignInPolicyType')
    SignUpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SignUpRequest', name: 'SignUpRequest')
    SignUpResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SignUpResponse', name: 'SignUpResponse')
    SkippedIPRangeListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#SkippedIPRangeListType', name: 'SkippedIPRangeListType', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    SmsConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SmsConfigurationType', name: 'SmsConfigurationType')
    SmsInviteMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#SmsInviteMessageType', name: 'SmsInviteMessageType', traits: {"smithy.api#length" => {"min" => 6, "max" => 140}, "smithy.api#pattern" => "^(?s)"})
    SmsMfaConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SmsMfaConfigType', name: 'SmsMfaConfigType')
    SmsVerificationMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#SmsVerificationMessageType', name: 'SmsVerificationMessageType', traits: {"smithy.api#length" => {"min" => 6, "max" => 140}, "smithy.api#pattern" => "\\{####\\}"})
    SoftwareTokenMFANotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SoftwareTokenMFANotFoundException', name: 'SoftwareTokenMFANotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SoftwareTokenMFAUserCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#SoftwareTokenMFAUserCodeType', name: 'SoftwareTokenMFAUserCodeType', traits: {"smithy.api#length" => {"min" => 6, "max" => 6}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    SoftwareTokenMfaConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SoftwareTokenMfaConfigType', name: 'SoftwareTokenMfaConfigType')
    SoftwareTokenMfaSettingsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#SoftwareTokenMfaSettingsType', name: 'SoftwareTokenMfaSettingsType')
    StartUserImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#StartUserImportJobRequest', name: 'StartUserImportJobRequest')
    StartUserImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#StartUserImportJobResponse', name: 'StartUserImportJobResponse')
    StartWebAuthnRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#StartWebAuthnRegistrationRequest', name: 'StartWebAuthnRegistrationRequest')
    StartWebAuthnRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#StartWebAuthnRegistrationResponse', name: 'StartWebAuthnRegistrationResponse')
    StatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#StatusType', name: 'StatusType')
    StopUserImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#StopUserImportJobRequest', name: 'StopUserImportJobRequest')
    StopUserImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#StopUserImportJobResponse', name: 'StopUserImportJobResponse')
    StringAttributeConstraintsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#StringAttributeConstraintsType', name: 'StringAttributeConstraintsType')
    StringType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#StringType', name: 'StringType', traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}})
    SupportedIdentityProvidersListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#SupportedIdentityProvidersListType', name: 'SupportedIdentityProvidersListType')
    TagKeysType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#TagKeysType', name: 'TagKeysType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#TagResourceResponse', name: 'TagResourceResponse')
    TagValueType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#TagValueType', name: 'TagValueType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemporaryPasswordValidityDaysType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#TemporaryPasswordValidityDaysType', name: 'TemporaryPasswordValidityDaysType', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 365}})
    TierChangeNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#TierChangeNotAllowedException', name: 'TierChangeNotAllowedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    TimeUnitsType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#TimeUnitsType', name: 'TimeUnitsType')
    TokenModelType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#TokenModelType', name: 'TokenModelType', traits: {"smithy.api#pattern" => "^[A-Za-z0-9-_=.]+$", "smithy.api#sensitive" => {}})
    TokenValidityUnitsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#TokenValidityUnitsType', name: 'TokenValidityUnitsType')
    TooManyFailedAttemptsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#TooManyFailedAttemptsException', name: 'TooManyFailedAttemptsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UICustomizationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UICustomizationType', name: 'UICustomizationType')
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnexpectedLambdaException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UnexpectedLambdaException', name: 'UnexpectedLambdaException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedIdentityProviderException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UnsupportedIdentityProviderException', name: 'UnsupportedIdentityProviderException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedTokenTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UnsupportedTokenTypeException', name: 'UnsupportedTokenTypeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedUserStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UnsupportedUserStateException', name: 'UnsupportedUserStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAuthEventFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateAuthEventFeedbackRequest', name: 'UpdateAuthEventFeedbackRequest')
    UpdateAuthEventFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateAuthEventFeedbackResponse', name: 'UpdateAuthEventFeedbackResponse')
    UpdateDeviceStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateDeviceStatusRequest', name: 'UpdateDeviceStatusRequest')
    UpdateDeviceStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateDeviceStatusResponse', name: 'UpdateDeviceStatusResponse')
    UpdateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateGroupRequest', name: 'UpdateGroupRequest')
    UpdateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateGroupResponse', name: 'UpdateGroupResponse')
    UpdateIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateIdentityProviderRequest', name: 'UpdateIdentityProviderRequest')
    UpdateIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateIdentityProviderResponse', name: 'UpdateIdentityProviderResponse')
    UpdateManagedLoginBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateManagedLoginBrandingRequest', name: 'UpdateManagedLoginBrandingRequest')
    UpdateManagedLoginBrandingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateManagedLoginBrandingResponse', name: 'UpdateManagedLoginBrandingResponse')
    UpdateResourceServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateResourceServerRequest', name: 'UpdateResourceServerRequest')
    UpdateResourceServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateResourceServerResponse', name: 'UpdateResourceServerResponse')
    UpdateUserAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateUserAttributesRequest', name: 'UpdateUserAttributesRequest')
    UpdateUserAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateUserAttributesResponse', name: 'UpdateUserAttributesResponse')
    UpdateUserPoolClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateUserPoolClientRequest', name: 'UpdateUserPoolClientRequest')
    UpdateUserPoolClientResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateUserPoolClientResponse', name: 'UpdateUserPoolClientResponse')
    UpdateUserPoolDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateUserPoolDomainRequest', name: 'UpdateUserPoolDomainRequest')
    UpdateUserPoolDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateUserPoolDomainResponse', name: 'UpdateUserPoolDomainResponse')
    UpdateUserPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateUserPoolRequest', name: 'UpdateUserPoolRequest')
    UpdateUserPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UpdateUserPoolResponse', name: 'UpdateUserPoolResponse')
    UserAttributeUpdateSettingsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserAttributeUpdateSettingsType', name: 'UserAttributeUpdateSettingsType')
    UserContextDataType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserContextDataType', name: 'UserContextDataType', traits: {"smithy.api#sensitive" => {}})
    UserFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserFilterType', name: 'UserFilterType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    UserImportInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserImportInProgressException', name: 'UserImportInProgressException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserImportJobIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserImportJobIdType', name: 'UserImportJobIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^import-[0-9a-zA-Z-]+$"})
    UserImportJobNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserImportJobNameType', name: 'UserImportJobNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\s+=,.@-]+$"})
    UserImportJobStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserImportJobStatusType', name: 'UserImportJobStatusType')
    UserImportJobType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserImportJobType', name: 'UserImportJobType')
    UserImportJobsListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserImportJobsListType', name: 'UserImportJobsListType', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    UserLambdaValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserLambdaValidationException', name: 'UserLambdaValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserMFASettingListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserMFASettingListType', name: 'UserMFASettingListType')
    UserNotConfirmedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserNotConfirmedException', name: 'UserNotConfirmedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserNotFoundException', name: 'UserNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UserPoolAddOnNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolAddOnNotEnabledException', name: 'UserPoolAddOnNotEnabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserPoolAddOnsType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolAddOnsType', name: 'UserPoolAddOnsType')
    UserPoolClientDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolClientDescription', name: 'UserPoolClientDescription')
    UserPoolClientListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolClientListType', name: 'UserPoolClientListType')
    UserPoolClientType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolClientType', name: 'UserPoolClientType')
    UserPoolDescriptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolDescriptionType', name: 'UserPoolDescriptionType')
    UserPoolIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolIdType', name: 'UserPoolIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+_[0-9a-zA-Z]+$"})
    UserPoolListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolListType', name: 'UserPoolListType')
    UserPoolMfaType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolMfaType', name: 'UserPoolMfaType')
    UserPoolNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolNameType', name: 'UserPoolNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\s+=,.@-]+$"})
    UserPoolPolicyType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolPolicyType', name: 'UserPoolPolicyType')
    UserPoolTaggingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolTaggingException', name: 'UserPoolTaggingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserPoolTagsListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolTagsListType', name: 'UserPoolTagsListType')
    UserPoolTagsType = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolTagsType', name: 'UserPoolTagsType')
    UserPoolTierType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolTierType', name: 'UserPoolTierType')
    UserPoolType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserPoolType', name: 'UserPoolType')
    UserStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserStatusType', name: 'UserStatusType')
    UserType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserType', name: 'UserType')
    UserVerificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#UserVerificationType', name: 'UserVerificationType')
    UsernameAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#UsernameAttributeType', name: 'UsernameAttributeType')
    UsernameAttributesListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#UsernameAttributesListType', name: 'UsernameAttributesListType')
    UsernameConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UsernameConfigurationType', name: 'UsernameConfigurationType')
    UsernameExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#UsernameExistsException', name: 'UsernameExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UsernameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#UsernameType', name: 'UsernameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$", "smithy.api#sensitive" => {}})
    UsersListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#UsersListType', name: 'UsersListType')
    VerificationMessageTemplateType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#VerificationMessageTemplateType', name: 'VerificationMessageTemplateType')
    VerifiedAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#VerifiedAttributeType', name: 'VerifiedAttributeType')
    VerifiedAttributesListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#VerifiedAttributesListType', name: 'VerifiedAttributesListType')
    VerifySoftwareTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#VerifySoftwareTokenRequest', name: 'VerifySoftwareTokenRequest')
    VerifySoftwareTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#VerifySoftwareTokenResponse', name: 'VerifySoftwareTokenResponse')
    VerifySoftwareTokenResponseType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cognitoidentityprovider#VerifySoftwareTokenResponseType', name: 'VerifySoftwareTokenResponseType')
    VerifyUserAttributeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#VerifyUserAttributeRequest', name: 'VerifyUserAttributeRequest')
    VerifyUserAttributeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#VerifyUserAttributeResponse', name: 'VerifyUserAttributeResponse')
    WebAuthnAuthenticatorAttachmentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnAuthenticatorAttachmentType', name: 'WebAuthnAuthenticatorAttachmentType')
    WebAuthnAuthenticatorTransportType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnAuthenticatorTransportType', name: 'WebAuthnAuthenticatorTransportType')
    WebAuthnAuthenticatorTransportsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnAuthenticatorTransportsList', name: 'WebAuthnAuthenticatorTransportsList')
    WebAuthnChallengeNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnChallengeNotFoundException', name: 'WebAuthnChallengeNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnClientMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnClientMismatchException', name: 'WebAuthnClientMismatchException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnConfigurationMissingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnConfigurationMissingException', name: 'WebAuthnConfigurationMissingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnConfigurationType', name: 'WebAuthnConfigurationType')
    WebAuthnCredentialDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnCredentialDescription', name: 'WebAuthnCredentialDescription')
    WebAuthnCredentialDescriptionListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnCredentialDescriptionListType', name: 'WebAuthnCredentialDescriptionListType')
    WebAuthnCredentialNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnCredentialNotSupportedException', name: 'WebAuthnCredentialNotSupportedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnCredentialsQueryLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnCredentialsQueryLimitType', name: 'WebAuthnCredentialsQueryLimitType', traits: {"smithy.api#range" => {"min" => 0, "max" => 20}})
    WebAuthnNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnNotEnabledException', name: 'WebAuthnNotEnabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnOriginNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnOriginNotAllowedException', name: 'WebAuthnOriginNotAllowedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnRelyingPartyMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cognitoidentityprovider#WebAuthnRelyingPartyMismatchException', name: 'WebAuthnRelyingPartyMismatchException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WrappedBooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cognitoidentityprovider#WrappedBooleanType', name: 'WrappedBooleanType')
    WrappedIntegerType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cognitoidentityprovider#WrappedIntegerType', name: 'WrappedIntegerType')

    AccountRecoverySettingType.add_member(:recovery_mechanisms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryMechanismsType, location_name: 'RecoveryMechanisms'))
    AccountRecoverySettingType.type = Types::AccountRecoverySettingType
    AccountTakeoverActionType.add_member(:notify, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTakeoverActionNotifyType, location_name: 'Notify', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    AccountTakeoverActionType.add_member(:event_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTakeoverEventActionType, location_name: 'EventAction', traits: {"smithy.api#required" => {}}))
    AccountTakeoverActionType.type = Types::AccountTakeoverActionType
    AccountTakeoverActionsType.add_member(:low_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTakeoverActionType, location_name: 'LowAction'))
    AccountTakeoverActionsType.add_member(:medium_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTakeoverActionType, location_name: 'MediumAction'))
    AccountTakeoverActionsType.add_member(:high_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTakeoverActionType, location_name: 'HighAction'))
    AccountTakeoverActionsType.type = Types::AccountTakeoverActionsType
    AccountTakeoverEventActionType.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLOCK', traits: {"smithy.api#enumValue" => "BLOCK"}))
    AccountTakeoverEventActionType.add_member(:mfa_if_configured, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MFA_IF_CONFIGURED', traits: {"smithy.api#enumValue" => "MFA_IF_CONFIGURED"}))
    AccountTakeoverEventActionType.add_member(:mfa_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MFA_REQUIRED', traits: {"smithy.api#enumValue" => "MFA_REQUIRED"}))
    AccountTakeoverEventActionType.add_member(:no_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_ACTION', traits: {"smithy.api#enumValue" => "NO_ACTION"}))
    AccountTakeoverRiskConfigurationType.add_member(:notify_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyConfigurationType, location_name: 'NotifyConfiguration'))
    AccountTakeoverRiskConfigurationType.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTakeoverActionsType, location_name: 'Actions', traits: {"smithy.api#required" => {}}))
    AccountTakeoverRiskConfigurationType.type = Types::AccountTakeoverRiskConfigurationType
    AddCustomAttributesRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AddCustomAttributesRequest.add_member(:custom_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributesListType, location_name: 'CustomAttributes', traits: {"smithy.api#required" => {}}))
    AddCustomAttributesRequest.type = Types::AddCustomAttributesRequest
    AddCustomAttributesResponse.type = Types::AddCustomAttributesResponse
    AdminAddUserToGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminAddUserToGroupRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminAddUserToGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNameType, location_name: 'GroupName', traits: {"smithy.api#required" => {}}))
    AdminAddUserToGroupRequest.type = Types::AdminAddUserToGroupRequest
    AdminConfirmSignUpRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminConfirmSignUpRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminConfirmSignUpRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    AdminConfirmSignUpRequest.type = Types::AdminConfirmSignUpRequest
    AdminConfirmSignUpResponse.type = Types::AdminConfirmSignUpResponse
    AdminCreateUserConfigType.add_member(:allow_admin_create_user_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'AllowAdminCreateUserOnly', traits: {"smithy.api#default" => false}))
    AdminCreateUserConfigType.add_member(:unused_account_validity_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminCreateUserUnusedAccountValidityDaysType, location_name: 'UnusedAccountValidityDays', traits: {"smithy.api#default" => 0}))
    AdminCreateUserConfigType.add_member(:invite_message_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTemplateType, location_name: 'InviteMessageTemplate'))
    AdminCreateUserConfigType.type = Types::AdminCreateUserConfigType
    AdminCreateUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminCreateUserRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminCreateUserRequest.add_member(:user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeListType, location_name: 'UserAttributes'))
    AdminCreateUserRequest.add_member(:validation_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeListType, location_name: 'ValidationData'))
    AdminCreateUserRequest.add_member(:temporary_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordType, location_name: 'TemporaryPassword'))
    AdminCreateUserRequest.add_member(:force_alias_creation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForceAliasCreation, location_name: 'ForceAliasCreation', traits: {"smithy.api#default" => false}))
    AdminCreateUserRequest.add_member(:message_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageActionType, location_name: 'MessageAction'))
    AdminCreateUserRequest.add_member(:desired_delivery_mediums, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryMediumListType, location_name: 'DesiredDeliveryMediums'))
    AdminCreateUserRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    AdminCreateUserRequest.type = Types::AdminCreateUserRequest
    AdminCreateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'User'))
    AdminCreateUserResponse.type = Types::AdminCreateUserResponse
    AdminDeleteUserAttributesRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminDeleteUserAttributesRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminDeleteUserAttributesRequest.add_member(:user_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameListType, location_name: 'UserAttributeNames', traits: {"smithy.api#required" => {}}))
    AdminDeleteUserAttributesRequest.type = Types::AdminDeleteUserAttributesRequest
    AdminDeleteUserAttributesResponse.type = Types::AdminDeleteUserAttributesResponse
    AdminDeleteUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminDeleteUserRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminDeleteUserRequest.type = Types::AdminDeleteUserRequest
    AdminDisableProviderForUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminDisableProviderForUserRequest.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderUserIdentifierType, location_name: 'User', traits: {"smithy.api#required" => {}}))
    AdminDisableProviderForUserRequest.type = Types::AdminDisableProviderForUserRequest
    AdminDisableProviderForUserResponse.type = Types::AdminDisableProviderForUserResponse
    AdminDisableUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminDisableUserRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminDisableUserRequest.type = Types::AdminDisableUserRequest
    AdminDisableUserResponse.type = Types::AdminDisableUserResponse
    AdminEnableUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminEnableUserRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminEnableUserRequest.type = Types::AdminEnableUserRequest
    AdminEnableUserResponse.type = Types::AdminEnableUserResponse
    AdminForgetDeviceRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminForgetDeviceRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminForgetDeviceRequest.add_member(:device_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: 'DeviceKey', traits: {"smithy.api#required" => {}}))
    AdminForgetDeviceRequest.type = Types::AdminForgetDeviceRequest
    AdminGetDeviceRequest.add_member(:device_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: 'DeviceKey', traits: {"smithy.api#required" => {}}))
    AdminGetDeviceRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminGetDeviceRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminGetDeviceRequest.type = Types::AdminGetDeviceRequest
    AdminGetDeviceResponse.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceType, location_name: 'Device', traits: {"smithy.api#required" => {}}))
    AdminGetDeviceResponse.type = Types::AdminGetDeviceResponse
    AdminGetUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminGetUserRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminGetUserRequest.type = Types::AdminGetUserRequest
    AdminGetUserResponse.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminGetUserResponse.add_member(:user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeListType, location_name: 'UserAttributes'))
    AdminGetUserResponse.add_member(:user_create_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'UserCreateDate'))
    AdminGetUserResponse.add_member(:user_last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'UserLastModifiedDate'))
    AdminGetUserResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Enabled', traits: {"smithy.api#default" => false}))
    AdminGetUserResponse.add_member(:user_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatusType, location_name: 'UserStatus'))
    AdminGetUserResponse.add_member(:mfa_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFAOptionListType, location_name: 'MFAOptions'))
    AdminGetUserResponse.add_member(:preferred_mfa_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'PreferredMfaSetting'))
    AdminGetUserResponse.add_member(:user_mfa_setting_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMFASettingListType, location_name: 'UserMFASettingList'))
    AdminGetUserResponse.type = Types::AdminGetUserResponse
    AdminInitiateAuthRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminInitiateAuthRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    AdminInitiateAuthRequest.add_member(:auth_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthFlowType, location_name: 'AuthFlow', traits: {"smithy.api#required" => {}}))
    AdminInitiateAuthRequest.add_member(:auth_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthParametersType, location_name: 'AuthParameters'))
    AdminInitiateAuthRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    AdminInitiateAuthRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: 'AnalyticsMetadata'))
    AdminInitiateAuthRequest.add_member(:context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContextDataType, location_name: 'ContextData'))
    AdminInitiateAuthRequest.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    AdminInitiateAuthRequest.type = Types::AdminInitiateAuthRequest
    AdminInitiateAuthResponse.add_member(:challenge_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeNameType, location_name: 'ChallengeName'))
    AdminInitiateAuthResponse.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    AdminInitiateAuthResponse.add_member(:challenge_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeParametersType, location_name: 'ChallengeParameters'))
    AdminInitiateAuthResponse.add_member(:authentication_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationResultType, location_name: 'AuthenticationResult'))
    AdminInitiateAuthResponse.add_member(:available_challenges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailableChallengeListType, location_name: 'AvailableChallenges'))
    AdminInitiateAuthResponse.type = Types::AdminInitiateAuthResponse
    AdminLinkProviderForUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminLinkProviderForUserRequest.add_member(:destination_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderUserIdentifierType, location_name: 'DestinationUser', traits: {"smithy.api#required" => {}}))
    AdminLinkProviderForUserRequest.add_member(:source_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderUserIdentifierType, location_name: 'SourceUser', traits: {"smithy.api#required" => {}}))
    AdminLinkProviderForUserRequest.type = Types::AdminLinkProviderForUserRequest
    AdminLinkProviderForUserResponse.type = Types::AdminLinkProviderForUserResponse
    AdminListDevicesRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminListDevicesRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminListDevicesRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimitType, location_name: 'Limit'))
    AdminListDevicesRequest.add_member(:pagination_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: 'PaginationToken'))
    AdminListDevicesRequest.type = Types::AdminListDevicesRequest
    AdminListDevicesResponse.add_member(:devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceListType, location_name: 'Devices'))
    AdminListDevicesResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: 'PaginationToken'))
    AdminListDevicesResponse.type = Types::AdminListDevicesResponse
    AdminListGroupsForUserRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminListGroupsForUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminListGroupsForUserRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimitType, location_name: 'Limit'))
    AdminListGroupsForUserRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    AdminListGroupsForUserRequest.type = Types::AdminListGroupsForUserRequest
    AdminListGroupsForUserResponse.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupListType, location_name: 'Groups'))
    AdminListGroupsForUserResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    AdminListGroupsForUserResponse.type = Types::AdminListGroupsForUserResponse
    AdminListUserAuthEventsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminListUserAuthEventsRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminListUserAuthEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimitType, location_name: 'MaxResults'))
    AdminListUserAuthEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    AdminListUserAuthEventsRequest.type = Types::AdminListUserAuthEventsRequest
    AdminListUserAuthEventsResponse.add_member(:auth_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthEventsType, location_name: 'AuthEvents'))
    AdminListUserAuthEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    AdminListUserAuthEventsResponse.type = Types::AdminListUserAuthEventsResponse
    AdminRemoveUserFromGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminRemoveUserFromGroupRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminRemoveUserFromGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNameType, location_name: 'GroupName', traits: {"smithy.api#required" => {}}))
    AdminRemoveUserFromGroupRequest.type = Types::AdminRemoveUserFromGroupRequest
    AdminResetUserPasswordRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminResetUserPasswordRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminResetUserPasswordRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    AdminResetUserPasswordRequest.type = Types::AdminResetUserPasswordRequest
    AdminResetUserPasswordResponse.type = Types::AdminResetUserPasswordResponse
    AdminRespondToAuthChallengeRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminRespondToAuthChallengeRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    AdminRespondToAuthChallengeRequest.add_member(:challenge_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeNameType, location_name: 'ChallengeName', traits: {"smithy.api#required" => {}}))
    AdminRespondToAuthChallengeRequest.add_member(:challenge_responses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeResponsesType, location_name: 'ChallengeResponses'))
    AdminRespondToAuthChallengeRequest.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    AdminRespondToAuthChallengeRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: 'AnalyticsMetadata'))
    AdminRespondToAuthChallengeRequest.add_member(:context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContextDataType, location_name: 'ContextData'))
    AdminRespondToAuthChallengeRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    AdminRespondToAuthChallengeRequest.type = Types::AdminRespondToAuthChallengeRequest
    AdminRespondToAuthChallengeResponse.add_member(:challenge_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeNameType, location_name: 'ChallengeName'))
    AdminRespondToAuthChallengeResponse.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    AdminRespondToAuthChallengeResponse.add_member(:challenge_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeParametersType, location_name: 'ChallengeParameters'))
    AdminRespondToAuthChallengeResponse.add_member(:authentication_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationResultType, location_name: 'AuthenticationResult'))
    AdminRespondToAuthChallengeResponse.type = Types::AdminRespondToAuthChallengeResponse
    AdminSetUserMFAPreferenceRequest.add_member(:sms_mfa_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSMfaSettingsType, location_name: 'SMSMfaSettings'))
    AdminSetUserMFAPreferenceRequest.add_member(:software_token_mfa_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareTokenMfaSettingsType, location_name: 'SoftwareTokenMfaSettings'))
    AdminSetUserMFAPreferenceRequest.add_member(:email_mfa_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMfaSettingsType, location_name: 'EmailMfaSettings'))
    AdminSetUserMFAPreferenceRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminSetUserMFAPreferenceRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminSetUserMFAPreferenceRequest.type = Types::AdminSetUserMFAPreferenceRequest
    AdminSetUserMFAPreferenceResponse.type = Types::AdminSetUserMFAPreferenceResponse
    AdminSetUserPasswordRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminSetUserPasswordRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminSetUserPasswordRequest.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordType, location_name: 'Password', traits: {"smithy.api#required" => {}}))
    AdminSetUserPasswordRequest.add_member(:permanent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Permanent', traits: {"smithy.api#default" => false}))
    AdminSetUserPasswordRequest.type = Types::AdminSetUserPasswordRequest
    AdminSetUserPasswordResponse.type = Types::AdminSetUserPasswordResponse
    AdminSetUserSettingsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminSetUserSettingsRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminSetUserSettingsRequest.add_member(:mfa_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFAOptionListType, location_name: 'MFAOptions', traits: {"smithy.api#required" => {}}))
    AdminSetUserSettingsRequest.type = Types::AdminSetUserSettingsRequest
    AdminSetUserSettingsResponse.type = Types::AdminSetUserSettingsResponse
    AdminUpdateAuthEventFeedbackRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminUpdateAuthEventFeedbackRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminUpdateAuthEventFeedbackRequest.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventIdType, location_name: 'EventId', traits: {"smithy.api#required" => {}}))
    AdminUpdateAuthEventFeedbackRequest.add_member(:feedback_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackValueType, location_name: 'FeedbackValue', traits: {"smithy.api#required" => {}}))
    AdminUpdateAuthEventFeedbackRequest.type = Types::AdminUpdateAuthEventFeedbackRequest
    AdminUpdateAuthEventFeedbackResponse.type = Types::AdminUpdateAuthEventFeedbackResponse
    AdminUpdateDeviceStatusRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminUpdateDeviceStatusRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminUpdateDeviceStatusRequest.add_member(:device_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: 'DeviceKey', traits: {"smithy.api#required" => {}}))
    AdminUpdateDeviceStatusRequest.add_member(:device_remembered_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceRememberedStatusType, location_name: 'DeviceRememberedStatus'))
    AdminUpdateDeviceStatusRequest.type = Types::AdminUpdateDeviceStatusRequest
    AdminUpdateDeviceStatusResponse.type = Types::AdminUpdateDeviceStatusResponse
    AdminUpdateUserAttributesRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminUpdateUserAttributesRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminUpdateUserAttributesRequest.add_member(:user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeListType, location_name: 'UserAttributes', traits: {"smithy.api#required" => {}}))
    AdminUpdateUserAttributesRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    AdminUpdateUserAttributesRequest.type = Types::AdminUpdateUserAttributesRequest
    AdminUpdateUserAttributesResponse.type = Types::AdminUpdateUserAttributesResponse
    AdminUserGlobalSignOutRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    AdminUserGlobalSignOutRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    AdminUserGlobalSignOutRequest.type = Types::AdminUserGlobalSignOutRequest
    AdminUserGlobalSignOutResponse.type = Types::AdminUserGlobalSignOutResponse
    AdvancedSecurityAdditionalFlowsType.add_member(:custom_auth_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityEnabledModeType, location_name: 'CustomAuthMode'))
    AdvancedSecurityAdditionalFlowsType.type = Types::AdvancedSecurityAdditionalFlowsType
    AdvancedSecurityEnabledModeType.add_member(:audit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUDIT', traits: {"smithy.api#enumValue" => "AUDIT"}))
    AdvancedSecurityEnabledModeType.add_member(:enforced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENFORCED', traits: {"smithy.api#enumValue" => "ENFORCED"}))
    AdvancedSecurityModeType.add_member(:off, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    AdvancedSecurityModeType.add_member(:audit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUDIT', traits: {"smithy.api#enumValue" => "AUDIT"}))
    AdvancedSecurityModeType.add_member(:enforced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENFORCED', traits: {"smithy.api#enumValue" => "ENFORCED"}))
    AliasAttributeType.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_NUMBER', traits: {"smithy.api#enumValue" => "phone_number"}))
    AliasAttributeType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "email"}))
    AliasAttributeType.add_member(:preferred_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREFERRED_USERNAME', traits: {"smithy.api#enumValue" => "preferred_username"}))
    AliasAttributesListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasAttributeType)
    AliasExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    AliasExistsException.type = Types::AliasExistsException
    AllowedFirstAuthFactorsListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthFactorType)
    AnalyticsConfigurationType.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HexStringType, location_name: 'ApplicationId'))
    AnalyticsConfigurationType.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ApplicationArn'))
    AnalyticsConfigurationType.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'RoleArn'))
    AnalyticsConfigurationType.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'ExternalId'))
    AnalyticsConfigurationType.add_member(:user_data_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'UserDataShared', traits: {"smithy.api#default" => false}))
    AnalyticsConfigurationType.type = Types::AnalyticsConfigurationType
    AnalyticsMetadataType.add_member(:analytics_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'AnalyticsEndpointId'))
    AnalyticsMetadataType.type = Types::AnalyticsMetadataType
    AssetCategoryType.add_member(:favicon_ico, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAVICON_ICO', traits: {"smithy.api#enumValue" => "FAVICON_ICO"}))
    AssetCategoryType.add_member(:favicon_svg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAVICON_SVG', traits: {"smithy.api#enumValue" => "FAVICON_SVG"}))
    AssetCategoryType.add_member(:email_graphic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_GRAPHIC', traits: {"smithy.api#enumValue" => "EMAIL_GRAPHIC"}))
    AssetCategoryType.add_member(:sms_graphic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS_GRAPHIC', traits: {"smithy.api#enumValue" => "SMS_GRAPHIC"}))
    AssetCategoryType.add_member(:auth_app_graphic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTH_APP_GRAPHIC', traits: {"smithy.api#enumValue" => "AUTH_APP_GRAPHIC"}))
    AssetCategoryType.add_member(:password_graphic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD_GRAPHIC', traits: {"smithy.api#enumValue" => "PASSWORD_GRAPHIC"}))
    AssetCategoryType.add_member(:passkey_graphic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSKEY_GRAPHIC', traits: {"smithy.api#enumValue" => "PASSKEY_GRAPHIC"}))
    AssetCategoryType.add_member(:page_header_logo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGE_HEADER_LOGO', traits: {"smithy.api#enumValue" => "PAGE_HEADER_LOGO"}))
    AssetCategoryType.add_member(:page_header_background, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGE_HEADER_BACKGROUND', traits: {"smithy.api#enumValue" => "PAGE_HEADER_BACKGROUND"}))
    AssetCategoryType.add_member(:page_footer_logo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGE_FOOTER_LOGO', traits: {"smithy.api#enumValue" => "PAGE_FOOTER_LOGO"}))
    AssetCategoryType.add_member(:page_footer_background, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGE_FOOTER_BACKGROUND', traits: {"smithy.api#enumValue" => "PAGE_FOOTER_BACKGROUND"}))
    AssetCategoryType.add_member(:page_background, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGE_BACKGROUND', traits: {"smithy.api#enumValue" => "PAGE_BACKGROUND"}))
    AssetCategoryType.add_member(:form_background, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORM_BACKGROUND', traits: {"smithy.api#enumValue" => "FORM_BACKGROUND"}))
    AssetCategoryType.add_member(:form_logo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORM_LOGO', traits: {"smithy.api#enumValue" => "FORM_LOGO"}))
    AssetCategoryType.add_member(:idp_button_icon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDP_BUTTON_ICON', traits: {"smithy.api#enumValue" => "IDP_BUTTON_ICON"}))
    AssetExtensionType.add_member(:ico, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ICO', traits: {"smithy.api#enumValue" => "ICO"}))
    AssetExtensionType.add_member(:jpeg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JPEG', traits: {"smithy.api#enumValue" => "JPEG"}))
    AssetExtensionType.add_member(:png, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PNG', traits: {"smithy.api#enumValue" => "PNG"}))
    AssetExtensionType.add_member(:svg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SVG', traits: {"smithy.api#enumValue" => "SVG"}))
    AssetExtensionType.add_member(:webp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBP', traits: {"smithy.api#enumValue" => "WEBP"}))
    AssetListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType)
    AssetType.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetCategoryType, location_name: 'Category', traits: {"smithy.api#required" => {}}))
    AssetType.add_member(:color_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColorSchemeModeType, location_name: 'ColorMode', traits: {"smithy.api#required" => {}}))
    AssetType.add_member(:extension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetExtensionType, location_name: 'Extension', traits: {"smithy.api#required" => {}}))
    AssetType.add_member(:bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetBytesType, location_name: 'Bytes'))
    AssetType.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceId'))
    AssetType.type = Types::AssetType
    AssociateSoftwareTokenRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken'))
    AssociateSoftwareTokenRequest.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    AssociateSoftwareTokenRequest.type = Types::AssociateSoftwareTokenRequest
    AssociateSoftwareTokenResponse.add_member(:secret_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretCodeType, location_name: 'SecretCode'))
    AssociateSoftwareTokenResponse.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    AssociateSoftwareTokenResponse.type = Types::AssociateSoftwareTokenResponse
    AttributeDataType.add_member(:string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "String"}))
    AttributeDataType.add_member(:number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER', traits: {"smithy.api#enumValue" => "Number"}))
    AttributeDataType.add_member(:datetime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATETIME', traits: {"smithy.api#enumValue" => "DateTime"}))
    AttributeDataType.add_member(:boolean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "Boolean"}))
    AttributeListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeType)
    AttributeMappingType.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMappingKeyType)
    AttributeMappingType.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    AttributeNameListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameType)
    AttributeType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameType, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    AttributeType.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueType, location_name: 'Value'))
    AttributeType.type = Types::AttributeType
    AttributesRequireVerificationBeforeUpdateType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedAttributeType)
    AuthEventType.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'EventId'))
    AuthEventType.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'EventType'))
    AuthEventType.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    AuthEventType.add_member(:event_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventResponseType, location_name: 'EventResponse'))
    AuthEventType.add_member(:event_risk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventRiskType, location_name: 'EventRisk'))
    AuthEventType.add_member(:challenge_responses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeResponseListType, location_name: 'ChallengeResponses'))
    AuthEventType.add_member(:event_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventContextDataType, location_name: 'EventContextData'))
    AuthEventType.add_member(:event_feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventFeedbackType, location_name: 'EventFeedback'))
    AuthEventType.type = Types::AuthEventType
    AuthEventsType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthEventType)
    AuthFactorType.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD', traits: {"smithy.api#enumValue" => "PASSWORD"}))
    AuthFactorType.add_member(:email_otp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_OTP', traits: {"smithy.api#enumValue" => "EMAIL_OTP"}))
    AuthFactorType.add_member(:sms_otp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS_OTP', traits: {"smithy.api#enumValue" => "SMS_OTP"}))
    AuthFactorType.add_member(:web_authn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEB_AUTHN', traits: {"smithy.api#enumValue" => "WEB_AUTHN"}))
    AuthFlowType.add_member(:user_srp_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_SRP_AUTH', traits: {"smithy.api#enumValue" => "USER_SRP_AUTH"}))
    AuthFlowType.add_member(:refresh_token_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REFRESH_TOKEN_AUTH', traits: {"smithy.api#enumValue" => "REFRESH_TOKEN_AUTH"}))
    AuthFlowType.add_member(:refresh_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REFRESH_TOKEN', traits: {"smithy.api#enumValue" => "REFRESH_TOKEN"}))
    AuthFlowType.add_member(:custom_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_AUTH', traits: {"smithy.api#enumValue" => "CUSTOM_AUTH"}))
    AuthFlowType.add_member(:admin_no_srp_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMIN_NO_SRP_AUTH', traits: {"smithy.api#enumValue" => "ADMIN_NO_SRP_AUTH"}))
    AuthFlowType.add_member(:user_password_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_PASSWORD_AUTH', traits: {"smithy.api#enumValue" => "USER_PASSWORD_AUTH"}))
    AuthFlowType.add_member(:admin_user_password_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMIN_USER_PASSWORD_AUTH', traits: {"smithy.api#enumValue" => "ADMIN_USER_PASSWORD_AUTH"}))
    AuthFlowType.add_member(:user_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_AUTH', traits: {"smithy.api#enumValue" => "USER_AUTH"}))
    AuthParametersType.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    AuthParametersType.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    AuthenticationResultType.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken'))
    AuthenticationResultType.add_member(:expires_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerType, location_name: 'ExpiresIn', traits: {"smithy.api#default" => 0}))
    AuthenticationResultType.add_member(:token_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'TokenType'))
    AuthenticationResultType.add_member(:refresh_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'RefreshToken'))
    AuthenticationResultType.add_member(:id_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'IdToken'))
    AuthenticationResultType.add_member(:new_device_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewDeviceMetadataType, location_name: 'NewDeviceMetadata'))
    AuthenticationResultType.type = Types::AuthenticationResultType
    AvailableChallengeListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeNameType)
    BlockedIPRangeListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    CallbackURLsListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectUrlType)
    ChallengeName.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Password', traits: {"smithy.api#enumValue" => "Password"}))
    ChallengeName.add_member(:mfa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Mfa', traits: {"smithy.api#enumValue" => "Mfa"}))
    ChallengeNameType.add_member(:sms_mfa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS_MFA', traits: {"smithy.api#enumValue" => "SMS_MFA"}))
    ChallengeNameType.add_member(:email_otp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_OTP', traits: {"smithy.api#enumValue" => "EMAIL_OTP"}))
    ChallengeNameType.add_member(:software_token_mfa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOFTWARE_TOKEN_MFA', traits: {"smithy.api#enumValue" => "SOFTWARE_TOKEN_MFA"}))
    ChallengeNameType.add_member(:select_mfa_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELECT_MFA_TYPE', traits: {"smithy.api#enumValue" => "SELECT_MFA_TYPE"}))
    ChallengeNameType.add_member(:mfa_setup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MFA_SETUP', traits: {"smithy.api#enumValue" => "MFA_SETUP"}))
    ChallengeNameType.add_member(:password_verifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD_VERIFIER', traits: {"smithy.api#enumValue" => "PASSWORD_VERIFIER"}))
    ChallengeNameType.add_member(:custom_challenge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_CHALLENGE', traits: {"smithy.api#enumValue" => "CUSTOM_CHALLENGE"}))
    ChallengeNameType.add_member(:select_challenge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELECT_CHALLENGE', traits: {"smithy.api#enumValue" => "SELECT_CHALLENGE"}))
    ChallengeNameType.add_member(:device_srp_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE_SRP_AUTH', traits: {"smithy.api#enumValue" => "DEVICE_SRP_AUTH"}))
    ChallengeNameType.add_member(:device_password_verifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE_PASSWORD_VERIFIER', traits: {"smithy.api#enumValue" => "DEVICE_PASSWORD_VERIFIER"}))
    ChallengeNameType.add_member(:admin_no_srp_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMIN_NO_SRP_AUTH', traits: {"smithy.api#enumValue" => "ADMIN_NO_SRP_AUTH"}))
    ChallengeNameType.add_member(:new_password_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_PASSWORD_REQUIRED', traits: {"smithy.api#enumValue" => "NEW_PASSWORD_REQUIRED"}))
    ChallengeNameType.add_member(:sms_otp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS_OTP', traits: {"smithy.api#enumValue" => "SMS_OTP"}))
    ChallengeNameType.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD', traits: {"smithy.api#enumValue" => "PASSWORD"}))
    ChallengeNameType.add_member(:web_authn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEB_AUTHN', traits: {"smithy.api#enumValue" => "WEB_AUTHN"}))
    ChallengeNameType.add_member(:password_srp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD_SRP', traits: {"smithy.api#enumValue" => "PASSWORD_SRP"}))
    ChallengeParametersType.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    ChallengeParametersType.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    ChallengeResponse.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Success', traits: {"smithy.api#enumValue" => "Success"}))
    ChallengeResponse.add_member(:failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failure', traits: {"smithy.api#enumValue" => "Failure"}))
    ChallengeResponseListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeResponseType)
    ChallengeResponseType.add_member(:challenge_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeName, location_name: 'ChallengeName'))
    ChallengeResponseType.add_member(:challenge_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeResponse, location_name: 'ChallengeResponse'))
    ChallengeResponseType.type = Types::ChallengeResponseType
    ChallengeResponsesType.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    ChallengeResponsesType.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    ChangePasswordRequest.add_member(:previous_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordType, location_name: 'PreviousPassword'))
    ChangePasswordRequest.add_member(:proposed_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordType, location_name: 'ProposedPassword', traits: {"smithy.api#required" => {}}))
    ChangePasswordRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    ChangePasswordRequest.type = Types::ChangePasswordRequest
    ChangePasswordResponse.type = Types::ChangePasswordResponse
    ClientMetadataType.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    ClientMetadataType.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    ClientPermissionListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPermissionType)
    CloudWatchLogsConfigurationType.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'LogGroupArn'))
    CloudWatchLogsConfigurationType.type = Types::CloudWatchLogsConfigurationType
    CodeDeliveryDetailsListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryDetailsType)
    CodeDeliveryDetailsType.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'Destination'))
    CodeDeliveryDetailsType.add_member(:delivery_medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryMediumType, location_name: 'DeliveryMedium'))
    CodeDeliveryDetailsType.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameType, location_name: 'AttributeName'))
    CodeDeliveryDetailsType.type = Types::CodeDeliveryDetailsType
    CodeDeliveryFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    CodeDeliveryFailureException.type = Types::CodeDeliveryFailureException
    CodeMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    CodeMismatchException.type = Types::CodeMismatchException
    ColorSchemeModeType.add_member(:light, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIGHT', traits: {"smithy.api#enumValue" => "LIGHT"}))
    ColorSchemeModeType.add_member(:dark, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DARK', traits: {"smithy.api#enumValue" => "DARK"}))
    ColorSchemeModeType.add_member(:dynamic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMIC', traits: {"smithy.api#enumValue" => "DYNAMIC"}))
    CompleteWebAuthnRegistrationRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    CompleteWebAuthnRegistrationRequest.add_member(:credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'Credential', traits: {"smithy.api#required" => {}}))
    CompleteWebAuthnRegistrationRequest.type = Types::CompleteWebAuthnRegistrationRequest
    CompleteWebAuthnRegistrationResponse.type = Types::CompleteWebAuthnRegistrationResponse
    CompromisedCredentialsActionsType.add_member(:event_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompromisedCredentialsEventActionType, location_name: 'EventAction', traits: {"smithy.api#required" => {}}))
    CompromisedCredentialsActionsType.type = Types::CompromisedCredentialsActionsType
    CompromisedCredentialsEventActionType.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLOCK', traits: {"smithy.api#enumValue" => "BLOCK"}))
    CompromisedCredentialsEventActionType.add_member(:no_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_ACTION', traits: {"smithy.api#enumValue" => "NO_ACTION"}))
    CompromisedCredentialsRiskConfigurationType.add_member(:event_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventFiltersType, location_name: 'EventFilter'))
    CompromisedCredentialsRiskConfigurationType.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompromisedCredentialsActionsType, location_name: 'Actions', traits: {"smithy.api#required" => {}}))
    CompromisedCredentialsRiskConfigurationType.type = Types::CompromisedCredentialsRiskConfigurationType
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfiguredUserAuthFactorsListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthFactorType)
    ConfirmDeviceRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    ConfirmDeviceRequest.add_member(:device_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: 'DeviceKey', traits: {"smithy.api#required" => {}}))
    ConfirmDeviceRequest.add_member(:device_secret_verifier_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSecretVerifierConfigType, location_name: 'DeviceSecretVerifierConfig'))
    ConfirmDeviceRequest.add_member(:device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceNameType, location_name: 'DeviceName'))
    ConfirmDeviceRequest.type = Types::ConfirmDeviceRequest
    ConfirmDeviceResponse.add_member(:user_confirmation_necessary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'UserConfirmationNecessary', traits: {"smithy.api#default" => false}))
    ConfirmDeviceResponse.type = Types::ConfirmDeviceResponse
    ConfirmForgotPasswordRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    ConfirmForgotPasswordRequest.add_member(:secret_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretHashType, location_name: 'SecretHash'))
    ConfirmForgotPasswordRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    ConfirmForgotPasswordRequest.add_member(:confirmation_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationCodeType, location_name: 'ConfirmationCode', traits: {"smithy.api#required" => {}}))
    ConfirmForgotPasswordRequest.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordType, location_name: 'Password', traits: {"smithy.api#required" => {}}))
    ConfirmForgotPasswordRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: 'AnalyticsMetadata'))
    ConfirmForgotPasswordRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserContextDataType, location_name: 'UserContextData'))
    ConfirmForgotPasswordRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    ConfirmForgotPasswordRequest.type = Types::ConfirmForgotPasswordRequest
    ConfirmForgotPasswordResponse.type = Types::ConfirmForgotPasswordResponse
    ConfirmSignUpRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    ConfirmSignUpRequest.add_member(:secret_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretHashType, location_name: 'SecretHash'))
    ConfirmSignUpRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    ConfirmSignUpRequest.add_member(:confirmation_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationCodeType, location_name: 'ConfirmationCode', traits: {"smithy.api#required" => {}}))
    ConfirmSignUpRequest.add_member(:force_alias_creation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForceAliasCreation, location_name: 'ForceAliasCreation', traits: {"smithy.api#default" => false}))
    ConfirmSignUpRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: 'AnalyticsMetadata'))
    ConfirmSignUpRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserContextDataType, location_name: 'UserContextData'))
    ConfirmSignUpRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    ConfirmSignUpRequest.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    ConfirmSignUpRequest.type = Types::ConfirmSignUpRequest
    ConfirmSignUpResponse.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    ConfirmSignUpResponse.type = Types::ConfirmSignUpResponse
    ContextDataType.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'IpAddress', traits: {"smithy.api#required" => {}}))
    ContextDataType.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    ContextDataType.add_member(:server_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'ServerPath', traits: {"smithy.api#required" => {}}))
    ContextDataType.add_member(:http_headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpHeaderList, location_name: 'HttpHeaders', traits: {"smithy.api#required" => {}}))
    ContextDataType.add_member(:encoded_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'EncodedData'))
    ContextDataType.type = Types::ContextDataType
    CreateGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNameType, location_name: 'GroupName', traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionType, location_name: 'Description'))
    CreateGroupRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'RoleArn'))
    CreateGroupRequest.add_member(:precedence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrecedenceType, location_name: 'Precedence'))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResponse.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: 'Group'))
    CreateGroupResponse.type = Types::CreateGroupResponse
    CreateIdentityProviderRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderNameTypeV2, location_name: 'ProviderName', traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderTypeType, location_name: 'ProviderType', traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:provider_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderDetailsType, location_name: 'ProviderDetails', traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:attribute_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMappingType, location_name: 'AttributeMapping'))
    CreateIdentityProviderRequest.add_member(:idp_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdpIdentifiersListType, location_name: 'IdpIdentifiers'))
    CreateIdentityProviderRequest.type = Types::CreateIdentityProviderRequest
    CreateIdentityProviderResponse.add_member(:identity_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'IdentityProvider', traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderResponse.type = Types::CreateIdentityProviderResponse
    CreateManagedLoginBrandingRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    CreateManagedLoginBrandingRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    CreateManagedLoginBrandingRequest.add_member(:use_cognito_provided_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'UseCognitoProvidedValues', traits: {"smithy.api#default" => false}))
    CreateManagedLoginBrandingRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'Settings'))
    CreateManagedLoginBrandingRequest.add_member(:assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetListType, location_name: 'Assets'))
    CreateManagedLoginBrandingRequest.type = Types::CreateManagedLoginBrandingRequest
    CreateManagedLoginBrandingResponse.add_member(:managed_login_branding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedLoginBrandingType, location_name: 'ManagedLoginBranding'))
    CreateManagedLoginBrandingResponse.type = Types::CreateManagedLoginBrandingResponse
    CreateResourceServerRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    CreateResourceServerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerIdentifierType, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    CreateResourceServerRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerNameType, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateResourceServerRequest.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerScopeListType, location_name: 'Scopes'))
    CreateResourceServerRequest.type = Types::CreateResourceServerRequest
    CreateResourceServerResponse.add_member(:resource_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerType, location_name: 'ResourceServer', traits: {"smithy.api#required" => {}}))
    CreateResourceServerResponse.type = Types::CreateResourceServerResponse
    CreateUserImportJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobNameType, location_name: 'JobName', traits: {"smithy.api#required" => {}}))
    CreateUserImportJobRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    CreateUserImportJobRequest.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'CloudWatchLogsRoleArn', traits: {"smithy.api#required" => {}}))
    CreateUserImportJobRequest.type = Types::CreateUserImportJobRequest
    CreateUserImportJobResponse.add_member(:user_import_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobType, location_name: 'UserImportJob'))
    CreateUserImportJobResponse.type = Types::CreateUserImportJobResponse
    CreateUserPoolClientRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    CreateUserPoolClientRequest.add_member(:client_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientNameType, location_name: 'ClientName', traits: {"smithy.api#required" => {}}))
    CreateUserPoolClientRequest.add_member(:generate_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateSecret, location_name: 'GenerateSecret', traits: {"smithy.api#default" => false}))
    CreateUserPoolClientRequest.add_member(:refresh_token_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenValidityType, location_name: 'RefreshTokenValidity', traits: {"smithy.api#default" => 0}))
    CreateUserPoolClientRequest.add_member(:access_token_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenValidityType, location_name: 'AccessTokenValidity'))
    CreateUserPoolClientRequest.add_member(:id_token_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdTokenValidityType, location_name: 'IdTokenValidity'))
    CreateUserPoolClientRequest.add_member(:token_validity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenValidityUnitsType, location_name: 'TokenValidityUnits'))
    CreateUserPoolClientRequest.add_member(:read_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: 'ReadAttributes'))
    CreateUserPoolClientRequest.add_member(:write_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: 'WriteAttributes'))
    CreateUserPoolClientRequest.add_member(:explicit_auth_flows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExplicitAuthFlowsListType, location_name: 'ExplicitAuthFlows'))
    CreateUserPoolClientRequest.add_member(:supported_identity_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedIdentityProvidersListType, location_name: 'SupportedIdentityProviders'))
    CreateUserPoolClientRequest.add_member(:callback_ur_ls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallbackURLsListType, location_name: 'CallbackURLs'))
    CreateUserPoolClientRequest.add_member(:logout_ur_ls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogoutURLsListType, location_name: 'LogoutURLs'))
    CreateUserPoolClientRequest.add_member(:default_redirect_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectUrlType, location_name: 'DefaultRedirectURI'))
    CreateUserPoolClientRequest.add_member(:allowed_o_auth_flows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthFlowsType, location_name: 'AllowedOAuthFlows'))
    CreateUserPoolClientRequest.add_member(:allowed_o_auth_scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeListType, location_name: 'AllowedOAuthScopes'))
    CreateUserPoolClientRequest.add_member(:allowed_o_auth_flows_user_pool_client, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'AllowedOAuthFlowsUserPoolClient', traits: {"smithy.api#default" => false}))
    CreateUserPoolClientRequest.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsConfigurationType, location_name: 'AnalyticsConfiguration'))
    CreateUserPoolClientRequest.add_member(:prevent_user_existence_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreventUserExistenceErrorTypes, location_name: 'PreventUserExistenceErrors'))
    CreateUserPoolClientRequest.add_member(:enable_token_revocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: 'EnableTokenRevocation'))
    CreateUserPoolClientRequest.add_member(:enable_propagate_additional_user_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: 'EnablePropagateAdditionalUserContextData'))
    CreateUserPoolClientRequest.add_member(:auth_session_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthSessionValidityType, location_name: 'AuthSessionValidity'))
    CreateUserPoolClientRequest.add_member(:refresh_token_rotation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenRotationType, location_name: 'RefreshTokenRotation'))
    CreateUserPoolClientRequest.type = Types::CreateUserPoolClientRequest
    CreateUserPoolClientResponse.add_member(:user_pool_client, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolClientType, location_name: 'UserPoolClient'))
    CreateUserPoolClientResponse.type = Types::CreateUserPoolClientResponse
    CreateUserPoolDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainType, location_name: 'Domain', traits: {"smithy.api#required" => {}}))
    CreateUserPoolDomainRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    CreateUserPoolDomainRequest.add_member(:managed_login_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedIntegerType, location_name: 'ManagedLoginVersion'))
    CreateUserPoolDomainRequest.add_member(:custom_domain_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainConfigType, location_name: 'CustomDomainConfig'))
    CreateUserPoolDomainRequest.type = Types::CreateUserPoolDomainRequest
    CreateUserPoolDomainResponse.add_member(:managed_login_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedIntegerType, location_name: 'ManagedLoginVersion'))
    CreateUserPoolDomainResponse.add_member(:cloud_front_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainType, location_name: 'CloudFrontDomain'))
    CreateUserPoolDomainResponse.type = Types::CreateUserPoolDomainResponse
    CreateUserPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolNameType, location_name: 'PoolName', traits: {"smithy.api#required" => {}}))
    CreateUserPoolRequest.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolPolicyType, location_name: 'Policies'))
    CreateUserPoolRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionType, location_name: 'DeletionProtection'))
    CreateUserPoolRequest.add_member(:lambda_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaConfigType, location_name: 'LambdaConfig'))
    CreateUserPoolRequest.add_member(:auto_verified_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedAttributesListType, location_name: 'AutoVerifiedAttributes'))
    CreateUserPoolRequest.add_member(:alias_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasAttributesListType, location_name: 'AliasAttributes'))
    CreateUserPoolRequest.add_member(:username_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameAttributesListType, location_name: 'UsernameAttributes'))
    CreateUserPoolRequest.add_member(:sms_verification_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: 'SmsVerificationMessage'))
    CreateUserPoolRequest.add_member(:email_verification_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationMessageType, location_name: 'EmailVerificationMessage'))
    CreateUserPoolRequest.add_member(:email_verification_subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationSubjectType, location_name: 'EmailVerificationSubject'))
    CreateUserPoolRequest.add_member(:verification_message_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationMessageTemplateType, location_name: 'VerificationMessageTemplate'))
    CreateUserPoolRequest.add_member(:sms_authentication_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: 'SmsAuthenticationMessage'))
    CreateUserPoolRequest.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: 'MfaConfiguration'))
    CreateUserPoolRequest.add_member(:user_attribute_update_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeUpdateSettingsType, location_name: 'UserAttributeUpdateSettings'))
    CreateUserPoolRequest.add_member(:device_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceConfigurationType, location_name: 'DeviceConfiguration'))
    CreateUserPoolRequest.add_member(:email_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailConfigurationType, location_name: 'EmailConfiguration'))
    CreateUserPoolRequest.add_member(:sms_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsConfigurationType, location_name: 'SmsConfiguration'))
    CreateUserPoolRequest.add_member(:user_pool_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTagsType, location_name: 'UserPoolTags'))
    CreateUserPoolRequest.add_member(:admin_create_user_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminCreateUserConfigType, location_name: 'AdminCreateUserConfig'))
    CreateUserPoolRequest.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAttributesListType, location_name: 'Schema'))
    CreateUserPoolRequest.add_member(:user_pool_add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolAddOnsType, location_name: 'UserPoolAddOns'))
    CreateUserPoolRequest.add_member(:username_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameConfigurationType, location_name: 'UsernameConfiguration'))
    CreateUserPoolRequest.add_member(:account_recovery_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountRecoverySettingType, location_name: 'AccountRecoverySetting'))
    CreateUserPoolRequest.add_member(:user_pool_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTierType, location_name: 'UserPoolTier'))
    CreateUserPoolRequest.type = Types::CreateUserPoolRequest
    CreateUserPoolResponse.add_member(:user_pool, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolType, location_name: 'UserPool'))
    CreateUserPoolResponse.type = Types::CreateUserPoolResponse
    CustomAttributesListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAttributeType)
    CustomDomainConfigType.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    CustomDomainConfigType.type = Types::CustomDomainConfigType
    CustomEmailLambdaVersionConfigType.add_member(:lambda_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEmailSenderLambdaVersionType, location_name: 'LambdaVersion', traits: {"smithy.api#required" => {}}))
    CustomEmailLambdaVersionConfigType.add_member(:lambda_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'LambdaArn', traits: {"smithy.api#required" => {}}))
    CustomEmailLambdaVersionConfigType.type = Types::CustomEmailLambdaVersionConfigType
    CustomEmailSenderLambdaVersionType.add_member(:v1_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V1_0', traits: {"smithy.api#enumValue" => "V1_0"}))
    CustomSMSLambdaVersionConfigType.add_member(:lambda_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomSMSSenderLambdaVersionType, location_name: 'LambdaVersion', traits: {"smithy.api#required" => {}}))
    CustomSMSLambdaVersionConfigType.add_member(:lambda_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'LambdaArn', traits: {"smithy.api#required" => {}}))
    CustomSMSLambdaVersionConfigType.type = Types::CustomSMSLambdaVersionConfigType
    CustomSMSSenderLambdaVersionType.add_member(:v1_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V1_0', traits: {"smithy.api#enumValue" => "V1_0"}))
    DefaultEmailOptionType.add_member(:confirm_with_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIRM_WITH_LINK', traits: {"smithy.api#enumValue" => "CONFIRM_WITH_LINK"}))
    DefaultEmailOptionType.add_member(:confirm_with_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIRM_WITH_CODE', traits: {"smithy.api#enumValue" => "CONFIRM_WITH_CODE"}))
    DeleteGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNameType, location_name: 'GroupName', traits: {"smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteIdentityProviderRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DeleteIdentityProviderRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderNameType, location_name: 'ProviderName', traits: {"smithy.api#required" => {}}))
    DeleteIdentityProviderRequest.type = Types::DeleteIdentityProviderRequest
    DeleteManagedLoginBrandingRequest.add_member(:managed_login_branding_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedLoginBrandingIdType, location_name: 'ManagedLoginBrandingId', traits: {"smithy.api#required" => {}}))
    DeleteManagedLoginBrandingRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DeleteManagedLoginBrandingRequest.type = Types::DeleteManagedLoginBrandingRequest
    DeleteResourceServerRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DeleteResourceServerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerIdentifierType, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    DeleteResourceServerRequest.type = Types::DeleteResourceServerRequest
    DeleteUserAttributesRequest.add_member(:user_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameListType, location_name: 'UserAttributeNames', traits: {"smithy.api#required" => {}}))
    DeleteUserAttributesRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    DeleteUserAttributesRequest.type = Types::DeleteUserAttributesRequest
    DeleteUserAttributesResponse.type = Types::DeleteUserAttributesResponse
    DeleteUserPoolClientRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DeleteUserPoolClientRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    DeleteUserPoolClientRequest.type = Types::DeleteUserPoolClientRequest
    DeleteUserPoolDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainType, location_name: 'Domain', traits: {"smithy.api#required" => {}}))
    DeleteUserPoolDomainRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DeleteUserPoolDomainRequest.type = Types::DeleteUserPoolDomainRequest
    DeleteUserPoolDomainResponse.type = Types::DeleteUserPoolDomainResponse
    DeleteUserPoolRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DeleteUserPoolRequest.type = Types::DeleteUserPoolRequest
    DeleteUserRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteWebAuthnCredentialRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    DeleteWebAuthnCredentialRequest.add_member(:credential_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'CredentialId', traits: {"smithy.api#required" => {}}))
    DeleteWebAuthnCredentialRequest.type = Types::DeleteWebAuthnCredentialRequest
    DeleteWebAuthnCredentialResponse.type = Types::DeleteWebAuthnCredentialResponse
    DeletionProtectionType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DeletionProtectionType.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    DeliveryMediumListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryMediumType)
    DeliveryMediumType.add_member(:sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    DeliveryMediumType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    DescribeIdentityProviderRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DescribeIdentityProviderRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderNameType, location_name: 'ProviderName', traits: {"smithy.api#required" => {}}))
    DescribeIdentityProviderRequest.type = Types::DescribeIdentityProviderRequest
    DescribeIdentityProviderResponse.add_member(:identity_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'IdentityProvider', traits: {"smithy.api#required" => {}}))
    DescribeIdentityProviderResponse.type = Types::DescribeIdentityProviderResponse
    DescribeManagedLoginBrandingByClientRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DescribeManagedLoginBrandingByClientRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    DescribeManagedLoginBrandingByClientRequest.add_member(:return_merged_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'ReturnMergedResources', traits: {"smithy.api#default" => false}))
    DescribeManagedLoginBrandingByClientRequest.type = Types::DescribeManagedLoginBrandingByClientRequest
    DescribeManagedLoginBrandingByClientResponse.add_member(:managed_login_branding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedLoginBrandingType, location_name: 'ManagedLoginBranding'))
    DescribeManagedLoginBrandingByClientResponse.type = Types::DescribeManagedLoginBrandingByClientResponse
    DescribeManagedLoginBrandingRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DescribeManagedLoginBrandingRequest.add_member(:managed_login_branding_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedLoginBrandingIdType, location_name: 'ManagedLoginBrandingId', traits: {"smithy.api#required" => {}}))
    DescribeManagedLoginBrandingRequest.add_member(:return_merged_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'ReturnMergedResources', traits: {"smithy.api#default" => false}))
    DescribeManagedLoginBrandingRequest.type = Types::DescribeManagedLoginBrandingRequest
    DescribeManagedLoginBrandingResponse.add_member(:managed_login_branding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedLoginBrandingType, location_name: 'ManagedLoginBranding'))
    DescribeManagedLoginBrandingResponse.type = Types::DescribeManagedLoginBrandingResponse
    DescribeResourceServerRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DescribeResourceServerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerIdentifierType, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    DescribeResourceServerRequest.type = Types::DescribeResourceServerRequest
    DescribeResourceServerResponse.add_member(:resource_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerType, location_name: 'ResourceServer', traits: {"smithy.api#required" => {}}))
    DescribeResourceServerResponse.type = Types::DescribeResourceServerResponse
    DescribeRiskConfigurationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DescribeRiskConfigurationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId'))
    DescribeRiskConfigurationRequest.type = Types::DescribeRiskConfigurationRequest
    DescribeRiskConfigurationResponse.add_member(:risk_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RiskConfigurationType, location_name: 'RiskConfiguration', traits: {"smithy.api#required" => {}}))
    DescribeRiskConfigurationResponse.type = Types::DescribeRiskConfigurationResponse
    DescribeUserImportJobRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DescribeUserImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobIdType, location_name: 'JobId', traits: {"smithy.api#required" => {}}))
    DescribeUserImportJobRequest.type = Types::DescribeUserImportJobRequest
    DescribeUserImportJobResponse.add_member(:user_import_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobType, location_name: 'UserImportJob'))
    DescribeUserImportJobResponse.type = Types::DescribeUserImportJobResponse
    DescribeUserPoolClientRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DescribeUserPoolClientRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    DescribeUserPoolClientRequest.type = Types::DescribeUserPoolClientRequest
    DescribeUserPoolClientResponse.add_member(:user_pool_client, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolClientType, location_name: 'UserPoolClient'))
    DescribeUserPoolClientResponse.type = Types::DescribeUserPoolClientResponse
    DescribeUserPoolDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainType, location_name: 'Domain', traits: {"smithy.api#required" => {}}))
    DescribeUserPoolDomainRequest.type = Types::DescribeUserPoolDomainRequest
    DescribeUserPoolDomainResponse.add_member(:domain_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDescriptionType, location_name: 'DomainDescription'))
    DescribeUserPoolDomainResponse.type = Types::DescribeUserPoolDomainResponse
    DescribeUserPoolRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    DescribeUserPoolRequest.type = Types::DescribeUserPoolRequest
    DescribeUserPoolResponse.add_member(:user_pool, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolType, location_name: 'UserPool'))
    DescribeUserPoolResponse.type = Types::DescribeUserPoolResponse
    DeviceConfigurationType.add_member(:challenge_required_on_new_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'ChallengeRequiredOnNewDevice', traits: {"smithy.api#default" => false}))
    DeviceConfigurationType.add_member(:device_only_remembered_on_user_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'DeviceOnlyRememberedOnUserPrompt', traits: {"smithy.api#default" => false}))
    DeviceConfigurationType.type = Types::DeviceConfigurationType
    DeviceKeyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    DeviceKeyExistsException.type = Types::DeviceKeyExistsException
    DeviceListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceType)
    DeviceRememberedStatusType.add_member(:remembered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMEMBERED', traits: {"smithy.api#enumValue" => "remembered"}))
    DeviceRememberedStatusType.add_member(:not_remembered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_REMEMBERED', traits: {"smithy.api#enumValue" => "not_remembered"}))
    DeviceSecretVerifierConfigType.add_member(:password_verifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'PasswordVerifier'))
    DeviceSecretVerifierConfigType.add_member(:salt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'Salt'))
    DeviceSecretVerifierConfigType.type = Types::DeviceSecretVerifierConfigType
    DeviceType.add_member(:device_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: 'DeviceKey'))
    DeviceType.add_member(:device_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeListType, location_name: 'DeviceAttributes'))
    DeviceType.add_member(:device_create_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'DeviceCreateDate'))
    DeviceType.add_member(:device_last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'DeviceLastModifiedDate'))
    DeviceType.add_member(:device_last_authenticated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'DeviceLastAuthenticatedDate'))
    DeviceType.type = Types::DeviceType
    DomainDescriptionType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    DomainDescriptionType.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountIdType, location_name: 'AWSAccountId'))
    DomainDescriptionType.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainType, location_name: 'Domain'))
    DomainDescriptionType.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketType, location_name: 'S3Bucket'))
    DomainDescriptionType.add_member(:cloud_front_distribution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'CloudFrontDistribution'))
    DomainDescriptionType.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainVersionType, location_name: 'Version'))
    DomainDescriptionType.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatusType, location_name: 'Status'))
    DomainDescriptionType.add_member(:custom_domain_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainConfigType, location_name: 'CustomDomainConfig'))
    DomainDescriptionType.add_member(:managed_login_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedIntegerType, location_name: 'ManagedLoginVersion'))
    DomainDescriptionType.type = Types::DomainDescriptionType
    DomainStatusType.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DomainStatusType.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DomainStatusType.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    DomainStatusType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DomainStatusType.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DuplicateProviderException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    DuplicateProviderException.type = Types::DuplicateProviderException
    EmailConfigurationType.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'SourceArn'))
    EmailConfigurationType.add_member(:reply_to_email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressType, location_name: 'ReplyToEmailAddress'))
    EmailConfigurationType.add_member(:email_sending_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailSendingAccountType, location_name: 'EmailSendingAccount'))
    EmailConfigurationType.add_member(:from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'From'))
    EmailConfigurationType.add_member(:configuration_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SESConfigurationSet, location_name: 'ConfigurationSet'))
    EmailConfigurationType.type = Types::EmailConfigurationType
    EmailMfaConfigType.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMfaMessageType, location_name: 'Message'))
    EmailMfaConfigType.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMfaSubjectType, location_name: 'Subject'))
    EmailMfaConfigType.type = Types::EmailMfaConfigType
    EmailMfaSettingsType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Enabled', traits: {"smithy.api#default" => false}))
    EmailMfaSettingsType.add_member(:preferred_mfa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'PreferredMfa', traits: {"smithy.api#default" => false}))
    EmailMfaSettingsType.type = Types::EmailMfaSettingsType
    EmailSendingAccountType.add_member(:cognito_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COGNITO_DEFAULT', traits: {"smithy.api#enumValue" => "COGNITO_DEFAULT"}))
    EmailSendingAccountType.add_member(:developer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVELOPER', traits: {"smithy.api#enumValue" => "DEVELOPER"}))
    EnableSoftwareTokenMFAException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    EnableSoftwareTokenMFAException.type = Types::EnableSoftwareTokenMFAException
    EventContextDataType.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'IpAddress'))
    EventContextDataType.add_member(:device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'DeviceName'))
    EventContextDataType.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'Timezone'))
    EventContextDataType.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'City'))
    EventContextDataType.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'Country'))
    EventContextDataType.type = Types::EventContextDataType
    EventFeedbackType.add_member(:feedback_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackValueType, location_name: 'FeedbackValue', traits: {"smithy.api#required" => {}}))
    EventFeedbackType.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'Provider', traits: {"smithy.api#required" => {}}))
    EventFeedbackType.add_member(:feedback_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'FeedbackDate'))
    EventFeedbackType.type = Types::EventFeedbackType
    EventFilterType.add_member(:sign_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGN_IN', traits: {"smithy.api#enumValue" => "SIGN_IN"}))
    EventFilterType.add_member(:password_change, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD_CHANGE', traits: {"smithy.api#enumValue" => "PASSWORD_CHANGE"}))
    EventFilterType.add_member(:sign_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGN_UP', traits: {"smithy.api#enumValue" => "SIGN_UP"}))
    EventFiltersType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventFilterType)
    EventResponseType.add_member(:pass, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pass', traits: {"smithy.api#enumValue" => "Pass"}))
    EventResponseType.add_member(:fail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Fail', traits: {"smithy.api#enumValue" => "Fail"}))
    EventResponseType.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    EventRiskType.add_member(:risk_decision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RiskDecisionType, location_name: 'RiskDecision'))
    EventRiskType.add_member(:risk_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RiskLevelType, location_name: 'RiskLevel'))
    EventRiskType.add_member(:compromised_credentials_detected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: 'CompromisedCredentialsDetected'))
    EventRiskType.type = Types::EventRiskType
    EventSourceName.add_member(:user_notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_NOTIFICATION', traits: {"smithy.api#enumValue" => "userNotification"}))
    EventSourceName.add_member(:user_auth_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_AUTH_EVENTS', traits: {"smithy.api#enumValue" => "userAuthEvents"}))
    EventType.add_member(:sign_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SignIn', traits: {"smithy.api#enumValue" => "SignIn"}))
    EventType.add_member(:sign_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SignUp', traits: {"smithy.api#enumValue" => "SignUp"}))
    EventType.add_member(:forgot_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ForgotPassword', traits: {"smithy.api#enumValue" => "ForgotPassword"}))
    EventType.add_member(:password_change, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PasswordChange', traits: {"smithy.api#enumValue" => "PasswordChange"}))
    EventType.add_member(:resend_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResendCode', traits: {"smithy.api#enumValue" => "ResendCode"}))
    ExpiredCodeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    ExpiredCodeException.type = Types::ExpiredCodeException
    ExplicitAuthFlowsListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExplicitAuthFlowsType)
    ExplicitAuthFlowsType.add_member(:admin_no_srp_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMIN_NO_SRP_AUTH', traits: {"smithy.api#enumValue" => "ADMIN_NO_SRP_AUTH"}))
    ExplicitAuthFlowsType.add_member(:custom_auth_flow_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_AUTH_FLOW_ONLY', traits: {"smithy.api#enumValue" => "CUSTOM_AUTH_FLOW_ONLY"}))
    ExplicitAuthFlowsType.add_member(:user_password_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_PASSWORD_AUTH', traits: {"smithy.api#enumValue" => "USER_PASSWORD_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_admin_user_password_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW_ADMIN_USER_PASSWORD_AUTH', traits: {"smithy.api#enumValue" => "ALLOW_ADMIN_USER_PASSWORD_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_custom_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW_CUSTOM_AUTH', traits: {"smithy.api#enumValue" => "ALLOW_CUSTOM_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_user_password_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW_USER_PASSWORD_AUTH', traits: {"smithy.api#enumValue" => "ALLOW_USER_PASSWORD_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_user_srp_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW_USER_SRP_AUTH', traits: {"smithy.api#enumValue" => "ALLOW_USER_SRP_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_refresh_token_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW_REFRESH_TOKEN_AUTH', traits: {"smithy.api#enumValue" => "ALLOW_REFRESH_TOKEN_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_user_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW_USER_AUTH', traits: {"smithy.api#enumValue" => "ALLOW_USER_AUTH"}))
    FeatureType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    FeatureType.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    FeatureUnavailableInTierException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    FeatureUnavailableInTierException.type = Types::FeatureUnavailableInTierException
    FeedbackValueType.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALID', traits: {"smithy.api#enumValue" => "Valid"}))
    FeedbackValueType.add_member(:invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "Invalid"}))
    FirehoseConfigurationType.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'StreamArn'))
    FirehoseConfigurationType.type = Types::FirehoseConfigurationType
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    ForbiddenException.type = Types::ForbiddenException
    ForgetDeviceRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken'))
    ForgetDeviceRequest.add_member(:device_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: 'DeviceKey', traits: {"smithy.api#required" => {}}))
    ForgetDeviceRequest.type = Types::ForgetDeviceRequest
    ForgotPasswordRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    ForgotPasswordRequest.add_member(:secret_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretHashType, location_name: 'SecretHash'))
    ForgotPasswordRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserContextDataType, location_name: 'UserContextData'))
    ForgotPasswordRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    ForgotPasswordRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: 'AnalyticsMetadata'))
    ForgotPasswordRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    ForgotPasswordRequest.type = Types::ForgotPasswordRequest
    ForgotPasswordResponse.add_member(:code_delivery_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryDetailsType, location_name: 'CodeDeliveryDetails'))
    ForgotPasswordResponse.type = Types::ForgotPasswordResponse
    GetCSVHeaderRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    GetCSVHeaderRequest.type = Types::GetCSVHeaderRequest
    GetCSVHeaderResponse.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    GetCSVHeaderResponse.add_member(:csv_header, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStringTypes, location_name: 'CSVHeader'))
    GetCSVHeaderResponse.type = Types::GetCSVHeaderResponse
    GetDeviceRequest.add_member(:device_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: 'DeviceKey', traits: {"smithy.api#required" => {}}))
    GetDeviceRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken'))
    GetDeviceRequest.type = Types::GetDeviceRequest
    GetDeviceResponse.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceType, location_name: 'Device', traits: {"smithy.api#required" => {}}))
    GetDeviceResponse.type = Types::GetDeviceResponse
    GetGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNameType, location_name: 'GroupName', traits: {"smithy.api#required" => {}}))
    GetGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResponse.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: 'Group'))
    GetGroupResponse.type = Types::GetGroupResponse
    GetIdentityProviderByIdentifierRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    GetIdentityProviderByIdentifierRequest.add_member(:idp_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdpIdentifierType, location_name: 'IdpIdentifier', traits: {"smithy.api#required" => {}}))
    GetIdentityProviderByIdentifierRequest.type = Types::GetIdentityProviderByIdentifierRequest
    GetIdentityProviderByIdentifierResponse.add_member(:identity_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'IdentityProvider', traits: {"smithy.api#required" => {}}))
    GetIdentityProviderByIdentifierResponse.type = Types::GetIdentityProviderByIdentifierResponse
    GetLogDeliveryConfigurationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    GetLogDeliveryConfigurationRequest.type = Types::GetLogDeliveryConfigurationRequest
    GetLogDeliveryConfigurationResponse.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfigurationType, location_name: 'LogDeliveryConfiguration'))
    GetLogDeliveryConfigurationResponse.type = Types::GetLogDeliveryConfigurationResponse
    GetSigningCertificateRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    GetSigningCertificateRequest.type = Types::GetSigningCertificateRequest
    GetSigningCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'Certificate'))
    GetSigningCertificateResponse.type = Types::GetSigningCertificateResponse
    GetTokensFromRefreshTokenRequest.add_member(:refresh_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'RefreshToken', traits: {"smithy.api#required" => {}}))
    GetTokensFromRefreshTokenRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    GetTokensFromRefreshTokenRequest.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecretType, location_name: 'ClientSecret'))
    GetTokensFromRefreshTokenRequest.add_member(:device_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: 'DeviceKey'))
    GetTokensFromRefreshTokenRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    GetTokensFromRefreshTokenRequest.type = Types::GetTokensFromRefreshTokenRequest
    GetTokensFromRefreshTokenResponse.add_member(:authentication_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationResultType, location_name: 'AuthenticationResult'))
    GetTokensFromRefreshTokenResponse.type = Types::GetTokensFromRefreshTokenResponse
    GetUICustomizationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    GetUICustomizationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId'))
    GetUICustomizationRequest.type = Types::GetUICustomizationRequest
    GetUICustomizationResponse.add_member(:ui_customization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UICustomizationType, location_name: 'UICustomization', traits: {"smithy.api#required" => {}}))
    GetUICustomizationResponse.type = Types::GetUICustomizationResponse
    GetUserAttributeVerificationCodeRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    GetUserAttributeVerificationCodeRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameType, location_name: 'AttributeName', traits: {"smithy.api#required" => {}}))
    GetUserAttributeVerificationCodeRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    GetUserAttributeVerificationCodeRequest.type = Types::GetUserAttributeVerificationCodeRequest
    GetUserAttributeVerificationCodeResponse.add_member(:code_delivery_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryDetailsType, location_name: 'CodeDeliveryDetails'))
    GetUserAttributeVerificationCodeResponse.type = Types::GetUserAttributeVerificationCodeResponse
    GetUserAuthFactorsRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    GetUserAuthFactorsRequest.type = Types::GetUserAuthFactorsRequest
    GetUserAuthFactorsResponse.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    GetUserAuthFactorsResponse.add_member(:preferred_mfa_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'PreferredMfaSetting'))
    GetUserAuthFactorsResponse.add_member(:user_mfa_setting_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMFASettingListType, location_name: 'UserMFASettingList'))
    GetUserAuthFactorsResponse.add_member(:configured_user_auth_factors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredUserAuthFactorsListType, location_name: 'ConfiguredUserAuthFactors'))
    GetUserAuthFactorsResponse.type = Types::GetUserAuthFactorsResponse
    GetUserPoolMfaConfigRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    GetUserPoolMfaConfigRequest.type = Types::GetUserPoolMfaConfigRequest
    GetUserPoolMfaConfigResponse.add_member(:sms_mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsMfaConfigType, location_name: 'SmsMfaConfiguration'))
    GetUserPoolMfaConfigResponse.add_member(:software_token_mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareTokenMfaConfigType, location_name: 'SoftwareTokenMfaConfiguration'))
    GetUserPoolMfaConfigResponse.add_member(:email_mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMfaConfigType, location_name: 'EmailMfaConfiguration'))
    GetUserPoolMfaConfigResponse.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: 'MfaConfiguration'))
    GetUserPoolMfaConfigResponse.add_member(:web_authn_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnConfigurationType, location_name: 'WebAuthnConfiguration'))
    GetUserPoolMfaConfigResponse.type = Types::GetUserPoolMfaConfigResponse
    GetUserRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    GetUserRequest.type = Types::GetUserRequest
    GetUserResponse.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    GetUserResponse.add_member(:user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeListType, location_name: 'UserAttributes', traits: {"smithy.api#required" => {}}))
    GetUserResponse.add_member(:mfa_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFAOptionListType, location_name: 'MFAOptions'))
    GetUserResponse.add_member(:preferred_mfa_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'PreferredMfaSetting'))
    GetUserResponse.add_member(:user_mfa_setting_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMFASettingListType, location_name: 'UserMFASettingList'))
    GetUserResponse.type = Types::GetUserResponse
    GlobalSignOutRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    GlobalSignOutRequest.type = Types::GlobalSignOutRequest
    GlobalSignOutResponse.type = Types::GlobalSignOutResponse
    GroupExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    GroupExistsException.type = Types::GroupExistsException
    GroupListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType)
    GroupType.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNameType, location_name: 'GroupName'))
    GroupType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    GroupType.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionType, location_name: 'Description'))
    GroupType.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'RoleArn'))
    GroupType.add_member(:precedence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrecedenceType, location_name: 'Precedence'))
    GroupType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    GroupType.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    GroupType.type = Types::GroupType
    HttpHeader.add_member(:header_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'headerName'))
    HttpHeader.add_member(:header_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'headerValue'))
    HttpHeader.type = Types::HttpHeader
    HttpHeaderList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpHeader)
    IdentityProviderType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    IdentityProviderType.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderNameType, location_name: 'ProviderName'))
    IdentityProviderType.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderTypeType, location_name: 'ProviderType'))
    IdentityProviderType.add_member(:provider_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderDetailsType, location_name: 'ProviderDetails'))
    IdentityProviderType.add_member(:attribute_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMappingType, location_name: 'AttributeMapping'))
    IdentityProviderType.add_member(:idp_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdpIdentifiersListType, location_name: 'IdpIdentifiers'))
    IdentityProviderType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    IdentityProviderType.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    IdentityProviderType.type = Types::IdentityProviderType
    IdentityProviderTypeType.add_member(:saml, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAML', traits: {"smithy.api#enumValue" => "SAML"}))
    IdentityProviderTypeType.add_member(:facebook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Facebook', traits: {"smithy.api#enumValue" => "Facebook"}))
    IdentityProviderTypeType.add_member(:google, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Google', traits: {"smithy.api#enumValue" => "Google"}))
    IdentityProviderTypeType.add_member(:login_with_amazon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LoginWithAmazon', traits: {"smithy.api#enumValue" => "LoginWithAmazon"}))
    IdentityProviderTypeType.add_member(:sign_in_with_apple, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SignInWithApple', traits: {"smithy.api#enumValue" => "SignInWithApple"}))
    IdentityProviderTypeType.add_member(:oidc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OIDC', traits: {"smithy.api#enumValue" => "OIDC"}))
    IdpIdentifiersListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdpIdentifierType)
    InitiateAuthRequest.add_member(:auth_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthFlowType, location_name: 'AuthFlow', traits: {"smithy.api#required" => {}}))
    InitiateAuthRequest.add_member(:auth_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthParametersType, location_name: 'AuthParameters'))
    InitiateAuthRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    InitiateAuthRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    InitiateAuthRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: 'AnalyticsMetadata'))
    InitiateAuthRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserContextDataType, location_name: 'UserContextData'))
    InitiateAuthRequest.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    InitiateAuthRequest.type = Types::InitiateAuthRequest
    InitiateAuthResponse.add_member(:challenge_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeNameType, location_name: 'ChallengeName'))
    InitiateAuthResponse.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    InitiateAuthResponse.add_member(:challenge_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeParametersType, location_name: 'ChallengeParameters'))
    InitiateAuthResponse.add_member(:authentication_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationResultType, location_name: 'AuthenticationResult'))
    InitiateAuthResponse.add_member(:available_challenges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailableChallengeListType, location_name: 'AvailableChallenges'))
    InitiateAuthResponse.type = Types::InitiateAuthResponse
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    InternalErrorException.type = Types::InternalErrorException
    InvalidEmailRoleAccessPolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    InvalidEmailRoleAccessPolicyException.type = Types::InvalidEmailRoleAccessPolicyException
    InvalidLambdaResponseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    InvalidLambdaResponseException.type = Types::InvalidLambdaResponseException
    InvalidOAuthFlowException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    InvalidOAuthFlowException.type = Types::InvalidOAuthFlowException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    InvalidParameterException.add_member(:reason_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterExceptionReasonCodeType, location_name: 'reasonCode'))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPasswordException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    InvalidPasswordException.type = Types::InvalidPasswordException
    InvalidSmsRoleAccessPolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    InvalidSmsRoleAccessPolicyException.type = Types::InvalidSmsRoleAccessPolicyException
    InvalidSmsRoleTrustRelationshipException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    InvalidSmsRoleTrustRelationshipException.type = Types::InvalidSmsRoleTrustRelationshipException
    InvalidUserPoolConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    InvalidUserPoolConfigurationException.type = Types::InvalidUserPoolConfigurationException
    LambdaConfigType.add_member(:pre_sign_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'PreSignUp'))
    LambdaConfigType.add_member(:custom_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'CustomMessage'))
    LambdaConfigType.add_member(:post_confirmation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'PostConfirmation'))
    LambdaConfigType.add_member(:pre_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'PreAuthentication'))
    LambdaConfigType.add_member(:post_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'PostAuthentication'))
    LambdaConfigType.add_member(:define_auth_challenge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'DefineAuthChallenge'))
    LambdaConfigType.add_member(:create_auth_challenge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'CreateAuthChallenge'))
    LambdaConfigType.add_member(:verify_auth_challenge_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'VerifyAuthChallengeResponse'))
    LambdaConfigType.add_member(:pre_token_generation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'PreTokenGeneration'))
    LambdaConfigType.add_member(:user_migration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'UserMigration'))
    LambdaConfigType.add_member(:pre_token_generation_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreTokenGenerationVersionConfigType, location_name: 'PreTokenGenerationConfig'))
    LambdaConfigType.add_member(:custom_sms_sender, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomSMSLambdaVersionConfigType, location_name: 'CustomSMSSender'))
    LambdaConfigType.add_member(:custom_email_sender, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEmailLambdaVersionConfigType, location_name: 'CustomEmailSender'))
    LambdaConfigType.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'KMSKeyID'))
    LambdaConfigType.type = Types::LambdaConfigType
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListDevicesRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    ListDevicesRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimitType, location_name: 'Limit'))
    ListDevicesRequest.add_member(:pagination_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: 'PaginationToken'))
    ListDevicesRequest.type = Types::ListDevicesRequest
    ListDevicesResponse.add_member(:devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceListType, location_name: 'Devices'))
    ListDevicesResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: 'PaginationToken'))
    ListDevicesResponse.type = Types::ListDevicesResponse
    ListGroupsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimitType, location_name: 'Limit'))
    ListGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupListType, location_name: 'Groups'))
    ListGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListIdentityProvidersRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    ListIdentityProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvidersLimitType, location_name: 'MaxResults'))
    ListIdentityProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: 'NextToken'))
    ListIdentityProvidersRequest.type = Types::ListIdentityProvidersRequest
    ListIdentityProvidersResponse.add_member(:providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvidersListType, location_name: 'Providers', traits: {"smithy.api#required" => {}}))
    ListIdentityProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: 'NextToken'))
    ListIdentityProvidersResponse.type = Types::ListIdentityProvidersResponse
    ListOfStringTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    ListResourceServersRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    ListResourceServersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceServersLimitType, location_name: 'MaxResults'))
    ListResourceServersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: 'NextToken'))
    ListResourceServersRequest.type = Types::ListResourceServersRequest
    ListResourceServersResponse.add_member(:resource_servers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServersListType, location_name: 'ResourceServers', traits: {"smithy.api#required" => {}}))
    ListResourceServersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: 'NextToken'))
    ListResourceServersResponse.type = Types::ListResourceServersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTagsType, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUserImportJobsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    ListUserImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PoolQueryLimitType, location_name: 'MaxResults', traits: {"smithy.api#required" => {}}))
    ListUserImportJobsRequest.add_member(:pagination_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: 'PaginationToken'))
    ListUserImportJobsRequest.type = Types::ListUserImportJobsRequest
    ListUserImportJobsResponse.add_member(:user_import_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobsListType, location_name: 'UserImportJobs'))
    ListUserImportJobsResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: 'PaginationToken'))
    ListUserImportJobsResponse.type = Types::ListUserImportJobsResponse
    ListUserPoolClientsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    ListUserPoolClientsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimit, location_name: 'MaxResults'))
    ListUserPoolClientsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListUserPoolClientsRequest.type = Types::ListUserPoolClientsRequest
    ListUserPoolClientsResponse.add_member(:user_pool_clients, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolClientListType, location_name: 'UserPoolClients'))
    ListUserPoolClientsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListUserPoolClientsResponse.type = Types::ListUserPoolClientsResponse
    ListUserPoolsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: 'NextToken'))
    ListUserPoolsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PoolQueryLimitType, location_name: 'MaxResults', traits: {"smithy.api#required" => {}}))
    ListUserPoolsRequest.type = Types::ListUserPoolsRequest
    ListUserPoolsResponse.add_member(:user_pools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolListType, location_name: 'UserPools'))
    ListUserPoolsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: 'NextToken'))
    ListUserPoolsResponse.type = Types::ListUserPoolsResponse
    ListUsersInGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    ListUsersInGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNameType, location_name: 'GroupName', traits: {"smithy.api#required" => {}}))
    ListUsersInGroupRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimitType, location_name: 'Limit'))
    ListUsersInGroupRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListUsersInGroupRequest.type = Types::ListUsersInGroupRequest
    ListUsersInGroupResponse.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsersListType, location_name: 'Users'))
    ListUsersInGroupResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListUsersInGroupResponse.type = Types::ListUsersInGroupResponse
    ListUsersRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    ListUsersRequest.add_member(:attributes_to_get, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchedAttributeNamesListType, location_name: 'AttributesToGet'))
    ListUsersRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLimitType, location_name: 'Limit'))
    ListUsersRequest.add_member(:pagination_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: 'PaginationToken'))
    ListUsersRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserFilterType, location_name: 'Filter'))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsersListType, location_name: 'Users'))
    ListUsersResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: 'PaginationToken'))
    ListUsersResponse.type = Types::ListUsersResponse
    ListWebAuthnCredentialsRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    ListWebAuthnCredentialsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListWebAuthnCredentialsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnCredentialsQueryLimitType, location_name: 'MaxResults'))
    ListWebAuthnCredentialsRequest.type = Types::ListWebAuthnCredentialsRequest
    ListWebAuthnCredentialsResponse.add_member(:credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnCredentialDescriptionListType, location_name: 'Credentials', traits: {"smithy.api#required" => {}}))
    ListWebAuthnCredentialsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationKey, location_name: 'NextToken'))
    ListWebAuthnCredentialsResponse.type = Types::ListWebAuthnCredentialsResponse
    LogConfigurationListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfigurationType)
    LogConfigurationType.add_member(:log_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogLevel, location_name: 'LogLevel', traits: {"smithy.api#required" => {}}))
    LogConfigurationType.add_member(:event_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSourceName, location_name: 'EventSource', traits: {"smithy.api#required" => {}}))
    LogConfigurationType.add_member(:cloud_watch_logs_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsConfigurationType, location_name: 'CloudWatchLogsConfiguration'))
    LogConfigurationType.add_member(:s3_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ConfigurationType, location_name: 'S3Configuration'))
    LogConfigurationType.add_member(:firehose_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseConfigurationType, location_name: 'FirehoseConfiguration'))
    LogConfigurationType.type = Types::LogConfigurationType
    LogDeliveryConfigurationType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    LogDeliveryConfigurationType.add_member(:log_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfigurationListType, location_name: 'LogConfigurations', traits: {"smithy.api#required" => {}}))
    LogDeliveryConfigurationType.type = Types::LogDeliveryConfigurationType
    LogLevel.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    LogLevel.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    LogoutURLsListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectUrlType)
    MFAMethodNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    MFAMethodNotFoundException.type = Types::MFAMethodNotFoundException
    MFAOptionListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFAOptionType)
    MFAOptionType.add_member(:delivery_medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryMediumType, location_name: 'DeliveryMedium'))
    MFAOptionType.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameType, location_name: 'AttributeName'))
    MFAOptionType.type = Types::MFAOptionType
    ManagedLoginBrandingExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    ManagedLoginBrandingExistsException.type = Types::ManagedLoginBrandingExistsException
    ManagedLoginBrandingType.add_member(:managed_login_branding_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedLoginBrandingIdType, location_name: 'ManagedLoginBrandingId'))
    ManagedLoginBrandingType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    ManagedLoginBrandingType.add_member(:use_cognito_provided_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'UseCognitoProvidedValues', traits: {"smithy.api#default" => false}))
    ManagedLoginBrandingType.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'Settings'))
    ManagedLoginBrandingType.add_member(:assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetListType, location_name: 'Assets'))
    ManagedLoginBrandingType.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    ManagedLoginBrandingType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    ManagedLoginBrandingType.type = Types::ManagedLoginBrandingType
    MessageActionType.add_member(:resend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESEND', traits: {"smithy.api#enumValue" => "RESEND"}))
    MessageActionType.add_member(:suppress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPPRESS', traits: {"smithy.api#enumValue" => "SUPPRESS"}))
    MessageTemplateType.add_member(:sms_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsInviteMessageType, location_name: 'SMSMessage'))
    MessageTemplateType.add_member(:email_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailInviteMessageType, location_name: 'EmailMessage'))
    MessageTemplateType.add_member(:email_subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationSubjectType, location_name: 'EmailSubject'))
    MessageTemplateType.type = Types::MessageTemplateType
    NewDeviceMetadataType.add_member(:device_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: 'DeviceKey'))
    NewDeviceMetadataType.add_member(:device_group_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'DeviceGroupKey'))
    NewDeviceMetadataType.type = Types::NewDeviceMetadataType
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    NotAuthorizedException.type = Types::NotAuthorizedException
    NotifyConfigurationType.add_member(:from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'From'))
    NotifyConfigurationType.add_member(:reply_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'ReplyTo'))
    NotifyConfigurationType.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'SourceArn', traits: {"smithy.api#required" => {}}))
    NotifyConfigurationType.add_member(:block_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyEmailType, location_name: 'BlockEmail'))
    NotifyConfigurationType.add_member(:no_action_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyEmailType, location_name: 'NoActionEmail'))
    NotifyConfigurationType.add_member(:mfa_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyEmailType, location_name: 'MfaEmail'))
    NotifyConfigurationType.type = Types::NotifyConfigurationType
    NotifyEmailType.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailNotificationSubjectType, location_name: 'Subject', traits: {"smithy.api#required" => {}}))
    NotifyEmailType.add_member(:html_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailNotificationBodyType, location_name: 'HtmlBody'))
    NotifyEmailType.add_member(:text_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailNotificationBodyType, location_name: 'TextBody'))
    NotifyEmailType.type = Types::NotifyEmailType
    NumberAttributeConstraintsType.add_member(:min_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'MinValue'))
    NumberAttributeConstraintsType.add_member(:max_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'MaxValue'))
    NumberAttributeConstraintsType.type = Types::NumberAttributeConstraintsType
    OAuthFlowType.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'code', traits: {"smithy.api#enumValue" => "code"}))
    OAuthFlowType.add_member(:implicit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'implicit', traits: {"smithy.api#enumValue" => "implicit"}))
    OAuthFlowType.add_member(:client_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'client_credentials', traits: {"smithy.api#enumValue" => "client_credentials"}))
    OAuthFlowsType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthFlowType)
    PasswordHistoryPolicyViolationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    PasswordHistoryPolicyViolationException.type = Types::PasswordHistoryPolicyViolationException
    PasswordPolicyType.add_member(:minimum_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordPolicyMinLengthType, location_name: 'MinimumLength'))
    PasswordPolicyType.add_member(:require_uppercase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'RequireUppercase', traits: {"smithy.api#default" => false}))
    PasswordPolicyType.add_member(:require_lowercase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'RequireLowercase', traits: {"smithy.api#default" => false}))
    PasswordPolicyType.add_member(:require_numbers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'RequireNumbers', traits: {"smithy.api#default" => false}))
    PasswordPolicyType.add_member(:require_symbols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'RequireSymbols', traits: {"smithy.api#default" => false}))
    PasswordPolicyType.add_member(:password_history_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordHistorySizeType, location_name: 'PasswordHistorySize'))
    PasswordPolicyType.add_member(:temporary_password_validity_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemporaryPasswordValidityDaysType, location_name: 'TemporaryPasswordValidityDays', traits: {"smithy.api#default" => 0}))
    PasswordPolicyType.type = Types::PasswordPolicyType
    PasswordResetRequiredException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    PasswordResetRequiredException.type = Types::PasswordResetRequiredException
    PreTokenGenerationLambdaVersionType.add_member(:v1_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V1_0', traits: {"smithy.api#enumValue" => "V1_0"}))
    PreTokenGenerationLambdaVersionType.add_member(:v2_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V2_0', traits: {"smithy.api#enumValue" => "V2_0"}))
    PreTokenGenerationLambdaVersionType.add_member(:v3_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V3_0', traits: {"smithy.api#enumValue" => "V3_0"}))
    PreTokenGenerationVersionConfigType.add_member(:lambda_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreTokenGenerationLambdaVersionType, location_name: 'LambdaVersion', traits: {"smithy.api#required" => {}}))
    PreTokenGenerationVersionConfigType.add_member(:lambda_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'LambdaArn', traits: {"smithy.api#required" => {}}))
    PreTokenGenerationVersionConfigType.type = Types::PreTokenGenerationVersionConfigType
    PreconditionNotMetException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    PreconditionNotMetException.type = Types::PreconditionNotMetException
    PreventUserExistenceErrorTypes.add_member(:legacy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEGACY', traits: {"smithy.api#enumValue" => "LEGACY"}))
    PreventUserExistenceErrorTypes.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ProviderDescription.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderNameType, location_name: 'ProviderName'))
    ProviderDescription.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderTypeType, location_name: 'ProviderType'))
    ProviderDescription.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    ProviderDescription.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    ProviderDescription.type = Types::ProviderDescription
    ProviderDetailsType.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    ProviderDetailsType.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    ProviderUserIdentifierType.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderNameType, location_name: 'ProviderName'))
    ProviderUserIdentifierType.add_member(:provider_attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'ProviderAttributeName'))
    ProviderUserIdentifierType.add_member(:provider_attribute_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'ProviderAttributeValue'))
    ProviderUserIdentifierType.type = Types::ProviderUserIdentifierType
    ProvidersListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderDescription)
    RecoveryMechanismsType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryOptionType)
    RecoveryOptionNameType.add_member(:verified_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFIED_EMAIL', traits: {"smithy.api#enumValue" => "verified_email"}))
    RecoveryOptionNameType.add_member(:verified_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFIED_PHONE_NUMBER', traits: {"smithy.api#enumValue" => "verified_phone_number"}))
    RecoveryOptionNameType.add_member(:admin_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMIN_ONLY', traits: {"smithy.api#enumValue" => "admin_only"}))
    RecoveryOptionType.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorityType, location_name: 'Priority', traits: {"smithy.api#required" => {}}))
    RecoveryOptionType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryOptionNameType, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    RecoveryOptionType.type = Types::RecoveryOptionType
    RefreshTokenReuseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    RefreshTokenReuseException.type = Types::RefreshTokenReuseException
    RefreshTokenRotationType.add_member(:feature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureType, location_name: 'Feature', traits: {"smithy.api#required" => {}}))
    RefreshTokenRotationType.add_member(:retry_grace_period_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryGracePeriodSecondsType, location_name: 'RetryGracePeriodSeconds'))
    RefreshTokenRotationType.type = Types::RefreshTokenRotationType
    ResendConfirmationCodeRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    ResendConfirmationCodeRequest.add_member(:secret_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretHashType, location_name: 'SecretHash'))
    ResendConfirmationCodeRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserContextDataType, location_name: 'UserContextData'))
    ResendConfirmationCodeRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    ResendConfirmationCodeRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: 'AnalyticsMetadata'))
    ResendConfirmationCodeRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    ResendConfirmationCodeRequest.type = Types::ResendConfirmationCodeRequest
    ResendConfirmationCodeResponse.add_member(:code_delivery_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryDetailsType, location_name: 'CodeDeliveryDetails'))
    ResendConfirmationCodeResponse.type = Types::ResendConfirmationCodeResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceServerScopeListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerScopeType)
    ResourceServerScopeType.add_member(:scope_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerScopeNameType, location_name: 'ScopeName', traits: {"smithy.api#required" => {}}))
    ResourceServerScopeType.add_member(:scope_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerScopeDescriptionType, location_name: 'ScopeDescription', traits: {"smithy.api#required" => {}}))
    ResourceServerScopeType.type = Types::ResourceServerScopeType
    ResourceServerType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    ResourceServerType.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerIdentifierType, location_name: 'Identifier'))
    ResourceServerType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerNameType, location_name: 'Name'))
    ResourceServerType.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerScopeListType, location_name: 'Scopes'))
    ResourceServerType.type = Types::ResourceServerType
    ResourceServersListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerType)
    RespondToAuthChallengeRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    RespondToAuthChallengeRequest.add_member(:challenge_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeNameType, location_name: 'ChallengeName', traits: {"smithy.api#required" => {}}))
    RespondToAuthChallengeRequest.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    RespondToAuthChallengeRequest.add_member(:challenge_responses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeResponsesType, location_name: 'ChallengeResponses'))
    RespondToAuthChallengeRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: 'AnalyticsMetadata'))
    RespondToAuthChallengeRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserContextDataType, location_name: 'UserContextData'))
    RespondToAuthChallengeRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    RespondToAuthChallengeRequest.type = Types::RespondToAuthChallengeRequest
    RespondToAuthChallengeResponse.add_member(:challenge_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeNameType, location_name: 'ChallengeName'))
    RespondToAuthChallengeResponse.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    RespondToAuthChallengeResponse.add_member(:challenge_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeParametersType, location_name: 'ChallengeParameters'))
    RespondToAuthChallengeResponse.add_member(:authentication_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationResultType, location_name: 'AuthenticationResult'))
    RespondToAuthChallengeResponse.type = Types::RespondToAuthChallengeResponse
    RevokeTokenRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'Token', traits: {"smithy.api#required" => {}}))
    RevokeTokenRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    RevokeTokenRequest.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecretType, location_name: 'ClientSecret'))
    RevokeTokenRequest.type = Types::RevokeTokenRequest
    RevokeTokenResponse.type = Types::RevokeTokenResponse
    RiskConfigurationType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    RiskConfigurationType.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId'))
    RiskConfigurationType.add_member(:compromised_credentials_risk_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompromisedCredentialsRiskConfigurationType, location_name: 'CompromisedCredentialsRiskConfiguration'))
    RiskConfigurationType.add_member(:account_takeover_risk_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTakeoverRiskConfigurationType, location_name: 'AccountTakeoverRiskConfiguration'))
    RiskConfigurationType.add_member(:risk_exception_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RiskExceptionConfigurationType, location_name: 'RiskExceptionConfiguration'))
    RiskConfigurationType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    RiskConfigurationType.type = Types::RiskConfigurationType
    RiskDecisionType.add_member(:no_risk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NoRisk', traits: {"smithy.api#enumValue" => "NoRisk"}))
    RiskDecisionType.add_member(:account_takeover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccountTakeover', traits: {"smithy.api#enumValue" => "AccountTakeover"}))
    RiskDecisionType.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Block', traits: {"smithy.api#enumValue" => "Block"}))
    RiskExceptionConfigurationType.add_member(:blocked_ip_range_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockedIPRangeListType, location_name: 'BlockedIPRangeList'))
    RiskExceptionConfigurationType.add_member(:skipped_ip_range_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SkippedIPRangeListType, location_name: 'SkippedIPRangeList'))
    RiskExceptionConfigurationType.type = Types::RiskExceptionConfigurationType
    RiskLevelType.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Low', traits: {"smithy.api#enumValue" => "Low"}))
    RiskLevelType.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Medium', traits: {"smithy.api#enumValue" => "Medium"}))
    RiskLevelType.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'High', traits: {"smithy.api#enumValue" => "High"}))
    S3ConfigurationType.add_member(:bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ArnType, location_name: 'BucketArn'))
    S3ConfigurationType.type = Types::S3ConfigurationType
    SMSMfaSettingsType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Enabled', traits: {"smithy.api#default" => false}))
    SMSMfaSettingsType.add_member(:preferred_mfa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'PreferredMfa', traits: {"smithy.api#default" => false}))
    SMSMfaSettingsType.type = Types::SMSMfaSettingsType
    SchemaAttributeType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributeNameType, location_name: 'Name'))
    SchemaAttributeType.add_member(:attribute_data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeDataType, location_name: 'AttributeDataType'))
    SchemaAttributeType.add_member(:developer_only_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'DeveloperOnlyAttribute', traits: {"smithy.api#default" => nil}))
    SchemaAttributeType.add_member(:mutable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Mutable', traits: {"smithy.api#default" => nil}))
    SchemaAttributeType.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Required', traits: {"smithy.api#default" => nil}))
    SchemaAttributeType.add_member(:number_attribute_constraints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeConstraintsType, location_name: 'NumberAttributeConstraints'))
    SchemaAttributeType.add_member(:string_attribute_constraints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeConstraintsType, location_name: 'StringAttributeConstraints'))
    SchemaAttributeType.type = Types::SchemaAttributeType
    SchemaAttributesListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAttributeType)
    ScopeDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    ScopeDoesNotExistException.type = Types::ScopeDoesNotExistException
    ScopeListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeType)
    SearchedAttributeNamesListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameType)
    SetLogDeliveryConfigurationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    SetLogDeliveryConfigurationRequest.add_member(:log_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfigurationListType, location_name: 'LogConfigurations', traits: {"smithy.api#required" => {}}))
    SetLogDeliveryConfigurationRequest.type = Types::SetLogDeliveryConfigurationRequest
    SetLogDeliveryConfigurationResponse.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfigurationType, location_name: 'LogDeliveryConfiguration'))
    SetLogDeliveryConfigurationResponse.type = Types::SetLogDeliveryConfigurationResponse
    SetRiskConfigurationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    SetRiskConfigurationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId'))
    SetRiskConfigurationRequest.add_member(:compromised_credentials_risk_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompromisedCredentialsRiskConfigurationType, location_name: 'CompromisedCredentialsRiskConfiguration'))
    SetRiskConfigurationRequest.add_member(:account_takeover_risk_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountTakeoverRiskConfigurationType, location_name: 'AccountTakeoverRiskConfiguration'))
    SetRiskConfigurationRequest.add_member(:risk_exception_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RiskExceptionConfigurationType, location_name: 'RiskExceptionConfiguration'))
    SetRiskConfigurationRequest.type = Types::SetRiskConfigurationRequest
    SetRiskConfigurationResponse.add_member(:risk_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RiskConfigurationType, location_name: 'RiskConfiguration', traits: {"smithy.api#required" => {}}))
    SetRiskConfigurationResponse.type = Types::SetRiskConfigurationResponse
    SetUICustomizationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    SetUICustomizationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId'))
    SetUICustomizationRequest.add_member(:css, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CSSType, location_name: 'CSS'))
    SetUICustomizationRequest.add_member(:image_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFileType, location_name: 'ImageFile'))
    SetUICustomizationRequest.type = Types::SetUICustomizationRequest
    SetUICustomizationResponse.add_member(:ui_customization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UICustomizationType, location_name: 'UICustomization', traits: {"smithy.api#required" => {}}))
    SetUICustomizationResponse.type = Types::SetUICustomizationResponse
    SetUserMFAPreferenceRequest.add_member(:sms_mfa_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SMSMfaSettingsType, location_name: 'SMSMfaSettings'))
    SetUserMFAPreferenceRequest.add_member(:software_token_mfa_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareTokenMfaSettingsType, location_name: 'SoftwareTokenMfaSettings'))
    SetUserMFAPreferenceRequest.add_member(:email_mfa_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMfaSettingsType, location_name: 'EmailMfaSettings'))
    SetUserMFAPreferenceRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    SetUserMFAPreferenceRequest.type = Types::SetUserMFAPreferenceRequest
    SetUserMFAPreferenceResponse.type = Types::SetUserMFAPreferenceResponse
    SetUserPoolMfaConfigRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    SetUserPoolMfaConfigRequest.add_member(:sms_mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsMfaConfigType, location_name: 'SmsMfaConfiguration'))
    SetUserPoolMfaConfigRequest.add_member(:software_token_mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareTokenMfaConfigType, location_name: 'SoftwareTokenMfaConfiguration'))
    SetUserPoolMfaConfigRequest.add_member(:email_mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMfaConfigType, location_name: 'EmailMfaConfiguration'))
    SetUserPoolMfaConfigRequest.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: 'MfaConfiguration'))
    SetUserPoolMfaConfigRequest.add_member(:web_authn_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnConfigurationType, location_name: 'WebAuthnConfiguration'))
    SetUserPoolMfaConfigRequest.type = Types::SetUserPoolMfaConfigRequest
    SetUserPoolMfaConfigResponse.add_member(:sms_mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsMfaConfigType, location_name: 'SmsMfaConfiguration'))
    SetUserPoolMfaConfigResponse.add_member(:software_token_mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareTokenMfaConfigType, location_name: 'SoftwareTokenMfaConfiguration'))
    SetUserPoolMfaConfigResponse.add_member(:email_mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMfaConfigType, location_name: 'EmailMfaConfiguration'))
    SetUserPoolMfaConfigResponse.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: 'MfaConfiguration'))
    SetUserPoolMfaConfigResponse.add_member(:web_authn_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnConfigurationType, location_name: 'WebAuthnConfiguration'))
    SetUserPoolMfaConfigResponse.type = Types::SetUserPoolMfaConfigResponse
    SetUserSettingsRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    SetUserSettingsRequest.add_member(:mfa_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFAOptionListType, location_name: 'MFAOptions', traits: {"smithy.api#required" => {}}))
    SetUserSettingsRequest.type = Types::SetUserSettingsRequest
    SetUserSettingsResponse.type = Types::SetUserSettingsResponse
    SignInPolicyType.add_member(:allowed_first_auth_factors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedFirstAuthFactorsListType, location_name: 'AllowedFirstAuthFactors'))
    SignInPolicyType.type = Types::SignInPolicyType
    SignUpRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    SignUpRequest.add_member(:secret_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretHashType, location_name: 'SecretHash'))
    SignUpRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    SignUpRequest.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordType, location_name: 'Password'))
    SignUpRequest.add_member(:user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeListType, location_name: 'UserAttributes'))
    SignUpRequest.add_member(:validation_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeListType, location_name: 'ValidationData'))
    SignUpRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: 'AnalyticsMetadata'))
    SignUpRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserContextDataType, location_name: 'UserContextData'))
    SignUpRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    SignUpRequest.type = Types::SignUpRequest
    SignUpResponse.add_member(:user_confirmed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'UserConfirmed', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SignUpResponse.add_member(:code_delivery_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryDetailsType, location_name: 'CodeDeliveryDetails'))
    SignUpResponse.add_member(:user_sub, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'UserSub', traits: {"smithy.api#required" => {}}))
    SignUpResponse.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    SignUpResponse.type = Types::SignUpResponse
    SkippedIPRangeListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    SmsConfigurationType.add_member(:sns_caller_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'SnsCallerArn', traits: {"smithy.api#required" => {}}))
    SmsConfigurationType.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'ExternalId'))
    SmsConfigurationType.add_member(:sns_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionCodeType, location_name: 'SnsRegion'))
    SmsConfigurationType.type = Types::SmsConfigurationType
    SmsMfaConfigType.add_member(:sms_authentication_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: 'SmsAuthenticationMessage'))
    SmsMfaConfigType.add_member(:sms_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsConfigurationType, location_name: 'SmsConfiguration'))
    SmsMfaConfigType.type = Types::SmsMfaConfigType
    SoftwareTokenMFANotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    SoftwareTokenMFANotFoundException.type = Types::SoftwareTokenMFANotFoundException
    SoftwareTokenMfaConfigType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Enabled', traits: {"smithy.api#default" => false}))
    SoftwareTokenMfaConfigType.type = Types::SoftwareTokenMfaConfigType
    SoftwareTokenMfaSettingsType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Enabled', traits: {"smithy.api#default" => false}))
    SoftwareTokenMfaSettingsType.add_member(:preferred_mfa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'PreferredMfa', traits: {"smithy.api#default" => false}))
    SoftwareTokenMfaSettingsType.type = Types::SoftwareTokenMfaSettingsType
    StartUserImportJobRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    StartUserImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobIdType, location_name: 'JobId', traits: {"smithy.api#required" => {}}))
    StartUserImportJobRequest.type = Types::StartUserImportJobRequest
    StartUserImportJobResponse.add_member(:user_import_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobType, location_name: 'UserImportJob'))
    StartUserImportJobResponse.type = Types::StartUserImportJobResponse
    StartWebAuthnRegistrationRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    StartWebAuthnRegistrationRequest.type = Types::StartWebAuthnRegistrationRequest
    StartWebAuthnRegistrationResponse.add_member(:credential_creation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'CredentialCreationOptions', traits: {"smithy.api#required" => {}}))
    StartWebAuthnRegistrationResponse.type = Types::StartWebAuthnRegistrationResponse
    StatusType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "Enabled"}))
    StatusType.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabled', traits: {"smithy.api#enumValue" => "Disabled"}))
    StopUserImportJobRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    StopUserImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobIdType, location_name: 'JobId', traits: {"smithy.api#required" => {}}))
    StopUserImportJobRequest.type = Types::StopUserImportJobRequest
    StopUserImportJobResponse.add_member(:user_import_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobType, location_name: 'UserImportJob'))
    StopUserImportJobResponse.type = Types::StopUserImportJobResponse
    StringAttributeConstraintsType.add_member(:min_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'MinLength'))
    StringAttributeConstraintsType.add_member(:max_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'MaxLength'))
    StringAttributeConstraintsType.type = Types::StringAttributeConstraintsType
    SupportedIdentityProvidersListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderNameType)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTagsType, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TierChangeNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    TierChangeNotAllowedException.type = Types::TierChangeNotAllowedException
    TimeUnitsType.add_member(:seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECONDS', traits: {"smithy.api#enumValue" => "seconds"}))
    TimeUnitsType.add_member(:minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINUTES', traits: {"smithy.api#enumValue" => "minutes"}))
    TimeUnitsType.add_member(:hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURS', traits: {"smithy.api#enumValue" => "hours"}))
    TimeUnitsType.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "days"}))
    TokenValidityUnitsType.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnitsType, location_name: 'AccessToken'))
    TokenValidityUnitsType.add_member(:id_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnitsType, location_name: 'IdToken'))
    TokenValidityUnitsType.add_member(:refresh_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnitsType, location_name: 'RefreshToken'))
    TokenValidityUnitsType.type = Types::TokenValidityUnitsType
    TooManyFailedAttemptsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    TooManyFailedAttemptsException.type = Types::TooManyFailedAttemptsException
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UICustomizationType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    UICustomizationType.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId'))
    UICustomizationType.add_member(:image_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageUrlType, location_name: 'ImageUrl'))
    UICustomizationType.add_member(:css, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CSSType, location_name: 'CSS'))
    UICustomizationType.add_member(:css_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CSSVersionType, location_name: 'CSSVersion'))
    UICustomizationType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    UICustomizationType.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    UICustomizationType.type = Types::UICustomizationType
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UnexpectedLambdaException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UnexpectedLambdaException.type = Types::UnexpectedLambdaException
    UnsupportedIdentityProviderException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UnsupportedIdentityProviderException.type = Types::UnsupportedIdentityProviderException
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UnsupportedTokenTypeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UnsupportedTokenTypeException.type = Types::UnsupportedTokenTypeException
    UnsupportedUserStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UnsupportedUserStateException.type = Types::UnsupportedUserStateException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTagsListType, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAuthEventFeedbackRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    UpdateAuthEventFeedbackRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    UpdateAuthEventFeedbackRequest.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventIdType, location_name: 'EventId', traits: {"smithy.api#required" => {}}))
    UpdateAuthEventFeedbackRequest.add_member(:feedback_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'FeedbackToken', traits: {"smithy.api#required" => {}}))
    UpdateAuthEventFeedbackRequest.add_member(:feedback_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackValueType, location_name: 'FeedbackValue', traits: {"smithy.api#required" => {}}))
    UpdateAuthEventFeedbackRequest.type = Types::UpdateAuthEventFeedbackRequest
    UpdateAuthEventFeedbackResponse.type = Types::UpdateAuthEventFeedbackResponse
    UpdateDeviceStatusRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    UpdateDeviceStatusRequest.add_member(:device_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: 'DeviceKey', traits: {"smithy.api#required" => {}}))
    UpdateDeviceStatusRequest.add_member(:device_remembered_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceRememberedStatusType, location_name: 'DeviceRememberedStatus'))
    UpdateDeviceStatusRequest.type = Types::UpdateDeviceStatusRequest
    UpdateDeviceStatusResponse.type = Types::UpdateDeviceStatusResponse
    UpdateGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNameType, location_name: 'GroupName', traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionType, location_name: 'Description'))
    UpdateGroupRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'RoleArn'))
    UpdateGroupRequest.add_member(:precedence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrecedenceType, location_name: 'Precedence'))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResponse.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: 'Group'))
    UpdateGroupResponse.type = Types::UpdateGroupResponse
    UpdateIdentityProviderRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    UpdateIdentityProviderRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderNameType, location_name: 'ProviderName', traits: {"smithy.api#required" => {}}))
    UpdateIdentityProviderRequest.add_member(:provider_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderDetailsType, location_name: 'ProviderDetails'))
    UpdateIdentityProviderRequest.add_member(:attribute_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMappingType, location_name: 'AttributeMapping'))
    UpdateIdentityProviderRequest.add_member(:idp_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdpIdentifiersListType, location_name: 'IdpIdentifiers'))
    UpdateIdentityProviderRequest.type = Types::UpdateIdentityProviderRequest
    UpdateIdentityProviderResponse.add_member(:identity_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'IdentityProvider', traits: {"smithy.api#required" => {}}))
    UpdateIdentityProviderResponse.type = Types::UpdateIdentityProviderResponse
    UpdateManagedLoginBrandingRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    UpdateManagedLoginBrandingRequest.add_member(:managed_login_branding_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedLoginBrandingIdType, location_name: 'ManagedLoginBrandingId'))
    UpdateManagedLoginBrandingRequest.add_member(:use_cognito_provided_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'UseCognitoProvidedValues', traits: {"smithy.api#default" => false}))
    UpdateManagedLoginBrandingRequest.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'Settings'))
    UpdateManagedLoginBrandingRequest.add_member(:assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetListType, location_name: 'Assets'))
    UpdateManagedLoginBrandingRequest.type = Types::UpdateManagedLoginBrandingRequest
    UpdateManagedLoginBrandingResponse.add_member(:managed_login_branding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedLoginBrandingType, location_name: 'ManagedLoginBranding'))
    UpdateManagedLoginBrandingResponse.type = Types::UpdateManagedLoginBrandingResponse
    UpdateResourceServerRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    UpdateResourceServerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerIdentifierType, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    UpdateResourceServerRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerNameType, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    UpdateResourceServerRequest.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerScopeListType, location_name: 'Scopes'))
    UpdateResourceServerRequest.type = Types::UpdateResourceServerRequest
    UpdateResourceServerResponse.add_member(:resource_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerType, location_name: 'ResourceServer', traits: {"smithy.api#required" => {}}))
    UpdateResourceServerResponse.type = Types::UpdateResourceServerResponse
    UpdateUserAttributesRequest.add_member(:user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeListType, location_name: 'UserAttributes', traits: {"smithy.api#required" => {}}))
    UpdateUserAttributesRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    UpdateUserAttributesRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: 'ClientMetadata'))
    UpdateUserAttributesRequest.type = Types::UpdateUserAttributesRequest
    UpdateUserAttributesResponse.add_member(:code_delivery_details_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryDetailsListType, location_name: 'CodeDeliveryDetailsList'))
    UpdateUserAttributesResponse.type = Types::UpdateUserAttributesResponse
    UpdateUserPoolClientRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    UpdateUserPoolClientRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId', traits: {"smithy.api#required" => {}}))
    UpdateUserPoolClientRequest.add_member(:client_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientNameType, location_name: 'ClientName'))
    UpdateUserPoolClientRequest.add_member(:refresh_token_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenValidityType, location_name: 'RefreshTokenValidity', traits: {"smithy.api#default" => 0}))
    UpdateUserPoolClientRequest.add_member(:access_token_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenValidityType, location_name: 'AccessTokenValidity'))
    UpdateUserPoolClientRequest.add_member(:id_token_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdTokenValidityType, location_name: 'IdTokenValidity'))
    UpdateUserPoolClientRequest.add_member(:token_validity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenValidityUnitsType, location_name: 'TokenValidityUnits'))
    UpdateUserPoolClientRequest.add_member(:read_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: 'ReadAttributes'))
    UpdateUserPoolClientRequest.add_member(:write_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: 'WriteAttributes'))
    UpdateUserPoolClientRequest.add_member(:explicit_auth_flows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExplicitAuthFlowsListType, location_name: 'ExplicitAuthFlows'))
    UpdateUserPoolClientRequest.add_member(:supported_identity_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedIdentityProvidersListType, location_name: 'SupportedIdentityProviders'))
    UpdateUserPoolClientRequest.add_member(:callback_ur_ls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallbackURLsListType, location_name: 'CallbackURLs'))
    UpdateUserPoolClientRequest.add_member(:logout_ur_ls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogoutURLsListType, location_name: 'LogoutURLs'))
    UpdateUserPoolClientRequest.add_member(:default_redirect_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectUrlType, location_name: 'DefaultRedirectURI'))
    UpdateUserPoolClientRequest.add_member(:allowed_o_auth_flows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthFlowsType, location_name: 'AllowedOAuthFlows'))
    UpdateUserPoolClientRequest.add_member(:allowed_o_auth_scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeListType, location_name: 'AllowedOAuthScopes'))
    UpdateUserPoolClientRequest.add_member(:allowed_o_auth_flows_user_pool_client, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'AllowedOAuthFlowsUserPoolClient', traits: {"smithy.api#default" => false}))
    UpdateUserPoolClientRequest.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsConfigurationType, location_name: 'AnalyticsConfiguration'))
    UpdateUserPoolClientRequest.add_member(:prevent_user_existence_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreventUserExistenceErrorTypes, location_name: 'PreventUserExistenceErrors'))
    UpdateUserPoolClientRequest.add_member(:enable_token_revocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: 'EnableTokenRevocation'))
    UpdateUserPoolClientRequest.add_member(:enable_propagate_additional_user_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: 'EnablePropagateAdditionalUserContextData'))
    UpdateUserPoolClientRequest.add_member(:auth_session_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthSessionValidityType, location_name: 'AuthSessionValidity'))
    UpdateUserPoolClientRequest.add_member(:refresh_token_rotation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenRotationType, location_name: 'RefreshTokenRotation'))
    UpdateUserPoolClientRequest.type = Types::UpdateUserPoolClientRequest
    UpdateUserPoolClientResponse.add_member(:user_pool_client, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolClientType, location_name: 'UserPoolClient'))
    UpdateUserPoolClientResponse.type = Types::UpdateUserPoolClientResponse
    UpdateUserPoolDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainType, location_name: 'Domain', traits: {"smithy.api#required" => {}}))
    UpdateUserPoolDomainRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    UpdateUserPoolDomainRequest.add_member(:managed_login_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedIntegerType, location_name: 'ManagedLoginVersion'))
    UpdateUserPoolDomainRequest.add_member(:custom_domain_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainConfigType, location_name: 'CustomDomainConfig'))
    UpdateUserPoolDomainRequest.type = Types::UpdateUserPoolDomainRequest
    UpdateUserPoolDomainResponse.add_member(:managed_login_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedIntegerType, location_name: 'ManagedLoginVersion'))
    UpdateUserPoolDomainResponse.add_member(:cloud_front_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainType, location_name: 'CloudFrontDomain'))
    UpdateUserPoolDomainResponse.type = Types::UpdateUserPoolDomainResponse
    UpdateUserPoolRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId', traits: {"smithy.api#required" => {}}))
    UpdateUserPoolRequest.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolPolicyType, location_name: 'Policies'))
    UpdateUserPoolRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionType, location_name: 'DeletionProtection'))
    UpdateUserPoolRequest.add_member(:lambda_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaConfigType, location_name: 'LambdaConfig'))
    UpdateUserPoolRequest.add_member(:auto_verified_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedAttributesListType, location_name: 'AutoVerifiedAttributes'))
    UpdateUserPoolRequest.add_member(:sms_verification_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: 'SmsVerificationMessage'))
    UpdateUserPoolRequest.add_member(:email_verification_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationMessageType, location_name: 'EmailVerificationMessage'))
    UpdateUserPoolRequest.add_member(:email_verification_subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationSubjectType, location_name: 'EmailVerificationSubject'))
    UpdateUserPoolRequest.add_member(:verification_message_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationMessageTemplateType, location_name: 'VerificationMessageTemplate'))
    UpdateUserPoolRequest.add_member(:sms_authentication_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: 'SmsAuthenticationMessage'))
    UpdateUserPoolRequest.add_member(:user_attribute_update_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeUpdateSettingsType, location_name: 'UserAttributeUpdateSettings'))
    UpdateUserPoolRequest.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: 'MfaConfiguration'))
    UpdateUserPoolRequest.add_member(:device_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceConfigurationType, location_name: 'DeviceConfiguration'))
    UpdateUserPoolRequest.add_member(:email_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailConfigurationType, location_name: 'EmailConfiguration'))
    UpdateUserPoolRequest.add_member(:sms_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsConfigurationType, location_name: 'SmsConfiguration'))
    UpdateUserPoolRequest.add_member(:user_pool_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTagsType, location_name: 'UserPoolTags'))
    UpdateUserPoolRequest.add_member(:admin_create_user_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminCreateUserConfigType, location_name: 'AdminCreateUserConfig'))
    UpdateUserPoolRequest.add_member(:user_pool_add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolAddOnsType, location_name: 'UserPoolAddOns'))
    UpdateUserPoolRequest.add_member(:account_recovery_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountRecoverySettingType, location_name: 'AccountRecoverySetting'))
    UpdateUserPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolNameType, location_name: 'PoolName'))
    UpdateUserPoolRequest.add_member(:user_pool_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTierType, location_name: 'UserPoolTier'))
    UpdateUserPoolRequest.type = Types::UpdateUserPoolRequest
    UpdateUserPoolResponse.type = Types::UpdateUserPoolResponse
    UserAttributeUpdateSettingsType.add_member(:attributes_require_verification_before_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesRequireVerificationBeforeUpdateType, location_name: 'AttributesRequireVerificationBeforeUpdate'))
    UserAttributeUpdateSettingsType.type = Types::UserAttributeUpdateSettingsType
    UserContextDataType.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'IpAddress'))
    UserContextDataType.add_member(:encoded_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'EncodedData'))
    UserContextDataType.type = Types::UserContextDataType
    UserImportInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UserImportInProgressException.type = Types::UserImportInProgressException
    UserImportJobStatusType.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Created', traits: {"smithy.api#enumValue" => "Created"}))
    UserImportJobStatusType.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    UserImportJobStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    UserImportJobStatusType.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopping', traits: {"smithy.api#enumValue" => "Stopping"}))
    UserImportJobStatusType.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Expired', traits: {"smithy.api#enumValue" => "Expired"}))
    UserImportJobStatusType.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopped', traits: {"smithy.api#enumValue" => "Stopped"}))
    UserImportJobStatusType.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    UserImportJobStatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    UserImportJobType.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobNameType, location_name: 'JobName'))
    UserImportJobType.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobIdType, location_name: 'JobId'))
    UserImportJobType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    UserImportJobType.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreSignedUrlType, location_name: 'PreSignedUrl'))
    UserImportJobType.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    UserImportJobType.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'StartDate'))
    UserImportJobType.add_member(:completion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CompletionDate'))
    UserImportJobType.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobStatusType, location_name: 'Status'))
    UserImportJobType.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'CloudWatchLogsRoleArn'))
    UserImportJobType.add_member(:imported_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: 'ImportedUsers', traits: {"smithy.api#default" => 0}))
    UserImportJobType.add_member(:skipped_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: 'SkippedUsers', traits: {"smithy.api#default" => 0}))
    UserImportJobType.add_member(:failed_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: 'FailedUsers', traits: {"smithy.api#default" => 0}))
    UserImportJobType.add_member(:completion_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompletionMessageType, location_name: 'CompletionMessage'))
    UserImportJobType.type = Types::UserImportJobType
    UserImportJobsListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportJobType)
    UserLambdaValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UserLambdaValidationException.type = Types::UserLambdaValidationException
    UserMFASettingListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType)
    UserNotConfirmedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UserNotConfirmedException.type = Types::UserNotConfirmedException
    UserNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UserNotFoundException.type = Types::UserNotFoundException
    UserPoolAddOnNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UserPoolAddOnNotEnabledException.type = Types::UserPoolAddOnNotEnabledException
    UserPoolAddOnsType.add_member(:advanced_security_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityModeType, location_name: 'AdvancedSecurityMode', traits: {"smithy.api#required" => {}}))
    UserPoolAddOnsType.add_member(:advanced_security_additional_flows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedSecurityAdditionalFlowsType, location_name: 'AdvancedSecurityAdditionalFlows'))
    UserPoolAddOnsType.type = Types::UserPoolAddOnsType
    UserPoolClientDescription.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId'))
    UserPoolClientDescription.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    UserPoolClientDescription.add_member(:client_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientNameType, location_name: 'ClientName'))
    UserPoolClientDescription.type = Types::UserPoolClientDescription
    UserPoolClientListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolClientDescription)
    UserPoolClientType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'UserPoolId'))
    UserPoolClientType.add_member(:client_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientNameType, location_name: 'ClientName'))
    UserPoolClientType.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'ClientId'))
    UserPoolClientType.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecretType, location_name: 'ClientSecret'))
    UserPoolClientType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    UserPoolClientType.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    UserPoolClientType.add_member(:refresh_token_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenValidityType, location_name: 'RefreshTokenValidity', traits: {"smithy.api#default" => 0}))
    UserPoolClientType.add_member(:access_token_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenValidityType, location_name: 'AccessTokenValidity'))
    UserPoolClientType.add_member(:id_token_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdTokenValidityType, location_name: 'IdTokenValidity'))
    UserPoolClientType.add_member(:token_validity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenValidityUnitsType, location_name: 'TokenValidityUnits'))
    UserPoolClientType.add_member(:read_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: 'ReadAttributes'))
    UserPoolClientType.add_member(:write_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: 'WriteAttributes'))
    UserPoolClientType.add_member(:explicit_auth_flows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExplicitAuthFlowsListType, location_name: 'ExplicitAuthFlows'))
    UserPoolClientType.add_member(:supported_identity_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedIdentityProvidersListType, location_name: 'SupportedIdentityProviders'))
    UserPoolClientType.add_member(:callback_ur_ls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallbackURLsListType, location_name: 'CallbackURLs'))
    UserPoolClientType.add_member(:logout_ur_ls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogoutURLsListType, location_name: 'LogoutURLs'))
    UserPoolClientType.add_member(:default_redirect_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectUrlType, location_name: 'DefaultRedirectURI'))
    UserPoolClientType.add_member(:allowed_o_auth_flows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthFlowsType, location_name: 'AllowedOAuthFlows'))
    UserPoolClientType.add_member(:allowed_o_auth_scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeListType, location_name: 'AllowedOAuthScopes'))
    UserPoolClientType.add_member(:allowed_o_auth_flows_user_pool_client, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'AllowedOAuthFlowsUserPoolClient', traits: {"smithy.api#default" => nil}))
    UserPoolClientType.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsConfigurationType, location_name: 'AnalyticsConfiguration'))
    UserPoolClientType.add_member(:prevent_user_existence_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreventUserExistenceErrorTypes, location_name: 'PreventUserExistenceErrors'))
    UserPoolClientType.add_member(:enable_token_revocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: 'EnableTokenRevocation'))
    UserPoolClientType.add_member(:enable_propagate_additional_user_context_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: 'EnablePropagateAdditionalUserContextData'))
    UserPoolClientType.add_member(:auth_session_validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthSessionValidityType, location_name: 'AuthSessionValidity'))
    UserPoolClientType.add_member(:refresh_token_rotation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenRotationType, location_name: 'RefreshTokenRotation'))
    UserPoolClientType.type = Types::UserPoolClientType
    UserPoolDescriptionType.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'Id'))
    UserPoolDescriptionType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolNameType, location_name: 'Name'))
    UserPoolDescriptionType.add_member(:lambda_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaConfigType, location_name: 'LambdaConfig'))
    UserPoolDescriptionType.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: 'Status', traits: {"smithy.api#deprecated" => {"message" => "This property is no longer available."}}))
    UserPoolDescriptionType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    UserPoolDescriptionType.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    UserPoolDescriptionType.type = Types::UserPoolDescriptionType
    UserPoolListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolDescriptionType)
    UserPoolMfaType.add_member(:off, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    UserPoolMfaType.add_member(:on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON', traits: {"smithy.api#enumValue" => "ON"}))
    UserPoolMfaType.add_member(:optional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONAL', traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    UserPoolPolicyType.add_member(:password_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordPolicyType, location_name: 'PasswordPolicy'))
    UserPoolPolicyType.add_member(:sign_in_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignInPolicyType, location_name: 'SignInPolicy'))
    UserPoolPolicyType.type = Types::UserPoolPolicyType
    UserPoolTaggingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UserPoolTaggingException.type = Types::UserPoolTaggingException
    UserPoolTagsListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeysType)
    UserPoolTagsType.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeysType)
    UserPoolTagsType.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueType)
    UserPoolTierType.add_member(:lite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LITE', traits: {"smithy.api#enumValue" => "LITE"}))
    UserPoolTierType.add_member(:essentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ESSENTIALS', traits: {"smithy.api#enumValue" => "ESSENTIALS"}))
    UserPoolTierType.add_member(:plus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLUS', traits: {"smithy.api#enumValue" => "PLUS"}))
    UserPoolType.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: 'Id'))
    UserPoolType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolNameType, location_name: 'Name'))
    UserPoolType.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolPolicyType, location_name: 'Policies'))
    UserPoolType.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionType, location_name: 'DeletionProtection'))
    UserPoolType.add_member(:lambda_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaConfigType, location_name: 'LambdaConfig'))
    UserPoolType.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: 'Status', traits: {"smithy.api#deprecated" => {"message" => "This property is no longer available."}}))
    UserPoolType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastModifiedDate'))
    UserPoolType.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    UserPoolType.add_member(:schema_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAttributesListType, location_name: 'SchemaAttributes'))
    UserPoolType.add_member(:auto_verified_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedAttributesListType, location_name: 'AutoVerifiedAttributes'))
    UserPoolType.add_member(:alias_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasAttributesListType, location_name: 'AliasAttributes'))
    UserPoolType.add_member(:username_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameAttributesListType, location_name: 'UsernameAttributes'))
    UserPoolType.add_member(:sms_verification_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: 'SmsVerificationMessage'))
    UserPoolType.add_member(:email_verification_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationMessageType, location_name: 'EmailVerificationMessage'))
    UserPoolType.add_member(:email_verification_subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationSubjectType, location_name: 'EmailVerificationSubject'))
    UserPoolType.add_member(:verification_message_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationMessageTemplateType, location_name: 'VerificationMessageTemplate'))
    UserPoolType.add_member(:sms_authentication_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: 'SmsAuthenticationMessage'))
    UserPoolType.add_member(:user_attribute_update_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeUpdateSettingsType, location_name: 'UserAttributeUpdateSettings'))
    UserPoolType.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: 'MfaConfiguration'))
    UserPoolType.add_member(:device_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceConfigurationType, location_name: 'DeviceConfiguration'))
    UserPoolType.add_member(:estimated_number_of_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerType, location_name: 'EstimatedNumberOfUsers', traits: {"smithy.api#default" => 0}))
    UserPoolType.add_member(:email_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailConfigurationType, location_name: 'EmailConfiguration'))
    UserPoolType.add_member(:sms_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsConfigurationType, location_name: 'SmsConfiguration'))
    UserPoolType.add_member(:user_pool_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTagsType, location_name: 'UserPoolTags'))
    UserPoolType.add_member(:sms_configuration_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'SmsConfigurationFailure'))
    UserPoolType.add_member(:email_configuration_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'EmailConfigurationFailure'))
    UserPoolType.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainType, location_name: 'Domain'))
    UserPoolType.add_member(:custom_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainType, location_name: 'CustomDomain'))
    UserPoolType.add_member(:admin_create_user_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminCreateUserConfigType, location_name: 'AdminCreateUserConfig'))
    UserPoolType.add_member(:user_pool_add_ons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolAddOnsType, location_name: 'UserPoolAddOns'))
    UserPoolType.add_member(:username_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameConfigurationType, location_name: 'UsernameConfiguration'))
    UserPoolType.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'Arn'))
    UserPoolType.add_member(:account_recovery_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountRecoverySettingType, location_name: 'AccountRecoverySetting'))
    UserPoolType.add_member(:user_pool_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTierType, location_name: 'UserPoolTier'))
    UserPoolType.type = Types::UserPoolType
    UserStatusType.add_member(:unconfirmed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNCONFIRMED', traits: {"smithy.api#enumValue" => "UNCONFIRMED"}))
    UserStatusType.add_member(:confirmed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIRMED', traits: {"smithy.api#enumValue" => "CONFIRMED"}))
    UserStatusType.add_member(:archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVED', traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    UserStatusType.add_member(:compromised, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPROMISED', traits: {"smithy.api#enumValue" => "COMPROMISED"}))
    UserStatusType.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    UserStatusType.add_member(:reset_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESET_REQUIRED', traits: {"smithy.api#enumValue" => "RESET_REQUIRED"}))
    UserStatusType.add_member(:force_change_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORCE_CHANGE_PASSWORD', traits: {"smithy.api#enumValue" => "FORCE_CHANGE_PASSWORD"}))
    UserStatusType.add_member(:external_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL_PROVIDER', traits: {"smithy.api#enumValue" => "EXTERNAL_PROVIDER"}))
    UserType.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username'))
    UserType.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeListType, location_name: 'Attributes'))
    UserType.add_member(:user_create_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'UserCreateDate'))
    UserType.add_member(:user_last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'UserLastModifiedDate'))
    UserType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Enabled', traits: {"smithy.api#default" => false}))
    UserType.add_member(:user_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatusType, location_name: 'UserStatus'))
    UserType.add_member(:mfa_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFAOptionListType, location_name: 'MFAOptions'))
    UserType.type = Types::UserType
    UserVerificationType.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED', traits: {"smithy.api#enumValue" => "required"}))
    UserVerificationType.add_member(:preferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREFERRED', traits: {"smithy.api#enumValue" => "preferred"}))
    UsernameAttributeType.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_NUMBER', traits: {"smithy.api#enumValue" => "phone_number"}))
    UsernameAttributeType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "email"}))
    UsernameAttributesListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameAttributeType)
    UsernameConfigurationType.add_member(:case_sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: 'CaseSensitive', traits: {"smithy.api#required" => {}}))
    UsernameConfigurationType.type = Types::UsernameConfigurationType
    UsernameExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    UsernameExistsException.type = Types::UsernameExistsException
    UsersListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserType)
    VerificationMessageTemplateType.add_member(:sms_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: 'SmsMessage'))
    VerificationMessageTemplateType.add_member(:email_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationMessageType, location_name: 'EmailMessage'))
    VerificationMessageTemplateType.add_member(:email_subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationSubjectType, location_name: 'EmailSubject'))
    VerificationMessageTemplateType.add_member(:email_message_by_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationMessageByLinkType, location_name: 'EmailMessageByLink'))
    VerificationMessageTemplateType.add_member(:email_subject_by_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailVerificationSubjectByLinkType, location_name: 'EmailSubjectByLink'))
    VerificationMessageTemplateType.add_member(:default_email_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultEmailOptionType, location_name: 'DefaultEmailOption'))
    VerificationMessageTemplateType.type = Types::VerificationMessageTemplateType
    VerifiedAttributeType.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_NUMBER', traits: {"smithy.api#enumValue" => "phone_number"}))
    VerifiedAttributeType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "email"}))
    VerifiedAttributesListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedAttributeType)
    VerifySoftwareTokenRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken'))
    VerifySoftwareTokenRequest.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    VerifySoftwareTokenRequest.add_member(:user_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareTokenMFAUserCodeType, location_name: 'UserCode', traits: {"smithy.api#required" => {}}))
    VerifySoftwareTokenRequest.add_member(:friendly_device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'FriendlyDeviceName'))
    VerifySoftwareTokenRequest.type = Types::VerifySoftwareTokenRequest
    VerifySoftwareTokenResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifySoftwareTokenResponseType, location_name: 'Status'))
    VerifySoftwareTokenResponse.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionType, location_name: 'Session'))
    VerifySoftwareTokenResponse.type = Types::VerifySoftwareTokenResponse
    VerifySoftwareTokenResponseType.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    VerifySoftwareTokenResponseType.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    VerifyUserAttributeRequest.add_member(:access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenModelType, location_name: 'AccessToken', traits: {"smithy.api#required" => {}}))
    VerifyUserAttributeRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameType, location_name: 'AttributeName', traits: {"smithy.api#required" => {}}))
    VerifyUserAttributeRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationCodeType, location_name: 'Code', traits: {"smithy.api#required" => {}}))
    VerifyUserAttributeRequest.type = Types::VerifyUserAttributeRequest
    VerifyUserAttributeResponse.type = Types::VerifyUserAttributeResponse
    WebAuthnAuthenticatorTransportsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnAuthenticatorTransportType)
    WebAuthnChallengeNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    WebAuthnChallengeNotFoundException.type = Types::WebAuthnChallengeNotFoundException
    WebAuthnClientMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    WebAuthnClientMismatchException.type = Types::WebAuthnClientMismatchException
    WebAuthnConfigurationMissingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    WebAuthnConfigurationMissingException.type = Types::WebAuthnConfigurationMissingException
    WebAuthnConfigurationType.add_member(:relying_party_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelyingPartyIdType, location_name: 'RelyingPartyId'))
    WebAuthnConfigurationType.add_member(:user_verification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserVerificationType, location_name: 'UserVerification'))
    WebAuthnConfigurationType.type = Types::WebAuthnConfigurationType
    WebAuthnCredentialDescription.add_member(:credential_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'CredentialId', traits: {"smithy.api#required" => {}}))
    WebAuthnCredentialDescription.add_member(:friendly_credential_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'FriendlyCredentialName', traits: {"smithy.api#required" => {}}))
    WebAuthnCredentialDescription.add_member(:relying_party_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringType, location_name: 'RelyingPartyId', traits: {"smithy.api#required" => {}}))
    WebAuthnCredentialDescription.add_member(:authenticator_attachment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnAuthenticatorAttachmentType, location_name: 'AuthenticatorAttachment'))
    WebAuthnCredentialDescription.add_member(:authenticator_transports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnAuthenticatorTransportsList, location_name: 'AuthenticatorTransports', traits: {"smithy.api#required" => {}}))
    WebAuthnCredentialDescription.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreatedAt', traits: {"smithy.api#required" => {}}))
    WebAuthnCredentialDescription.type = Types::WebAuthnCredentialDescription
    WebAuthnCredentialDescriptionListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnCredentialDescription)
    WebAuthnCredentialNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    WebAuthnCredentialNotSupportedException.type = Types::WebAuthnCredentialNotSupportedException
    WebAuthnNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    WebAuthnNotEnabledException.type = Types::WebAuthnNotEnabledException
    WebAuthnOriginNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    WebAuthnOriginNotAllowedException.type = Types::WebAuthnOriginNotAllowedException
    WebAuthnRelyingPartyMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'message'))
    WebAuthnRelyingPartyMismatchException.type = Types::WebAuthnRelyingPartyMismatchException

    AWSCognitoIdentityProviderService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cognitoidentityprovider#AWSCognitoIdentityProviderService"
      service.name = "AWSCognitoIdentityProviderService"
      service.version = "2016-04-18"
      service.traits = {"aws.api#service" => {"sdkId" => "Cognito Identity Provider", "arnNamespace" => "cognito-idp", "cloudFormationName" => "Cognito", "cloudTrailEventSource" => "cognito-idp.amazonaws.com", "docId" => "cognito-idp-2016-04-18", "endpointPrefix" => "cognito-idp"}, "aws.auth#sigv4" => {"name" => "cognito-idp"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Cognito Identity Provider", "smithy.api#xmlNamespace" => {"uri" => "http://cognito-idp.amazonaws.com/doc/2016-04-18/"}}
      service.add_operation(:add_custom_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AddCustomAttributes"
        operation.name = "AddCustomAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddCustomAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddCustomAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:admin_add_user_to_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminAddUserToGroup"
        operation.name = "AdminAddUserToGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminAddUserToGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_confirm_sign_up, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminConfirmSignUp"
        operation.name = "AdminConfirmSignUp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminConfirmSignUpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminConfirmSignUpResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFailedAttemptsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminCreateUser"
        operation.name = "AdminCreateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminCreateUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminCreateUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedUserStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminDeleteUser"
        operation.name = "AdminDeleteUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminDeleteUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_delete_user_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminDeleteUserAttributes"
        operation.name = "AdminDeleteUserAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminDeleteUserAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminDeleteUserAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_disable_provider_for_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminDisableProviderForUser"
        operation.name = "AdminDisableProviderForUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminDisableProviderForUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminDisableProviderForUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_disable_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminDisableUser"
        operation.name = "AdminDisableUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminDisableUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminDisableUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_enable_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminEnableUser"
        operation.name = "AdminEnableUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminEnableUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminEnableUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_forget_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminForgetDevice"
        operation.name = "AdminForgetDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminForgetDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_get_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminGetDevice"
        operation.name = "AdminGetDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminGetDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminGetDeviceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:admin_get_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminGetUser"
        operation.name = "AdminGetUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminGetUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminGetUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_initiate_auth, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminInitiateAuth"
        operation.name = "AdminInitiateAuth"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminInitiateAuthRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminInitiateAuthResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFAMethodNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_link_provider_for_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminLinkProviderForUser"
        operation.name = "AdminLinkProviderForUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminLinkProviderForUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminLinkProviderForUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_list_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminListDevices"
        operation.name = "AdminListDevices"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminListDevicesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminListDevicesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:admin_list_groups_for_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminListGroupsForUser"
        operation.name = "AdminListGroupsForUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminListGroupsForUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminListGroupsForUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::AdminListGroupsForUser.new
      end)
      service.add_operation(:admin_list_user_auth_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminListUserAuthEvents"
        operation.name = "AdminListUserAuthEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminListUserAuthEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminListUserAuthEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolAddOnNotEnabledException)
        operation.traits = {}
        operation[:paginator] = Paginators::AdminListUserAuthEvents.new
      end)
      service.add_operation(:admin_remove_user_from_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminRemoveUserFromGroup"
        operation.name = "AdminRemoveUserFromGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminRemoveUserFromGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_reset_user_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminResetUserPassword"
        operation.name = "AdminResetUserPassword"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminResetUserPasswordRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminResetUserPasswordResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_respond_to_auth_challenge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminRespondToAuthChallenge"
        operation.name = "AdminRespondToAuthChallenge"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminRespondToAuthChallengeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminRespondToAuthChallengeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredCodeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFAMethodNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordHistoryPolicyViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareTokenMFANotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_set_user_mfa_preference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminSetUserMFAPreference"
        operation.name = "AdminSetUserMFAPreference"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminSetUserMFAPreferenceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminSetUserMFAPreferenceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_set_user_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminSetUserPassword"
        operation.name = "AdminSetUserPassword"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminSetUserPasswordRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminSetUserPasswordResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordHistoryPolicyViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_set_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminSetUserSettings"
        operation.name = "AdminSetUserSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminSetUserSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminSetUserSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_update_auth_event_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminUpdateAuthEventFeedback"
        operation.name = "AdminUpdateAuthEventFeedback"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminUpdateAuthEventFeedbackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminUpdateAuthEventFeedbackResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolAddOnNotEnabledException)
        operation.traits = {}
      end)
      service.add_operation(:admin_update_device_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminUpdateDeviceStatus"
        operation.name = "AdminUpdateDeviceStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminUpdateDeviceStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminUpdateDeviceStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_update_user_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminUpdateUserAttributes"
        operation.name = "AdminUpdateUserAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminUpdateUserAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminUpdateUserAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:admin_user_global_sign_out, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminUserGlobalSignOut"
        operation.name = "AdminUserGlobalSignOut"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminUserGlobalSignOutRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminUserGlobalSignOutResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_software_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AssociateSoftwareToken"
        operation.name = "AssociateSoftwareToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSoftwareTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSoftwareTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareTokenMFANotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:change_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ChangePassword"
        operation.name = "ChangePassword"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangePasswordRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangePasswordResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordHistoryPolicyViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:complete_web_authn_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CompleteWebAuthnRegistration"
        operation.name = "CompleteWebAuthnRegistration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteWebAuthnRegistrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteWebAuthnRegistrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnChallengeNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnClientMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnCredentialNotSupportedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnOriginNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnRelyingPartyMismatchException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:confirm_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ConfirmDevice"
        operation.name = "ConfirmDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmDeviceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceKeyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:confirm_forgot_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ConfirmForgotPassword"
        operation.name = "ConfirmForgotPassword"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmForgotPasswordRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmForgotPasswordResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredCodeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordHistoryPolicyViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFailedAttemptsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:confirm_sign_up, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ConfirmSignUp"
        operation.name = "ConfirmSignUp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmSignUpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmSignUpResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredCodeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFailedAttemptsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateIdentityProvider"
        operation.name = "CreateIdentityProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentityProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentityProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateProviderException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_managed_login_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateManagedLoginBranding"
        operation.name = "CreateManagedLoginBranding"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateManagedLoginBrandingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateManagedLoginBrandingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedLoginBrandingExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_resource_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateResourceServer"
        operation.name = "CreateResourceServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceServerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_user_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateUserImportJob"
        operation.name = "CreateUserImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_user_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateUserPool"
        operation.name = "CreateUserPool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserPoolRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserPoolResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TierChangeNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTaggingException)
        operation.traits = {}
      end)
      service.add_operation(:create_user_pool_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateUserPoolClient"
        operation.name = "CreateUserPoolClient"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserPoolClientRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserPoolClientResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOAuthFlowException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeDoesNotExistException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_user_pool_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateUserPoolDomain"
        operation.name = "CreateUserPoolDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserPoolDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserPoolDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteIdentityProvider"
        operation.name = "DeleteIdentityProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedIdentityProviderException)
        operation.traits = {}
      end)
      service.add_operation(:delete_managed_login_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteManagedLoginBranding"
        operation.name = "DeleteManagedLoginBranding"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteManagedLoginBrandingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteResourceServer"
        operation.name = "DeleteResourceServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:delete_user_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteUserAttributes"
        operation.name = "DeleteUserAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:delete_user_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteUserPool"
        operation.name = "DeleteUserPool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserPoolRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:delete_user_pool_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteUserPoolClient"
        operation.name = "DeleteUserPoolClient"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserPoolClientRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_user_pool_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteUserPoolDomain"
        operation.name = "DeleteUserPoolDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserPoolDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserPoolDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_web_authn_credential, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteWebAuthnCredential"
        operation.name = "DeleteWebAuthnCredential"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebAuthnCredentialRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebAuthnCredentialResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:describe_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeIdentityProvider"
        operation.name = "DescribeIdentityProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_managed_login_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBranding"
        operation.name = "DescribeManagedLoginBranding"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeManagedLoginBrandingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeManagedLoginBrandingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_managed_login_branding_by_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBrandingByClient"
        operation.name = "DescribeManagedLoginBrandingByClient"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeManagedLoginBrandingByClientRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeManagedLoginBrandingByClientResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeResourceServer"
        operation.name = "DescribeResourceServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceServerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_risk_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeRiskConfiguration"
        operation.name = "DescribeRiskConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRiskConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRiskConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolAddOnNotEnabledException)
        operation.traits = {}
      end)
      service.add_operation(:describe_user_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeUserImportJob"
        operation.name = "DescribeUserImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_user_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeUserPool"
        operation.name = "DescribeUserPool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserPoolRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserPoolResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTaggingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_user_pool_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeUserPoolClient"
        operation.name = "DescribeUserPoolClient"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserPoolClientRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserPoolClientResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_user_pool_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeUserPoolDomain"
        operation.name = "DescribeUserPoolDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserPoolDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserPoolDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:forget_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ForgetDevice"
        operation.name = "ForgetDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForgetDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:forgot_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ForgotPassword"
        operation.name = "ForgotPassword"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForgotPasswordRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForgotPasswordResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_csv_header, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetCSVHeader"
        operation.name = "GetCSVHeader"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCSVHeaderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCSVHeaderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetDevice"
        operation.name = "GetDevice"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetGroup"
        operation.name = "GetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_identity_provider_by_identifier, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetIdentityProviderByIdentifier"
        operation.name = "GetIdentityProviderByIdentifier"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityProviderByIdentifierRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentityProviderByIdentifierResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_log_delivery_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetLogDeliveryConfiguration"
        operation.name = "GetLogDeliveryConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogDeliveryConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLogDeliveryConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_signing_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetSigningCertificate"
        operation.name = "GetSigningCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSigningCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSigningCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_tokens_from_refresh_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetTokensFromRefreshToken"
        operation.name = "GetTokensFromRefreshToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTokensFromRefreshTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTokensFromRefreshTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenReuseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_ui_customization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetUICustomization"
        operation.name = "GetUICustomization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUICustomizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUICustomizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetUser"
        operation.name = "GetUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_user_attribute_verification_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetUserAttributeVerificationCode"
        operation.name = "GetUserAttributeVerificationCode"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserAttributeVerificationCodeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserAttributeVerificationCodeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_user_auth_factors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetUserAuthFactors"
        operation.name = "GetUserAuthFactors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserAuthFactorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserAuthFactorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_user_pool_mfa_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetUserPoolMfaConfig"
        operation.name = "GetUserPoolMfaConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserPoolMfaConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserPoolMfaConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:global_sign_out, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GlobalSignOut"
        operation.name = "GlobalSignOut"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSignOutRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSignOutResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:initiate_auth, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#InitiateAuth"
        operation.name = "InitiateAuth"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateAuthRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateAuthResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:list_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListDevices"
        operation.name = "ListDevices"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListGroups"
        operation.name = "ListGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_identity_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListIdentityProviders"
        operation.name = "ListIdentityProviders"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityProvidersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityProvidersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListIdentityProviders.new
      end)
      service.add_operation(:list_resource_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListResourceServers"
        operation.name = "ListResourceServers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceServersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceServersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourceServers.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_user_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListUserImportJobs"
        operation.name = "ListUserImportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserImportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserImportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_user_pool_clients, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListUserPoolClients"
        operation.name = "ListUserPoolClients"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserPoolClientsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserPoolClientsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListUserPoolClients.new
      end)
      service.add_operation(:list_user_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListUserPools"
        operation.name = "ListUserPools"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserPoolsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserPoolsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListUserPoolsSuccess", "params" => {"MaxResults" => 10}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListUserPools.new
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListUsers"
        operation.name = "ListUsers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:list_users_in_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListUsersInGroup"
        operation.name = "ListUsersInGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersInGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersInGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListUsersInGroup.new
      end)
      service.add_operation(:list_web_authn_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListWebAuthnCredentials"
        operation.name = "ListWebAuthnCredentials"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebAuthnCredentialsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebAuthnCredentialsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:resend_confirmation_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ResendConfirmationCode"
        operation.name = "ResendConfirmationCode"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResendConfirmationCodeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResendConfirmationCodeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:respond_to_auth_challenge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#RespondToAuthChallenge"
        operation.name = "RespondToAuthChallenge"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RespondToAuthChallengeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RespondToAuthChallengeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredCodeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFAMethodNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordHistoryPolicyViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareTokenMFANotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:revoke_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#RevokeToken"
        operation.name = "RevokeToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedTokenTypeException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:set_log_delivery_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetLogDeliveryConfiguration"
        operation.name = "SetLogDeliveryConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetLogDeliveryConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetLogDeliveryConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:set_risk_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetRiskConfiguration"
        operation.name = "SetRiskConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetRiskConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetRiskConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolAddOnNotEnabledException)
        operation.traits = {}
      end)
      service.add_operation(:set_ui_customization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetUICustomization"
        operation.name = "SetUICustomization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetUICustomizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetUICustomizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:set_user_mfa_preference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetUserMFAPreference"
        operation.name = "SetUserMFAPreference"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetUserMFAPreferenceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetUserMFAPreferenceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:set_user_pool_mfa_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetUserPoolMfaConfig"
        operation.name = "SetUserPoolMfaConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetUserPoolMfaConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetUserPoolMfaConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:set_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetUserSettings"
        operation.name = "SetUserSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetUserSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetUserSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:sign_up, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SignUp"
        operation.name = "SignUp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignUpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignUpResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameExistsException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:start_user_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#StartUserImportJob"
        operation.name = "StartUserImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartUserImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartUserImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:start_web_authn_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#StartWebAuthnRegistration"
        operation.name = "StartWebAuthnRegistration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartWebAuthnRegistrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartWebAuthnRegistrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnConfigurationMissingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAuthnNotEnabledException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:stop_user_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#StopUserImportJob"
        operation.name = "StopUserImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopUserImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopUserImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_auth_event_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateAuthEventFeedback"
        operation.name = "UpdateAuthEventFeedback"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAuthEventFeedbackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAuthEventFeedbackResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolAddOnNotEnabledException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:update_device_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateDeviceStatus"
        operation.name = "UpdateDeviceStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateIdentityProvider"
        operation.name = "UpdateIdentityProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdentityProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdentityProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedIdentityProviderException)
        operation.traits = {}
      end)
      service.add_operation(:update_managed_login_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateManagedLoginBranding"
        operation.name = "UpdateManagedLoginBranding"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateManagedLoginBrandingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateManagedLoginBrandingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_resource_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateResourceServer"
        operation.name = "UpdateResourceServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceServerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_user_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateUserAttributes"
        operation.name = "UpdateUserAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredCodeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:update_user_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateUserPool"
        operation.name = "UpdateUserPool"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserPoolRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserPoolResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TierChangeNotAllowedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserImportInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPoolTaggingException)
        operation.traits = {}
      end)
      service.add_operation(:update_user_pool_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateUserPoolClient"
        operation.name = "UpdateUserPoolClient"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserPoolClientRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserPoolClientResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOAuthFlowException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeDoesNotExistException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_user_pool_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateUserPoolDomain"
        operation.name = "UpdateUserPoolDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserPoolDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserPoolDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:verify_software_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#VerifySoftwareToken"
        operation.name = "VerifySoftwareToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifySoftwareTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifySoftwareTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSoftwareTokenMFAException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareTokenMFANotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:verify_user_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#VerifyUserAttribute"
        operation.name = "VerifyUserAttribute"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyUserAttributeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyUserAttributeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredCodeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundException)
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
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
