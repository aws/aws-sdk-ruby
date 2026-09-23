# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentityProvider
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#AWSAccountIdType", name: "AWSAccountIdType", traits: {"smithy.api#length" => {"min" => 0, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    AccessTokenValidityType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#AccessTokenValidityType", name: "AccessTokenValidityType", traits: {"smithy.api#range" => {"min" => 1, "max" => 86400}})
    AccountRecoverySettingType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AccountRecoverySettingType", name: "AccountRecoverySettingType")
    AccountTakeoverActionNotifyType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cognitoidentityprovider#AccountTakeoverActionNotifyType", name: "AccountTakeoverActionNotifyType", traits: {"smithy.api#default" => false})
    AccountTakeoverActionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AccountTakeoverActionType", name: "AccountTakeoverActionType")
    AccountTakeoverActionsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AccountTakeoverActionsType", name: "AccountTakeoverActionsType")
    AccountTakeoverEventActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#AccountTakeoverEventActionType", name: "AccountTakeoverEventActionType")
    AccountTakeoverRiskConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AccountTakeoverRiskConfigurationType", name: "AccountTakeoverRiskConfigurationType")
    AddCustomAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AddCustomAttributesRequest", name: "AddCustomAttributesRequest")
    AddCustomAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AddCustomAttributesResponse", name: "AddCustomAttributesResponse")
    AdminAddUserToGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminAddUserToGroupRequest", name: "AdminAddUserToGroupRequest")
    AdminConfirmSignUpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminConfirmSignUpRequest", name: "AdminConfirmSignUpRequest")
    AdminConfirmSignUpResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminConfirmSignUpResponse", name: "AdminConfirmSignUpResponse")
    AdminCreateUserConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminCreateUserConfigType", name: "AdminCreateUserConfigType")
    AdminCreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminCreateUserRequest", name: "AdminCreateUserRequest")
    AdminCreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminCreateUserResponse", name: "AdminCreateUserResponse")
    AdminCreateUserUnusedAccountValidityDaysType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminCreateUserUnusedAccountValidityDaysType", name: "AdminCreateUserUnusedAccountValidityDaysType", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 365}})
    AdminDeleteUserAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminDeleteUserAttributesRequest", name: "AdminDeleteUserAttributesRequest")
    AdminDeleteUserAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminDeleteUserAttributesResponse", name: "AdminDeleteUserAttributesResponse")
    AdminDeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminDeleteUserRequest", name: "AdminDeleteUserRequest")
    AdminDisableProviderForUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminDisableProviderForUserRequest", name: "AdminDisableProviderForUserRequest")
    AdminDisableProviderForUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminDisableProviderForUserResponse", name: "AdminDisableProviderForUserResponse")
    AdminDisableUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminDisableUserRequest", name: "AdminDisableUserRequest")
    AdminDisableUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminDisableUserResponse", name: "AdminDisableUserResponse")
    AdminEnableUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminEnableUserRequest", name: "AdminEnableUserRequest")
    AdminEnableUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminEnableUserResponse", name: "AdminEnableUserResponse")
    AdminForgetDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminForgetDeviceRequest", name: "AdminForgetDeviceRequest")
    AdminGetDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminGetDeviceRequest", name: "AdminGetDeviceRequest")
    AdminGetDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminGetDeviceResponse", name: "AdminGetDeviceResponse")
    AdminGetUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminGetUserRequest", name: "AdminGetUserRequest")
    AdminGetUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminGetUserResponse", name: "AdminGetUserResponse")
    AdminInitiateAuthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminInitiateAuthRequest", name: "AdminInitiateAuthRequest")
    AdminInitiateAuthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminInitiateAuthResponse", name: "AdminInitiateAuthResponse")
    AdminLinkProviderForUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminLinkProviderForUserRequest", name: "AdminLinkProviderForUserRequest")
    AdminLinkProviderForUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminLinkProviderForUserResponse", name: "AdminLinkProviderForUserResponse")
    AdminListDevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminListDevicesRequest", name: "AdminListDevicesRequest")
    AdminListDevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminListDevicesResponse", name: "AdminListDevicesResponse")
    AdminListGroupsForUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminListGroupsForUserRequest", name: "AdminListGroupsForUserRequest")
    AdminListGroupsForUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminListGroupsForUserResponse", name: "AdminListGroupsForUserResponse")
    AdminListUserAuthEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminListUserAuthEventsRequest", name: "AdminListUserAuthEventsRequest")
    AdminListUserAuthEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminListUserAuthEventsResponse", name: "AdminListUserAuthEventsResponse")
    AdminRemoveUserFromGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminRemoveUserFromGroupRequest", name: "AdminRemoveUserFromGroupRequest")
    AdminResetUserPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminResetUserPasswordRequest", name: "AdminResetUserPasswordRequest")
    AdminResetUserPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminResetUserPasswordResponse", name: "AdminResetUserPasswordResponse")
    AdminRespondToAuthChallengeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminRespondToAuthChallengeRequest", name: "AdminRespondToAuthChallengeRequest")
    AdminRespondToAuthChallengeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminRespondToAuthChallengeResponse", name: "AdminRespondToAuthChallengeResponse")
    AdminSetUserMFAPreferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminSetUserMFAPreferenceRequest", name: "AdminSetUserMFAPreferenceRequest")
    AdminSetUserMFAPreferenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminSetUserMFAPreferenceResponse", name: "AdminSetUserMFAPreferenceResponse")
    AdminSetUserPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminSetUserPasswordRequest", name: "AdminSetUserPasswordRequest")
    AdminSetUserPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminSetUserPasswordResponse", name: "AdminSetUserPasswordResponse")
    AdminSetUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminSetUserSettingsRequest", name: "AdminSetUserSettingsRequest")
    AdminSetUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminSetUserSettingsResponse", name: "AdminSetUserSettingsResponse")
    AdminUpdateAuthEventFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminUpdateAuthEventFeedbackRequest", name: "AdminUpdateAuthEventFeedbackRequest")
    AdminUpdateAuthEventFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminUpdateAuthEventFeedbackResponse", name: "AdminUpdateAuthEventFeedbackResponse")
    AdminUpdateDeviceStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminUpdateDeviceStatusRequest", name: "AdminUpdateDeviceStatusRequest")
    AdminUpdateDeviceStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminUpdateDeviceStatusResponse", name: "AdminUpdateDeviceStatusResponse")
    AdminUpdateUserAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminUpdateUserAttributesRequest", name: "AdminUpdateUserAttributesRequest")
    AdminUpdateUserAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminUpdateUserAttributesResponse", name: "AdminUpdateUserAttributesResponse")
    AdminUserGlobalSignOutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminUserGlobalSignOutRequest", name: "AdminUserGlobalSignOutRequest")
    AdminUserGlobalSignOutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdminUserGlobalSignOutResponse", name: "AdminUserGlobalSignOutResponse")
    AdvancedSecurityAdditionalFlowsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AdvancedSecurityAdditionalFlowsType", name: "AdvancedSecurityAdditionalFlowsType")
    AdvancedSecurityEnabledModeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#AdvancedSecurityEnabledModeType", name: "AdvancedSecurityEnabledModeType")
    AdvancedSecurityModeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#AdvancedSecurityModeType", name: "AdvancedSecurityModeType")
    AliasAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#AliasAttributeType", name: "AliasAttributeType")
    AliasAttributesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#AliasAttributesListType", name: "AliasAttributesListType")
    AliasExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AliasExistsException", name: "AliasExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AllowedFirstAuthFactorsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#AllowedFirstAuthFactorsListType", name: "AllowedFirstAuthFactorsListType", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AnalyticsConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AnalyticsConfigurationType", name: "AnalyticsConfigurationType")
    AnalyticsMetadataType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AnalyticsMetadataType", name: "AnalyticsMetadataType")
    ArnType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ArnType", name: "ArnType", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?$"})
    AssetBytesType = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.cognitoidentityprovider#AssetBytesType", name: "AssetBytesType", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000000}})
    AssetCategoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#AssetCategoryType", name: "AssetCategoryType")
    AssetExtensionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#AssetExtensionType", name: "AssetExtensionType")
    AssetListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#AssetListType", name: "AssetListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    AssetType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AssetType", name: "AssetType")
    AssociateSoftwareTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AssociateSoftwareTokenRequest", name: "AssociateSoftwareTokenRequest")
    AssociateSoftwareTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AssociateSoftwareTokenResponse", name: "AssociateSoftwareTokenResponse")
    AttributeDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#AttributeDataType", name: "AttributeDataType")
    AttributeListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#AttributeListType", name: "AttributeListType")
    AttributeMappingKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#AttributeMappingKeyType", name: "AttributeMappingKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    AttributeMappingType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cognitoidentityprovider#AttributeMappingType", name: "AttributeMappingType")
    AttributeNameListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#AttributeNameListType", name: "AttributeNameListType")
    AttributeNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#AttributeNameType", name: "AttributeNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    AttributeType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AttributeType", name: "AttributeType")
    AttributeValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#AttributeValueType", name: "AttributeValueType", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    AttributesRequireVerificationBeforeUpdateType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#AttributesRequireVerificationBeforeUpdateType", name: "AttributesRequireVerificationBeforeUpdateType")
    AuthEventType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AuthEventType", name: "AuthEventType")
    AuthEventsType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#AuthEventsType", name: "AuthEventsType")
    AuthFactorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#AuthFactorType", name: "AuthFactorType")
    AuthFlowType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#AuthFlowType", name: "AuthFlowType")
    AuthParametersType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cognitoidentityprovider#AuthParametersType", name: "AuthParametersType", traits: {"smithy.api#sensitive" => {}})
    AuthSessionValidityType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#AuthSessionValidityType", name: "AuthSessionValidityType", traits: {"smithy.api#range" => {"min" => 3, "max" => 15}})
    AuthenticationResultType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#AuthenticationResultType", name: "AuthenticationResultType")
    AvailableChallengeListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#AvailableChallengeListType", name: "AvailableChallengeListType")
    BlockedIPRangeListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#BlockedIPRangeListType", name: "BlockedIPRangeListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    BooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cognitoidentityprovider#BooleanType", name: "BooleanType", traits: {"smithy.api#default" => false})
    CSSType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#CSSType", name: "CSSType", traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}})
    CSSVersionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#CSSVersionType", name: "CSSVersionType")
    CallbackURLsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#CallbackURLsListType", name: "CallbackURLsListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ChallengeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#ChallengeName", name: "ChallengeName")
    ChallengeNameType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#ChallengeNameType", name: "ChallengeNameType")
    ChallengeParametersType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cognitoidentityprovider#ChallengeParametersType", name: "ChallengeParametersType")
    ChallengeResponse = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#ChallengeResponse", name: "ChallengeResponse")
    ChallengeResponseListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#ChallengeResponseListType", name: "ChallengeResponseListType")
    ChallengeResponseType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ChallengeResponseType", name: "ChallengeResponseType")
    ChallengeResponsesType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cognitoidentityprovider#ChallengeResponsesType", name: "ChallengeResponsesType", traits: {"smithy.api#sensitive" => {}})
    ChangePasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ChangePasswordRequest", name: "ChangePasswordRequest")
    ChangePasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ChangePasswordResponse", name: "ChangePasswordResponse")
    ClientIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ClientIdType", name: "ClientIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+]+$", "smithy.api#sensitive" => {}})
    ClientMetadataType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cognitoidentityprovider#ClientMetadataType", name: "ClientMetadataType")
    ClientNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ClientNameType", name: "ClientNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\s+=,.@-]+$"})
    ClientPermissionListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#ClientPermissionListType", name: "ClientPermissionListType")
    ClientPermissionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ClientPermissionType", name: "ClientPermissionType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ClientSecretType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ClientSecretType", name: "ClientSecretType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w+]+$", "smithy.api#sensitive" => {}})
    CloudWatchLogsConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CloudWatchLogsConfigurationType", name: "CloudWatchLogsConfigurationType")
    CodeDeliveryDetailsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#CodeDeliveryDetailsListType", name: "CodeDeliveryDetailsListType")
    CodeDeliveryDetailsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CodeDeliveryDetailsType", name: "CodeDeliveryDetailsType")
    CodeDeliveryFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CodeDeliveryFailureException", name: "CodeDeliveryFailureException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CodeMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CodeMismatchException", name: "CodeMismatchException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ColorSchemeModeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#ColorSchemeModeType", name: "ColorSchemeModeType")
    CompleteWebAuthnRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CompleteWebAuthnRegistrationRequest", name: "CompleteWebAuthnRegistrationRequest")
    CompleteWebAuthnRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CompleteWebAuthnRegistrationResponse", name: "CompleteWebAuthnRegistrationResponse")
    CompletionMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#CompletionMessageType", name: "CompletionMessageType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$"})
    CompromisedCredentialsActionsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CompromisedCredentialsActionsType", name: "CompromisedCredentialsActionsType")
    CompromisedCredentialsEventActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#CompromisedCredentialsEventActionType", name: "CompromisedCredentialsEventActionType")
    CompromisedCredentialsRiskConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CompromisedCredentialsRiskConfigurationType", name: "CompromisedCredentialsRiskConfigurationType")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfiguredUserAuthFactorsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#ConfiguredUserAuthFactorsListType", name: "ConfiguredUserAuthFactorsListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 8}})
    ConfirmDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ConfirmDeviceRequest", name: "ConfirmDeviceRequest")
    ConfirmDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ConfirmDeviceResponse", name: "ConfirmDeviceResponse")
    ConfirmForgotPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ConfirmForgotPasswordRequest", name: "ConfirmForgotPasswordRequest")
    ConfirmForgotPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ConfirmForgotPasswordResponse", name: "ConfirmForgotPasswordResponse")
    ConfirmSignUpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ConfirmSignUpRequest", name: "ConfirmSignUpRequest")
    ConfirmSignUpResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ConfirmSignUpResponse", name: "ConfirmSignUpResponse")
    ConfirmationCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ConfirmationCodeType", name: "ConfirmationCodeType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    ContextDataType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ContextDataType", name: "ContextDataType")
    CreateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateGroupRequest", name: "CreateGroupRequest")
    CreateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateGroupResponse", name: "CreateGroupResponse")
    CreateIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateIdentityProviderRequest", name: "CreateIdentityProviderRequest")
    CreateIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateIdentityProviderResponse", name: "CreateIdentityProviderResponse")
    CreateManagedLoginBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateManagedLoginBrandingRequest", name: "CreateManagedLoginBrandingRequest")
    CreateManagedLoginBrandingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateManagedLoginBrandingResponse", name: "CreateManagedLoginBrandingResponse")
    CreateResourceServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateResourceServerRequest", name: "CreateResourceServerRequest")
    CreateResourceServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateResourceServerResponse", name: "CreateResourceServerResponse")
    CreateTermsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateTermsRequest", name: "CreateTermsRequest")
    CreateTermsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateTermsResponse", name: "CreateTermsResponse")
    CreateUserImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateUserImportJobRequest", name: "CreateUserImportJobRequest")
    CreateUserImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateUserImportJobResponse", name: "CreateUserImportJobResponse")
    CreateUserPoolClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateUserPoolClientRequest", name: "CreateUserPoolClientRequest")
    CreateUserPoolClientResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateUserPoolClientResponse", name: "CreateUserPoolClientResponse")
    CreateUserPoolDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateUserPoolDomainRequest", name: "CreateUserPoolDomainRequest")
    CreateUserPoolDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateUserPoolDomainResponse", name: "CreateUserPoolDomainResponse")
    CreateUserPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateUserPoolRequest", name: "CreateUserPoolRequest")
    CreateUserPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CreateUserPoolResponse", name: "CreateUserPoolResponse")
    CustomAttributeNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#CustomAttributeNameType", name: "CustomAttributeNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    CustomAttributesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#CustomAttributesListType", name: "CustomAttributesListType", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    CustomDomainConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CustomDomainConfigType", name: "CustomDomainConfigType")
    CustomEmailLambdaVersionConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CustomEmailLambdaVersionConfigType", name: "CustomEmailLambdaVersionConfigType")
    CustomEmailSenderLambdaVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#CustomEmailSenderLambdaVersionType", name: "CustomEmailSenderLambdaVersionType")
    CustomSMSLambdaVersionConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#CustomSMSLambdaVersionConfigType", name: "CustomSMSLambdaVersionConfigType")
    CustomSMSSenderLambdaVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#CustomSMSSenderLambdaVersionType", name: "CustomSMSSenderLambdaVersionType")
    DateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cognitoidentityprovider#DateType", name: "DateType")
    DefaultEmailOptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#DefaultEmailOptionType", name: "DefaultEmailOptionType")
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteGroupRequest", name: "DeleteGroupRequest")
    DeleteIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteIdentityProviderRequest", name: "DeleteIdentityProviderRequest")
    DeleteManagedLoginBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteManagedLoginBrandingRequest", name: "DeleteManagedLoginBrandingRequest")
    DeleteResourceServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteResourceServerRequest", name: "DeleteResourceServerRequest")
    DeleteTermsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteTermsRequest", name: "DeleteTermsRequest")
    DeleteUserAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteUserAttributesRequest", name: "DeleteUserAttributesRequest")
    DeleteUserAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteUserAttributesResponse", name: "DeleteUserAttributesResponse")
    DeleteUserPoolClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteUserPoolClientRequest", name: "DeleteUserPoolClientRequest")
    DeleteUserPoolDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteUserPoolDomainRequest", name: "DeleteUserPoolDomainRequest")
    DeleteUserPoolDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteUserPoolDomainResponse", name: "DeleteUserPoolDomainResponse")
    DeleteUserPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteUserPoolRequest", name: "DeleteUserPoolRequest")
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteUserRequest", name: "DeleteUserRequest")
    DeleteWebAuthnCredentialRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteWebAuthnCredentialRequest", name: "DeleteWebAuthnCredentialRequest")
    DeleteWebAuthnCredentialResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeleteWebAuthnCredentialResponse", name: "DeleteWebAuthnCredentialResponse")
    DeletionProtectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#DeletionProtectionType", name: "DeletionProtectionType")
    DeliveryMediumListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#DeliveryMediumListType", name: "DeliveryMediumListType")
    DeliveryMediumType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#DeliveryMediumType", name: "DeliveryMediumType")
    DescribeIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeIdentityProviderRequest", name: "DescribeIdentityProviderRequest")
    DescribeIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeIdentityProviderResponse", name: "DescribeIdentityProviderResponse")
    DescribeManagedLoginBrandingByClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBrandingByClientRequest", name: "DescribeManagedLoginBrandingByClientRequest")
    DescribeManagedLoginBrandingByClientResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBrandingByClientResponse", name: "DescribeManagedLoginBrandingByClientResponse")
    DescribeManagedLoginBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBrandingRequest", name: "DescribeManagedLoginBrandingRequest")
    DescribeManagedLoginBrandingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBrandingResponse", name: "DescribeManagedLoginBrandingResponse")
    DescribeResourceServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeResourceServerRequest", name: "DescribeResourceServerRequest")
    DescribeResourceServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeResourceServerResponse", name: "DescribeResourceServerResponse")
    DescribeRiskConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeRiskConfigurationRequest", name: "DescribeRiskConfigurationRequest")
    DescribeRiskConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeRiskConfigurationResponse", name: "DescribeRiskConfigurationResponse")
    DescribeTermsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeTermsRequest", name: "DescribeTermsRequest")
    DescribeTermsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeTermsResponse", name: "DescribeTermsResponse")
    DescribeUserImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeUserImportJobRequest", name: "DescribeUserImportJobRequest")
    DescribeUserImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeUserImportJobResponse", name: "DescribeUserImportJobResponse")
    DescribeUserPoolClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeUserPoolClientRequest", name: "DescribeUserPoolClientRequest")
    DescribeUserPoolClientResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeUserPoolClientResponse", name: "DescribeUserPoolClientResponse")
    DescribeUserPoolDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeUserPoolDomainRequest", name: "DescribeUserPoolDomainRequest")
    DescribeUserPoolDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeUserPoolDomainResponse", name: "DescribeUserPoolDomainResponse")
    DescribeUserPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeUserPoolRequest", name: "DescribeUserPoolRequest")
    DescribeUserPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DescribeUserPoolResponse", name: "DescribeUserPoolResponse")
    DescriptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#DescriptionType", name: "DescriptionType", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    DeviceConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeviceConfigurationType", name: "DeviceConfigurationType")
    DeviceKeyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeviceKeyExistsException", name: "DeviceKeyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeviceKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#DeviceKeyType", name: "DeviceKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+_[0-9a-f-]+$"})
    DeviceListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#DeviceListType", name: "DeviceListType")
    DeviceNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#DeviceNameType", name: "DeviceNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    DeviceRememberedStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#DeviceRememberedStatusType", name: "DeviceRememberedStatusType")
    DeviceSecretVerifierConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeviceSecretVerifierConfigType", name: "DeviceSecretVerifierConfigType")
    DeviceType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DeviceType", name: "DeviceType")
    Document = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.cognitoidentityprovider#Document", name: "Document")
    DomainDescriptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DomainDescriptionType", name: "DomainDescriptionType")
    DomainStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#DomainStatusType", name: "DomainStatusType")
    DomainType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#DomainType", name: "DomainType", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$"})
    DomainVersionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#DomainVersionType", name: "DomainVersionType", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    DuplicateProviderException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#DuplicateProviderException", name: "DuplicateProviderException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EmailAddressType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailAddressType", name: "EmailAddressType", traits: {"smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+@[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    EmailConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailConfigurationType", name: "EmailConfigurationType")
    EmailInviteMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailInviteMessageType", name: "EmailInviteMessageType", traits: {"smithy.api#length" => {"min" => 6, "max" => 20000}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*$"})
    EmailMfaConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailMfaConfigType", name: "EmailMfaConfigType")
    EmailMfaMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailMfaMessageType", name: "EmailMfaMessageType", traits: {"smithy.api#length" => {"min" => 6, "max" => 20000}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*$"})
    EmailMfaSettingsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailMfaSettingsType", name: "EmailMfaSettingsType")
    EmailMfaSubjectType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailMfaSubjectType", name: "EmailMfaSubjectType", traits: {"smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+$"})
    EmailNotificationBodyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailNotificationBodyType", name: "EmailNotificationBodyType", traits: {"smithy.api#length" => {"min" => 6, "max" => 20000}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+$"})
    EmailNotificationSubjectType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailNotificationSubjectType", name: "EmailNotificationSubjectType", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+$"})
    EmailSendingAccountType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailSendingAccountType", name: "EmailSendingAccountType")
    EmailVerificationMessageByLinkType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailVerificationMessageByLinkType", name: "EmailVerificationMessageByLinkType", traits: {"smithy.api#length" => {"min" => 6, "max" => 20000}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{##[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*##\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*$"})
    EmailVerificationMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailVerificationMessageType", name: "EmailVerificationMessageType", traits: {"smithy.api#length" => {"min" => 6, "max" => 20000}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*$"})
    EmailVerificationSubjectByLinkType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailVerificationSubjectByLinkType", name: "EmailVerificationSubjectByLinkType", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+$"})
    EmailVerificationSubjectType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EmailVerificationSubjectType", name: "EmailVerificationSubjectType", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+$"})
    EnableSoftwareTokenMFAException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#EnableSoftwareTokenMFAException", name: "EnableSoftwareTokenMFAException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventContextDataType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#EventContextDataType", name: "EventContextDataType")
    EventFeedbackType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#EventFeedbackType", name: "EventFeedbackType")
    EventFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#EventFilterType", name: "EventFilterType")
    EventFiltersType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#EventFiltersType", name: "EventFiltersType")
    EventIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#EventIdType", name: "EventIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[\\w+-]+$"})
    EventResponseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#EventResponseType", name: "EventResponseType")
    EventRiskType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#EventRiskType", name: "EventRiskType")
    EventSourceName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#EventSourceName", name: "EventSourceName")
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#EventType", name: "EventType")
    ExpiredCodeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ExpiredCodeException", name: "ExpiredCodeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ExplicitAuthFlowsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#ExplicitAuthFlowsListType", name: "ExplicitAuthFlowsListType")
    ExplicitAuthFlowsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#ExplicitAuthFlowsType", name: "ExplicitAuthFlowsType")
    FeatureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#FeatureType", name: "FeatureType")
    FeatureUnavailableInTierException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#FeatureUnavailableInTierException", name: "FeatureUnavailableInTierException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FeedbackValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#FeedbackValueType", name: "FeedbackValueType")
    FirehoseConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#FirehoseConfigurationType", name: "FirehoseConfigurationType")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ForceAliasCreation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cognitoidentityprovider#ForceAliasCreation", name: "ForceAliasCreation", traits: {"smithy.api#default" => false})
    ForgetDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ForgetDeviceRequest", name: "ForgetDeviceRequest")
    ForgotPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ForgotPasswordRequest", name: "ForgotPasswordRequest")
    ForgotPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ForgotPasswordResponse", name: "ForgotPasswordResponse")
    GenerateSecret = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cognitoidentityprovider#GenerateSecret", name: "GenerateSecret", traits: {"smithy.api#default" => false})
    GetCSVHeaderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetCSVHeaderRequest", name: "GetCSVHeaderRequest")
    GetCSVHeaderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetCSVHeaderResponse", name: "GetCSVHeaderResponse")
    GetDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetDeviceRequest", name: "GetDeviceRequest")
    GetDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetDeviceResponse", name: "GetDeviceResponse")
    GetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetGroupRequest", name: "GetGroupRequest")
    GetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetGroupResponse", name: "GetGroupResponse")
    GetIdentityProviderByIdentifierRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetIdentityProviderByIdentifierRequest", name: "GetIdentityProviderByIdentifierRequest")
    GetIdentityProviderByIdentifierResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetIdentityProviderByIdentifierResponse", name: "GetIdentityProviderByIdentifierResponse")
    GetLogDeliveryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetLogDeliveryConfigurationRequest", name: "GetLogDeliveryConfigurationRequest")
    GetLogDeliveryConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetLogDeliveryConfigurationResponse", name: "GetLogDeliveryConfigurationResponse")
    GetSigningCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetSigningCertificateRequest", name: "GetSigningCertificateRequest")
    GetSigningCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetSigningCertificateResponse", name: "GetSigningCertificateResponse")
    GetTokensFromRefreshTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetTokensFromRefreshTokenRequest", name: "GetTokensFromRefreshTokenRequest")
    GetTokensFromRefreshTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetTokensFromRefreshTokenResponse", name: "GetTokensFromRefreshTokenResponse")
    GetUICustomizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetUICustomizationRequest", name: "GetUICustomizationRequest")
    GetUICustomizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetUICustomizationResponse", name: "GetUICustomizationResponse")
    GetUserAttributeVerificationCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetUserAttributeVerificationCodeRequest", name: "GetUserAttributeVerificationCodeRequest")
    GetUserAttributeVerificationCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetUserAttributeVerificationCodeResponse", name: "GetUserAttributeVerificationCodeResponse")
    GetUserAuthFactorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetUserAuthFactorsRequest", name: "GetUserAuthFactorsRequest")
    GetUserAuthFactorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetUserAuthFactorsResponse", name: "GetUserAuthFactorsResponse")
    GetUserPoolMfaConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetUserPoolMfaConfigRequest", name: "GetUserPoolMfaConfigRequest")
    GetUserPoolMfaConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetUserPoolMfaConfigResponse", name: "GetUserPoolMfaConfigResponse")
    GetUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetUserRequest", name: "GetUserRequest")
    GetUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GetUserResponse", name: "GetUserResponse")
    GlobalSignOutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GlobalSignOutRequest", name: "GlobalSignOutRequest")
    GlobalSignOutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GlobalSignOutResponse", name: "GlobalSignOutResponse")
    GroupExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GroupExistsException", name: "GroupExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GroupListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#GroupListType", name: "GroupListType")
    GroupNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#GroupNameType", name: "GroupNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    GroupType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#GroupType", name: "GroupType")
    HexStringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#HexStringType", name: "HexStringType", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]+$"})
    HttpHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#HttpHeader", name: "HttpHeader")
    HttpHeaderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#HttpHeaderList", name: "HttpHeaderList")
    IdTokenValidityType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#IdTokenValidityType", name: "IdTokenValidityType", traits: {"smithy.api#range" => {"min" => 1, "max" => 86400}})
    IdentityProviderType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#IdentityProviderType", name: "IdentityProviderType")
    IdentityProviderTypeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#IdentityProviderTypeType", name: "IdentityProviderTypeType")
    IdpIdentifierType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#IdpIdentifierType", name: "IdpIdentifierType", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[\\w\\s+=.@-]+$"})
    IdpIdentifiersListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#IdpIdentifiersListType", name: "IdpIdentifiersListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ImageFileType = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.cognitoidentityprovider#ImageFileType", name: "ImageFileType", traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}})
    ImageUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ImageUrlType", name: "ImageUrlType")
    InitiateAuthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InitiateAuthRequest", name: "InitiateAuthRequest")
    InitiateAuthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InitiateAuthResponse", name: "InitiateAuthResponse")
    IntegerType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#IntegerType", name: "IntegerType", traits: {"smithy.api#default" => 0})
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InternalErrorException", name: "InternalErrorException", traits: {"smithy.api#error" => "server"})
    InvalidEmailRoleAccessPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InvalidEmailRoleAccessPolicyException", name: "InvalidEmailRoleAccessPolicyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLambdaResponseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InvalidLambdaResponseException", name: "InvalidLambdaResponseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOAuthFlowException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InvalidOAuthFlowException", name: "InvalidOAuthFlowException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterExceptionReasonCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#InvalidParameterExceptionReasonCodeType", name: "InvalidParameterExceptionReasonCodeType")
    InvalidPasswordException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InvalidPasswordException", name: "InvalidPasswordException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSmsRoleAccessPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InvalidSmsRoleAccessPolicyException", name: "InvalidSmsRoleAccessPolicyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSmsRoleTrustRelationshipException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InvalidSmsRoleTrustRelationshipException", name: "InvalidSmsRoleTrustRelationshipException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUserPoolConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#InvalidUserPoolConfigurationException", name: "InvalidUserPoolConfigurationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LambdaConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#LambdaConfigType", name: "LambdaConfigType")
    LanguageIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#LanguageIdType", name: "LanguageIdType", traits: {"smithy.api#pattern" => "^cognito:(default|english|french|spanish|german|bahasa-indonesia|italian|japanese|korean|portuguese-brazil|chinese-(simplified|traditional))$"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LinkUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#LinkUrlType", name: "LinkUrlType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    LinksType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cognitoidentityprovider#LinksType", name: "LinksType", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}})
    ListDevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListDevicesRequest", name: "ListDevicesRequest")
    ListDevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListDevicesResponse", name: "ListDevicesResponse")
    ListGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListGroupsRequest", name: "ListGroupsRequest")
    ListGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListGroupsResponse", name: "ListGroupsResponse")
    ListIdentityProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListIdentityProvidersRequest", name: "ListIdentityProvidersRequest")
    ListIdentityProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListIdentityProvidersResponse", name: "ListIdentityProvidersResponse")
    ListOfStringTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#ListOfStringTypes", name: "ListOfStringTypes")
    ListProvidersLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#ListProvidersLimitType", name: "ListProvidersLimitType", traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    ListResourceServersLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#ListResourceServersLimitType", name: "ListResourceServersLimitType", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListResourceServersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListResourceServersRequest", name: "ListResourceServersRequest")
    ListResourceServersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListResourceServersResponse", name: "ListResourceServersResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTermsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListTermsRequest", name: "ListTermsRequest")
    ListTermsRequestMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#ListTermsRequestMaxResultsInteger", name: "ListTermsRequestMaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    ListTermsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListTermsResponse", name: "ListTermsResponse")
    ListUserImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListUserImportJobsRequest", name: "ListUserImportJobsRequest")
    ListUserImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListUserImportJobsResponse", name: "ListUserImportJobsResponse")
    ListUserPoolClientsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListUserPoolClientsRequest", name: "ListUserPoolClientsRequest")
    ListUserPoolClientsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListUserPoolClientsResponse", name: "ListUserPoolClientsResponse")
    ListUserPoolsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListUserPoolsRequest", name: "ListUserPoolsRequest")
    ListUserPoolsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListUserPoolsResponse", name: "ListUserPoolsResponse")
    ListUsersInGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListUsersInGroupRequest", name: "ListUsersInGroupRequest")
    ListUsersInGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListUsersInGroupResponse", name: "ListUsersInGroupResponse")
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListUsersRequest", name: "ListUsersRequest")
    ListUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListUsersResponse", name: "ListUsersResponse")
    ListWebAuthnCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListWebAuthnCredentialsRequest", name: "ListWebAuthnCredentialsRequest")
    ListWebAuthnCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ListWebAuthnCredentialsResponse", name: "ListWebAuthnCredentialsResponse")
    LogConfigurationListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#LogConfigurationListType", name: "LogConfigurationListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    LogConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#LogConfigurationType", name: "LogConfigurationType")
    LogDeliveryConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#LogDeliveryConfigurationType", name: "LogDeliveryConfigurationType")
    LogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#LogLevel", name: "LogLevel")
    LogoutURLsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#LogoutURLsListType", name: "LogoutURLsListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    LongType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#LongType", name: "LongType", traits: {"smithy.api#default" => 0})
    MFAMethodNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#MFAMethodNotFoundException", name: "MFAMethodNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MFAOptionListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#MFAOptionListType", name: "MFAOptionListType")
    MFAOptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#MFAOptionType", name: "MFAOptionType")
    ManagedLoginBrandingExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ManagedLoginBrandingExistsException", name: "ManagedLoginBrandingExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ManagedLoginBrandingIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ManagedLoginBrandingIdType", name: "ManagedLoginBrandingIdType", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[4][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    ManagedLoginBrandingType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ManagedLoginBrandingType", name: "ManagedLoginBrandingType")
    MessageActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#MessageActionType", name: "MessageActionType")
    MessageTemplateType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#MessageTemplateType", name: "MessageTemplateType")
    MessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#MessageType", name: "MessageType")
    NewDeviceMetadataType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#NewDeviceMetadataType", name: "NewDeviceMetadataType")
    NotAuthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#NotAuthorizedException", name: "NotAuthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    NotifyConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#NotifyConfigurationType", name: "NotifyConfigurationType")
    NotifyEmailType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#NotifyEmailType", name: "NotifyEmailType")
    NumberAttributeConstraintsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#NumberAttributeConstraintsType", name: "NumberAttributeConstraintsType")
    OAuthFlowType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#OAuthFlowType", name: "OAuthFlowType")
    OAuthFlowsType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#OAuthFlowsType", name: "OAuthFlowsType", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    PaginationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#PaginationKey", name: "PaginationKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#pattern" => "^[\\S]+$"})
    PaginationKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#PaginationKeyType", name: "PaginationKeyType", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\S]+$"})
    PasswordHistoryPolicyViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#PasswordHistoryPolicyViolationException", name: "PasswordHistoryPolicyViolationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PasswordHistorySizeType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#PasswordHistorySizeType", name: "PasswordHistorySizeType", traits: {"smithy.api#range" => {"min" => 0, "max" => 24}})
    PasswordPolicyMinLengthType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#PasswordPolicyMinLengthType", name: "PasswordPolicyMinLengthType", traits: {"smithy.api#range" => {"min" => 6, "max" => 99}})
    PasswordPolicyType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#PasswordPolicyType", name: "PasswordPolicyType")
    PasswordResetRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#PasswordResetRequiredException", name: "PasswordResetRequiredException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PasswordType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#PasswordType", name: "PasswordType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$", "smithy.api#sensitive" => {}})
    PoolQueryLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#PoolQueryLimitType", name: "PoolQueryLimitType", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    PreSignedUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#PreSignedUrlType", name: "PreSignedUrlType", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    PreTokenGenerationLambdaVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#PreTokenGenerationLambdaVersionType", name: "PreTokenGenerationLambdaVersionType")
    PreTokenGenerationVersionConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#PreTokenGenerationVersionConfigType", name: "PreTokenGenerationVersionConfigType")
    PrecedenceType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#PrecedenceType", name: "PrecedenceType", traits: {"smithy.api#range" => {"min" => 0}})
    PreconditionNotMetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#PreconditionNotMetException", name: "PreconditionNotMetException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PreventUserExistenceErrorTypes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#PreventUserExistenceErrorTypes", name: "PreventUserExistenceErrorTypes")
    PriorityType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#PriorityType", name: "PriorityType", traits: {"smithy.api#range" => {"min" => 1, "max" => 2}})
    ProviderDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ProviderDescription", name: "ProviderDescription")
    ProviderDetailsType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cognitoidentityprovider#ProviderDetailsType", name: "ProviderDetailsType")
    ProviderNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ProviderNameType", name: "ProviderNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\p{Z}]+$"})
    ProviderNameTypeV2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ProviderNameTypeV2", name: "ProviderNameTypeV2", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[^_\\p{Z}][\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}][^_\\p{Z}]+$"})
    ProviderUserIdentifierType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ProviderUserIdentifierType", name: "ProviderUserIdentifierType")
    ProvidersListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#ProvidersListType", name: "ProvidersListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    QueryLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#QueryLimit", name: "QueryLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    QueryLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#QueryLimitType", name: "QueryLimitType", traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    RecoveryMechanismsType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#RecoveryMechanismsType", name: "RecoveryMechanismsType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    RecoveryOptionNameType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#RecoveryOptionNameType", name: "RecoveryOptionNameType")
    RecoveryOptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#RecoveryOptionType", name: "RecoveryOptionType")
    RedirectUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#RedirectUrlType", name: "RedirectUrlType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$"})
    RefreshTokenReuseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#RefreshTokenReuseException", name: "RefreshTokenReuseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RefreshTokenRotationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#RefreshTokenRotationType", name: "RefreshTokenRotationType")
    RefreshTokenValidityType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#RefreshTokenValidityType", name: "RefreshTokenValidityType", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 315360000}})
    RegionCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#RegionCodeType", name: "RegionCodeType", traits: {"smithy.api#length" => {"min" => 5, "max" => 32}})
    RelyingPartyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#RelyingPartyIdType", name: "RelyingPartyIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}})
    ResendConfirmationCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ResendConfirmationCodeRequest", name: "ResendConfirmationCodeRequest")
    ResendConfirmationCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ResendConfirmationCodeResponse", name: "ResendConfirmationCodeResponse")
    ResourceIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ResourceIdType", name: "ResourceIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[\\w\\- ]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceServerIdentifierType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ResourceServerIdentifierType", name: "ResourceServerIdentifierType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\x21\\x23-\\x5B\\x5D-\\x7E]+$"})
    ResourceServerNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ResourceServerNameType", name: "ResourceServerNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w\\s+=,.@-]+$"})
    ResourceServerScopeDescriptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ResourceServerScopeDescriptionType", name: "ResourceServerScopeDescriptionType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceServerScopeListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#ResourceServerScopeListType", name: "ResourceServerScopeListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResourceServerScopeNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ResourceServerScopeNameType", name: "ResourceServerScopeNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\x21\\x23-\\x2E\\x30-\\x5B\\x5D-\\x7E]+$"})
    ResourceServerScopeType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ResourceServerScopeType", name: "ResourceServerScopeType")
    ResourceServerType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ResourceServerType", name: "ResourceServerType")
    ResourceServersListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#ResourceServersListType", name: "ResourceServersListType")
    RespondToAuthChallengeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#RespondToAuthChallengeRequest", name: "RespondToAuthChallengeRequest")
    RespondToAuthChallengeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#RespondToAuthChallengeResponse", name: "RespondToAuthChallengeResponse")
    RetryGracePeriodSecondsType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#RetryGracePeriodSecondsType", name: "RetryGracePeriodSecondsType", traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    RevokeTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#RevokeTokenRequest", name: "RevokeTokenRequest")
    RevokeTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#RevokeTokenResponse", name: "RevokeTokenResponse")
    RiskConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#RiskConfigurationType", name: "RiskConfigurationType")
    RiskDecisionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#RiskDecisionType", name: "RiskDecisionType")
    RiskExceptionConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#RiskExceptionConfigurationType", name: "RiskExceptionConfigurationType")
    RiskLevelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#RiskLevelType", name: "RiskLevelType")
    S3ArnType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#S3ArnType", name: "S3ArnType", traits: {"smithy.api#length" => {"min" => 3, "max" => 1024}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:::[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?$"})
    S3BucketType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#S3BucketType", name: "S3BucketType", traits: {"smithy.api#length" => {"min" => 3, "max" => 1024}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$"})
    S3ConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#S3ConfigurationType", name: "S3ConfigurationType")
    SESConfigurationSet = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#SESConfigurationSet", name: "SESConfigurationSet", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    SMSMfaSettingsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SMSMfaSettingsType", name: "SMSMfaSettingsType")
    SchemaAttributeType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SchemaAttributeType", name: "SchemaAttributeType")
    SchemaAttributesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#SchemaAttributesListType", name: "SchemaAttributesListType", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ScopeDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#ScopeDoesNotExistException", name: "ScopeDoesNotExistException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScopeListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#ScopeListType", name: "ScopeListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ScopeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#ScopeType", name: "ScopeType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\x21\\x23-\\x5B\\x5D-\\x7E]+$"})
    SearchPaginationTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#SearchPaginationTokenType", name: "SearchPaginationTokenType", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\S]+$"})
    SearchedAttributeNamesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#SearchedAttributeNamesListType", name: "SearchedAttributeNamesListType")
    SecretCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#SecretCodeType", name: "SecretCodeType", traits: {"smithy.api#length" => {"min" => 16}, "smithy.api#pattern" => "^[A-Za-z0-9]+$", "smithy.api#sensitive" => {}})
    SecretHashType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#SecretHashType", name: "SecretHashType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=/]+$", "smithy.api#sensitive" => {}})
    SessionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#SessionType", name: "SessionType", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#sensitive" => {}})
    SetLogDeliveryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetLogDeliveryConfigurationRequest", name: "SetLogDeliveryConfigurationRequest")
    SetLogDeliveryConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetLogDeliveryConfigurationResponse", name: "SetLogDeliveryConfigurationResponse")
    SetRiskConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetRiskConfigurationRequest", name: "SetRiskConfigurationRequest")
    SetRiskConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetRiskConfigurationResponse", name: "SetRiskConfigurationResponse")
    SetUICustomizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetUICustomizationRequest", name: "SetUICustomizationRequest")
    SetUICustomizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetUICustomizationResponse", name: "SetUICustomizationResponse")
    SetUserMFAPreferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetUserMFAPreferenceRequest", name: "SetUserMFAPreferenceRequest")
    SetUserMFAPreferenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetUserMFAPreferenceResponse", name: "SetUserMFAPreferenceResponse")
    SetUserPoolMfaConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetUserPoolMfaConfigRequest", name: "SetUserPoolMfaConfigRequest")
    SetUserPoolMfaConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetUserPoolMfaConfigResponse", name: "SetUserPoolMfaConfigResponse")
    SetUserSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetUserSettingsRequest", name: "SetUserSettingsRequest")
    SetUserSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SetUserSettingsResponse", name: "SetUserSettingsResponse")
    SignInPolicyType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SignInPolicyType", name: "SignInPolicyType")
    SignUpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SignUpRequest", name: "SignUpRequest")
    SignUpResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SignUpResponse", name: "SignUpResponse")
    SkippedIPRangeListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#SkippedIPRangeListType", name: "SkippedIPRangeListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    SmsConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SmsConfigurationType", name: "SmsConfigurationType")
    SmsInviteMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#SmsInviteMessageType", name: "SmsInviteMessageType", traits: {"smithy.api#length" => {"min" => 6, "max" => 140}, "smithy.api#pattern" => "^(?s)"})
    SmsMfaConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SmsMfaConfigType", name: "SmsMfaConfigType")
    SmsVerificationMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#SmsVerificationMessageType", name: "SmsVerificationMessageType", traits: {"smithy.api#length" => {"min" => 6, "max" => 140}, "smithy.api#pattern" => "\\{####\\}"})
    SoftwareTokenMFANotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SoftwareTokenMFANotFoundException", name: "SoftwareTokenMFANotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SoftwareTokenMFAUserCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#SoftwareTokenMFAUserCodeType", name: "SoftwareTokenMFAUserCodeType", traits: {"smithy.api#length" => {"min" => 6, "max" => 6}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    SoftwareTokenMfaConfigType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SoftwareTokenMfaConfigType", name: "SoftwareTokenMfaConfigType")
    SoftwareTokenMfaSettingsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#SoftwareTokenMfaSettingsType", name: "SoftwareTokenMfaSettingsType")
    StartUserImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#StartUserImportJobRequest", name: "StartUserImportJobRequest")
    StartUserImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#StartUserImportJobResponse", name: "StartUserImportJobResponse")
    StartWebAuthnRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#StartWebAuthnRegistrationRequest", name: "StartWebAuthnRegistrationRequest")
    StartWebAuthnRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#StartWebAuthnRegistrationResponse", name: "StartWebAuthnRegistrationResponse")
    StatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#StatusType", name: "StatusType")
    StopUserImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#StopUserImportJobRequest", name: "StopUserImportJobRequest")
    StopUserImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#StopUserImportJobResponse", name: "StopUserImportJobResponse")
    StringAttributeConstraintsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#StringAttributeConstraintsType", name: "StringAttributeConstraintsType")
    StringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#StringType", name: "StringType", traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}})
    SupportedIdentityProvidersListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#SupportedIdentityProvidersListType", name: "SupportedIdentityProvidersListType")
    TagKeysType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#TagKeysType", name: "TagKeysType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#TagResourceResponse", name: "TagResourceResponse")
    TagValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#TagValueType", name: "TagValueType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemporaryPasswordValidityDaysType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#TemporaryPasswordValidityDaysType", name: "TemporaryPasswordValidityDaysType", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 365}})
    TermsDescriptionListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#TermsDescriptionListType", name: "TermsDescriptionListType")
    TermsDescriptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#TermsDescriptionType", name: "TermsDescriptionType")
    TermsEnforcementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#TermsEnforcementType", name: "TermsEnforcementType")
    TermsExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#TermsExistsException", name: "TermsExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TermsIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#TermsIdType", name: "TermsIdType", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[4][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    TermsNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#TermsNameType", name: "TermsNameType", traits: {"smithy.api#pattern" => "^(terms-of-use|privacy-policy)$"})
    TermsSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#TermsSourceType", name: "TermsSourceType")
    TermsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#TermsType", name: "TermsType")
    TierChangeNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#TierChangeNotAllowedException", name: "TierChangeNotAllowedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    TimeUnitsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#TimeUnitsType", name: "TimeUnitsType")
    TokenModelType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#TokenModelType", name: "TokenModelType", traits: {"smithy.api#pattern" => "^[A-Za-z0-9-_=.]+$", "smithy.api#sensitive" => {}})
    TokenValidityUnitsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#TokenValidityUnitsType", name: "TokenValidityUnitsType")
    TooManyFailedAttemptsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#TooManyFailedAttemptsException", name: "TooManyFailedAttemptsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UICustomizationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UICustomizationType", name: "UICustomizationType")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnexpectedLambdaException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UnexpectedLambdaException", name: "UnexpectedLambdaException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedIdentityProviderException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UnsupportedIdentityProviderException", name: "UnsupportedIdentityProviderException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedTokenTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UnsupportedTokenTypeException", name: "UnsupportedTokenTypeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedUserStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UnsupportedUserStateException", name: "UnsupportedUserStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAuthEventFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateAuthEventFeedbackRequest", name: "UpdateAuthEventFeedbackRequest")
    UpdateAuthEventFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateAuthEventFeedbackResponse", name: "UpdateAuthEventFeedbackResponse")
    UpdateDeviceStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateDeviceStatusRequest", name: "UpdateDeviceStatusRequest")
    UpdateDeviceStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateDeviceStatusResponse", name: "UpdateDeviceStatusResponse")
    UpdateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateGroupRequest", name: "UpdateGroupRequest")
    UpdateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateGroupResponse", name: "UpdateGroupResponse")
    UpdateIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateIdentityProviderRequest", name: "UpdateIdentityProviderRequest")
    UpdateIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateIdentityProviderResponse", name: "UpdateIdentityProviderResponse")
    UpdateManagedLoginBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateManagedLoginBrandingRequest", name: "UpdateManagedLoginBrandingRequest")
    UpdateManagedLoginBrandingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateManagedLoginBrandingResponse", name: "UpdateManagedLoginBrandingResponse")
    UpdateResourceServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateResourceServerRequest", name: "UpdateResourceServerRequest")
    UpdateResourceServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateResourceServerResponse", name: "UpdateResourceServerResponse")
    UpdateTermsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateTermsRequest", name: "UpdateTermsRequest")
    UpdateTermsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateTermsResponse", name: "UpdateTermsResponse")
    UpdateUserAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateUserAttributesRequest", name: "UpdateUserAttributesRequest")
    UpdateUserAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateUserAttributesResponse", name: "UpdateUserAttributesResponse")
    UpdateUserPoolClientRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateUserPoolClientRequest", name: "UpdateUserPoolClientRequest")
    UpdateUserPoolClientResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateUserPoolClientResponse", name: "UpdateUserPoolClientResponse")
    UpdateUserPoolDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateUserPoolDomainRequest", name: "UpdateUserPoolDomainRequest")
    UpdateUserPoolDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateUserPoolDomainResponse", name: "UpdateUserPoolDomainResponse")
    UpdateUserPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateUserPoolRequest", name: "UpdateUserPoolRequest")
    UpdateUserPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UpdateUserPoolResponse", name: "UpdateUserPoolResponse")
    UserAttributeUpdateSettingsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserAttributeUpdateSettingsType", name: "UserAttributeUpdateSettingsType")
    UserContextDataType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserContextDataType", name: "UserContextDataType", traits: {"smithy.api#sensitive" => {}})
    UserFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#UserFilterType", name: "UserFilterType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    UserImportInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserImportInProgressException", name: "UserImportInProgressException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserImportJobIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#UserImportJobIdType", name: "UserImportJobIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^import-[0-9a-zA-Z-]+$"})
    UserImportJobNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#UserImportJobNameType", name: "UserImportJobNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\s+=,.@-]+$"})
    UserImportJobStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#UserImportJobStatusType", name: "UserImportJobStatusType")
    UserImportJobType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserImportJobType", name: "UserImportJobType")
    UserImportJobsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#UserImportJobsListType", name: "UserImportJobsListType", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    UserLambdaValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserLambdaValidationException", name: "UserLambdaValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserMFASettingListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#UserMFASettingListType", name: "UserMFASettingListType")
    UserNotConfirmedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserNotConfirmedException", name: "UserNotConfirmedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserNotFoundException", name: "UserNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UserPoolAddOnNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolAddOnNotEnabledException", name: "UserPoolAddOnNotEnabledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserPoolAddOnsType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolAddOnsType", name: "UserPoolAddOnsType")
    UserPoolClientDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolClientDescription", name: "UserPoolClientDescription")
    UserPoolClientListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolClientListType", name: "UserPoolClientListType")
    UserPoolClientType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolClientType", name: "UserPoolClientType")
    UserPoolDescriptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolDescriptionType", name: "UserPoolDescriptionType")
    UserPoolIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolIdType", name: "UserPoolIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 55}, "smithy.api#pattern" => "^[\\w-]+_[0-9a-zA-Z]+$"})
    UserPoolListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolListType", name: "UserPoolListType")
    UserPoolMfaType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolMfaType", name: "UserPoolMfaType")
    UserPoolNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolNameType", name: "UserPoolNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\s+=,.@-]+$"})
    UserPoolPolicyType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolPolicyType", name: "UserPoolPolicyType")
    UserPoolTaggingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolTaggingException", name: "UserPoolTaggingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserPoolTagsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolTagsListType", name: "UserPoolTagsListType")
    UserPoolTagsType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolTagsType", name: "UserPoolTagsType")
    UserPoolTierType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolTierType", name: "UserPoolTierType")
    UserPoolType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserPoolType", name: "UserPoolType")
    UserStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#UserStatusType", name: "UserStatusType")
    UserType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UserType", name: "UserType")
    UserVerificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#UserVerificationType", name: "UserVerificationType")
    UsernameAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#UsernameAttributeType", name: "UsernameAttributeType")
    UsernameAttributesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#UsernameAttributesListType", name: "UsernameAttributesListType")
    UsernameConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UsernameConfigurationType", name: "UsernameConfigurationType")
    UsernameExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#UsernameExistsException", name: "UsernameExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UsernameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#UsernameType", name: "UsernameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$", "smithy.api#sensitive" => {}})
    UsersListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#UsersListType", name: "UsersListType")
    VerificationMessageTemplateType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#VerificationMessageTemplateType", name: "VerificationMessageTemplateType")
    VerifiedAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#VerifiedAttributeType", name: "VerifiedAttributeType")
    VerifiedAttributesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#VerifiedAttributesListType", name: "VerifiedAttributesListType")
    VerifySoftwareTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#VerifySoftwareTokenRequest", name: "VerifySoftwareTokenRequest")
    VerifySoftwareTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#VerifySoftwareTokenResponse", name: "VerifySoftwareTokenResponse")
    VerifySoftwareTokenResponseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cognitoidentityprovider#VerifySoftwareTokenResponseType", name: "VerifySoftwareTokenResponseType")
    VerifyUserAttributeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#VerifyUserAttributeRequest", name: "VerifyUserAttributeRequest")
    VerifyUserAttributeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#VerifyUserAttributeResponse", name: "VerifyUserAttributeResponse")
    WebAuthnAuthenticatorAttachmentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnAuthenticatorAttachmentType", name: "WebAuthnAuthenticatorAttachmentType")
    WebAuthnAuthenticatorTransportType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnAuthenticatorTransportType", name: "WebAuthnAuthenticatorTransportType")
    WebAuthnAuthenticatorTransportsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnAuthenticatorTransportsList", name: "WebAuthnAuthenticatorTransportsList")
    WebAuthnChallengeNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnChallengeNotFoundException", name: "WebAuthnChallengeNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnClientMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnClientMismatchException", name: "WebAuthnClientMismatchException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnConfigurationMissingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnConfigurationMissingException", name: "WebAuthnConfigurationMissingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnConfigurationType", name: "WebAuthnConfigurationType")
    WebAuthnCredentialDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnCredentialDescription", name: "WebAuthnCredentialDescription")
    WebAuthnCredentialDescriptionListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnCredentialDescriptionListType", name: "WebAuthnCredentialDescriptionListType")
    WebAuthnCredentialNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnCredentialNotSupportedException", name: "WebAuthnCredentialNotSupportedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnCredentialsQueryLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnCredentialsQueryLimitType", name: "WebAuthnCredentialsQueryLimitType", traits: {"smithy.api#range" => {"min" => 0, "max" => 20}})
    WebAuthnNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnNotEnabledException", name: "WebAuthnNotEnabledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnOriginNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnOriginNotAllowedException", name: "WebAuthnOriginNotAllowedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAuthnRelyingPartyMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cognitoidentityprovider#WebAuthnRelyingPartyMismatchException", name: "WebAuthnRelyingPartyMismatchException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WrappedBooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cognitoidentityprovider#WrappedBooleanType", name: "WrappedBooleanType")
    WrappedIntegerType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cognitoidentityprovider#WrappedIntegerType", name: "WrappedIntegerType")

    AccountRecoverySettingType.add_member(:recovery_mechanisms, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryMechanismsType, name: "RecoveryMechanisms"))
    AccountRecoverySettingType.type = Types::AccountRecoverySettingType
    AccountTakeoverActionType.add_member(:notify, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTakeoverActionNotifyType, name: "Notify", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    AccountTakeoverActionType.add_member(:event_action, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTakeoverEventActionType, name: "EventAction", traits: {"smithy.api#required" => {}}))
    AccountTakeoverActionType.type = Types::AccountTakeoverActionType
    AccountTakeoverActionsType.add_member(:low_action, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTakeoverActionType, name: "LowAction"))
    AccountTakeoverActionsType.add_member(:medium_action, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTakeoverActionType, name: "MediumAction"))
    AccountTakeoverActionsType.add_member(:high_action, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTakeoverActionType, name: "HighAction"))
    AccountTakeoverActionsType.type = Types::AccountTakeoverActionsType
    AccountTakeoverEventActionType.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    AccountTakeoverEventActionType.add_member(:mfa_if_configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MFA_IF_CONFIGURED", traits: {"smithy.api#enumValue" => "MFA_IF_CONFIGURED"}))
    AccountTakeoverEventActionType.add_member(:mfa_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MFA_REQUIRED", traits: {"smithy.api#enumValue" => "MFA_REQUIRED"}))
    AccountTakeoverEventActionType.add_member(:no_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_ACTION", traits: {"smithy.api#enumValue" => "NO_ACTION"}))
    AccountTakeoverRiskConfigurationType.add_member(:notify_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationType, name: "NotifyConfiguration"))
    AccountTakeoverRiskConfigurationType.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTakeoverActionsType, name: "Actions", traits: {"smithy.api#required" => {}}))
    AccountTakeoverRiskConfigurationType.type = Types::AccountTakeoverRiskConfigurationType
    AddCustomAttributesRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AddCustomAttributesRequest.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributesListType, name: "CustomAttributes", traits: {"smithy.api#required" => {}}))
    AddCustomAttributesRequest.type = Types::AddCustomAttributesRequest
    AddCustomAttributesResponse.type = Types::AddCustomAttributesResponse
    AdminAddUserToGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminAddUserToGroupRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminAddUserToGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    AdminAddUserToGroupRequest.type = Types::AdminAddUserToGroupRequest
    AdminConfirmSignUpRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminConfirmSignUpRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminConfirmSignUpRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    AdminConfirmSignUpRequest.type = Types::AdminConfirmSignUpRequest
    AdminConfirmSignUpResponse.type = Types::AdminConfirmSignUpResponse
    AdminCreateUserConfigType.add_member(:allow_admin_create_user_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "AllowAdminCreateUserOnly", traits: {"smithy.api#default" => false}))
    AdminCreateUserConfigType.add_member(:unused_account_validity_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminCreateUserUnusedAccountValidityDaysType, name: "UnusedAccountValidityDays", traits: {"smithy.api#default" => 0}))
    AdminCreateUserConfigType.add_member(:invite_message_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTemplateType, name: "InviteMessageTemplate"))
    AdminCreateUserConfigType.type = Types::AdminCreateUserConfigType
    AdminCreateUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminCreateUserRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminCreateUserRequest.add_member(:user_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeListType, name: "UserAttributes"))
    AdminCreateUserRequest.add_member(:validation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeListType, name: "ValidationData"))
    AdminCreateUserRequest.add_member(:temporary_password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "TemporaryPassword"))
    AdminCreateUserRequest.add_member(:force_alias_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceAliasCreation, name: "ForceAliasCreation", traits: {"smithy.api#default" => false}))
    AdminCreateUserRequest.add_member(:message_action, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageActionType, name: "MessageAction"))
    AdminCreateUserRequest.add_member(:desired_delivery_mediums, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryMediumListType, name: "DesiredDeliveryMediums"))
    AdminCreateUserRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    AdminCreateUserRequest.type = Types::AdminCreateUserRequest
    AdminCreateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "User"))
    AdminCreateUserResponse.type = Types::AdminCreateUserResponse
    AdminDeleteUserAttributesRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminDeleteUserAttributesRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminDeleteUserAttributesRequest.add_member(:user_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameListType, name: "UserAttributeNames", traits: {"smithy.api#required" => {}}))
    AdminDeleteUserAttributesRequest.type = Types::AdminDeleteUserAttributesRequest
    AdminDeleteUserAttributesResponse.type = Types::AdminDeleteUserAttributesResponse
    AdminDeleteUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminDeleteUserRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminDeleteUserRequest.type = Types::AdminDeleteUserRequest
    AdminDisableProviderForUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminDisableProviderForUserRequest.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderUserIdentifierType, name: "User", traits: {"smithy.api#required" => {}}))
    AdminDisableProviderForUserRequest.type = Types::AdminDisableProviderForUserRequest
    AdminDisableProviderForUserResponse.type = Types::AdminDisableProviderForUserResponse
    AdminDisableUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminDisableUserRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminDisableUserRequest.type = Types::AdminDisableUserRequest
    AdminDisableUserResponse.type = Types::AdminDisableUserResponse
    AdminEnableUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminEnableUserRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminEnableUserRequest.type = Types::AdminEnableUserRequest
    AdminEnableUserResponse.type = Types::AdminEnableUserResponse
    AdminForgetDeviceRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminForgetDeviceRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminForgetDeviceRequest.add_member(:device_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceKeyType, name: "DeviceKey", traits: {"smithy.api#required" => {}}))
    AdminForgetDeviceRequest.type = Types::AdminForgetDeviceRequest
    AdminGetDeviceRequest.add_member(:device_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceKeyType, name: "DeviceKey", traits: {"smithy.api#required" => {}}))
    AdminGetDeviceRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminGetDeviceRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminGetDeviceRequest.type = Types::AdminGetDeviceRequest
    AdminGetDeviceResponse.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType, name: "Device", traits: {"smithy.api#required" => {}}))
    AdminGetDeviceResponse.type = Types::AdminGetDeviceResponse
    AdminGetUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminGetUserRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminGetUserRequest.type = Types::AdminGetUserRequest
    AdminGetUserResponse.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminGetUserResponse.add_member(:user_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeListType, name: "UserAttributes"))
    AdminGetUserResponse.add_member(:user_create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UserCreateDate"))
    AdminGetUserResponse.add_member(:user_last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UserLastModifiedDate"))
    AdminGetUserResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Enabled", traits: {"smithy.api#default" => false}))
    AdminGetUserResponse.add_member(:user_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStatusType, name: "UserStatus"))
    AdminGetUserResponse.add_member(:mfa_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MFAOptionListType, name: "MFAOptions"))
    AdminGetUserResponse.add_member(:preferred_mfa_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "PreferredMfaSetting"))
    AdminGetUserResponse.add_member(:user_mfa_setting_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMFASettingListType, name: "UserMFASettingList"))
    AdminGetUserResponse.type = Types::AdminGetUserResponse
    AdminInitiateAuthRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminInitiateAuthRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    AdminInitiateAuthRequest.add_member(:auth_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthFlowType, name: "AuthFlow", traits: {"smithy.api#required" => {}}))
    AdminInitiateAuthRequest.add_member(:auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthParametersType, name: "AuthParameters"))
    AdminInitiateAuthRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    AdminInitiateAuthRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetadataType, name: "AnalyticsMetadata"))
    AdminInitiateAuthRequest.add_member(:context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextDataType, name: "ContextData"))
    AdminInitiateAuthRequest.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    AdminInitiateAuthRequest.type = Types::AdminInitiateAuthRequest
    AdminInitiateAuthResponse.add_member(:challenge_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeNameType, name: "ChallengeName"))
    AdminInitiateAuthResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    AdminInitiateAuthResponse.add_member(:challenge_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeParametersType, name: "ChallengeParameters"))
    AdminInitiateAuthResponse.add_member(:authentication_result, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationResultType, name: "AuthenticationResult"))
    AdminInitiateAuthResponse.add_member(:available_challenges, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailableChallengeListType, name: "AvailableChallenges"))
    AdminInitiateAuthResponse.type = Types::AdminInitiateAuthResponse
    AdminLinkProviderForUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminLinkProviderForUserRequest.add_member(:destination_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderUserIdentifierType, name: "DestinationUser", traits: {"smithy.api#required" => {}}))
    AdminLinkProviderForUserRequest.add_member(:source_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderUserIdentifierType, name: "SourceUser", traits: {"smithy.api#required" => {}}))
    AdminLinkProviderForUserRequest.type = Types::AdminLinkProviderForUserRequest
    AdminLinkProviderForUserResponse.type = Types::AdminLinkProviderForUserResponse
    AdminListDevicesRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminListDevicesRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminListDevicesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLimitType, name: "Limit"))
    AdminListDevicesRequest.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPaginationTokenType, name: "PaginationToken"))
    AdminListDevicesRequest.type = Types::AdminListDevicesRequest
    AdminListDevicesResponse.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceListType, name: "Devices"))
    AdminListDevicesResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPaginationTokenType, name: "PaginationToken"))
    AdminListDevicesResponse.type = Types::AdminListDevicesResponse
    AdminListGroupsForUserRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminListGroupsForUserRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminListGroupsForUserRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLimitType, name: "Limit"))
    AdminListGroupsForUserRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    AdminListGroupsForUserRequest.type = Types::AdminListGroupsForUserRequest
    AdminListGroupsForUserResponse.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupListType, name: "Groups"))
    AdminListGroupsForUserResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    AdminListGroupsForUserResponse.type = Types::AdminListGroupsForUserResponse
    AdminListUserAuthEventsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminListUserAuthEventsRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminListUserAuthEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLimitType, name: "MaxResults"))
    AdminListUserAuthEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    AdminListUserAuthEventsRequest.type = Types::AdminListUserAuthEventsRequest
    AdminListUserAuthEventsResponse.add_member(:auth_events, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthEventsType, name: "AuthEvents"))
    AdminListUserAuthEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    AdminListUserAuthEventsResponse.type = Types::AdminListUserAuthEventsResponse
    AdminRemoveUserFromGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminRemoveUserFromGroupRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminRemoveUserFromGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    AdminRemoveUserFromGroupRequest.type = Types::AdminRemoveUserFromGroupRequest
    AdminResetUserPasswordRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminResetUserPasswordRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminResetUserPasswordRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    AdminResetUserPasswordRequest.type = Types::AdminResetUserPasswordRequest
    AdminResetUserPasswordResponse.type = Types::AdminResetUserPasswordResponse
    AdminRespondToAuthChallengeRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminRespondToAuthChallengeRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    AdminRespondToAuthChallengeRequest.add_member(:challenge_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeNameType, name: "ChallengeName", traits: {"smithy.api#required" => {}}))
    AdminRespondToAuthChallengeRequest.add_member(:challenge_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeResponsesType, name: "ChallengeResponses"))
    AdminRespondToAuthChallengeRequest.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    AdminRespondToAuthChallengeRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetadataType, name: "AnalyticsMetadata"))
    AdminRespondToAuthChallengeRequest.add_member(:context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextDataType, name: "ContextData"))
    AdminRespondToAuthChallengeRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    AdminRespondToAuthChallengeRequest.type = Types::AdminRespondToAuthChallengeRequest
    AdminRespondToAuthChallengeResponse.add_member(:challenge_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeNameType, name: "ChallengeName"))
    AdminRespondToAuthChallengeResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    AdminRespondToAuthChallengeResponse.add_member(:challenge_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeParametersType, name: "ChallengeParameters"))
    AdminRespondToAuthChallengeResponse.add_member(:authentication_result, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationResultType, name: "AuthenticationResult"))
    AdminRespondToAuthChallengeResponse.type = Types::AdminRespondToAuthChallengeResponse
    AdminSetUserMFAPreferenceRequest.add_member(:sms_mfa_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SMSMfaSettingsType, name: "SMSMfaSettings"))
    AdminSetUserMFAPreferenceRequest.add_member(:software_token_mfa_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareTokenMfaSettingsType, name: "SoftwareTokenMfaSettings"))
    AdminSetUserMFAPreferenceRequest.add_member(:email_mfa_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailMfaSettingsType, name: "EmailMfaSettings"))
    AdminSetUserMFAPreferenceRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminSetUserMFAPreferenceRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminSetUserMFAPreferenceRequest.type = Types::AdminSetUserMFAPreferenceRequest
    AdminSetUserMFAPreferenceResponse.type = Types::AdminSetUserMFAPreferenceResponse
    AdminSetUserPasswordRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminSetUserPasswordRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminSetUserPasswordRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "Password", traits: {"smithy.api#required" => {}}))
    AdminSetUserPasswordRequest.add_member(:permanent, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Permanent", traits: {"smithy.api#default" => false}))
    AdminSetUserPasswordRequest.type = Types::AdminSetUserPasswordRequest
    AdminSetUserPasswordResponse.type = Types::AdminSetUserPasswordResponse
    AdminSetUserSettingsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminSetUserSettingsRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminSetUserSettingsRequest.add_member(:mfa_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MFAOptionListType, name: "MFAOptions", traits: {"smithy.api#required" => {}}))
    AdminSetUserSettingsRequest.type = Types::AdminSetUserSettingsRequest
    AdminSetUserSettingsResponse.type = Types::AdminSetUserSettingsResponse
    AdminUpdateAuthEventFeedbackRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminUpdateAuthEventFeedbackRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminUpdateAuthEventFeedbackRequest.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventIdType, name: "EventId", traits: {"smithy.api#required" => {}}))
    AdminUpdateAuthEventFeedbackRequest.add_member(:feedback_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackValueType, name: "FeedbackValue", traits: {"smithy.api#required" => {}}))
    AdminUpdateAuthEventFeedbackRequest.type = Types::AdminUpdateAuthEventFeedbackRequest
    AdminUpdateAuthEventFeedbackResponse.type = Types::AdminUpdateAuthEventFeedbackResponse
    AdminUpdateDeviceStatusRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminUpdateDeviceStatusRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminUpdateDeviceStatusRequest.add_member(:device_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceKeyType, name: "DeviceKey", traits: {"smithy.api#required" => {}}))
    AdminUpdateDeviceStatusRequest.add_member(:device_remembered_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceRememberedStatusType, name: "DeviceRememberedStatus"))
    AdminUpdateDeviceStatusRequest.type = Types::AdminUpdateDeviceStatusRequest
    AdminUpdateDeviceStatusResponse.type = Types::AdminUpdateDeviceStatusResponse
    AdminUpdateUserAttributesRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminUpdateUserAttributesRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminUpdateUserAttributesRequest.add_member(:user_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeListType, name: "UserAttributes", traits: {"smithy.api#required" => {}}))
    AdminUpdateUserAttributesRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    AdminUpdateUserAttributesRequest.type = Types::AdminUpdateUserAttributesRequest
    AdminUpdateUserAttributesResponse.type = Types::AdminUpdateUserAttributesResponse
    AdminUserGlobalSignOutRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    AdminUserGlobalSignOutRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    AdminUserGlobalSignOutRequest.type = Types::AdminUserGlobalSignOutRequest
    AdminUserGlobalSignOutResponse.type = Types::AdminUserGlobalSignOutResponse
    AdvancedSecurityAdditionalFlowsType.add_member(:custom_auth_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedSecurityEnabledModeType, name: "CustomAuthMode"))
    AdvancedSecurityAdditionalFlowsType.type = Types::AdvancedSecurityAdditionalFlowsType
    AdvancedSecurityEnabledModeType.add_member(:audit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIT", traits: {"smithy.api#enumValue" => "AUDIT"}))
    AdvancedSecurityEnabledModeType.add_member(:enforced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENFORCED", traits: {"smithy.api#enumValue" => "ENFORCED"}))
    AdvancedSecurityModeType.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    AdvancedSecurityModeType.add_member(:audit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIT", traits: {"smithy.api#enumValue" => "AUDIT"}))
    AdvancedSecurityModeType.add_member(:enforced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENFORCED", traits: {"smithy.api#enumValue" => "ENFORCED"}))
    AliasAttributeType.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE_NUMBER", traits: {"smithy.api#enumValue" => "phone_number"}))
    AliasAttributeType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "email"}))
    AliasAttributeType.add_member(:preferred_username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFERRED_USERNAME", traits: {"smithy.api#enumValue" => "preferred_username"}))
    AliasAttributesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasAttributeType, name: "member"))
    AliasExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    AliasExistsException.type = Types::AliasExistsException
    AllowedFirstAuthFactorsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthFactorType, name: "member"))
    AnalyticsConfigurationType.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HexStringType, name: "ApplicationId"))
    AnalyticsConfigurationType.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ApplicationArn"))
    AnalyticsConfigurationType.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "RoleArn"))
    AnalyticsConfigurationType.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "ExternalId"))
    AnalyticsConfigurationType.add_member(:user_data_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "UserDataShared", traits: {"smithy.api#default" => false}))
    AnalyticsConfigurationType.type = Types::AnalyticsConfigurationType
    AnalyticsMetadataType.add_member(:analytics_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "AnalyticsEndpointId"))
    AnalyticsMetadataType.type = Types::AnalyticsMetadataType
    AssetCategoryType.add_member(:favicon_ico, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAVICON_ICO", traits: {"smithy.api#enumValue" => "FAVICON_ICO"}))
    AssetCategoryType.add_member(:favicon_svg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAVICON_SVG", traits: {"smithy.api#enumValue" => "FAVICON_SVG"}))
    AssetCategoryType.add_member(:email_graphic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_GRAPHIC", traits: {"smithy.api#enumValue" => "EMAIL_GRAPHIC"}))
    AssetCategoryType.add_member(:sms_graphic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMS_GRAPHIC", traits: {"smithy.api#enumValue" => "SMS_GRAPHIC"}))
    AssetCategoryType.add_member(:auth_app_graphic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTH_APP_GRAPHIC", traits: {"smithy.api#enumValue" => "AUTH_APP_GRAPHIC"}))
    AssetCategoryType.add_member(:password_graphic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD_GRAPHIC", traits: {"smithy.api#enumValue" => "PASSWORD_GRAPHIC"}))
    AssetCategoryType.add_member(:passkey_graphic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSKEY_GRAPHIC", traits: {"smithy.api#enumValue" => "PASSKEY_GRAPHIC"}))
    AssetCategoryType.add_member(:page_header_logo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE_HEADER_LOGO", traits: {"smithy.api#enumValue" => "PAGE_HEADER_LOGO"}))
    AssetCategoryType.add_member(:page_header_background, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE_HEADER_BACKGROUND", traits: {"smithy.api#enumValue" => "PAGE_HEADER_BACKGROUND"}))
    AssetCategoryType.add_member(:page_footer_logo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE_FOOTER_LOGO", traits: {"smithy.api#enumValue" => "PAGE_FOOTER_LOGO"}))
    AssetCategoryType.add_member(:page_footer_background, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE_FOOTER_BACKGROUND", traits: {"smithy.api#enumValue" => "PAGE_FOOTER_BACKGROUND"}))
    AssetCategoryType.add_member(:page_background, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE_BACKGROUND", traits: {"smithy.api#enumValue" => "PAGE_BACKGROUND"}))
    AssetCategoryType.add_member(:form_background, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORM_BACKGROUND", traits: {"smithy.api#enumValue" => "FORM_BACKGROUND"}))
    AssetCategoryType.add_member(:form_logo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORM_LOGO", traits: {"smithy.api#enumValue" => "FORM_LOGO"}))
    AssetCategoryType.add_member(:idp_button_icon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDP_BUTTON_ICON", traits: {"smithy.api#enumValue" => "IDP_BUTTON_ICON"}))
    AssetExtensionType.add_member(:ico, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICO", traits: {"smithy.api#enumValue" => "ICO"}))
    AssetExtensionType.add_member(:jpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPEG", traits: {"smithy.api#enumValue" => "JPEG"}))
    AssetExtensionType.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "PNG"}))
    AssetExtensionType.add_member(:svg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SVG", traits: {"smithy.api#enumValue" => "SVG"}))
    AssetExtensionType.add_member(:webp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBP", traits: {"smithy.api#enumValue" => "WEBP"}))
    AssetListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "member"))
    AssetType.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetCategoryType, name: "Category", traits: {"smithy.api#required" => {}}))
    AssetType.add_member(:color_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ColorSchemeModeType, name: "ColorMode", traits: {"smithy.api#required" => {}}))
    AssetType.add_member(:extension, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetExtensionType, name: "Extension", traits: {"smithy.api#required" => {}}))
    AssetType.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetBytesType, name: "Bytes"))
    AssetType.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceId"))
    AssetType.type = Types::AssetType
    AssociateSoftwareTokenRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken"))
    AssociateSoftwareTokenRequest.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    AssociateSoftwareTokenRequest.type = Types::AssociateSoftwareTokenRequest
    AssociateSoftwareTokenResponse.add_member(:secret_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretCodeType, name: "SecretCode"))
    AssociateSoftwareTokenResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    AssociateSoftwareTokenResponse.type = Types::AssociateSoftwareTokenResponse
    AttributeDataType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "String"}))
    AttributeDataType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER", traits: {"smithy.api#enumValue" => "Number"}))
    AttributeDataType.add_member(:datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATETIME", traits: {"smithy.api#enumValue" => "DateTime"}))
    AttributeDataType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "Boolean"}))
    AttributeListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeType, name: "member"))
    AttributeMappingType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMappingKeyType, name: "key"))
    AttributeMappingType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "value"))
    AttributeNameListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameType, name: "member"))
    AttributeType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameType, name: "Name", traits: {"smithy.api#required" => {}}))
    AttributeType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueType, name: "Value"))
    AttributeType.type = Types::AttributeType
    AttributesRequireVerificationBeforeUpdateType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedAttributeType, name: "member"))
    AuthEventType.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "EventId"))
    AuthEventType.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "EventType"))
    AuthEventType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate"))
    AuthEventType.add_member(:event_response, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResponseType, name: "EventResponse"))
    AuthEventType.add_member(:event_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: EventRiskType, name: "EventRisk"))
    AuthEventType.add_member(:challenge_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeResponseListType, name: "ChallengeResponses"))
    AuthEventType.add_member(:event_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EventContextDataType, name: "EventContextData"))
    AuthEventType.add_member(:event_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFeedbackType, name: "EventFeedback"))
    AuthEventType.type = Types::AuthEventType
    AuthEventsType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthEventType, name: "member"))
    AuthFactorType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD", traits: {"smithy.api#enumValue" => "PASSWORD"}))
    AuthFactorType.add_member(:email_otp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_OTP", traits: {"smithy.api#enumValue" => "EMAIL_OTP"}))
    AuthFactorType.add_member(:sms_otp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMS_OTP", traits: {"smithy.api#enumValue" => "SMS_OTP"}))
    AuthFactorType.add_member(:web_authn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEB_AUTHN", traits: {"smithy.api#enumValue" => "WEB_AUTHN"}))
    AuthFlowType.add_member(:user_srp_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_SRP_AUTH", traits: {"smithy.api#enumValue" => "USER_SRP_AUTH"}))
    AuthFlowType.add_member(:refresh_token_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFRESH_TOKEN_AUTH", traits: {"smithy.api#enumValue" => "REFRESH_TOKEN_AUTH"}))
    AuthFlowType.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFRESH_TOKEN", traits: {"smithy.api#enumValue" => "REFRESH_TOKEN"}))
    AuthFlowType.add_member(:custom_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_AUTH", traits: {"smithy.api#enumValue" => "CUSTOM_AUTH"}))
    AuthFlowType.add_member(:admin_no_srp_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMIN_NO_SRP_AUTH", traits: {"smithy.api#enumValue" => "ADMIN_NO_SRP_AUTH"}))
    AuthFlowType.add_member(:user_password_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_PASSWORD_AUTH", traits: {"smithy.api#enumValue" => "USER_PASSWORD_AUTH"}))
    AuthFlowType.add_member(:admin_user_password_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMIN_USER_PASSWORD_AUTH", traits: {"smithy.api#enumValue" => "ADMIN_USER_PASSWORD_AUTH"}))
    AuthFlowType.add_member(:user_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_AUTH", traits: {"smithy.api#enumValue" => "USER_AUTH"}))
    AuthParametersType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "key"))
    AuthParametersType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "value"))
    AuthenticationResultType.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken"))
    AuthenticationResultType.add_member(:expires_in, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerType, name: "ExpiresIn", traits: {"smithy.api#default" => 0}))
    AuthenticationResultType.add_member(:token_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "TokenType"))
    AuthenticationResultType.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "RefreshToken"))
    AuthenticationResultType.add_member(:id_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "IdToken"))
    AuthenticationResultType.add_member(:new_device_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: NewDeviceMetadataType, name: "NewDeviceMetadata"))
    AuthenticationResultType.type = Types::AuthenticationResultType
    AvailableChallengeListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeNameType, name: "member"))
    BlockedIPRangeListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "member"))
    CallbackURLsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectUrlType, name: "member"))
    ChallengeName.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Password", traits: {"smithy.api#enumValue" => "Password"}))
    ChallengeName.add_member(:mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Mfa", traits: {"smithy.api#enumValue" => "Mfa"}))
    ChallengeNameType.add_member(:sms_mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMS_MFA", traits: {"smithy.api#enumValue" => "SMS_MFA"}))
    ChallengeNameType.add_member(:email_otp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_OTP", traits: {"smithy.api#enumValue" => "EMAIL_OTP"}))
    ChallengeNameType.add_member(:software_token_mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFTWARE_TOKEN_MFA", traits: {"smithy.api#enumValue" => "SOFTWARE_TOKEN_MFA"}))
    ChallengeNameType.add_member(:select_mfa_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELECT_MFA_TYPE", traits: {"smithy.api#enumValue" => "SELECT_MFA_TYPE"}))
    ChallengeNameType.add_member(:mfa_setup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MFA_SETUP", traits: {"smithy.api#enumValue" => "MFA_SETUP"}))
    ChallengeNameType.add_member(:password_verifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD_VERIFIER", traits: {"smithy.api#enumValue" => "PASSWORD_VERIFIER"}))
    ChallengeNameType.add_member(:custom_challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_CHALLENGE", traits: {"smithy.api#enumValue" => "CUSTOM_CHALLENGE"}))
    ChallengeNameType.add_member(:select_challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELECT_CHALLENGE", traits: {"smithy.api#enumValue" => "SELECT_CHALLENGE"}))
    ChallengeNameType.add_member(:device_srp_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVICE_SRP_AUTH", traits: {"smithy.api#enumValue" => "DEVICE_SRP_AUTH"}))
    ChallengeNameType.add_member(:device_password_verifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVICE_PASSWORD_VERIFIER", traits: {"smithy.api#enumValue" => "DEVICE_PASSWORD_VERIFIER"}))
    ChallengeNameType.add_member(:admin_no_srp_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMIN_NO_SRP_AUTH", traits: {"smithy.api#enumValue" => "ADMIN_NO_SRP_AUTH"}))
    ChallengeNameType.add_member(:new_password_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_PASSWORD_REQUIRED", traits: {"smithy.api#enumValue" => "NEW_PASSWORD_REQUIRED"}))
    ChallengeNameType.add_member(:sms_otp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMS_OTP", traits: {"smithy.api#enumValue" => "SMS_OTP"}))
    ChallengeNameType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD", traits: {"smithy.api#enumValue" => "PASSWORD"}))
    ChallengeNameType.add_member(:web_authn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEB_AUTHN", traits: {"smithy.api#enumValue" => "WEB_AUTHN"}))
    ChallengeNameType.add_member(:password_srp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD_SRP", traits: {"smithy.api#enumValue" => "PASSWORD_SRP"}))
    ChallengeParametersType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "key"))
    ChallengeParametersType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "value"))
    ChallengeResponse.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    ChallengeResponse.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failure", traits: {"smithy.api#enumValue" => "Failure"}))
    ChallengeResponseListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeResponseType, name: "member"))
    ChallengeResponseType.add_member(:challenge_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeName, name: "ChallengeName"))
    ChallengeResponseType.add_member(:challenge_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeResponse, name: "ChallengeResponse"))
    ChallengeResponseType.type = Types::ChallengeResponseType
    ChallengeResponsesType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "key"))
    ChallengeResponsesType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "value"))
    ChangePasswordRequest.add_member(:previous_password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "PreviousPassword"))
    ChangePasswordRequest.add_member(:proposed_password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "ProposedPassword", traits: {"smithy.api#required" => {}}))
    ChangePasswordRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    ChangePasswordRequest.type = Types::ChangePasswordRequest
    ChangePasswordResponse.type = Types::ChangePasswordResponse
    ClientMetadataType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "key"))
    ClientMetadataType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "value"))
    ClientPermissionListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPermissionType, name: "member"))
    CloudWatchLogsConfigurationType.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "LogGroupArn"))
    CloudWatchLogsConfigurationType.type = Types::CloudWatchLogsConfigurationType
    CodeDeliveryDetailsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeDeliveryDetailsType, name: "member"))
    CodeDeliveryDetailsType.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Destination"))
    CodeDeliveryDetailsType.add_member(:delivery_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryMediumType, name: "DeliveryMedium"))
    CodeDeliveryDetailsType.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameType, name: "AttributeName"))
    CodeDeliveryDetailsType.type = Types::CodeDeliveryDetailsType
    CodeDeliveryFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    CodeDeliveryFailureException.type = Types::CodeDeliveryFailureException
    CodeMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    CodeMismatchException.type = Types::CodeMismatchException
    ColorSchemeModeType.add_member(:light, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIGHT", traits: {"smithy.api#enumValue" => "LIGHT"}))
    ColorSchemeModeType.add_member(:dark, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DARK", traits: {"smithy.api#enumValue" => "DARK"}))
    ColorSchemeModeType.add_member(:dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMIC", traits: {"smithy.api#enumValue" => "DYNAMIC"}))
    CompleteWebAuthnRegistrationRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    CompleteWebAuthnRegistrationRequest.add_member(:credential, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "Credential", traits: {"smithy.api#required" => {}}))
    CompleteWebAuthnRegistrationRequest.type = Types::CompleteWebAuthnRegistrationRequest
    CompleteWebAuthnRegistrationResponse.type = Types::CompleteWebAuthnRegistrationResponse
    CompromisedCredentialsActionsType.add_member(:event_action, ::Smithy::Schema::Shapes::MemberShape.new(target: CompromisedCredentialsEventActionType, name: "EventAction", traits: {"smithy.api#required" => {}}))
    CompromisedCredentialsActionsType.type = Types::CompromisedCredentialsActionsType
    CompromisedCredentialsEventActionType.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    CompromisedCredentialsEventActionType.add_member(:no_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_ACTION", traits: {"smithy.api#enumValue" => "NO_ACTION"}))
    CompromisedCredentialsRiskConfigurationType.add_member(:event_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFiltersType, name: "EventFilter"))
    CompromisedCredentialsRiskConfigurationType.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: CompromisedCredentialsActionsType, name: "Actions", traits: {"smithy.api#required" => {}}))
    CompromisedCredentialsRiskConfigurationType.type = Types::CompromisedCredentialsRiskConfigurationType
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfiguredUserAuthFactorsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthFactorType, name: "member"))
    ConfirmDeviceRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    ConfirmDeviceRequest.add_member(:device_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceKeyType, name: "DeviceKey", traits: {"smithy.api#required" => {}}))
    ConfirmDeviceRequest.add_member(:device_secret_verifier_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSecretVerifierConfigType, name: "DeviceSecretVerifierConfig"))
    ConfirmDeviceRequest.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceNameType, name: "DeviceName"))
    ConfirmDeviceRequest.type = Types::ConfirmDeviceRequest
    ConfirmDeviceResponse.add_member(:user_confirmation_necessary, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "UserConfirmationNecessary", traits: {"smithy.api#default" => false}))
    ConfirmDeviceResponse.type = Types::ConfirmDeviceResponse
    ConfirmForgotPasswordRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    ConfirmForgotPasswordRequest.add_member(:secret_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretHashType, name: "SecretHash"))
    ConfirmForgotPasswordRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    ConfirmForgotPasswordRequest.add_member(:confirmation_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationCodeType, name: "ConfirmationCode", traits: {"smithy.api#required" => {}}))
    ConfirmForgotPasswordRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "Password", traits: {"smithy.api#required" => {}}))
    ConfirmForgotPasswordRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetadataType, name: "AnalyticsMetadata"))
    ConfirmForgotPasswordRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContextDataType, name: "UserContextData"))
    ConfirmForgotPasswordRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    ConfirmForgotPasswordRequest.type = Types::ConfirmForgotPasswordRequest
    ConfirmForgotPasswordResponse.type = Types::ConfirmForgotPasswordResponse
    ConfirmSignUpRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    ConfirmSignUpRequest.add_member(:secret_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretHashType, name: "SecretHash"))
    ConfirmSignUpRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    ConfirmSignUpRequest.add_member(:confirmation_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationCodeType, name: "ConfirmationCode", traits: {"smithy.api#required" => {}}))
    ConfirmSignUpRequest.add_member(:force_alias_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceAliasCreation, name: "ForceAliasCreation", traits: {"smithy.api#default" => false}))
    ConfirmSignUpRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetadataType, name: "AnalyticsMetadata"))
    ConfirmSignUpRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContextDataType, name: "UserContextData"))
    ConfirmSignUpRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    ConfirmSignUpRequest.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    ConfirmSignUpRequest.type = Types::ConfirmSignUpRequest
    ConfirmSignUpResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    ConfirmSignUpResponse.type = Types::ConfirmSignUpResponse
    ContextDataType.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "IpAddress", traits: {"smithy.api#required" => {}}))
    ContextDataType.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "ServerName", traits: {"smithy.api#required" => {}}))
    ContextDataType.add_member(:server_path, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "ServerPath", traits: {"smithy.api#required" => {}}))
    ContextDataType.add_member(:http_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpHeaderList, name: "HttpHeaders", traits: {"smithy.api#required" => {}}))
    ContextDataType.add_member(:encoded_data, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "EncodedData"))
    ContextDataType.type = Types::ContextDataType
    CreateGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionType, name: "Description"))
    CreateGroupRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "RoleArn"))
    CreateGroupRequest.add_member(:precedence, ::Smithy::Schema::Shapes::MemberShape.new(target: PrecedenceType, name: "Precedence"))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResponse.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "Group"))
    CreateGroupResponse.type = Types::CreateGroupResponse
    CreateIdentityProviderRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderNameTypeV2, name: "ProviderName", traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderTypeType, name: "ProviderType", traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:provider_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderDetailsType, name: "ProviderDetails", traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderRequest.add_member(:attribute_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMappingType, name: "AttributeMapping"))
    CreateIdentityProviderRequest.add_member(:idp_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpIdentifiersListType, name: "IdpIdentifiers"))
    CreateIdentityProviderRequest.type = Types::CreateIdentityProviderRequest
    CreateIdentityProviderResponse.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderType, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    CreateIdentityProviderResponse.type = Types::CreateIdentityProviderResponse
    CreateManagedLoginBrandingRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    CreateManagedLoginBrandingRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    CreateManagedLoginBrandingRequest.add_member(:use_cognito_provided_values, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "UseCognitoProvidedValues", traits: {"smithy.api#default" => false}))
    CreateManagedLoginBrandingRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "Settings"))
    CreateManagedLoginBrandingRequest.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetListType, name: "Assets"))
    CreateManagedLoginBrandingRequest.type = Types::CreateManagedLoginBrandingRequest
    CreateManagedLoginBrandingResponse.add_member(:managed_login_branding, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLoginBrandingType, name: "ManagedLoginBranding"))
    CreateManagedLoginBrandingResponse.type = Types::CreateManagedLoginBrandingResponse
    CreateResourceServerRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    CreateResourceServerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerIdentifierType, name: "Identifier", traits: {"smithy.api#required" => {}}))
    CreateResourceServerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerNameType, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateResourceServerRequest.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerScopeListType, name: "Scopes"))
    CreateResourceServerRequest.type = Types::CreateResourceServerRequest
    CreateResourceServerResponse.add_member(:resource_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerType, name: "ResourceServer", traits: {"smithy.api#required" => {}}))
    CreateResourceServerResponse.type = Types::CreateResourceServerResponse
    CreateTermsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    CreateTermsRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    CreateTermsRequest.add_member(:terms_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsNameType, name: "TermsName", traits: {"smithy.api#required" => {}}))
    CreateTermsRequest.add_member(:terms_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsSourceType, name: "TermsSource", traits: {"smithy.api#required" => {}}))
    CreateTermsRequest.add_member(:enforcement, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsEnforcementType, name: "Enforcement", traits: {"smithy.api#required" => {}}))
    CreateTermsRequest.add_member(:links, ::Smithy::Schema::Shapes::MemberShape.new(target: LinksType, name: "Links"))
    CreateTermsRequest.type = Types::CreateTermsRequest
    CreateTermsResponse.add_member(:terms, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsType, name: "Terms"))
    CreateTermsResponse.type = Types::CreateTermsResponse
    CreateUserImportJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobNameType, name: "JobName", traits: {"smithy.api#required" => {}}))
    CreateUserImportJobRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    CreateUserImportJobRequest.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "CloudWatchLogsRoleArn", traits: {"smithy.api#required" => {}}))
    CreateUserImportJobRequest.type = Types::CreateUserImportJobRequest
    CreateUserImportJobResponse.add_member(:user_import_job, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobType, name: "UserImportJob"))
    CreateUserImportJobResponse.type = Types::CreateUserImportJobResponse
    CreateUserPoolClientRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    CreateUserPoolClientRequest.add_member(:client_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientNameType, name: "ClientName", traits: {"smithy.api#required" => {}}))
    CreateUserPoolClientRequest.add_member(:generate_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerateSecret, name: "GenerateSecret", traits: {"smithy.api#default" => false}))
    CreateUserPoolClientRequest.add_member(:refresh_token_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshTokenValidityType, name: "RefreshTokenValidity", traits: {"smithy.api#default" => 0}))
    CreateUserPoolClientRequest.add_member(:access_token_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenValidityType, name: "AccessTokenValidity"))
    CreateUserPoolClientRequest.add_member(:id_token_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: IdTokenValidityType, name: "IdTokenValidity"))
    CreateUserPoolClientRequest.add_member(:token_validity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenValidityUnitsType, name: "TokenValidityUnits"))
    CreateUserPoolClientRequest.add_member(:read_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPermissionListType, name: "ReadAttributes"))
    CreateUserPoolClientRequest.add_member(:write_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPermissionListType, name: "WriteAttributes"))
    CreateUserPoolClientRequest.add_member(:explicit_auth_flows, ::Smithy::Schema::Shapes::MemberShape.new(target: ExplicitAuthFlowsListType, name: "ExplicitAuthFlows"))
    CreateUserPoolClientRequest.add_member(:supported_identity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedIdentityProvidersListType, name: "SupportedIdentityProviders"))
    CreateUserPoolClientRequest.add_member(:callback_ur_ls, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackURLsListType, name: "CallbackURLs"))
    CreateUserPoolClientRequest.add_member(:logout_ur_ls, ::Smithy::Schema::Shapes::MemberShape.new(target: LogoutURLsListType, name: "LogoutURLs"))
    CreateUserPoolClientRequest.add_member(:default_redirect_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectUrlType, name: "DefaultRedirectURI"))
    CreateUserPoolClientRequest.add_member(:allowed_o_auth_flows, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthFlowsType, name: "AllowedOAuthFlows"))
    CreateUserPoolClientRequest.add_member(:allowed_o_auth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeListType, name: "AllowedOAuthScopes"))
    CreateUserPoolClientRequest.add_member(:allowed_o_auth_flows_user_pool_client, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "AllowedOAuthFlowsUserPoolClient", traits: {"smithy.api#default" => false}))
    CreateUserPoolClientRequest.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfigurationType, name: "AnalyticsConfiguration"))
    CreateUserPoolClientRequest.add_member(:prevent_user_existence_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PreventUserExistenceErrorTypes, name: "PreventUserExistenceErrors"))
    CreateUserPoolClientRequest.add_member(:enable_token_revocation, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedBooleanType, name: "EnableTokenRevocation"))
    CreateUserPoolClientRequest.add_member(:enable_propagate_additional_user_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedBooleanType, name: "EnablePropagateAdditionalUserContextData"))
    CreateUserPoolClientRequest.add_member(:auth_session_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthSessionValidityType, name: "AuthSessionValidity"))
    CreateUserPoolClientRequest.add_member(:refresh_token_rotation, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshTokenRotationType, name: "RefreshTokenRotation"))
    CreateUserPoolClientRequest.type = Types::CreateUserPoolClientRequest
    CreateUserPoolClientResponse.add_member(:user_pool_client, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolClientType, name: "UserPoolClient"))
    CreateUserPoolClientResponse.type = Types::CreateUserPoolClientResponse
    CreateUserPoolDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainType, name: "Domain", traits: {"smithy.api#required" => {}}))
    CreateUserPoolDomainRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    CreateUserPoolDomainRequest.add_member(:managed_login_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedIntegerType, name: "ManagedLoginVersion"))
    CreateUserPoolDomainRequest.add_member(:custom_domain_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainConfigType, name: "CustomDomainConfig"))
    CreateUserPoolDomainRequest.type = Types::CreateUserPoolDomainRequest
    CreateUserPoolDomainResponse.add_member(:managed_login_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedIntegerType, name: "ManagedLoginVersion"))
    CreateUserPoolDomainResponse.add_member(:cloud_front_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainType, name: "CloudFrontDomain"))
    CreateUserPoolDomainResponse.type = Types::CreateUserPoolDomainResponse
    CreateUserPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolNameType, name: "PoolName", traits: {"smithy.api#required" => {}}))
    CreateUserPoolRequest.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolPolicyType, name: "Policies"))
    CreateUserPoolRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionType, name: "DeletionProtection"))
    CreateUserPoolRequest.add_member(:lambda_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaConfigType, name: "LambdaConfig"))
    CreateUserPoolRequest.add_member(:auto_verified_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedAttributesListType, name: "AutoVerifiedAttributes"))
    CreateUserPoolRequest.add_member(:alias_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasAttributesListType, name: "AliasAttributes"))
    CreateUserPoolRequest.add_member(:username_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameAttributesListType, name: "UsernameAttributes"))
    CreateUserPoolRequest.add_member(:sms_verification_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsVerificationMessageType, name: "SmsVerificationMessage"))
    CreateUserPoolRequest.add_member(:email_verification_message, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationMessageType, name: "EmailVerificationMessage"))
    CreateUserPoolRequest.add_member(:email_verification_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationSubjectType, name: "EmailVerificationSubject"))
    CreateUserPoolRequest.add_member(:verification_message_template, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationMessageTemplateType, name: "VerificationMessageTemplate"))
    CreateUserPoolRequest.add_member(:sms_authentication_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsVerificationMessageType, name: "SmsAuthenticationMessage"))
    CreateUserPoolRequest.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolMfaType, name: "MfaConfiguration"))
    CreateUserPoolRequest.add_member(:user_attribute_update_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeUpdateSettingsType, name: "UserAttributeUpdateSettings"))
    CreateUserPoolRequest.add_member(:device_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceConfigurationType, name: "DeviceConfiguration"))
    CreateUserPoolRequest.add_member(:email_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailConfigurationType, name: "EmailConfiguration"))
    CreateUserPoolRequest.add_member(:sms_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsConfigurationType, name: "SmsConfiguration"))
    CreateUserPoolRequest.add_member(:user_pool_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolTagsType, name: "UserPoolTags"))
    CreateUserPoolRequest.add_member(:admin_create_user_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminCreateUserConfigType, name: "AdminCreateUserConfig"))
    CreateUserPoolRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaAttributesListType, name: "Schema"))
    CreateUserPoolRequest.add_member(:user_pool_add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolAddOnsType, name: "UserPoolAddOns"))
    CreateUserPoolRequest.add_member(:username_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameConfigurationType, name: "UsernameConfiguration"))
    CreateUserPoolRequest.add_member(:account_recovery_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecoverySettingType, name: "AccountRecoverySetting"))
    CreateUserPoolRequest.add_member(:user_pool_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolTierType, name: "UserPoolTier"))
    CreateUserPoolRequest.type = Types::CreateUserPoolRequest
    CreateUserPoolResponse.add_member(:user_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolType, name: "UserPool"))
    CreateUserPoolResponse.type = Types::CreateUserPoolResponse
    CustomAttributesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaAttributeType, name: "member"))
    CustomDomainConfigType.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    CustomDomainConfigType.type = Types::CustomDomainConfigType
    CustomEmailLambdaVersionConfigType.add_member(:lambda_version, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEmailSenderLambdaVersionType, name: "LambdaVersion", traits: {"smithy.api#required" => {}}))
    CustomEmailLambdaVersionConfigType.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "LambdaArn", traits: {"smithy.api#required" => {}}))
    CustomEmailLambdaVersionConfigType.type = Types::CustomEmailLambdaVersionConfigType
    CustomEmailSenderLambdaVersionType.add_member(:v1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V1_0", traits: {"smithy.api#enumValue" => "V1_0"}))
    CustomSMSLambdaVersionConfigType.add_member(:lambda_version, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSMSSenderLambdaVersionType, name: "LambdaVersion", traits: {"smithy.api#required" => {}}))
    CustomSMSLambdaVersionConfigType.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "LambdaArn", traits: {"smithy.api#required" => {}}))
    CustomSMSLambdaVersionConfigType.type = Types::CustomSMSLambdaVersionConfigType
    CustomSMSSenderLambdaVersionType.add_member(:v1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V1_0", traits: {"smithy.api#enumValue" => "V1_0"}))
    DefaultEmailOptionType.add_member(:confirm_with_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIRM_WITH_LINK", traits: {"smithy.api#enumValue" => "CONFIRM_WITH_LINK"}))
    DefaultEmailOptionType.add_member(:confirm_with_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIRM_WITH_CODE", traits: {"smithy.api#enumValue" => "CONFIRM_WITH_CODE"}))
    DeleteGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteIdentityProviderRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DeleteIdentityProviderRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderNameType, name: "ProviderName", traits: {"smithy.api#required" => {}}))
    DeleteIdentityProviderRequest.type = Types::DeleteIdentityProviderRequest
    DeleteManagedLoginBrandingRequest.add_member(:managed_login_branding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLoginBrandingIdType, name: "ManagedLoginBrandingId", traits: {"smithy.api#required" => {}}))
    DeleteManagedLoginBrandingRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DeleteManagedLoginBrandingRequest.type = Types::DeleteManagedLoginBrandingRequest
    DeleteResourceServerRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DeleteResourceServerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerIdentifierType, name: "Identifier", traits: {"smithy.api#required" => {}}))
    DeleteResourceServerRequest.type = Types::DeleteResourceServerRequest
    DeleteTermsRequest.add_member(:terms_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsIdType, name: "TermsId", traits: {"smithy.api#required" => {}}))
    DeleteTermsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DeleteTermsRequest.type = Types::DeleteTermsRequest
    DeleteUserAttributesRequest.add_member(:user_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameListType, name: "UserAttributeNames", traits: {"smithy.api#required" => {}}))
    DeleteUserAttributesRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    DeleteUserAttributesRequest.type = Types::DeleteUserAttributesRequest
    DeleteUserAttributesResponse.type = Types::DeleteUserAttributesResponse
    DeleteUserPoolClientRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DeleteUserPoolClientRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    DeleteUserPoolClientRequest.type = Types::DeleteUserPoolClientRequest
    DeleteUserPoolDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainType, name: "Domain", traits: {"smithy.api#required" => {}}))
    DeleteUserPoolDomainRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DeleteUserPoolDomainRequest.type = Types::DeleteUserPoolDomainRequest
    DeleteUserPoolDomainResponse.type = Types::DeleteUserPoolDomainResponse
    DeleteUserPoolRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DeleteUserPoolRequest.type = Types::DeleteUserPoolRequest
    DeleteUserRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteWebAuthnCredentialRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    DeleteWebAuthnCredentialRequest.add_member(:credential_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "CredentialId", traits: {"smithy.api#required" => {}}))
    DeleteWebAuthnCredentialRequest.type = Types::DeleteWebAuthnCredentialRequest
    DeleteWebAuthnCredentialResponse.type = Types::DeleteWebAuthnCredentialResponse
    DeletionProtectionType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DeletionProtectionType.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    DeliveryMediumListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryMediumType, name: "member"))
    DeliveryMediumType.add_member(:sms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMS", traits: {"smithy.api#enumValue" => "SMS"}))
    DeliveryMediumType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    DescribeIdentityProviderRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DescribeIdentityProviderRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderNameType, name: "ProviderName", traits: {"smithy.api#required" => {}}))
    DescribeIdentityProviderRequest.type = Types::DescribeIdentityProviderRequest
    DescribeIdentityProviderResponse.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderType, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    DescribeIdentityProviderResponse.type = Types::DescribeIdentityProviderResponse
    DescribeManagedLoginBrandingByClientRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DescribeManagedLoginBrandingByClientRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    DescribeManagedLoginBrandingByClientRequest.add_member(:return_merged_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "ReturnMergedResources", traits: {"smithy.api#default" => false}))
    DescribeManagedLoginBrandingByClientRequest.type = Types::DescribeManagedLoginBrandingByClientRequest
    DescribeManagedLoginBrandingByClientResponse.add_member(:managed_login_branding, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLoginBrandingType, name: "ManagedLoginBranding"))
    DescribeManagedLoginBrandingByClientResponse.type = Types::DescribeManagedLoginBrandingByClientResponse
    DescribeManagedLoginBrandingRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DescribeManagedLoginBrandingRequest.add_member(:managed_login_branding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLoginBrandingIdType, name: "ManagedLoginBrandingId", traits: {"smithy.api#required" => {}}))
    DescribeManagedLoginBrandingRequest.add_member(:return_merged_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "ReturnMergedResources", traits: {"smithy.api#default" => false}))
    DescribeManagedLoginBrandingRequest.type = Types::DescribeManagedLoginBrandingRequest
    DescribeManagedLoginBrandingResponse.add_member(:managed_login_branding, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLoginBrandingType, name: "ManagedLoginBranding"))
    DescribeManagedLoginBrandingResponse.type = Types::DescribeManagedLoginBrandingResponse
    DescribeResourceServerRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DescribeResourceServerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerIdentifierType, name: "Identifier", traits: {"smithy.api#required" => {}}))
    DescribeResourceServerRequest.type = Types::DescribeResourceServerRequest
    DescribeResourceServerResponse.add_member(:resource_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerType, name: "ResourceServer", traits: {"smithy.api#required" => {}}))
    DescribeResourceServerResponse.type = Types::DescribeResourceServerResponse
    DescribeRiskConfigurationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DescribeRiskConfigurationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId"))
    DescribeRiskConfigurationRequest.type = Types::DescribeRiskConfigurationRequest
    DescribeRiskConfigurationResponse.add_member(:risk_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskConfigurationType, name: "RiskConfiguration", traits: {"smithy.api#required" => {}}))
    DescribeRiskConfigurationResponse.type = Types::DescribeRiskConfigurationResponse
    DescribeTermsRequest.add_member(:terms_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsIdType, name: "TermsId", traits: {"smithy.api#required" => {}}))
    DescribeTermsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DescribeTermsRequest.type = Types::DescribeTermsRequest
    DescribeTermsResponse.add_member(:terms, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsType, name: "Terms"))
    DescribeTermsResponse.type = Types::DescribeTermsResponse
    DescribeUserImportJobRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DescribeUserImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobIdType, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeUserImportJobRequest.type = Types::DescribeUserImportJobRequest
    DescribeUserImportJobResponse.add_member(:user_import_job, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobType, name: "UserImportJob"))
    DescribeUserImportJobResponse.type = Types::DescribeUserImportJobResponse
    DescribeUserPoolClientRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DescribeUserPoolClientRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    DescribeUserPoolClientRequest.type = Types::DescribeUserPoolClientRequest
    DescribeUserPoolClientResponse.add_member(:user_pool_client, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolClientType, name: "UserPoolClient"))
    DescribeUserPoolClientResponse.type = Types::DescribeUserPoolClientResponse
    DescribeUserPoolDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainType, name: "Domain", traits: {"smithy.api#required" => {}}))
    DescribeUserPoolDomainRequest.type = Types::DescribeUserPoolDomainRequest
    DescribeUserPoolDomainResponse.add_member(:domain_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDescriptionType, name: "DomainDescription"))
    DescribeUserPoolDomainResponse.type = Types::DescribeUserPoolDomainResponse
    DescribeUserPoolRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    DescribeUserPoolRequest.type = Types::DescribeUserPoolRequest
    DescribeUserPoolResponse.add_member(:user_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolType, name: "UserPool"))
    DescribeUserPoolResponse.type = Types::DescribeUserPoolResponse
    DeviceConfigurationType.add_member(:challenge_required_on_new_device, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "ChallengeRequiredOnNewDevice", traits: {"smithy.api#default" => false}))
    DeviceConfigurationType.add_member(:device_only_remembered_on_user_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "DeviceOnlyRememberedOnUserPrompt", traits: {"smithy.api#default" => false}))
    DeviceConfigurationType.type = Types::DeviceConfigurationType
    DeviceKeyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    DeviceKeyExistsException.type = Types::DeviceKeyExistsException
    DeviceListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType, name: "member"))
    DeviceRememberedStatusType.add_member(:remembered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMEMBERED", traits: {"smithy.api#enumValue" => "remembered"}))
    DeviceRememberedStatusType.add_member(:not_remembered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_REMEMBERED", traits: {"smithy.api#enumValue" => "not_remembered"}))
    DeviceSecretVerifierConfigType.add_member(:password_verifier, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "PasswordVerifier"))
    DeviceSecretVerifierConfigType.add_member(:salt, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Salt"))
    DeviceSecretVerifierConfigType.type = Types::DeviceSecretVerifierConfigType
    DeviceType.add_member(:device_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceKeyType, name: "DeviceKey"))
    DeviceType.add_member(:device_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeListType, name: "DeviceAttributes"))
    DeviceType.add_member(:device_create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "DeviceCreateDate"))
    DeviceType.add_member(:device_last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "DeviceLastModifiedDate"))
    DeviceType.add_member(:device_last_authenticated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "DeviceLastAuthenticatedDate"))
    DeviceType.type = Types::DeviceType
    DomainDescriptionType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    DomainDescriptionType.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountIdType, name: "AWSAccountId"))
    DomainDescriptionType.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainType, name: "Domain"))
    DomainDescriptionType.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketType, name: "S3Bucket"))
    DomainDescriptionType.add_member(:cloud_front_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "CloudFrontDistribution"))
    DomainDescriptionType.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainVersionType, name: "Version"))
    DomainDescriptionType.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatusType, name: "Status"))
    DomainDescriptionType.add_member(:custom_domain_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainConfigType, name: "CustomDomainConfig"))
    DomainDescriptionType.add_member(:managed_login_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedIntegerType, name: "ManagedLoginVersion"))
    DomainDescriptionType.type = Types::DomainDescriptionType
    DomainStatusType.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DomainStatusType.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DomainStatusType.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DomainStatusType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DomainStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DuplicateProviderException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    DuplicateProviderException.type = Types::DuplicateProviderException
    EmailConfigurationType.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SourceArn"))
    EmailConfigurationType.add_member(:reply_to_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressType, name: "ReplyToEmailAddress"))
    EmailConfigurationType.add_member(:email_sending_account, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailSendingAccountType, name: "EmailSendingAccount"))
    EmailConfigurationType.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "From"))
    EmailConfigurationType.add_member(:configuration_set, ::Smithy::Schema::Shapes::MemberShape.new(target: SESConfigurationSet, name: "ConfigurationSet"))
    EmailConfigurationType.type = Types::EmailConfigurationType
    EmailMfaConfigType.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailMfaMessageType, name: "Message"))
    EmailMfaConfigType.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailMfaSubjectType, name: "Subject"))
    EmailMfaConfigType.type = Types::EmailMfaConfigType
    EmailMfaSettingsType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Enabled", traits: {"smithy.api#default" => false}))
    EmailMfaSettingsType.add_member(:preferred_mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "PreferredMfa", traits: {"smithy.api#default" => false}))
    EmailMfaSettingsType.type = Types::EmailMfaSettingsType
    EmailSendingAccountType.add_member(:cognito_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COGNITO_DEFAULT", traits: {"smithy.api#enumValue" => "COGNITO_DEFAULT"}))
    EmailSendingAccountType.add_member(:developer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVELOPER", traits: {"smithy.api#enumValue" => "DEVELOPER"}))
    EnableSoftwareTokenMFAException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    EnableSoftwareTokenMFAException.type = Types::EnableSoftwareTokenMFAException
    EventContextDataType.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "IpAddress"))
    EventContextDataType.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "DeviceName"))
    EventContextDataType.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Timezone"))
    EventContextDataType.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "City"))
    EventContextDataType.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Country"))
    EventContextDataType.type = Types::EventContextDataType
    EventFeedbackType.add_member(:feedback_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackValueType, name: "FeedbackValue", traits: {"smithy.api#required" => {}}))
    EventFeedbackType.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Provider", traits: {"smithy.api#required" => {}}))
    EventFeedbackType.add_member(:feedback_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "FeedbackDate"))
    EventFeedbackType.type = Types::EventFeedbackType
    EventFilterType.add_member(:sign_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIGN_IN", traits: {"smithy.api#enumValue" => "SIGN_IN"}))
    EventFilterType.add_member(:password_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD_CHANGE", traits: {"smithy.api#enumValue" => "PASSWORD_CHANGE"}))
    EventFilterType.add_member(:sign_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIGN_UP", traits: {"smithy.api#enumValue" => "SIGN_UP"}))
    EventFiltersType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFilterType, name: "member"))
    EventResponseType.add_member(:pass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pass", traits: {"smithy.api#enumValue" => "Pass"}))
    EventResponseType.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Fail", traits: {"smithy.api#enumValue" => "Fail"}))
    EventResponseType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    EventRiskType.add_member(:risk_decision, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskDecisionType, name: "RiskDecision"))
    EventRiskType.add_member(:risk_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskLevelType, name: "RiskLevel"))
    EventRiskType.add_member(:compromised_credentials_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedBooleanType, name: "CompromisedCredentialsDetected"))
    EventRiskType.type = Types::EventRiskType
    EventSourceName.add_member(:user_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_NOTIFICATION", traits: {"smithy.api#enumValue" => "userNotification"}))
    EventSourceName.add_member(:user_auth_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_AUTH_EVENTS", traits: {"smithy.api#enumValue" => "userAuthEvents"}))
    EventType.add_member(:sign_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SignIn", traits: {"smithy.api#enumValue" => "SignIn"}))
    EventType.add_member(:sign_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SignUp", traits: {"smithy.api#enumValue" => "SignUp"}))
    EventType.add_member(:forgot_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ForgotPassword", traits: {"smithy.api#enumValue" => "ForgotPassword"}))
    EventType.add_member(:password_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PasswordChange", traits: {"smithy.api#enumValue" => "PasswordChange"}))
    EventType.add_member(:resend_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResendCode", traits: {"smithy.api#enumValue" => "ResendCode"}))
    ExpiredCodeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    ExpiredCodeException.type = Types::ExpiredCodeException
    ExplicitAuthFlowsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExplicitAuthFlowsType, name: "member"))
    ExplicitAuthFlowsType.add_member(:admin_no_srp_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMIN_NO_SRP_AUTH", traits: {"smithy.api#enumValue" => "ADMIN_NO_SRP_AUTH"}))
    ExplicitAuthFlowsType.add_member(:custom_auth_flow_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_AUTH_FLOW_ONLY", traits: {"smithy.api#enumValue" => "CUSTOM_AUTH_FLOW_ONLY"}))
    ExplicitAuthFlowsType.add_member(:user_password_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_PASSWORD_AUTH", traits: {"smithy.api#enumValue" => "USER_PASSWORD_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_admin_user_password_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_ADMIN_USER_PASSWORD_AUTH", traits: {"smithy.api#enumValue" => "ALLOW_ADMIN_USER_PASSWORD_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_custom_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_CUSTOM_AUTH", traits: {"smithy.api#enumValue" => "ALLOW_CUSTOM_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_user_password_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_USER_PASSWORD_AUTH", traits: {"smithy.api#enumValue" => "ALLOW_USER_PASSWORD_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_user_srp_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_USER_SRP_AUTH", traits: {"smithy.api#enumValue" => "ALLOW_USER_SRP_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_refresh_token_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_REFRESH_TOKEN_AUTH", traits: {"smithy.api#enumValue" => "ALLOW_REFRESH_TOKEN_AUTH"}))
    ExplicitAuthFlowsType.add_member(:allow_user_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_USER_AUTH", traits: {"smithy.api#enumValue" => "ALLOW_USER_AUTH"}))
    FeatureType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FeatureType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FeatureUnavailableInTierException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    FeatureUnavailableInTierException.type = Types::FeatureUnavailableInTierException
    FeedbackValueType.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID", traits: {"smithy.api#enumValue" => "Valid"}))
    FeedbackValueType.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID", traits: {"smithy.api#enumValue" => "Invalid"}))
    FirehoseConfigurationType.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "StreamArn"))
    FirehoseConfigurationType.type = Types::FirehoseConfigurationType
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    ForgetDeviceRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken"))
    ForgetDeviceRequest.add_member(:device_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceKeyType, name: "DeviceKey", traits: {"smithy.api#required" => {}}))
    ForgetDeviceRequest.type = Types::ForgetDeviceRequest
    ForgotPasswordRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    ForgotPasswordRequest.add_member(:secret_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretHashType, name: "SecretHash"))
    ForgotPasswordRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContextDataType, name: "UserContextData"))
    ForgotPasswordRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    ForgotPasswordRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetadataType, name: "AnalyticsMetadata"))
    ForgotPasswordRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    ForgotPasswordRequest.type = Types::ForgotPasswordRequest
    ForgotPasswordResponse.add_member(:code_delivery_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeDeliveryDetailsType, name: "CodeDeliveryDetails"))
    ForgotPasswordResponse.type = Types::ForgotPasswordResponse
    GetCSVHeaderRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    GetCSVHeaderRequest.type = Types::GetCSVHeaderRequest
    GetCSVHeaderResponse.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    GetCSVHeaderResponse.add_member(:csv_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfStringTypes, name: "CSVHeader"))
    GetCSVHeaderResponse.type = Types::GetCSVHeaderResponse
    GetDeviceRequest.add_member(:device_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceKeyType, name: "DeviceKey", traits: {"smithy.api#required" => {}}))
    GetDeviceRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken"))
    GetDeviceRequest.type = Types::GetDeviceRequest
    GetDeviceResponse.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType, name: "Device", traits: {"smithy.api#required" => {}}))
    GetDeviceResponse.type = Types::GetDeviceResponse
    GetGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    GetGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResponse.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "Group"))
    GetGroupResponse.type = Types::GetGroupResponse
    GetIdentityProviderByIdentifierRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    GetIdentityProviderByIdentifierRequest.add_member(:idp_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpIdentifierType, name: "IdpIdentifier", traits: {"smithy.api#required" => {}}))
    GetIdentityProviderByIdentifierRequest.type = Types::GetIdentityProviderByIdentifierRequest
    GetIdentityProviderByIdentifierResponse.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderType, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    GetIdentityProviderByIdentifierResponse.type = Types::GetIdentityProviderByIdentifierResponse
    GetLogDeliveryConfigurationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    GetLogDeliveryConfigurationRequest.type = Types::GetLogDeliveryConfigurationRequest
    GetLogDeliveryConfigurationResponse.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfigurationType, name: "LogDeliveryConfiguration"))
    GetLogDeliveryConfigurationResponse.type = Types::GetLogDeliveryConfigurationResponse
    GetSigningCertificateRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    GetSigningCertificateRequest.type = Types::GetSigningCertificateRequest
    GetSigningCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Certificate"))
    GetSigningCertificateResponse.type = Types::GetSigningCertificateResponse
    GetTokensFromRefreshTokenRequest.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "RefreshToken", traits: {"smithy.api#required" => {}}))
    GetTokensFromRefreshTokenRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    GetTokensFromRefreshTokenRequest.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecretType, name: "ClientSecret"))
    GetTokensFromRefreshTokenRequest.add_member(:device_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceKeyType, name: "DeviceKey"))
    GetTokensFromRefreshTokenRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    GetTokensFromRefreshTokenRequest.type = Types::GetTokensFromRefreshTokenRequest
    GetTokensFromRefreshTokenResponse.add_member(:authentication_result, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationResultType, name: "AuthenticationResult"))
    GetTokensFromRefreshTokenResponse.type = Types::GetTokensFromRefreshTokenResponse
    GetUICustomizationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    GetUICustomizationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId"))
    GetUICustomizationRequest.type = Types::GetUICustomizationRequest
    GetUICustomizationResponse.add_member(:ui_customization, ::Smithy::Schema::Shapes::MemberShape.new(target: UICustomizationType, name: "UICustomization", traits: {"smithy.api#required" => {}}))
    GetUICustomizationResponse.type = Types::GetUICustomizationResponse
    GetUserAttributeVerificationCodeRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    GetUserAttributeVerificationCodeRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameType, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    GetUserAttributeVerificationCodeRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    GetUserAttributeVerificationCodeRequest.type = Types::GetUserAttributeVerificationCodeRequest
    GetUserAttributeVerificationCodeResponse.add_member(:code_delivery_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeDeliveryDetailsType, name: "CodeDeliveryDetails"))
    GetUserAttributeVerificationCodeResponse.type = Types::GetUserAttributeVerificationCodeResponse
    GetUserAuthFactorsRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    GetUserAuthFactorsRequest.type = Types::GetUserAuthFactorsRequest
    GetUserAuthFactorsResponse.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    GetUserAuthFactorsResponse.add_member(:preferred_mfa_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "PreferredMfaSetting"))
    GetUserAuthFactorsResponse.add_member(:user_mfa_setting_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMFASettingListType, name: "UserMFASettingList"))
    GetUserAuthFactorsResponse.add_member(:configured_user_auth_factors, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredUserAuthFactorsListType, name: "ConfiguredUserAuthFactors"))
    GetUserAuthFactorsResponse.type = Types::GetUserAuthFactorsResponse
    GetUserPoolMfaConfigRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    GetUserPoolMfaConfigRequest.type = Types::GetUserPoolMfaConfigRequest
    GetUserPoolMfaConfigResponse.add_member(:sms_mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsMfaConfigType, name: "SmsMfaConfiguration"))
    GetUserPoolMfaConfigResponse.add_member(:software_token_mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareTokenMfaConfigType, name: "SoftwareTokenMfaConfiguration"))
    GetUserPoolMfaConfigResponse.add_member(:email_mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailMfaConfigType, name: "EmailMfaConfiguration"))
    GetUserPoolMfaConfigResponse.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolMfaType, name: "MfaConfiguration"))
    GetUserPoolMfaConfigResponse.add_member(:web_authn_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAuthnConfigurationType, name: "WebAuthnConfiguration"))
    GetUserPoolMfaConfigResponse.type = Types::GetUserPoolMfaConfigResponse
    GetUserRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    GetUserRequest.type = Types::GetUserRequest
    GetUserResponse.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    GetUserResponse.add_member(:user_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeListType, name: "UserAttributes", traits: {"smithy.api#required" => {}}))
    GetUserResponse.add_member(:mfa_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MFAOptionListType, name: "MFAOptions"))
    GetUserResponse.add_member(:preferred_mfa_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "PreferredMfaSetting"))
    GetUserResponse.add_member(:user_mfa_setting_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMFASettingListType, name: "UserMFASettingList"))
    GetUserResponse.type = Types::GetUserResponse
    GlobalSignOutRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    GlobalSignOutRequest.type = Types::GlobalSignOutRequest
    GlobalSignOutResponse.type = Types::GlobalSignOutResponse
    GroupExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    GroupExistsException.type = Types::GroupExistsException
    GroupListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "member"))
    GroupType.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName"))
    GroupType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    GroupType.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionType, name: "Description"))
    GroupType.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "RoleArn"))
    GroupType.add_member(:precedence, ::Smithy::Schema::Shapes::MemberShape.new(target: PrecedenceType, name: "Precedence"))
    GroupType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate"))
    GroupType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate"))
    GroupType.type = Types::GroupType
    HttpHeader.add_member(:header_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "headerName"))
    HttpHeader.add_member(:header_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "headerValue"))
    HttpHeader.type = Types::HttpHeader
    HttpHeaderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpHeader, name: "member"))
    IdentityProviderType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    IdentityProviderType.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderNameType, name: "ProviderName"))
    IdentityProviderType.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderTypeType, name: "ProviderType"))
    IdentityProviderType.add_member(:provider_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderDetailsType, name: "ProviderDetails"))
    IdentityProviderType.add_member(:attribute_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMappingType, name: "AttributeMapping"))
    IdentityProviderType.add_member(:idp_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpIdentifiersListType, name: "IdpIdentifiers"))
    IdentityProviderType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate"))
    IdentityProviderType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate"))
    IdentityProviderType.type = Types::IdentityProviderType
    IdentityProviderTypeType.add_member(:saml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAML", traits: {"smithy.api#enumValue" => "SAML"}))
    IdentityProviderTypeType.add_member(:facebook, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Facebook", traits: {"smithy.api#enumValue" => "Facebook"}))
    IdentityProviderTypeType.add_member(:google, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Google", traits: {"smithy.api#enumValue" => "Google"}))
    IdentityProviderTypeType.add_member(:login_with_amazon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LoginWithAmazon", traits: {"smithy.api#enumValue" => "LoginWithAmazon"}))
    IdentityProviderTypeType.add_member(:sign_in_with_apple, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SignInWithApple", traits: {"smithy.api#enumValue" => "SignInWithApple"}))
    IdentityProviderTypeType.add_member(:oidc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OIDC", traits: {"smithy.api#enumValue" => "OIDC"}))
    IdpIdentifiersListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpIdentifierType, name: "member"))
    InitiateAuthRequest.add_member(:auth_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthFlowType, name: "AuthFlow", traits: {"smithy.api#required" => {}}))
    InitiateAuthRequest.add_member(:auth_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthParametersType, name: "AuthParameters"))
    InitiateAuthRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    InitiateAuthRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    InitiateAuthRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetadataType, name: "AnalyticsMetadata"))
    InitiateAuthRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContextDataType, name: "UserContextData"))
    InitiateAuthRequest.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    InitiateAuthRequest.type = Types::InitiateAuthRequest
    InitiateAuthResponse.add_member(:challenge_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeNameType, name: "ChallengeName"))
    InitiateAuthResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    InitiateAuthResponse.add_member(:challenge_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeParametersType, name: "ChallengeParameters"))
    InitiateAuthResponse.add_member(:authentication_result, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationResultType, name: "AuthenticationResult"))
    InitiateAuthResponse.add_member(:available_challenges, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailableChallengeListType, name: "AvailableChallenges"))
    InitiateAuthResponse.type = Types::InitiateAuthResponse
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    InternalErrorException.type = Types::InternalErrorException
    InvalidEmailRoleAccessPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    InvalidEmailRoleAccessPolicyException.type = Types::InvalidEmailRoleAccessPolicyException
    InvalidLambdaResponseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    InvalidLambdaResponseException.type = Types::InvalidLambdaResponseException
    InvalidOAuthFlowException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    InvalidOAuthFlowException.type = Types::InvalidOAuthFlowException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    InvalidParameterException.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidParameterExceptionReasonCodeType, name: "reasonCode"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPasswordException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    InvalidPasswordException.type = Types::InvalidPasswordException
    InvalidSmsRoleAccessPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    InvalidSmsRoleAccessPolicyException.type = Types::InvalidSmsRoleAccessPolicyException
    InvalidSmsRoleTrustRelationshipException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    InvalidSmsRoleTrustRelationshipException.type = Types::InvalidSmsRoleTrustRelationshipException
    InvalidUserPoolConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    InvalidUserPoolConfigurationException.type = Types::InvalidUserPoolConfigurationException
    LambdaConfigType.add_member(:pre_sign_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PreSignUp"))
    LambdaConfigType.add_member(:custom_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "CustomMessage"))
    LambdaConfigType.add_member(:post_confirmation, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PostConfirmation"))
    LambdaConfigType.add_member(:pre_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PreAuthentication"))
    LambdaConfigType.add_member(:post_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PostAuthentication"))
    LambdaConfigType.add_member(:define_auth_challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "DefineAuthChallenge"))
    LambdaConfigType.add_member(:create_auth_challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "CreateAuthChallenge"))
    LambdaConfigType.add_member(:verify_auth_challenge_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "VerifyAuthChallengeResponse"))
    LambdaConfigType.add_member(:pre_token_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PreTokenGeneration"))
    LambdaConfigType.add_member(:user_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "UserMigration"))
    LambdaConfigType.add_member(:pre_token_generation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PreTokenGenerationVersionConfigType, name: "PreTokenGenerationConfig"))
    LambdaConfigType.add_member(:custom_sms_sender, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSMSLambdaVersionConfigType, name: "CustomSMSSender"))
    LambdaConfigType.add_member(:custom_email_sender, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEmailLambdaVersionConfigType, name: "CustomEmailSender"))
    LambdaConfigType.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "KMSKeyID"))
    LambdaConfigType.type = Types::LambdaConfigType
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    LinksType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageIdType, name: "key"))
    LinksType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkUrlType, name: "value"))
    ListDevicesRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    ListDevicesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLimitType, name: "Limit"))
    ListDevicesRequest.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPaginationTokenType, name: "PaginationToken"))
    ListDevicesRequest.type = Types::ListDevicesRequest
    ListDevicesResponse.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceListType, name: "Devices"))
    ListDevicesResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPaginationTokenType, name: "PaginationToken"))
    ListDevicesResponse.type = Types::ListDevicesResponse
    ListGroupsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLimitType, name: "Limit"))
    ListGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupListType, name: "Groups"))
    ListGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListIdentityProvidersRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    ListIdentityProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListProvidersLimitType, name: "MaxResults"))
    ListIdentityProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKeyType, name: "NextToken"))
    ListIdentityProvidersRequest.type = Types::ListIdentityProvidersRequest
    ListIdentityProvidersResponse.add_member(:providers, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvidersListType, name: "Providers", traits: {"smithy.api#required" => {}}))
    ListIdentityProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKeyType, name: "NextToken"))
    ListIdentityProvidersResponse.type = Types::ListIdentityProvidersResponse
    ListOfStringTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "member"))
    ListResourceServersRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    ListResourceServersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourceServersLimitType, name: "MaxResults"))
    ListResourceServersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKeyType, name: "NextToken"))
    ListResourceServersRequest.type = Types::ListResourceServersRequest
    ListResourceServersResponse.add_member(:resource_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServersListType, name: "ResourceServers", traits: {"smithy.api#required" => {}}))
    ListResourceServersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKeyType, name: "NextToken"))
    ListResourceServersResponse.type = Types::ListResourceServersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolTagsType, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTermsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    ListTermsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTermsRequestMaxResultsInteger, name: "MaxResults"))
    ListTermsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "NextToken"))
    ListTermsRequest.type = Types::ListTermsRequest
    ListTermsResponse.add_member(:terms, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsDescriptionListType, name: "Terms", traits: {"smithy.api#required" => {}}))
    ListTermsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "NextToken"))
    ListTermsResponse.type = Types::ListTermsResponse
    ListUserImportJobsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    ListUserImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolQueryLimitType, name: "MaxResults", traits: {"smithy.api#required" => {}}))
    ListUserImportJobsRequest.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKeyType, name: "PaginationToken"))
    ListUserImportJobsRequest.type = Types::ListUserImportJobsRequest
    ListUserImportJobsResponse.add_member(:user_import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobsListType, name: "UserImportJobs"))
    ListUserImportJobsResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKeyType, name: "PaginationToken"))
    ListUserImportJobsResponse.type = Types::ListUserImportJobsResponse
    ListUserPoolClientsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    ListUserPoolClientsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLimit, name: "MaxResults"))
    ListUserPoolClientsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    ListUserPoolClientsRequest.type = Types::ListUserPoolClientsRequest
    ListUserPoolClientsResponse.add_member(:user_pool_clients, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolClientListType, name: "UserPoolClients"))
    ListUserPoolClientsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    ListUserPoolClientsResponse.type = Types::ListUserPoolClientsResponse
    ListUserPoolsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKeyType, name: "NextToken"))
    ListUserPoolsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolQueryLimitType, name: "MaxResults", traits: {"smithy.api#required" => {}}))
    ListUserPoolsRequest.type = Types::ListUserPoolsRequest
    ListUserPoolsResponse.add_member(:user_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolListType, name: "UserPools"))
    ListUserPoolsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKeyType, name: "NextToken"))
    ListUserPoolsResponse.type = Types::ListUserPoolsResponse
    ListUsersInGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    ListUsersInGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    ListUsersInGroupRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLimitType, name: "Limit"))
    ListUsersInGroupRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    ListUsersInGroupRequest.type = Types::ListUsersInGroupRequest
    ListUsersInGroupResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UsersListType, name: "Users"))
    ListUsersInGroupResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    ListUsersInGroupResponse.type = Types::ListUsersInGroupResponse
    ListUsersRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    ListUsersRequest.add_member(:attributes_to_get, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchedAttributeNamesListType, name: "AttributesToGet"))
    ListUsersRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLimitType, name: "Limit"))
    ListUsersRequest.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPaginationTokenType, name: "PaginationToken"))
    ListUsersRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: UserFilterType, name: "Filter"))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UsersListType, name: "Users"))
    ListUsersResponse.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPaginationTokenType, name: "PaginationToken"))
    ListUsersResponse.type = Types::ListUsersResponse
    ListWebAuthnCredentialsRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    ListWebAuthnCredentialsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    ListWebAuthnCredentialsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAuthnCredentialsQueryLimitType, name: "MaxResults"))
    ListWebAuthnCredentialsRequest.type = Types::ListWebAuthnCredentialsRequest
    ListWebAuthnCredentialsResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAuthnCredentialDescriptionListType, name: "Credentials", traits: {"smithy.api#required" => {}}))
    ListWebAuthnCredentialsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationKey, name: "NextToken"))
    ListWebAuthnCredentialsResponse.type = Types::ListWebAuthnCredentialsResponse
    LogConfigurationListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationType, name: "member"))
    LogConfigurationType.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel", traits: {"smithy.api#required" => {}}))
    LogConfigurationType.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceName, name: "EventSource", traits: {"smithy.api#required" => {}}))
    LogConfigurationType.add_member(:cloud_watch_logs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsConfigurationType, name: "CloudWatchLogsConfiguration"))
    LogConfigurationType.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ConfigurationType, name: "S3Configuration"))
    LogConfigurationType.add_member(:firehose_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FirehoseConfigurationType, name: "FirehoseConfiguration"))
    LogConfigurationType.type = Types::LogConfigurationType
    LogDeliveryConfigurationType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    LogDeliveryConfigurationType.add_member(:log_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationListType, name: "LogConfigurations", traits: {"smithy.api#required" => {}}))
    LogDeliveryConfigurationType.type = Types::LogDeliveryConfigurationType
    LogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    LogoutURLsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectUrlType, name: "member"))
    MFAMethodNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    MFAMethodNotFoundException.type = Types::MFAMethodNotFoundException
    MFAOptionListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MFAOptionType, name: "member"))
    MFAOptionType.add_member(:delivery_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryMediumType, name: "DeliveryMedium"))
    MFAOptionType.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameType, name: "AttributeName"))
    MFAOptionType.type = Types::MFAOptionType
    ManagedLoginBrandingExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    ManagedLoginBrandingExistsException.type = Types::ManagedLoginBrandingExistsException
    ManagedLoginBrandingType.add_member(:managed_login_branding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLoginBrandingIdType, name: "ManagedLoginBrandingId"))
    ManagedLoginBrandingType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    ManagedLoginBrandingType.add_member(:use_cognito_provided_values, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "UseCognitoProvidedValues", traits: {"smithy.api#default" => false}))
    ManagedLoginBrandingType.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "Settings"))
    ManagedLoginBrandingType.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetListType, name: "Assets"))
    ManagedLoginBrandingType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate"))
    ManagedLoginBrandingType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate"))
    ManagedLoginBrandingType.type = Types::ManagedLoginBrandingType
    MessageActionType.add_member(:resend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESEND", traits: {"smithy.api#enumValue" => "RESEND"}))
    MessageActionType.add_member(:suppress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPPRESS", traits: {"smithy.api#enumValue" => "SUPPRESS"}))
    MessageTemplateType.add_member(:sms_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsInviteMessageType, name: "SMSMessage"))
    MessageTemplateType.add_member(:email_message, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailInviteMessageType, name: "EmailMessage"))
    MessageTemplateType.add_member(:email_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationSubjectType, name: "EmailSubject"))
    MessageTemplateType.type = Types::MessageTemplateType
    NewDeviceMetadataType.add_member(:device_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceKeyType, name: "DeviceKey"))
    NewDeviceMetadataType.add_member(:device_group_key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "DeviceGroupKey"))
    NewDeviceMetadataType.type = Types::NewDeviceMetadataType
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    NotAuthorizedException.type = Types::NotAuthorizedException
    NotifyConfigurationType.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "From"))
    NotifyConfigurationType.add_member(:reply_to, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "ReplyTo"))
    NotifyConfigurationType.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SourceArn", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationType.add_member(:block_email, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEmailType, name: "BlockEmail"))
    NotifyConfigurationType.add_member(:no_action_email, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEmailType, name: "NoActionEmail"))
    NotifyConfigurationType.add_member(:mfa_email, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEmailType, name: "MfaEmail"))
    NotifyConfigurationType.type = Types::NotifyConfigurationType
    NotifyEmailType.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailNotificationSubjectType, name: "Subject", traits: {"smithy.api#required" => {}}))
    NotifyEmailType.add_member(:html_body, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailNotificationBodyType, name: "HtmlBody"))
    NotifyEmailType.add_member(:text_body, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailNotificationBodyType, name: "TextBody"))
    NotifyEmailType.type = Types::NotifyEmailType
    NumberAttributeConstraintsType.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "MinValue"))
    NumberAttributeConstraintsType.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "MaxValue"))
    NumberAttributeConstraintsType.type = Types::NumberAttributeConstraintsType
    OAuthFlowType.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "code", traits: {"smithy.api#enumValue" => "code"}))
    OAuthFlowType.add_member(:implicit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "implicit", traits: {"smithy.api#enumValue" => "implicit"}))
    OAuthFlowType.add_member(:client_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "client_credentials", traits: {"smithy.api#enumValue" => "client_credentials"}))
    OAuthFlowsType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthFlowType, name: "member"))
    PasswordHistoryPolicyViolationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    PasswordHistoryPolicyViolationException.type = Types::PasswordHistoryPolicyViolationException
    PasswordPolicyType.add_member(:minimum_length, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordPolicyMinLengthType, name: "MinimumLength"))
    PasswordPolicyType.add_member(:require_uppercase, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireUppercase", traits: {"smithy.api#default" => false}))
    PasswordPolicyType.add_member(:require_lowercase, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireLowercase", traits: {"smithy.api#default" => false}))
    PasswordPolicyType.add_member(:require_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireNumbers", traits: {"smithy.api#default" => false}))
    PasswordPolicyType.add_member(:require_symbols, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireSymbols", traits: {"smithy.api#default" => false}))
    PasswordPolicyType.add_member(:password_history_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordHistorySizeType, name: "PasswordHistorySize"))
    PasswordPolicyType.add_member(:temporary_password_validity_days, ::Smithy::Schema::Shapes::MemberShape.new(target: TemporaryPasswordValidityDaysType, name: "TemporaryPasswordValidityDays", traits: {"smithy.api#default" => 0}))
    PasswordPolicyType.type = Types::PasswordPolicyType
    PasswordResetRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    PasswordResetRequiredException.type = Types::PasswordResetRequiredException
    PreTokenGenerationLambdaVersionType.add_member(:v1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V1_0", traits: {"smithy.api#enumValue" => "V1_0"}))
    PreTokenGenerationLambdaVersionType.add_member(:v2_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V2_0", traits: {"smithy.api#enumValue" => "V2_0"}))
    PreTokenGenerationLambdaVersionType.add_member(:v3_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V3_0", traits: {"smithy.api#enumValue" => "V3_0"}))
    PreTokenGenerationVersionConfigType.add_member(:lambda_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PreTokenGenerationLambdaVersionType, name: "LambdaVersion", traits: {"smithy.api#required" => {}}))
    PreTokenGenerationVersionConfigType.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "LambdaArn", traits: {"smithy.api#required" => {}}))
    PreTokenGenerationVersionConfigType.type = Types::PreTokenGenerationVersionConfigType
    PreconditionNotMetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    PreconditionNotMetException.type = Types::PreconditionNotMetException
    PreventUserExistenceErrorTypes.add_member(:legacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGACY", traits: {"smithy.api#enumValue" => "LEGACY"}))
    PreventUserExistenceErrorTypes.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ProviderDescription.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderNameType, name: "ProviderName"))
    ProviderDescription.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderTypeType, name: "ProviderType"))
    ProviderDescription.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate"))
    ProviderDescription.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate"))
    ProviderDescription.type = Types::ProviderDescription
    ProviderDetailsType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "key"))
    ProviderDetailsType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "value"))
    ProviderUserIdentifierType.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderNameType, name: "ProviderName"))
    ProviderUserIdentifierType.add_member(:provider_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "ProviderAttributeName"))
    ProviderUserIdentifierType.add_member(:provider_attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "ProviderAttributeValue"))
    ProviderUserIdentifierType.type = Types::ProviderUserIdentifierType
    ProvidersListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderDescription, name: "member"))
    RecoveryMechanismsType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryOptionType, name: "member"))
    RecoveryOptionNameType.add_member(:verified_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFIED_EMAIL", traits: {"smithy.api#enumValue" => "verified_email"}))
    RecoveryOptionNameType.add_member(:verified_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFIED_PHONE_NUMBER", traits: {"smithy.api#enumValue" => "verified_phone_number"}))
    RecoveryOptionNameType.add_member(:admin_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMIN_ONLY", traits: {"smithy.api#enumValue" => "admin_only"}))
    RecoveryOptionType.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityType, name: "Priority", traits: {"smithy.api#required" => {}}))
    RecoveryOptionType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryOptionNameType, name: "Name", traits: {"smithy.api#required" => {}}))
    RecoveryOptionType.type = Types::RecoveryOptionType
    RefreshTokenReuseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    RefreshTokenReuseException.type = Types::RefreshTokenReuseException
    RefreshTokenRotationType.add_member(:feature, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureType, name: "Feature", traits: {"smithy.api#required" => {}}))
    RefreshTokenRotationType.add_member(:retry_grace_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryGracePeriodSecondsType, name: "RetryGracePeriodSeconds"))
    RefreshTokenRotationType.type = Types::RefreshTokenRotationType
    ResendConfirmationCodeRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    ResendConfirmationCodeRequest.add_member(:secret_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretHashType, name: "SecretHash"))
    ResendConfirmationCodeRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContextDataType, name: "UserContextData"))
    ResendConfirmationCodeRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    ResendConfirmationCodeRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetadataType, name: "AnalyticsMetadata"))
    ResendConfirmationCodeRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    ResendConfirmationCodeRequest.type = Types::ResendConfirmationCodeRequest
    ResendConfirmationCodeResponse.add_member(:code_delivery_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeDeliveryDetailsType, name: "CodeDeliveryDetails"))
    ResendConfirmationCodeResponse.type = Types::ResendConfirmationCodeResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceServerScopeListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerScopeType, name: "member"))
    ResourceServerScopeType.add_member(:scope_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerScopeNameType, name: "ScopeName", traits: {"smithy.api#required" => {}}))
    ResourceServerScopeType.add_member(:scope_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerScopeDescriptionType, name: "ScopeDescription", traits: {"smithy.api#required" => {}}))
    ResourceServerScopeType.type = Types::ResourceServerScopeType
    ResourceServerType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    ResourceServerType.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerIdentifierType, name: "Identifier"))
    ResourceServerType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerNameType, name: "Name"))
    ResourceServerType.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerScopeListType, name: "Scopes"))
    ResourceServerType.type = Types::ResourceServerType
    ResourceServersListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerType, name: "member"))
    RespondToAuthChallengeRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    RespondToAuthChallengeRequest.add_member(:challenge_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeNameType, name: "ChallengeName", traits: {"smithy.api#required" => {}}))
    RespondToAuthChallengeRequest.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    RespondToAuthChallengeRequest.add_member(:challenge_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeResponsesType, name: "ChallengeResponses"))
    RespondToAuthChallengeRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetadataType, name: "AnalyticsMetadata"))
    RespondToAuthChallengeRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContextDataType, name: "UserContextData"))
    RespondToAuthChallengeRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    RespondToAuthChallengeRequest.type = Types::RespondToAuthChallengeRequest
    RespondToAuthChallengeResponse.add_member(:challenge_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeNameType, name: "ChallengeName"))
    RespondToAuthChallengeResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    RespondToAuthChallengeResponse.add_member(:challenge_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ChallengeParametersType, name: "ChallengeParameters"))
    RespondToAuthChallengeResponse.add_member(:authentication_result, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationResultType, name: "AuthenticationResult"))
    RespondToAuthChallengeResponse.type = Types::RespondToAuthChallengeResponse
    RevokeTokenRequest.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "Token", traits: {"smithy.api#required" => {}}))
    RevokeTokenRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    RevokeTokenRequest.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecretType, name: "ClientSecret"))
    RevokeTokenRequest.type = Types::RevokeTokenRequest
    RevokeTokenResponse.type = Types::RevokeTokenResponse
    RiskConfigurationType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    RiskConfigurationType.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId"))
    RiskConfigurationType.add_member(:compromised_credentials_risk_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CompromisedCredentialsRiskConfigurationType, name: "CompromisedCredentialsRiskConfiguration"))
    RiskConfigurationType.add_member(:account_takeover_risk_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTakeoverRiskConfigurationType, name: "AccountTakeoverRiskConfiguration"))
    RiskConfigurationType.add_member(:risk_exception_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskExceptionConfigurationType, name: "RiskExceptionConfiguration"))
    RiskConfigurationType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate"))
    RiskConfigurationType.type = Types::RiskConfigurationType
    RiskDecisionType.add_member(:no_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NoRisk", traits: {"smithy.api#enumValue" => "NoRisk"}))
    RiskDecisionType.add_member(:account_takeover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccountTakeover", traits: {"smithy.api#enumValue" => "AccountTakeover"}))
    RiskDecisionType.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Block", traits: {"smithy.api#enumValue" => "Block"}))
    RiskExceptionConfigurationType.add_member(:blocked_ip_range_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedIPRangeListType, name: "BlockedIPRangeList"))
    RiskExceptionConfigurationType.add_member(:skipped_ip_range_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SkippedIPRangeListType, name: "SkippedIPRangeList"))
    RiskExceptionConfigurationType.type = Types::RiskExceptionConfigurationType
    RiskLevelType.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Low", traits: {"smithy.api#enumValue" => "Low"}))
    RiskLevelType.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Medium", traits: {"smithy.api#enumValue" => "Medium"}))
    RiskLevelType.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "High", traits: {"smithy.api#enumValue" => "High"}))
    S3ConfigurationType.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ArnType, name: "BucketArn"))
    S3ConfigurationType.type = Types::S3ConfigurationType
    SMSMfaSettingsType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Enabled", traits: {"smithy.api#default" => false}))
    SMSMfaSettingsType.add_member(:preferred_mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "PreferredMfa", traits: {"smithy.api#default" => false}))
    SMSMfaSettingsType.type = Types::SMSMfaSettingsType
    SchemaAttributeType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributeNameType, name: "Name"))
    SchemaAttributeType.add_member(:attribute_data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDataType, name: "AttributeDataType"))
    SchemaAttributeType.add_member(:developer_only_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "DeveloperOnlyAttribute", traits: {"smithy.api#default" => nil}))
    SchemaAttributeType.add_member(:mutable, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Mutable", traits: {"smithy.api#default" => nil}))
    SchemaAttributeType.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Required", traits: {"smithy.api#default" => nil}))
    SchemaAttributeType.add_member(:number_attribute_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberAttributeConstraintsType, name: "NumberAttributeConstraints"))
    SchemaAttributeType.add_member(:string_attribute_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeConstraintsType, name: "StringAttributeConstraints"))
    SchemaAttributeType.type = Types::SchemaAttributeType
    SchemaAttributesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaAttributeType, name: "member"))
    ScopeDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    ScopeDoesNotExistException.type = Types::ScopeDoesNotExistException
    ScopeListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeType, name: "member"))
    SearchedAttributeNamesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameType, name: "member"))
    SetLogDeliveryConfigurationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    SetLogDeliveryConfigurationRequest.add_member(:log_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationListType, name: "LogConfigurations", traits: {"smithy.api#required" => {}}))
    SetLogDeliveryConfigurationRequest.type = Types::SetLogDeliveryConfigurationRequest
    SetLogDeliveryConfigurationResponse.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfigurationType, name: "LogDeliveryConfiguration"))
    SetLogDeliveryConfigurationResponse.type = Types::SetLogDeliveryConfigurationResponse
    SetRiskConfigurationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    SetRiskConfigurationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId"))
    SetRiskConfigurationRequest.add_member(:compromised_credentials_risk_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CompromisedCredentialsRiskConfigurationType, name: "CompromisedCredentialsRiskConfiguration"))
    SetRiskConfigurationRequest.add_member(:account_takeover_risk_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTakeoverRiskConfigurationType, name: "AccountTakeoverRiskConfiguration"))
    SetRiskConfigurationRequest.add_member(:risk_exception_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskExceptionConfigurationType, name: "RiskExceptionConfiguration"))
    SetRiskConfigurationRequest.type = Types::SetRiskConfigurationRequest
    SetRiskConfigurationResponse.add_member(:risk_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskConfigurationType, name: "RiskConfiguration", traits: {"smithy.api#required" => {}}))
    SetRiskConfigurationResponse.type = Types::SetRiskConfigurationResponse
    SetUICustomizationRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    SetUICustomizationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId"))
    SetUICustomizationRequest.add_member(:css, ::Smithy::Schema::Shapes::MemberShape.new(target: CSSType, name: "CSS"))
    SetUICustomizationRequest.add_member(:image_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFileType, name: "ImageFile"))
    SetUICustomizationRequest.type = Types::SetUICustomizationRequest
    SetUICustomizationResponse.add_member(:ui_customization, ::Smithy::Schema::Shapes::MemberShape.new(target: UICustomizationType, name: "UICustomization", traits: {"smithy.api#required" => {}}))
    SetUICustomizationResponse.type = Types::SetUICustomizationResponse
    SetUserMFAPreferenceRequest.add_member(:sms_mfa_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SMSMfaSettingsType, name: "SMSMfaSettings"))
    SetUserMFAPreferenceRequest.add_member(:software_token_mfa_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareTokenMfaSettingsType, name: "SoftwareTokenMfaSettings"))
    SetUserMFAPreferenceRequest.add_member(:email_mfa_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailMfaSettingsType, name: "EmailMfaSettings"))
    SetUserMFAPreferenceRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    SetUserMFAPreferenceRequest.type = Types::SetUserMFAPreferenceRequest
    SetUserMFAPreferenceResponse.type = Types::SetUserMFAPreferenceResponse
    SetUserPoolMfaConfigRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    SetUserPoolMfaConfigRequest.add_member(:sms_mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsMfaConfigType, name: "SmsMfaConfiguration"))
    SetUserPoolMfaConfigRequest.add_member(:software_token_mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareTokenMfaConfigType, name: "SoftwareTokenMfaConfiguration"))
    SetUserPoolMfaConfigRequest.add_member(:email_mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailMfaConfigType, name: "EmailMfaConfiguration"))
    SetUserPoolMfaConfigRequest.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolMfaType, name: "MfaConfiguration"))
    SetUserPoolMfaConfigRequest.add_member(:web_authn_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAuthnConfigurationType, name: "WebAuthnConfiguration"))
    SetUserPoolMfaConfigRequest.type = Types::SetUserPoolMfaConfigRequest
    SetUserPoolMfaConfigResponse.add_member(:sms_mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsMfaConfigType, name: "SmsMfaConfiguration"))
    SetUserPoolMfaConfigResponse.add_member(:software_token_mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareTokenMfaConfigType, name: "SoftwareTokenMfaConfiguration"))
    SetUserPoolMfaConfigResponse.add_member(:email_mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailMfaConfigType, name: "EmailMfaConfiguration"))
    SetUserPoolMfaConfigResponse.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolMfaType, name: "MfaConfiguration"))
    SetUserPoolMfaConfigResponse.add_member(:web_authn_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAuthnConfigurationType, name: "WebAuthnConfiguration"))
    SetUserPoolMfaConfigResponse.type = Types::SetUserPoolMfaConfigResponse
    SetUserSettingsRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    SetUserSettingsRequest.add_member(:mfa_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MFAOptionListType, name: "MFAOptions", traits: {"smithy.api#required" => {}}))
    SetUserSettingsRequest.type = Types::SetUserSettingsRequest
    SetUserSettingsResponse.type = Types::SetUserSettingsResponse
    SignInPolicyType.add_member(:allowed_first_auth_factors, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedFirstAuthFactorsListType, name: "AllowedFirstAuthFactors"))
    SignInPolicyType.type = Types::SignInPolicyType
    SignUpRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    SignUpRequest.add_member(:secret_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretHashType, name: "SecretHash"))
    SignUpRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    SignUpRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "Password"))
    SignUpRequest.add_member(:user_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeListType, name: "UserAttributes"))
    SignUpRequest.add_member(:validation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeListType, name: "ValidationData"))
    SignUpRequest.add_member(:analytics_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsMetadataType, name: "AnalyticsMetadata"))
    SignUpRequest.add_member(:user_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContextDataType, name: "UserContextData"))
    SignUpRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    SignUpRequest.type = Types::SignUpRequest
    SignUpResponse.add_member(:user_confirmed, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "UserConfirmed", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SignUpResponse.add_member(:code_delivery_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeDeliveryDetailsType, name: "CodeDeliveryDetails"))
    SignUpResponse.add_member(:user_sub, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "UserSub", traits: {"smithy.api#required" => {}}))
    SignUpResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    SignUpResponse.type = Types::SignUpResponse
    SkippedIPRangeListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "member"))
    SmsConfigurationType.add_member(:sns_caller_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SnsCallerArn", traits: {"smithy.api#required" => {}}))
    SmsConfigurationType.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "ExternalId"))
    SmsConfigurationType.add_member(:sns_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionCodeType, name: "SnsRegion"))
    SmsConfigurationType.type = Types::SmsConfigurationType
    SmsMfaConfigType.add_member(:sms_authentication_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsVerificationMessageType, name: "SmsAuthenticationMessage"))
    SmsMfaConfigType.add_member(:sms_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsConfigurationType, name: "SmsConfiguration"))
    SmsMfaConfigType.type = Types::SmsMfaConfigType
    SoftwareTokenMFANotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    SoftwareTokenMFANotFoundException.type = Types::SoftwareTokenMFANotFoundException
    SoftwareTokenMfaConfigType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Enabled", traits: {"smithy.api#default" => false}))
    SoftwareTokenMfaConfigType.type = Types::SoftwareTokenMfaConfigType
    SoftwareTokenMfaSettingsType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Enabled", traits: {"smithy.api#default" => false}))
    SoftwareTokenMfaSettingsType.add_member(:preferred_mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "PreferredMfa", traits: {"smithy.api#default" => false}))
    SoftwareTokenMfaSettingsType.type = Types::SoftwareTokenMfaSettingsType
    StartUserImportJobRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    StartUserImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobIdType, name: "JobId", traits: {"smithy.api#required" => {}}))
    StartUserImportJobRequest.type = Types::StartUserImportJobRequest
    StartUserImportJobResponse.add_member(:user_import_job, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobType, name: "UserImportJob"))
    StartUserImportJobResponse.type = Types::StartUserImportJobResponse
    StartWebAuthnRegistrationRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    StartWebAuthnRegistrationRequest.type = Types::StartWebAuthnRegistrationRequest
    StartWebAuthnRegistrationResponse.add_member(:credential_creation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "CredentialCreationOptions", traits: {"smithy.api#required" => {}}))
    StartWebAuthnRegistrationResponse.type = Types::StartWebAuthnRegistrationResponse
    StatusType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    StatusType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    StopUserImportJobRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    StopUserImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobIdType, name: "JobId", traits: {"smithy.api#required" => {}}))
    StopUserImportJobRequest.type = Types::StopUserImportJobRequest
    StopUserImportJobResponse.add_member(:user_import_job, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobType, name: "UserImportJob"))
    StopUserImportJobResponse.type = Types::StopUserImportJobResponse
    StringAttributeConstraintsType.add_member(:min_length, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "MinLength"))
    StringAttributeConstraintsType.add_member(:max_length, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "MaxLength"))
    StringAttributeConstraintsType.type = Types::StringAttributeConstraintsType
    SupportedIdentityProvidersListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderNameType, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolTagsType, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TermsDescriptionListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsDescriptionType, name: "member"))
    TermsDescriptionType.add_member(:terms_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsIdType, name: "TermsId", traits: {"smithy.api#required" => {}}))
    TermsDescriptionType.add_member(:terms_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsNameType, name: "TermsName", traits: {"smithy.api#required" => {}}))
    TermsDescriptionType.add_member(:enforcement, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsEnforcementType, name: "Enforcement", traits: {"smithy.api#required" => {}}))
    TermsDescriptionType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate", traits: {"smithy.api#required" => {}}))
    TermsDescriptionType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate", traits: {"smithy.api#required" => {}}))
    TermsDescriptionType.type = Types::TermsDescriptionType
    TermsEnforcementType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    TermsExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    TermsExistsException.type = Types::TermsExistsException
    TermsSourceType.add_member(:link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINK", traits: {"smithy.api#enumValue" => "LINK"}))
    TermsType.add_member(:terms_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsIdType, name: "TermsId", traits: {"smithy.api#required" => {}}))
    TermsType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    TermsType.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    TermsType.add_member(:terms_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsNameType, name: "TermsName", traits: {"smithy.api#required" => {}}))
    TermsType.add_member(:terms_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsSourceType, name: "TermsSource", traits: {"smithy.api#required" => {}}))
    TermsType.add_member(:enforcement, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsEnforcementType, name: "Enforcement", traits: {"smithy.api#required" => {}}))
    TermsType.add_member(:links, ::Smithy::Schema::Shapes::MemberShape.new(target: LinksType, name: "Links", traits: {"smithy.api#required" => {}}))
    TermsType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate", traits: {"smithy.api#required" => {}}))
    TermsType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate", traits: {"smithy.api#required" => {}}))
    TermsType.type = Types::TermsType
    TierChangeNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    TierChangeNotAllowedException.type = Types::TierChangeNotAllowedException
    TimeUnitsType.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECONDS", traits: {"smithy.api#enumValue" => "seconds"}))
    TimeUnitsType.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINUTES", traits: {"smithy.api#enumValue" => "minutes"}))
    TimeUnitsType.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURS", traits: {"smithy.api#enumValue" => "hours"}))
    TimeUnitsType.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "days"}))
    TokenValidityUnitsType.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeUnitsType, name: "AccessToken"))
    TokenValidityUnitsType.add_member(:id_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeUnitsType, name: "IdToken"))
    TokenValidityUnitsType.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeUnitsType, name: "RefreshToken"))
    TokenValidityUnitsType.type = Types::TokenValidityUnitsType
    TooManyFailedAttemptsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    TooManyFailedAttemptsException.type = Types::TooManyFailedAttemptsException
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UICustomizationType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    UICustomizationType.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId"))
    UICustomizationType.add_member(:image_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageUrlType, name: "ImageUrl"))
    UICustomizationType.add_member(:css, ::Smithy::Schema::Shapes::MemberShape.new(target: CSSType, name: "CSS"))
    UICustomizationType.add_member(:css_version, ::Smithy::Schema::Shapes::MemberShape.new(target: CSSVersionType, name: "CSSVersion"))
    UICustomizationType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate"))
    UICustomizationType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate"))
    UICustomizationType.type = Types::UICustomizationType
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UnexpectedLambdaException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UnexpectedLambdaException.type = Types::UnexpectedLambdaException
    UnsupportedIdentityProviderException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UnsupportedIdentityProviderException.type = Types::UnsupportedIdentityProviderException
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UnsupportedTokenTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UnsupportedTokenTypeException.type = Types::UnsupportedTokenTypeException
    UnsupportedUserStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UnsupportedUserStateException.type = Types::UnsupportedUserStateException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolTagsListType, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAuthEventFeedbackRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    UpdateAuthEventFeedbackRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    UpdateAuthEventFeedbackRequest.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventIdType, name: "EventId", traits: {"smithy.api#required" => {}}))
    UpdateAuthEventFeedbackRequest.add_member(:feedback_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "FeedbackToken", traits: {"smithy.api#required" => {}}))
    UpdateAuthEventFeedbackRequest.add_member(:feedback_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackValueType, name: "FeedbackValue", traits: {"smithy.api#required" => {}}))
    UpdateAuthEventFeedbackRequest.type = Types::UpdateAuthEventFeedbackRequest
    UpdateAuthEventFeedbackResponse.type = Types::UpdateAuthEventFeedbackResponse
    UpdateDeviceStatusRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    UpdateDeviceStatusRequest.add_member(:device_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceKeyType, name: "DeviceKey", traits: {"smithy.api#required" => {}}))
    UpdateDeviceStatusRequest.add_member(:device_remembered_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceRememberedStatusType, name: "DeviceRememberedStatus"))
    UpdateDeviceStatusRequest.type = Types::UpdateDeviceStatusRequest
    UpdateDeviceStatusResponse.type = Types::UpdateDeviceStatusResponse
    UpdateGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionType, name: "Description"))
    UpdateGroupRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "RoleArn"))
    UpdateGroupRequest.add_member(:precedence, ::Smithy::Schema::Shapes::MemberShape.new(target: PrecedenceType, name: "Precedence"))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResponse.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "Group"))
    UpdateGroupResponse.type = Types::UpdateGroupResponse
    UpdateIdentityProviderRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    UpdateIdentityProviderRequest.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderNameType, name: "ProviderName", traits: {"smithy.api#required" => {}}))
    UpdateIdentityProviderRequest.add_member(:provider_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderDetailsType, name: "ProviderDetails"))
    UpdateIdentityProviderRequest.add_member(:attribute_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMappingType, name: "AttributeMapping"))
    UpdateIdentityProviderRequest.add_member(:idp_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpIdentifiersListType, name: "IdpIdentifiers"))
    UpdateIdentityProviderRequest.type = Types::UpdateIdentityProviderRequest
    UpdateIdentityProviderResponse.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderType, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    UpdateIdentityProviderResponse.type = Types::UpdateIdentityProviderResponse
    UpdateManagedLoginBrandingRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    UpdateManagedLoginBrandingRequest.add_member(:managed_login_branding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLoginBrandingIdType, name: "ManagedLoginBrandingId"))
    UpdateManagedLoginBrandingRequest.add_member(:use_cognito_provided_values, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "UseCognitoProvidedValues", traits: {"smithy.api#default" => false}))
    UpdateManagedLoginBrandingRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "Settings"))
    UpdateManagedLoginBrandingRequest.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetListType, name: "Assets"))
    UpdateManagedLoginBrandingRequest.type = Types::UpdateManagedLoginBrandingRequest
    UpdateManagedLoginBrandingResponse.add_member(:managed_login_branding, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLoginBrandingType, name: "ManagedLoginBranding"))
    UpdateManagedLoginBrandingResponse.type = Types::UpdateManagedLoginBrandingResponse
    UpdateResourceServerRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    UpdateResourceServerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerIdentifierType, name: "Identifier", traits: {"smithy.api#required" => {}}))
    UpdateResourceServerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerNameType, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateResourceServerRequest.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerScopeListType, name: "Scopes"))
    UpdateResourceServerRequest.type = Types::UpdateResourceServerRequest
    UpdateResourceServerResponse.add_member(:resource_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerType, name: "ResourceServer", traits: {"smithy.api#required" => {}}))
    UpdateResourceServerResponse.type = Types::UpdateResourceServerResponse
    UpdateTermsRequest.add_member(:terms_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsIdType, name: "TermsId", traits: {"smithy.api#required" => {}}))
    UpdateTermsRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    UpdateTermsRequest.add_member(:terms_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsNameType, name: "TermsName"))
    UpdateTermsRequest.add_member(:terms_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsSourceType, name: "TermsSource"))
    UpdateTermsRequest.add_member(:enforcement, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsEnforcementType, name: "Enforcement"))
    UpdateTermsRequest.add_member(:links, ::Smithy::Schema::Shapes::MemberShape.new(target: LinksType, name: "Links"))
    UpdateTermsRequest.type = Types::UpdateTermsRequest
    UpdateTermsResponse.add_member(:terms, ::Smithy::Schema::Shapes::MemberShape.new(target: TermsType, name: "Terms"))
    UpdateTermsResponse.type = Types::UpdateTermsResponse
    UpdateUserAttributesRequest.add_member(:user_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeListType, name: "UserAttributes", traits: {"smithy.api#required" => {}}))
    UpdateUserAttributesRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    UpdateUserAttributesRequest.add_member(:client_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientMetadataType, name: "ClientMetadata"))
    UpdateUserAttributesRequest.type = Types::UpdateUserAttributesRequest
    UpdateUserAttributesResponse.add_member(:code_delivery_details_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeDeliveryDetailsListType, name: "CodeDeliveryDetailsList"))
    UpdateUserAttributesResponse.type = Types::UpdateUserAttributesResponse
    UpdateUserPoolClientRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    UpdateUserPoolClientRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId", traits: {"smithy.api#required" => {}}))
    UpdateUserPoolClientRequest.add_member(:client_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientNameType, name: "ClientName"))
    UpdateUserPoolClientRequest.add_member(:refresh_token_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshTokenValidityType, name: "RefreshTokenValidity", traits: {"smithy.api#default" => 0}))
    UpdateUserPoolClientRequest.add_member(:access_token_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenValidityType, name: "AccessTokenValidity"))
    UpdateUserPoolClientRequest.add_member(:id_token_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: IdTokenValidityType, name: "IdTokenValidity"))
    UpdateUserPoolClientRequest.add_member(:token_validity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenValidityUnitsType, name: "TokenValidityUnits"))
    UpdateUserPoolClientRequest.add_member(:read_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPermissionListType, name: "ReadAttributes"))
    UpdateUserPoolClientRequest.add_member(:write_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPermissionListType, name: "WriteAttributes"))
    UpdateUserPoolClientRequest.add_member(:explicit_auth_flows, ::Smithy::Schema::Shapes::MemberShape.new(target: ExplicitAuthFlowsListType, name: "ExplicitAuthFlows"))
    UpdateUserPoolClientRequest.add_member(:supported_identity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedIdentityProvidersListType, name: "SupportedIdentityProviders"))
    UpdateUserPoolClientRequest.add_member(:callback_ur_ls, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackURLsListType, name: "CallbackURLs"))
    UpdateUserPoolClientRequest.add_member(:logout_ur_ls, ::Smithy::Schema::Shapes::MemberShape.new(target: LogoutURLsListType, name: "LogoutURLs"))
    UpdateUserPoolClientRequest.add_member(:default_redirect_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectUrlType, name: "DefaultRedirectURI"))
    UpdateUserPoolClientRequest.add_member(:allowed_o_auth_flows, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthFlowsType, name: "AllowedOAuthFlows"))
    UpdateUserPoolClientRequest.add_member(:allowed_o_auth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeListType, name: "AllowedOAuthScopes"))
    UpdateUserPoolClientRequest.add_member(:allowed_o_auth_flows_user_pool_client, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "AllowedOAuthFlowsUserPoolClient", traits: {"smithy.api#default" => false}))
    UpdateUserPoolClientRequest.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfigurationType, name: "AnalyticsConfiguration"))
    UpdateUserPoolClientRequest.add_member(:prevent_user_existence_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PreventUserExistenceErrorTypes, name: "PreventUserExistenceErrors"))
    UpdateUserPoolClientRequest.add_member(:enable_token_revocation, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedBooleanType, name: "EnableTokenRevocation"))
    UpdateUserPoolClientRequest.add_member(:enable_propagate_additional_user_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedBooleanType, name: "EnablePropagateAdditionalUserContextData"))
    UpdateUserPoolClientRequest.add_member(:auth_session_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthSessionValidityType, name: "AuthSessionValidity"))
    UpdateUserPoolClientRequest.add_member(:refresh_token_rotation, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshTokenRotationType, name: "RefreshTokenRotation"))
    UpdateUserPoolClientRequest.type = Types::UpdateUserPoolClientRequest
    UpdateUserPoolClientResponse.add_member(:user_pool_client, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolClientType, name: "UserPoolClient"))
    UpdateUserPoolClientResponse.type = Types::UpdateUserPoolClientResponse
    UpdateUserPoolDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainType, name: "Domain", traits: {"smithy.api#required" => {}}))
    UpdateUserPoolDomainRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    UpdateUserPoolDomainRequest.add_member(:managed_login_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedIntegerType, name: "ManagedLoginVersion"))
    UpdateUserPoolDomainRequest.add_member(:custom_domain_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainConfigType, name: "CustomDomainConfig"))
    UpdateUserPoolDomainRequest.type = Types::UpdateUserPoolDomainRequest
    UpdateUserPoolDomainResponse.add_member(:managed_login_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedIntegerType, name: "ManagedLoginVersion"))
    UpdateUserPoolDomainResponse.add_member(:cloud_front_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainType, name: "CloudFrontDomain"))
    UpdateUserPoolDomainResponse.type = Types::UpdateUserPoolDomainResponse
    UpdateUserPoolRequest.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId", traits: {"smithy.api#required" => {}}))
    UpdateUserPoolRequest.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolPolicyType, name: "Policies"))
    UpdateUserPoolRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionType, name: "DeletionProtection"))
    UpdateUserPoolRequest.add_member(:lambda_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaConfigType, name: "LambdaConfig"))
    UpdateUserPoolRequest.add_member(:auto_verified_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedAttributesListType, name: "AutoVerifiedAttributes"))
    UpdateUserPoolRequest.add_member(:sms_verification_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsVerificationMessageType, name: "SmsVerificationMessage"))
    UpdateUserPoolRequest.add_member(:email_verification_message, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationMessageType, name: "EmailVerificationMessage"))
    UpdateUserPoolRequest.add_member(:email_verification_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationSubjectType, name: "EmailVerificationSubject"))
    UpdateUserPoolRequest.add_member(:verification_message_template, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationMessageTemplateType, name: "VerificationMessageTemplate"))
    UpdateUserPoolRequest.add_member(:sms_authentication_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsVerificationMessageType, name: "SmsAuthenticationMessage"))
    UpdateUserPoolRequest.add_member(:user_attribute_update_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeUpdateSettingsType, name: "UserAttributeUpdateSettings"))
    UpdateUserPoolRequest.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolMfaType, name: "MfaConfiguration"))
    UpdateUserPoolRequest.add_member(:device_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceConfigurationType, name: "DeviceConfiguration"))
    UpdateUserPoolRequest.add_member(:email_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailConfigurationType, name: "EmailConfiguration"))
    UpdateUserPoolRequest.add_member(:sms_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsConfigurationType, name: "SmsConfiguration"))
    UpdateUserPoolRequest.add_member(:user_pool_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolTagsType, name: "UserPoolTags"))
    UpdateUserPoolRequest.add_member(:admin_create_user_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminCreateUserConfigType, name: "AdminCreateUserConfig"))
    UpdateUserPoolRequest.add_member(:user_pool_add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolAddOnsType, name: "UserPoolAddOns"))
    UpdateUserPoolRequest.add_member(:account_recovery_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecoverySettingType, name: "AccountRecoverySetting"))
    UpdateUserPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolNameType, name: "PoolName"))
    UpdateUserPoolRequest.add_member(:user_pool_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolTierType, name: "UserPoolTier"))
    UpdateUserPoolRequest.type = Types::UpdateUserPoolRequest
    UpdateUserPoolResponse.type = Types::UpdateUserPoolResponse
    UserAttributeUpdateSettingsType.add_member(:attributes_require_verification_before_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributesRequireVerificationBeforeUpdateType, name: "AttributesRequireVerificationBeforeUpdate"))
    UserAttributeUpdateSettingsType.type = Types::UserAttributeUpdateSettingsType
    UserContextDataType.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "IpAddress"))
    UserContextDataType.add_member(:encoded_data, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "EncodedData"))
    UserContextDataType.type = Types::UserContextDataType
    UserImportInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UserImportInProgressException.type = Types::UserImportInProgressException
    UserImportJobStatusType.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Created", traits: {"smithy.api#enumValue" => "Created"}))
    UserImportJobStatusType.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    UserImportJobStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    UserImportJobStatusType.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopping", traits: {"smithy.api#enumValue" => "Stopping"}))
    UserImportJobStatusType.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Expired", traits: {"smithy.api#enumValue" => "Expired"}))
    UserImportJobStatusType.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "Stopped"}))
    UserImportJobStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    UserImportJobStatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    UserImportJobType.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobNameType, name: "JobName"))
    UserImportJobType.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobIdType, name: "JobId"))
    UserImportJobType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    UserImportJobType.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PreSignedUrlType, name: "PreSignedUrl"))
    UserImportJobType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate"))
    UserImportJobType.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "StartDate"))
    UserImportJobType.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CompletionDate"))
    UserImportJobType.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobStatusType, name: "Status"))
    UserImportJobType.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "CloudWatchLogsRoleArn"))
    UserImportJobType.add_member(:imported_users, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "ImportedUsers", traits: {"smithy.api#default" => 0}))
    UserImportJobType.add_member(:skipped_users, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "SkippedUsers", traits: {"smithy.api#default" => 0}))
    UserImportJobType.add_member(:failed_users, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "FailedUsers", traits: {"smithy.api#default" => 0}))
    UserImportJobType.add_member(:completion_message, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletionMessageType, name: "CompletionMessage"))
    UserImportJobType.type = Types::UserImportJobType
    UserImportJobsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserImportJobType, name: "member"))
    UserLambdaValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UserLambdaValidationException.type = Types::UserLambdaValidationException
    UserMFASettingListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "member"))
    UserNotConfirmedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UserNotConfirmedException.type = Types::UserNotConfirmedException
    UserNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UserNotFoundException.type = Types::UserNotFoundException
    UserPoolAddOnNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UserPoolAddOnNotEnabledException.type = Types::UserPoolAddOnNotEnabledException
    UserPoolAddOnsType.add_member(:advanced_security_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedSecurityModeType, name: "AdvancedSecurityMode", traits: {"smithy.api#required" => {}}))
    UserPoolAddOnsType.add_member(:advanced_security_additional_flows, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedSecurityAdditionalFlowsType, name: "AdvancedSecurityAdditionalFlows"))
    UserPoolAddOnsType.type = Types::UserPoolAddOnsType
    UserPoolClientDescription.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId"))
    UserPoolClientDescription.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    UserPoolClientDescription.add_member(:client_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientNameType, name: "ClientName"))
    UserPoolClientDescription.type = Types::UserPoolClientDescription
    UserPoolClientListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolClientDescription, name: "member"))
    UserPoolClientType.add_member(:user_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "UserPoolId"))
    UserPoolClientType.add_member(:client_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientNameType, name: "ClientName"))
    UserPoolClientType.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdType, name: "ClientId"))
    UserPoolClientType.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecretType, name: "ClientSecret"))
    UserPoolClientType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate"))
    UserPoolClientType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate"))
    UserPoolClientType.add_member(:refresh_token_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshTokenValidityType, name: "RefreshTokenValidity", traits: {"smithy.api#default" => 0}))
    UserPoolClientType.add_member(:access_token_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenValidityType, name: "AccessTokenValidity"))
    UserPoolClientType.add_member(:id_token_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: IdTokenValidityType, name: "IdTokenValidity"))
    UserPoolClientType.add_member(:token_validity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenValidityUnitsType, name: "TokenValidityUnits"))
    UserPoolClientType.add_member(:read_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPermissionListType, name: "ReadAttributes"))
    UserPoolClientType.add_member(:write_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPermissionListType, name: "WriteAttributes"))
    UserPoolClientType.add_member(:explicit_auth_flows, ::Smithy::Schema::Shapes::MemberShape.new(target: ExplicitAuthFlowsListType, name: "ExplicitAuthFlows"))
    UserPoolClientType.add_member(:supported_identity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedIdentityProvidersListType, name: "SupportedIdentityProviders"))
    UserPoolClientType.add_member(:callback_ur_ls, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackURLsListType, name: "CallbackURLs"))
    UserPoolClientType.add_member(:logout_ur_ls, ::Smithy::Schema::Shapes::MemberShape.new(target: LogoutURLsListType, name: "LogoutURLs"))
    UserPoolClientType.add_member(:default_redirect_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectUrlType, name: "DefaultRedirectURI"))
    UserPoolClientType.add_member(:allowed_o_auth_flows, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthFlowsType, name: "AllowedOAuthFlows"))
    UserPoolClientType.add_member(:allowed_o_auth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeListType, name: "AllowedOAuthScopes"))
    UserPoolClientType.add_member(:allowed_o_auth_flows_user_pool_client, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "AllowedOAuthFlowsUserPoolClient", traits: {"smithy.api#default" => nil}))
    UserPoolClientType.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfigurationType, name: "AnalyticsConfiguration"))
    UserPoolClientType.add_member(:prevent_user_existence_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PreventUserExistenceErrorTypes, name: "PreventUserExistenceErrors"))
    UserPoolClientType.add_member(:enable_token_revocation, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedBooleanType, name: "EnableTokenRevocation"))
    UserPoolClientType.add_member(:enable_propagate_additional_user_context_data, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedBooleanType, name: "EnablePropagateAdditionalUserContextData"))
    UserPoolClientType.add_member(:auth_session_validity, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthSessionValidityType, name: "AuthSessionValidity"))
    UserPoolClientType.add_member(:refresh_token_rotation, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshTokenRotationType, name: "RefreshTokenRotation"))
    UserPoolClientType.type = Types::UserPoolClientType
    UserPoolDescriptionType.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "Id"))
    UserPoolDescriptionType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolNameType, name: "Name"))
    UserPoolDescriptionType.add_member(:lambda_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaConfigType, name: "LambdaConfig"))
    UserPoolDescriptionType.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#deprecated" => {"message" => "This property is no longer available."}}))
    UserPoolDescriptionType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate"))
    UserPoolDescriptionType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate"))
    UserPoolDescriptionType.type = Types::UserPoolDescriptionType
    UserPoolListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolDescriptionType, name: "member"))
    UserPoolMfaType.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    UserPoolMfaType.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON", traits: {"smithy.api#enumValue" => "ON"}))
    UserPoolMfaType.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONAL", traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    UserPoolPolicyType.add_member(:password_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordPolicyType, name: "PasswordPolicy"))
    UserPoolPolicyType.add_member(:sign_in_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SignInPolicyType, name: "SignInPolicy"))
    UserPoolPolicyType.type = Types::UserPoolPolicyType
    UserPoolTaggingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UserPoolTaggingException.type = Types::UserPoolTaggingException
    UserPoolTagsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeysType, name: "member"))
    UserPoolTagsType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeysType, name: "key"))
    UserPoolTagsType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueType, name: "value"))
    UserPoolTierType.add_member(:lite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LITE", traits: {"smithy.api#enumValue" => "LITE"}))
    UserPoolTierType.add_member(:essentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ESSENTIALS", traits: {"smithy.api#enumValue" => "ESSENTIALS"}))
    UserPoolTierType.add_member(:plus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLUS", traits: {"smithy.api#enumValue" => "PLUS"}))
    UserPoolType.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolIdType, name: "Id"))
    UserPoolType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolNameType, name: "Name"))
    UserPoolType.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolPolicyType, name: "Policies"))
    UserPoolType.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionType, name: "DeletionProtection"))
    UserPoolType.add_member(:lambda_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaConfigType, name: "LambdaConfig"))
    UserPoolType.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#deprecated" => {"message" => "This property is no longer available."}}))
    UserPoolType.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastModifiedDate"))
    UserPoolType.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreationDate"))
    UserPoolType.add_member(:schema_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaAttributesListType, name: "SchemaAttributes"))
    UserPoolType.add_member(:auto_verified_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedAttributesListType, name: "AutoVerifiedAttributes"))
    UserPoolType.add_member(:alias_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasAttributesListType, name: "AliasAttributes"))
    UserPoolType.add_member(:username_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameAttributesListType, name: "UsernameAttributes"))
    UserPoolType.add_member(:sms_verification_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsVerificationMessageType, name: "SmsVerificationMessage"))
    UserPoolType.add_member(:email_verification_message, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationMessageType, name: "EmailVerificationMessage"))
    UserPoolType.add_member(:email_verification_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationSubjectType, name: "EmailVerificationSubject"))
    UserPoolType.add_member(:verification_message_template, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationMessageTemplateType, name: "VerificationMessageTemplate"))
    UserPoolType.add_member(:sms_authentication_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsVerificationMessageType, name: "SmsAuthenticationMessage"))
    UserPoolType.add_member(:user_attribute_update_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeUpdateSettingsType, name: "UserAttributeUpdateSettings"))
    UserPoolType.add_member(:mfa_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolMfaType, name: "MfaConfiguration"))
    UserPoolType.add_member(:device_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceConfigurationType, name: "DeviceConfiguration"))
    UserPoolType.add_member(:estimated_number_of_users, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerType, name: "EstimatedNumberOfUsers", traits: {"smithy.api#default" => 0}))
    UserPoolType.add_member(:email_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailConfigurationType, name: "EmailConfiguration"))
    UserPoolType.add_member(:sms_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsConfigurationType, name: "SmsConfiguration"))
    UserPoolType.add_member(:user_pool_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolTagsType, name: "UserPoolTags"))
    UserPoolType.add_member(:sms_configuration_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "SmsConfigurationFailure"))
    UserPoolType.add_member(:email_configuration_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "EmailConfigurationFailure"))
    UserPoolType.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainType, name: "Domain"))
    UserPoolType.add_member(:custom_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainType, name: "CustomDomain"))
    UserPoolType.add_member(:admin_create_user_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminCreateUserConfigType, name: "AdminCreateUserConfig"))
    UserPoolType.add_member(:user_pool_add_ons, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolAddOnsType, name: "UserPoolAddOns"))
    UserPoolType.add_member(:username_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameConfigurationType, name: "UsernameConfiguration"))
    UserPoolType.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn"))
    UserPoolType.add_member(:account_recovery_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecoverySettingType, name: "AccountRecoverySetting"))
    UserPoolType.add_member(:user_pool_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolTierType, name: "UserPoolTier"))
    UserPoolType.type = Types::UserPoolType
    UserStatusType.add_member(:unconfirmed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNCONFIRMED", traits: {"smithy.api#enumValue" => "UNCONFIRMED"}))
    UserStatusType.add_member(:confirmed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIRMED", traits: {"smithy.api#enumValue" => "CONFIRMED"}))
    UserStatusType.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    UserStatusType.add_member(:compromised, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPROMISED", traits: {"smithy.api#enumValue" => "COMPROMISED"}))
    UserStatusType.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    UserStatusType.add_member(:reset_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESET_REQUIRED", traits: {"smithy.api#enumValue" => "RESET_REQUIRED"}))
    UserStatusType.add_member(:force_change_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORCE_CHANGE_PASSWORD", traits: {"smithy.api#enumValue" => "FORCE_CHANGE_PASSWORD"}))
    UserStatusType.add_member(:external_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL_PROVIDER", traits: {"smithy.api#enumValue" => "EXTERNAL_PROVIDER"}))
    UserType.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username"))
    UserType.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeListType, name: "Attributes"))
    UserType.add_member(:user_create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UserCreateDate"))
    UserType.add_member(:user_last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UserLastModifiedDate"))
    UserType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Enabled", traits: {"smithy.api#default" => false}))
    UserType.add_member(:user_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStatusType, name: "UserStatus"))
    UserType.add_member(:mfa_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MFAOptionListType, name: "MFAOptions"))
    UserType.type = Types::UserType
    UserVerificationType.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    UserVerificationType.add_member(:preferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFERRED", traits: {"smithy.api#enumValue" => "preferred"}))
    UsernameAttributeType.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE_NUMBER", traits: {"smithy.api#enumValue" => "phone_number"}))
    UsernameAttributeType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "email"}))
    UsernameAttributesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameAttributeType, name: "member"))
    UsernameConfigurationType.add_member(:case_sensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedBooleanType, name: "CaseSensitive", traits: {"smithy.api#required" => {}}))
    UsernameConfigurationType.type = Types::UsernameConfigurationType
    UsernameExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    UsernameExistsException.type = Types::UsernameExistsException
    UsersListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "member"))
    VerificationMessageTemplateType.add_member(:sms_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SmsVerificationMessageType, name: "SmsMessage"))
    VerificationMessageTemplateType.add_member(:email_message, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationMessageType, name: "EmailMessage"))
    VerificationMessageTemplateType.add_member(:email_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationSubjectType, name: "EmailSubject"))
    VerificationMessageTemplateType.add_member(:email_message_by_link, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationMessageByLinkType, name: "EmailMessageByLink"))
    VerificationMessageTemplateType.add_member(:email_subject_by_link, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationSubjectByLinkType, name: "EmailSubjectByLink"))
    VerificationMessageTemplateType.add_member(:default_email_option, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultEmailOptionType, name: "DefaultEmailOption"))
    VerificationMessageTemplateType.type = Types::VerificationMessageTemplateType
    VerifiedAttributeType.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE_NUMBER", traits: {"smithy.api#enumValue" => "phone_number"}))
    VerifiedAttributeType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "email"}))
    VerifiedAttributesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedAttributeType, name: "member"))
    VerifySoftwareTokenRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken"))
    VerifySoftwareTokenRequest.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    VerifySoftwareTokenRequest.add_member(:user_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareTokenMFAUserCodeType, name: "UserCode", traits: {"smithy.api#required" => {}}))
    VerifySoftwareTokenRequest.add_member(:friendly_device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "FriendlyDeviceName"))
    VerifySoftwareTokenRequest.type = Types::VerifySoftwareTokenRequest
    VerifySoftwareTokenResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifySoftwareTokenResponseType, name: "Status"))
    VerifySoftwareTokenResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "Session"))
    VerifySoftwareTokenResponse.type = Types::VerifySoftwareTokenResponse
    VerifySoftwareTokenResponseType.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    VerifySoftwareTokenResponseType.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    VerifyUserAttributeRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenModelType, name: "AccessToken", traits: {"smithy.api#required" => {}}))
    VerifyUserAttributeRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameType, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    VerifyUserAttributeRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationCodeType, name: "Code", traits: {"smithy.api#required" => {}}))
    VerifyUserAttributeRequest.type = Types::VerifyUserAttributeRequest
    VerifyUserAttributeResponse.type = Types::VerifyUserAttributeResponse
    WebAuthnAuthenticatorTransportsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAuthnAuthenticatorTransportType, name: "member"))
    WebAuthnChallengeNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    WebAuthnChallengeNotFoundException.type = Types::WebAuthnChallengeNotFoundException
    WebAuthnClientMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    WebAuthnClientMismatchException.type = Types::WebAuthnClientMismatchException
    WebAuthnConfigurationMissingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    WebAuthnConfigurationMissingException.type = Types::WebAuthnConfigurationMissingException
    WebAuthnConfigurationType.add_member(:relying_party_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelyingPartyIdType, name: "RelyingPartyId"))
    WebAuthnConfigurationType.add_member(:user_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: UserVerificationType, name: "UserVerification"))
    WebAuthnConfigurationType.type = Types::WebAuthnConfigurationType
    WebAuthnCredentialDescription.add_member(:credential_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "CredentialId", traits: {"smithy.api#required" => {}}))
    WebAuthnCredentialDescription.add_member(:friendly_credential_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "FriendlyCredentialName", traits: {"smithy.api#required" => {}}))
    WebAuthnCredentialDescription.add_member(:relying_party_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "RelyingPartyId", traits: {"smithy.api#required" => {}}))
    WebAuthnCredentialDescription.add_member(:authenticator_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAuthnAuthenticatorAttachmentType, name: "AuthenticatorAttachment"))
    WebAuthnCredentialDescription.add_member(:authenticator_transports, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAuthnAuthenticatorTransportsList, name: "AuthenticatorTransports", traits: {"smithy.api#required" => {}}))
    WebAuthnCredentialDescription.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    WebAuthnCredentialDescription.type = Types::WebAuthnCredentialDescription
    WebAuthnCredentialDescriptionListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAuthnCredentialDescription, name: "member"))
    WebAuthnCredentialNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    WebAuthnCredentialNotSupportedException.type = Types::WebAuthnCredentialNotSupportedException
    WebAuthnNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    WebAuthnNotEnabledException.type = Types::WebAuthnNotEnabledException
    WebAuthnOriginNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    WebAuthnOriginNotAllowedException.type = Types::WebAuthnOriginNotAllowedException
    WebAuthnRelyingPartyMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "message"))
    WebAuthnRelyingPartyMismatchException.type = Types::WebAuthnRelyingPartyMismatchException

    AWSCognitoIdentityProviderService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cognitoidentityprovider#AWSCognitoIdentityProviderService"
      service.name = "AWSCognitoIdentityProviderService"
      service.version = "2016-04-18"
      service.traits = {"aws.api#service" => {"sdkId" => "Cognito Identity Provider", "arnNamespace" => "cognito-idp", "cloudFormationName" => "Cognito", "cloudTrailEventSource" => "cognito-idp.amazonaws.com", "docId" => "cognito-idp-2016-04-18", "endpointPrefix" => "cognito-idp"}, "aws.auth#sigv4" => {"name" => "cognito-idp"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Cognito Identity Provider", "smithy.api#xmlNamespace" => {"uri" => "http://cognito-idp.amazonaws.com/doc/2016-04-18/"}}
      service.add_operation(:add_custom_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AddCustomAttributes"
        operation.name = "AddCustomAttributes"
        operation.input = AddCustomAttributesRequest
        operation.output = AddCustomAttributesResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserImportInProgressException
        operation.traits = {}
      end)
      service.add_operation(:admin_add_user_to_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminAddUserToGroup"
        operation.name = "AdminAddUserToGroup"
        operation.input = AdminAddUserToGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_confirm_sign_up, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminConfirmSignUp"
        operation.name = "AdminConfirmSignUp"
        operation.input = AdminConfirmSignUpRequest
        operation.output = AdminConfirmSignUpResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyFailedAttemptsException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminCreateUser"
        operation.name = "AdminCreateUser"
        operation.input = AdminCreateUserRequest
        operation.output = AdminCreateUserResponse
        operation.errors << CodeDeliveryFailureException
        operation.errors << InternalErrorException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidPasswordException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << NotAuthorizedException
        operation.errors << PreconditionNotMetException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UnsupportedUserStateException
        operation.errors << UserLambdaValidationException
        operation.errors << UsernameExistsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminDeleteUser"
        operation.name = "AdminDeleteUser"
        operation.input = AdminDeleteUserRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_delete_user_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminDeleteUserAttributes"
        operation.name = "AdminDeleteUserAttributes"
        operation.input = AdminDeleteUserAttributesRequest
        operation.output = AdminDeleteUserAttributesResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_disable_provider_for_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminDisableProviderForUser"
        operation.name = "AdminDisableProviderForUser"
        operation.input = AdminDisableProviderForUserRequest
        operation.output = AdminDisableProviderForUserResponse
        operation.errors << AliasExistsException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_disable_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminDisableUser"
        operation.name = "AdminDisableUser"
        operation.input = AdminDisableUserRequest
        operation.output = AdminDisableUserResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_enable_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminEnableUser"
        operation.name = "AdminEnableUser"
        operation.input = AdminEnableUserRequest
        operation.output = AdminEnableUserResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_forget_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminForgetDevice"
        operation.name = "AdminForgetDevice"
        operation.input = AdminForgetDeviceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_get_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminGetDevice"
        operation.name = "AdminGetDevice"
        operation.input = AdminGetDeviceRequest
        operation.output = AdminGetDeviceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:admin_get_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminGetUser"
        operation.name = "AdminGetUser"
        operation.input = AdminGetUserRequest
        operation.output = AdminGetUserResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_initiate_auth, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminInitiateAuth"
        operation.name = "AdminInitiateAuth"
        operation.input = AdminInitiateAuthRequest
        operation.output = AdminInitiateAuthResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << MFAMethodNotFoundException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UnsupportedOperationException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_link_provider_for_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminLinkProviderForUser"
        operation.name = "AdminLinkProviderForUser"
        operation.input = AdminLinkProviderForUserRequest
        operation.output = AdminLinkProviderForUserResponse
        operation.errors << AliasExistsException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_list_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminListDevices"
        operation.name = "AdminListDevices"
        operation.input = AdminListDevicesRequest
        operation.output = AdminListDevicesResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:admin_list_groups_for_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminListGroupsForUser"
        operation.name = "AdminListGroupsForUser"
        operation.input = AdminListGroupsForUserRequest
        operation.output = AdminListGroupsForUserResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::AdminListGroupsForUser.new
      end)
      service.add_operation(:admin_list_user_auth_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminListUserAuthEvents"
        operation.name = "AdminListUserAuthEvents"
        operation.input = AdminListUserAuthEventsRequest
        operation.output = AdminListUserAuthEventsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.errors << UserPoolAddOnNotEnabledException
        operation.traits = {}
        operation[:paginator] = Paginators::AdminListUserAuthEvents.new
      end)
      service.add_operation(:admin_remove_user_from_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminRemoveUserFromGroup"
        operation.name = "AdminRemoveUserFromGroup"
        operation.input = AdminRemoveUserFromGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_reset_user_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminResetUserPassword"
        operation.name = "AdminResetUserPassword"
        operation.input = AdminResetUserPasswordRequest
        operation.output = AdminResetUserPasswordResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_respond_to_auth_challenge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminRespondToAuthChallenge"
        operation.name = "AdminRespondToAuthChallenge"
        operation.input = AdminRespondToAuthChallengeRequest
        operation.output = AdminRespondToAuthChallengeResponse
        operation.errors << AliasExistsException
        operation.errors << CodeMismatchException
        operation.errors << ExpiredCodeException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidPasswordException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << MFAMethodNotFoundException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordHistoryPolicyViolationException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << SoftwareTokenMFANotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_set_user_mfa_preference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminSetUserMFAPreference"
        operation.name = "AdminSetUserMFAPreference"
        operation.input = AdminSetUserMFAPreferenceRequest
        operation.output = AdminSetUserMFAPreferenceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_set_user_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminSetUserPassword"
        operation.name = "AdminSetUserPassword"
        operation.input = AdminSetUserPasswordRequest
        operation.output = AdminSetUserPasswordResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidPasswordException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordHistoryPolicyViolationException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_set_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminSetUserSettings"
        operation.name = "AdminSetUserSettings"
        operation.input = AdminSetUserSettingsRequest
        operation.output = AdminSetUserSettingsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_update_auth_event_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminUpdateAuthEventFeedback"
        operation.name = "AdminUpdateAuthEventFeedback"
        operation.input = AdminUpdateAuthEventFeedbackRequest
        operation.output = AdminUpdateAuthEventFeedbackResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.errors << UserPoolAddOnNotEnabledException
        operation.traits = {}
      end)
      service.add_operation(:admin_update_device_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminUpdateDeviceStatus"
        operation.name = "AdminUpdateDeviceStatus"
        operation.input = AdminUpdateDeviceStatusRequest
        operation.output = AdminUpdateDeviceStatusResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_update_user_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminUpdateUserAttributes"
        operation.name = "AdminUpdateUserAttributes"
        operation.input = AdminUpdateUserAttributesRequest
        operation.output = AdminUpdateUserAttributesResponse
        operation.errors << AliasExistsException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:admin_user_global_sign_out, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AdminUserGlobalSignOut"
        operation.name = "AdminUserGlobalSignOut"
        operation.input = AdminUserGlobalSignOutRequest
        operation.output = AdminUserGlobalSignOutResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_software_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#AssociateSoftwareToken"
        operation.name = "AssociateSoftwareToken"
        operation.input = AssociateSoftwareTokenRequest
        operation.output = AssociateSoftwareTokenResponse
        operation.errors << ConcurrentModificationException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << SoftwareTokenMFANotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:change_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ChangePassword"
        operation.name = "ChangePassword"
        operation.input = ChangePasswordRequest
        operation.output = ChangePasswordResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidPasswordException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordHistoryPolicyViolationException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:complete_web_authn_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CompleteWebAuthnRegistration"
        operation.name = "CompleteWebAuthnRegistration"
        operation.input = CompleteWebAuthnRegistrationRequest
        operation.output = CompleteWebAuthnRegistrationResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << TooManyRequestsException
        operation.errors << WebAuthnChallengeNotFoundException
        operation.errors << WebAuthnClientMismatchException
        operation.errors << WebAuthnCredentialNotSupportedException
        operation.errors << WebAuthnNotEnabledException
        operation.errors << WebAuthnOriginNotAllowedException
        operation.errors << WebAuthnRelyingPartyMismatchException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:confirm_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ConfirmDevice"
        operation.name = "ConfirmDevice"
        operation.input = ConfirmDeviceRequest
        operation.output = ConfirmDeviceResponse
        operation.errors << DeviceKeyExistsException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidPasswordException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UsernameExistsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:confirm_forgot_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ConfirmForgotPassword"
        operation.name = "ConfirmForgotPassword"
        operation.input = ConfirmForgotPasswordRequest
        operation.output = ConfirmForgotPasswordResponse
        operation.errors << CodeMismatchException
        operation.errors << ExpiredCodeException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidPasswordException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordHistoryPolicyViolationException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyFailedAttemptsException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:confirm_sign_up, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ConfirmSignUp"
        operation.name = "ConfirmSignUp"
        operation.input = ConfirmSignUpRequest
        operation.output = ConfirmSignUpResponse
        operation.errors << AliasExistsException
        operation.errors << CodeMismatchException
        operation.errors << ExpiredCodeException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyFailedAttemptsException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = CreateGroupRequest
        operation.output = CreateGroupResponse
        operation.errors << GroupExistsException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:create_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateIdentityProvider"
        operation.name = "CreateIdentityProvider"
        operation.input = CreateIdentityProviderRequest
        operation.output = CreateIdentityProviderResponse
        operation.errors << DuplicateProviderException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:create_managed_login_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateManagedLoginBranding"
        operation.name = "CreateManagedLoginBranding"
        operation.input = CreateManagedLoginBrandingRequest
        operation.output = CreateManagedLoginBrandingResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ManagedLoginBrandingExistsException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:create_resource_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateResourceServer"
        operation.name = "CreateResourceServer"
        operation.input = CreateResourceServerRequest
        operation.output = CreateResourceServerResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:create_terms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateTerms"
        operation.name = "CreateTerms"
        operation.input = CreateTermsRequest
        operation.output = CreateTermsResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TermsExistsException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:create_user_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateUserImportJob"
        operation.name = "CreateUserImportJob"
        operation.input = CreateUserImportJobRequest
        operation.output = CreateUserImportJobResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << PreconditionNotMetException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:create_user_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateUserPool"
        operation.name = "CreateUserPool"
        operation.input = CreateUserPoolRequest
        operation.output = CreateUserPoolResponse
        operation.errors << FeatureUnavailableInTierException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << TierChangeNotAllowedException
        operation.errors << TooManyRequestsException
        operation.errors << UserPoolTaggingException
        operation.traits = {}
      end)
      service.add_operation(:create_user_pool_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateUserPoolClient"
        operation.name = "CreateUserPoolClient"
        operation.input = CreateUserPoolClientRequest
        operation.output = CreateUserPoolClientResponse
        operation.errors << FeatureUnavailableInTierException
        operation.errors << InternalErrorException
        operation.errors << InvalidOAuthFlowException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << ScopeDoesNotExistException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:create_user_pool_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#CreateUserPoolDomain"
        operation.name = "CreateUserPoolDomain"
        operation.input = CreateUserPoolDomainRequest
        operation.output = CreateUserPoolDomainResponse
        operation.errors << ConcurrentModificationException
        operation.errors << FeatureUnavailableInTierException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = DeleteGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteIdentityProvider"
        operation.name = "DeleteIdentityProvider"
        operation.input = DeleteIdentityProviderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedIdentityProviderException
        operation.traits = {}
      end)
      service.add_operation(:delete_managed_login_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteManagedLoginBranding"
        operation.name = "DeleteManagedLoginBranding"
        operation.input = DeleteManagedLoginBrandingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteResourceServer"
        operation.name = "DeleteResourceServer"
        operation.input = DeleteResourceServerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_terms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteTerms"
        operation.name = "DeleteTerms"
        operation.input = DeleteTermsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = DeleteUserRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:delete_user_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteUserAttributes"
        operation.name = "DeleteUserAttributes"
        operation.input = DeleteUserAttributesRequest
        operation.output = DeleteUserAttributesResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:delete_user_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteUserPool"
        operation.name = "DeleteUserPool"
        operation.input = DeleteUserPoolRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserImportInProgressException
        operation.traits = {}
      end)
      service.add_operation(:delete_user_pool_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteUserPoolClient"
        operation.name = "DeleteUserPoolClient"
        operation.input = DeleteUserPoolClientRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_user_pool_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteUserPoolDomain"
        operation.name = "DeleteUserPoolDomain"
        operation.input = DeleteUserPoolDomainRequest
        operation.output = DeleteUserPoolDomainResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_web_authn_credential, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DeleteWebAuthnCredential"
        operation.name = "DeleteWebAuthnCredential"
        operation.input = DeleteWebAuthnCredentialRequest
        operation.output = DeleteWebAuthnCredentialResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:describe_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeIdentityProvider"
        operation.name = "DescribeIdentityProvider"
        operation.input = DescribeIdentityProviderRequest
        operation.output = DescribeIdentityProviderResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_managed_login_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBranding"
        operation.name = "DescribeManagedLoginBranding"
        operation.input = DescribeManagedLoginBrandingRequest
        operation.output = DescribeManagedLoginBrandingResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_managed_login_branding_by_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeManagedLoginBrandingByClient"
        operation.name = "DescribeManagedLoginBrandingByClient"
        operation.input = DescribeManagedLoginBrandingByClientRequest
        operation.output = DescribeManagedLoginBrandingByClientResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeResourceServer"
        operation.name = "DescribeResourceServer"
        operation.input = DescribeResourceServerRequest
        operation.output = DescribeResourceServerResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_risk_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeRiskConfiguration"
        operation.name = "DescribeRiskConfiguration"
        operation.input = DescribeRiskConfigurationRequest
        operation.output = DescribeRiskConfigurationResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserPoolAddOnNotEnabledException
        operation.traits = {}
      end)
      service.add_operation(:describe_terms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeTerms"
        operation.name = "DescribeTerms"
        operation.input = DescribeTermsRequest
        operation.output = DescribeTermsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_user_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeUserImportJob"
        operation.name = "DescribeUserImportJob"
        operation.input = DescribeUserImportJobRequest
        operation.output = DescribeUserImportJobResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_user_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeUserPool"
        operation.name = "DescribeUserPool"
        operation.input = DescribeUserPoolRequest
        operation.output = DescribeUserPoolResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserPoolTaggingException
        operation.traits = {}
      end)
      service.add_operation(:describe_user_pool_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeUserPoolClient"
        operation.name = "DescribeUserPoolClient"
        operation.input = DescribeUserPoolClientRequest
        operation.output = DescribeUserPoolClientResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:describe_user_pool_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#DescribeUserPoolDomain"
        operation.name = "DescribeUserPoolDomain"
        operation.input = DescribeUserPoolDomainRequest
        operation.output = DescribeUserPoolDomainResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:forget_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ForgetDevice"
        operation.name = "ForgetDevice"
        operation.input = ForgetDeviceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:forgot_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ForgotPassword"
        operation.name = "ForgotPassword"
        operation.input = ForgotPasswordRequest
        operation.output = ForgotPasswordResponse
        operation.errors << CodeDeliveryFailureException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_csv_header, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetCSVHeader"
        operation.name = "GetCSVHeader"
        operation.input = GetCSVHeaderRequest
        operation.output = GetCSVHeaderResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:get_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetDevice"
        operation.name = "GetDevice"
        operation.input = GetDeviceRequest
        operation.output = GetDeviceResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetGroup"
        operation.name = "GetGroup"
        operation.input = GetGroupRequest
        operation.output = GetGroupResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:get_identity_provider_by_identifier, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetIdentityProviderByIdentifier"
        operation.name = "GetIdentityProviderByIdentifier"
        operation.input = GetIdentityProviderByIdentifierRequest
        operation.output = GetIdentityProviderByIdentifierResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:get_log_delivery_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetLogDeliveryConfiguration"
        operation.name = "GetLogDeliveryConfiguration"
        operation.input = GetLogDeliveryConfigurationRequest
        operation.output = GetLogDeliveryConfigurationResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:get_signing_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetSigningCertificate"
        operation.name = "GetSigningCertificate"
        operation.input = GetSigningCertificateRequest
        operation.output = GetSigningCertificateResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_tokens_from_refresh_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetTokensFromRefreshToken"
        operation.name = "GetTokensFromRefreshToken"
        operation.input = GetTokensFromRefreshTokenRequest
        operation.output = GetTokensFromRefreshTokenResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << RefreshTokenReuseException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_ui_customization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetUICustomization"
        operation.name = "GetUICustomization"
        operation.input = GetUICustomizationRequest
        operation.output = GetUICustomizationResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:get_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetUser"
        operation.name = "GetUser"
        operation.input = GetUserRequest
        operation.output = GetUserResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_user_attribute_verification_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetUserAttributeVerificationCode"
        operation.name = "GetUserAttributeVerificationCode"
        operation.input = GetUserAttributeVerificationCodeRequest
        operation.output = GetUserAttributeVerificationCodeResponse
        operation.errors << CodeDeliveryFailureException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_user_auth_factors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetUserAuthFactors"
        operation.name = "GetUserAuthFactors"
        operation.input = GetUserAuthFactorsRequest
        operation.output = GetUserAuthFactorsResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:get_user_pool_mfa_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GetUserPoolMfaConfig"
        operation.name = "GetUserPoolMfaConfig"
        operation.input = GetUserPoolMfaConfigRequest
        operation.output = GetUserPoolMfaConfigResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:global_sign_out, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#GlobalSignOut"
        operation.name = "GlobalSignOut"
        operation.input = GlobalSignOutRequest
        operation.output = GlobalSignOutResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:initiate_auth, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#InitiateAuth"
        operation.name = "InitiateAuth"
        operation.input = InitiateAuthRequest
        operation.output = InitiateAuthResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UnsupportedOperationException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:list_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListDevices"
        operation.name = "ListDevices"
        operation.input = ListDevicesRequest
        operation.output = ListDevicesResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListGroups"
        operation.name = "ListGroups"
        operation.input = ListGroupsRequest
        operation.output = ListGroupsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_identity_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListIdentityProviders"
        operation.name = "ListIdentityProviders"
        operation.input = ListIdentityProvidersRequest
        operation.output = ListIdentityProvidersResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListIdentityProviders.new
      end)
      service.add_operation(:list_resource_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListResourceServers"
        operation.name = "ListResourceServers"
        operation.input = ListResourceServersRequest
        operation.output = ListResourceServersResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourceServers.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:list_terms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListTerms"
        operation.name = "ListTerms"
        operation.input = ListTermsRequest
        operation.output = ListTermsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:list_user_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListUserImportJobs"
        operation.name = "ListUserImportJobs"
        operation.input = ListUserImportJobsRequest
        operation.output = ListUserImportJobsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:list_user_pool_clients, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListUserPoolClients"
        operation.name = "ListUserPoolClients"
        operation.input = ListUserPoolClientsRequest
        operation.output = ListUserPoolClientsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListUserPoolClients.new
      end)
      service.add_operation(:list_user_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListUserPools"
        operation.name = "ListUserPools"
        operation.input = ListUserPoolsRequest
        operation.output = ListUserPoolsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListUserPoolsSuccess", "params" => {"MaxResults" => 10}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListUserPools.new
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListUsers"
        operation.name = "ListUsers"
        operation.input = ListUsersRequest
        operation.output = ListUsersResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:list_users_in_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListUsersInGroup"
        operation.name = "ListUsersInGroup"
        operation.input = ListUsersInGroupRequest
        operation.output = ListUsersInGroupResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListUsersInGroup.new
      end)
      service.add_operation(:list_web_authn_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ListWebAuthnCredentials"
        operation.name = "ListWebAuthnCredentials"
        operation.input = ListWebAuthnCredentialsRequest
        operation.output = ListWebAuthnCredentialsResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:resend_confirmation_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#ResendConfirmationCode"
        operation.name = "ResendConfirmationCode"
        operation.input = ResendConfirmationCodeRequest
        operation.output = ResendConfirmationCodeResponse
        operation.errors << CodeDeliveryFailureException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:respond_to_auth_challenge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#RespondToAuthChallenge"
        operation.name = "RespondToAuthChallenge"
        operation.input = RespondToAuthChallengeRequest
        operation.output = RespondToAuthChallengeResponse
        operation.errors << AliasExistsException
        operation.errors << CodeMismatchException
        operation.errors << ExpiredCodeException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidPasswordException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << MFAMethodNotFoundException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordHistoryPolicyViolationException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << SoftwareTokenMFANotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:revoke_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#RevokeToken"
        operation.name = "RevokeToken"
        operation.input = RevokeTokenRequest
        operation.output = RevokeTokenResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedOperationException
        operation.errors << UnsupportedTokenTypeException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:set_log_delivery_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetLogDeliveryConfiguration"
        operation.name = "SetLogDeliveryConfiguration"
        operation.input = SetLogDeliveryConfigurationRequest
        operation.output = SetLogDeliveryConfigurationResponse
        operation.errors << FeatureUnavailableInTierException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:set_risk_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetRiskConfiguration"
        operation.name = "SetRiskConfiguration"
        operation.input = SetRiskConfigurationRequest
        operation.output = SetRiskConfigurationResponse
        operation.errors << CodeDeliveryFailureException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserPoolAddOnNotEnabledException
        operation.traits = {}
      end)
      service.add_operation(:set_ui_customization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetUICustomization"
        operation.name = "SetUICustomization"
        operation.input = SetUICustomizationRequest
        operation.output = SetUICustomizationResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:set_user_mfa_preference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetUserMFAPreference"
        operation.name = "SetUserMFAPreference"
        operation.input = SetUserMFAPreferenceRequest
        operation.output = SetUserMFAPreferenceResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:set_user_pool_mfa_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetUserPoolMfaConfig"
        operation.name = "SetUserPoolMfaConfig"
        operation.input = SetUserPoolMfaConfigRequest
        operation.output = SetUserPoolMfaConfigResponse
        operation.errors << ConcurrentModificationException
        operation.errors << FeatureUnavailableInTierException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:set_user_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SetUserSettings"
        operation.name = "SetUserSettings"
        operation.input = SetUserSettingsRequest
        operation.output = SetUserSettingsResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:sign_up, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#SignUp"
        operation.name = "SignUp"
        operation.input = SignUpRequest
        operation.output = SignUpResponse
        operation.errors << CodeDeliveryFailureException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidPasswordException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UsernameExistsException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:start_user_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#StartUserImportJob"
        operation.name = "StartUserImportJob"
        operation.input = StartUserImportJobRequest
        operation.output = StartUserImportJobResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << PreconditionNotMetException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:start_web_authn_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#StartWebAuthnRegistration"
        operation.name = "StartWebAuthnRegistration"
        operation.input = StartWebAuthnRegistrationRequest
        operation.output = StartWebAuthnRegistrationResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << TooManyRequestsException
        operation.errors << WebAuthnConfigurationMissingException
        operation.errors << WebAuthnNotEnabledException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:stop_user_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#StopUserImportJob"
        operation.name = "StopUserImportJob"
        operation.input = StopUserImportJobRequest
        operation.output = StopUserImportJobResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << PreconditionNotMetException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_auth_event_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateAuthEventFeedback"
        operation.name = "UpdateAuthEventFeedback"
        operation.input = UpdateAuthEventFeedbackRequest
        operation.output = UpdateAuthEventFeedbackResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotFoundException
        operation.errors << UserPoolAddOnNotEnabledException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:update_device_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateDeviceStatus"
        operation.name = "UpdateDeviceStatus"
        operation.input = UpdateDeviceStatusRequest
        operation.output = UpdateDeviceStatusResponse
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = UpdateGroupRequest
        operation.output = UpdateGroupResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateIdentityProvider"
        operation.name = "UpdateIdentityProvider"
        operation.input = UpdateIdentityProviderRequest
        operation.output = UpdateIdentityProviderResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedIdentityProviderException
        operation.traits = {}
      end)
      service.add_operation(:update_managed_login_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateManagedLoginBranding"
        operation.name = "UpdateManagedLoginBranding"
        operation.input = UpdateManagedLoginBrandingRequest
        operation.output = UpdateManagedLoginBrandingResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_resource_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateResourceServer"
        operation.name = "UpdateResourceServer"
        operation.input = UpdateResourceServerRequest
        operation.output = UpdateResourceServerResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_terms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateTerms"
        operation.name = "UpdateTerms"
        operation.input = UpdateTermsRequest
        operation.output = UpdateTermsResponse
        operation.errors << ConcurrentModificationException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TermsExistsException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_user_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateUserAttributes"
        operation.name = "UpdateUserAttributes"
        operation.input = UpdateUserAttributesRequest
        operation.output = UpdateUserAttributesResponse
        operation.errors << AliasExistsException
        operation.errors << CodeDeliveryFailureException
        operation.errors << CodeMismatchException
        operation.errors << ExpiredCodeException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidLambdaResponseException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnexpectedLambdaException
        operation.errors << UserLambdaValidationException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:update_user_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateUserPool"
        operation.name = "UpdateUserPool"
        operation.input = UpdateUserPoolRequest
        operation.output = UpdateUserPoolResponse
        operation.errors << ConcurrentModificationException
        operation.errors << FeatureUnavailableInTierException
        operation.errors << InternalErrorException
        operation.errors << InvalidEmailRoleAccessPolicyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSmsRoleAccessPolicyException
        operation.errors << InvalidSmsRoleTrustRelationshipException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TierChangeNotAllowedException
        operation.errors << TooManyRequestsException
        operation.errors << UserImportInProgressException
        operation.errors << UserPoolTaggingException
        operation.traits = {}
      end)
      service.add_operation(:update_user_pool_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateUserPoolClient"
        operation.name = "UpdateUserPoolClient"
        operation.input = UpdateUserPoolClientRequest
        operation.output = UpdateUserPoolClientResponse
        operation.errors << ConcurrentModificationException
        operation.errors << FeatureUnavailableInTierException
        operation.errors << InternalErrorException
        operation.errors << InvalidOAuthFlowException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << ScopeDoesNotExistException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_user_pool_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#UpdateUserPoolDomain"
        operation.name = "UpdateUserPoolDomain"
        operation.input = UpdateUserPoolDomainRequest
        operation.output = UpdateUserPoolDomainResponse
        operation.errors << ConcurrentModificationException
        operation.errors << FeatureUnavailableInTierException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotAuthorizedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:verify_software_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#VerifySoftwareToken"
        operation.name = "VerifySoftwareToken"
        operation.input = VerifySoftwareTokenRequest
        operation.output = VerifySoftwareTokenResponse
        operation.errors << CodeMismatchException
        operation.errors << EnableSoftwareTokenMFAException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidUserPoolConfigurationException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << SoftwareTokenMFANotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:verify_user_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cognitoidentityprovider#VerifyUserAttribute"
        operation.name = "VerifyUserAttribute"
        operation.input = VerifyUserAttributeRequest
        operation.output = VerifyUserAttributeResponse
        operation.errors << AliasExistsException
        operation.errors << CodeMismatchException
        operation.errors << ExpiredCodeException
        operation.errors << ForbiddenException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << NotAuthorizedException
        operation.errors << PasswordResetRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UserNotConfirmedException
        operation.errors << UserNotFoundException
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
