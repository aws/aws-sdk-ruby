# frozen_string_literal: true

# This is generated code!

module Aws::STS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AssumeRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#AssumeRoleRequest", name: "AssumeRoleRequest")
    AssumeRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#AssumeRoleResponse", name: "AssumeRoleResponse")
    AssumeRoleWithSAMLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#AssumeRoleWithSAMLRequest", name: "AssumeRoleWithSAMLRequest")
    AssumeRoleWithSAMLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#AssumeRoleWithSAMLResponse", name: "AssumeRoleWithSAMLResponse")
    AssumeRoleWithWebIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#AssumeRoleWithWebIdentityRequest", name: "AssumeRoleWithWebIdentityRequest")
    AssumeRoleWithWebIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#AssumeRoleWithWebIdentityResponse", name: "AssumeRoleWithWebIdentityResponse")
    AssumeRootRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#AssumeRootRequest", name: "AssumeRootRequest")
    AssumeRootResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#AssumeRootResponse", name: "AssumeRootResponse")
    AssumedRoleUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#AssumedRoleUser", name: "AssumedRoleUser")
    Audience = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#Audience", name: "Audience")
    Credentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#Credentials", name: "Credentials")
    DecodeAuthorizationMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#DecodeAuthorizationMessageRequest", name: "DecodeAuthorizationMessageRequest")
    DecodeAuthorizationMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#DecodeAuthorizationMessageResponse", name: "DecodeAuthorizationMessageResponse")
    ExpiredTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#ExpiredTokenException", name: "ExpiredTokenException", traits: {"aws.protocols#awsQueryError" => {"code" => "ExpiredTokenException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FederatedUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#FederatedUser", name: "FederatedUser")
    GetAccessKeyInfoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#GetAccessKeyInfoRequest", name: "GetAccessKeyInfoRequest")
    GetAccessKeyInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#GetAccessKeyInfoResponse", name: "GetAccessKeyInfoResponse")
    GetCallerIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#GetCallerIdentityRequest", name: "GetCallerIdentityRequest")
    GetCallerIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#GetCallerIdentityResponse", name: "GetCallerIdentityResponse")
    GetFederationTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#GetFederationTokenRequest", name: "GetFederationTokenRequest")
    GetFederationTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#GetFederationTokenResponse", name: "GetFederationTokenResponse")
    GetSessionTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#GetSessionTokenRequest", name: "GetSessionTokenRequest")
    GetSessionTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#GetSessionTokenResponse", name: "GetSessionTokenResponse")
    IDPCommunicationErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#IDPCommunicationErrorException", name: "IDPCommunicationErrorException", traits: {"aws.protocols#awsQueryError" => {"code" => "IDPCommunicationError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IDPRejectedClaimException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#IDPRejectedClaimException", name: "IDPRejectedClaimException", traits: {"aws.protocols#awsQueryError" => {"code" => "IDPRejectedClaim", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InvalidAuthorizationMessageException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#InvalidAuthorizationMessageException", name: "InvalidAuthorizationMessageException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAuthorizationMessageException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidIdentityTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#InvalidIdentityTokenException", name: "InvalidIdentityTokenException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidIdentityToken", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Issuer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#Issuer", name: "Issuer")
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#MalformedPolicyDocumentException", name: "MalformedPolicyDocumentException", traits: {"aws.protocols#awsQueryError" => {"code" => "MalformedPolicyDocument", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NameQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#NameQualifier", name: "NameQualifier")
    PackedPolicyTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#PackedPolicyTooLargeException", name: "PackedPolicyTooLargeException", traits: {"aws.protocols#awsQueryError" => {"code" => "PackedPolicyTooLarge", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PolicyDescriptorType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#PolicyDescriptorType", name: "PolicyDescriptorType")
    ProvidedContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#ProvidedContext", name: "ProvidedContext")
    ProvidedContextsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sts#ProvidedContextsListType", name: "ProvidedContextsListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    RegionDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#RegionDisabledException", name: "RegionDisabledException", traits: {"aws.protocols#awsQueryError" => {"code" => "RegionDisabledException", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    RootDurationSecondsType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sts#RootDurationSecondsType", name: "RootDurationSecondsType", traits: {"smithy.api#range" => {"min" => 0, "max" => 900}})
    SAMLAssertionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#SAMLAssertionType", name: "SAMLAssertionType", traits: {"smithy.api#length" => {"min" => 4, "max" => 100000}, "smithy.api#sensitive" => {}})
    Subject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#Subject", name: "Subject")
    SubjectType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#SubjectType", name: "SubjectType")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sts#Tag", name: "Tag")
    TargetPrincipalType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#TargetPrincipalType", name: "TargetPrincipalType", traits: {"smithy.api#length" => {"min" => 12, "max" => 2048}})
    AccessKeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#accessKeyIdType", name: "AccessKeyIdType", traits: {"smithy.api#length" => {"min" => 16, "max" => 128}, "smithy.api#pattern" => "^[\\w]*$"})
    AccessKeySecretType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#accessKeySecretType", name: "AccessKeySecretType", traits: {"smithy.api#sensitive" => {}})
    AccountType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#accountType", name: "AccountType")
    ArnType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#arnType", name: "ArnType", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+$"})
    AssumedRoleIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#assumedRoleIdType", name: "AssumedRoleIdType", traits: {"smithy.api#length" => {"min" => 2, "max" => 193}, "smithy.api#pattern" => "^[\\w+=,.@:-]*$"})
    ClientTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#clientTokenType", name: "ClientTokenType", traits: {"smithy.api#length" => {"min" => 4, "max" => 20000}, "smithy.api#sensitive" => {}})
    ContextAssertionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#contextAssertionType", name: "ContextAssertionType", traits: {"smithy.api#length" => {"min" => 4, "max" => 2048}})
    DateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.sts#dateType", name: "DateType")
    DecodedMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#decodedMessageType", name: "DecodedMessageType")
    DurationSecondsType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sts#durationSecondsType", name: "DurationSecondsType", traits: {"smithy.api#range" => {"min" => 900, "max" => 129600}})
    EncodedMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#encodedMessageType", name: "EncodedMessageType", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}})
    ExpiredIdentityTokenMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#expiredIdentityTokenMessage", name: "ExpiredIdentityTokenMessage")
    ExternalIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#externalIdType", name: "ExternalIdType", traits: {"smithy.api#length" => {"min" => 2, "max" => 1224}, "smithy.api#pattern" => "^[\\w+=,.@:\\/-]*$"})
    FederatedIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#federatedIdType", name: "FederatedIdType", traits: {"smithy.api#length" => {"min" => 2, "max" => 193}, "smithy.api#pattern" => "^[\\w+=,.@\\:-]*$"})
    IdpCommunicationErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#idpCommunicationErrorMessage", name: "IdpCommunicationErrorMessage")
    IdpRejectedClaimMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#idpRejectedClaimMessage", name: "IdpRejectedClaimMessage")
    InvalidAuthorizationMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#invalidAuthorizationMessage", name: "InvalidAuthorizationMessage")
    InvalidIdentityTokenMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#invalidIdentityTokenMessage", name: "InvalidIdentityTokenMessage")
    MalformedPolicyDocumentMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#malformedPolicyDocumentMessage", name: "MalformedPolicyDocumentMessage")
    NonNegativeIntegerType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sts#nonNegativeIntegerType", name: "NonNegativeIntegerType", traits: {"smithy.api#range" => {"min" => 0}})
    PackedPolicyTooLargeMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#packedPolicyTooLargeMessage", name: "PackedPolicyTooLargeMessage")
    PolicyDescriptorListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sts#policyDescriptorListType", name: "PolicyDescriptorListType")
    RegionDisabledMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#regionDisabledMessage", name: "RegionDisabledMessage")
    RoleDurationSecondsType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sts#roleDurationSecondsType", name: "RoleDurationSecondsType", traits: {"smithy.api#range" => {"min" => 900, "max" => 43200}})
    RoleSessionNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#roleSessionNameType", name: "RoleSessionNameType", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    SerialNumberType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#serialNumberType", name: "SerialNumberType", traits: {"smithy.api#length" => {"min" => 9, "max" => 256}, "smithy.api#pattern" => "^[\\w+=/:,.@-]*$"})
    SessionPolicyDocumentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#sessionPolicyDocumentType", name: "SessionPolicyDocumentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    SourceIdentityType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#sourceIdentityType", name: "SourceIdentityType", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    TagKeyListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sts#tagKeyListType", name: "TagKeyListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#tagKeyType", name: "TagKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+$"})
    TagListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sts#tagListType", name: "TagListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#tagValueType", name: "TagValueType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TokenCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#tokenCodeType", name: "TokenCodeType", traits: {"smithy.api#length" => {"min" => 6, "max" => 6}, "smithy.api#pattern" => "^[\\d]*$"})
    TokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#tokenType", name: "TokenType")
    UnrestrictedSessionPolicyDocumentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#unrestrictedSessionPolicyDocumentType", name: "UnrestrictedSessionPolicyDocumentType", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    UrlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#urlType", name: "UrlType", traits: {"smithy.api#length" => {"min" => 4, "max" => 2048}})
    UserIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#userIdType", name: "UserIdType")
    UserNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#userNameType", name: "UserNameType", traits: {"smithy.api#length" => {"min" => 2, "max" => 32}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    WebIdentitySubjectType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sts#webIdentitySubjectType", name: "WebIdentitySubjectType", traits: {"smithy.api#length" => {"min" => 6, "max" => 255}})

    AssumeRoleRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    AssumeRoleRequest.add_member(:role_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleSessionNameType, name: "RoleSessionName", traits: {"smithy.api#required" => {}}))
    AssumeRoleRequest.add_member(:policy_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescriptorListType, name: "PolicyArns"))
    AssumeRoleRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: UnrestrictedSessionPolicyDocumentType, name: "Policy"))
    AssumeRoleRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleDurationSecondsType, name: "DurationSeconds"))
    AssumeRoleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    AssumeRoleRequest.add_member(:transitive_tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListType, name: "TransitiveTagKeys"))
    AssumeRoleRequest.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIdType, name: "ExternalId"))
    AssumeRoleRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber"))
    AssumeRoleRequest.add_member(:token_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenCodeType, name: "TokenCode"))
    AssumeRoleRequest.add_member(:source_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdentityType, name: "SourceIdentity"))
    AssumeRoleRequest.add_member(:provided_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvidedContextsListType, name: "ProvidedContexts"))
    AssumeRoleRequest.type = Types::AssumeRoleRequest
    AssumeRoleResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "Credentials"))
    AssumeRoleResponse.add_member(:assumed_role_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AssumedRoleUser, name: "AssumedRoleUser"))
    AssumeRoleResponse.add_member(:packed_policy_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeIntegerType, name: "PackedPolicySize"))
    AssumeRoleResponse.add_member(:source_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdentityType, name: "SourceIdentity"))
    AssumeRoleResponse.type = Types::AssumeRoleResponse
    AssumeRoleWithSAMLRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    AssumeRoleWithSAMLRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PrincipalArn", traits: {"smithy.api#required" => {}}))
    AssumeRoleWithSAMLRequest.add_member(:saml_assertion, ::Smithy::Schema::Shapes::MemberShape.new(target: SAMLAssertionType, name: "SAMLAssertion", traits: {"smithy.api#required" => {}}))
    AssumeRoleWithSAMLRequest.add_member(:policy_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescriptorListType, name: "PolicyArns"))
    AssumeRoleWithSAMLRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionPolicyDocumentType, name: "Policy"))
    AssumeRoleWithSAMLRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleDurationSecondsType, name: "DurationSeconds"))
    AssumeRoleWithSAMLRequest.type = Types::AssumeRoleWithSAMLRequest
    AssumeRoleWithSAMLResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "Credentials"))
    AssumeRoleWithSAMLResponse.add_member(:assumed_role_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AssumedRoleUser, name: "AssumedRoleUser"))
    AssumeRoleWithSAMLResponse.add_member(:packed_policy_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeIntegerType, name: "PackedPolicySize"))
    AssumeRoleWithSAMLResponse.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, name: "Subject"))
    AssumeRoleWithSAMLResponse.add_member(:subject_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectType, name: "SubjectType"))
    AssumeRoleWithSAMLResponse.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "Issuer"))
    AssumeRoleWithSAMLResponse.add_member(:audience, ::Smithy::Schema::Shapes::MemberShape.new(target: Audience, name: "Audience"))
    AssumeRoleWithSAMLResponse.add_member(:name_qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NameQualifier, name: "NameQualifier"))
    AssumeRoleWithSAMLResponse.add_member(:source_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdentityType, name: "SourceIdentity"))
    AssumeRoleWithSAMLResponse.type = Types::AssumeRoleWithSAMLResponse
    AssumeRoleWithWebIdentityRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    AssumeRoleWithWebIdentityRequest.add_member(:role_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleSessionNameType, name: "RoleSessionName", traits: {"smithy.api#required" => {}}))
    AssumeRoleWithWebIdentityRequest.add_member(:web_identity_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenType, name: "WebIdentityToken", traits: {"smithy.api#required" => {}}))
    AssumeRoleWithWebIdentityRequest.add_member(:provider_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlType, name: "ProviderId"))
    AssumeRoleWithWebIdentityRequest.add_member(:policy_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescriptorListType, name: "PolicyArns"))
    AssumeRoleWithWebIdentityRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionPolicyDocumentType, name: "Policy"))
    AssumeRoleWithWebIdentityRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleDurationSecondsType, name: "DurationSeconds"))
    AssumeRoleWithWebIdentityRequest.type = Types::AssumeRoleWithWebIdentityRequest
    AssumeRoleWithWebIdentityResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "Credentials"))
    AssumeRoleWithWebIdentityResponse.add_member(:subject_from_web_identity_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WebIdentitySubjectType, name: "SubjectFromWebIdentityToken"))
    AssumeRoleWithWebIdentityResponse.add_member(:assumed_role_user, ::Smithy::Schema::Shapes::MemberShape.new(target: AssumedRoleUser, name: "AssumedRoleUser"))
    AssumeRoleWithWebIdentityResponse.add_member(:packed_policy_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeIntegerType, name: "PackedPolicySize"))
    AssumeRoleWithWebIdentityResponse.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "Provider"))
    AssumeRoleWithWebIdentityResponse.add_member(:audience, ::Smithy::Schema::Shapes::MemberShape.new(target: Audience, name: "Audience"))
    AssumeRoleWithWebIdentityResponse.add_member(:source_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdentityType, name: "SourceIdentity"))
    AssumeRoleWithWebIdentityResponse.type = Types::AssumeRoleWithWebIdentityResponse
    AssumeRootRequest.add_member(:target_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPrincipalType, name: "TargetPrincipal", traits: {"smithy.api#required" => {}}))
    AssumeRootRequest.add_member(:task_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescriptorType, name: "TaskPolicyArn", traits: {"smithy.api#required" => {}}))
    AssumeRootRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RootDurationSecondsType, name: "DurationSeconds"))
    AssumeRootRequest.type = Types::AssumeRootRequest
    AssumeRootResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "Credentials"))
    AssumeRootResponse.add_member(:source_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdentityType, name: "SourceIdentity"))
    AssumeRootResponse.type = Types::AssumeRootResponse
    AssumedRoleUser.add_member(:assumed_role_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssumedRoleIdType, name: "AssumedRoleId", traits: {"smithy.api#required" => {}}))
    AssumedRoleUser.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn", traits: {"smithy.api#required" => {}}))
    AssumedRoleUser.type = Types::AssumedRoleUser
    Credentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdType, name: "AccessKeyId", traits: {"smithy.api#required" => {}}))
    Credentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeySecretType, name: "SecretAccessKey", traits: {"smithy.api#required" => {}}))
    Credentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenType, name: "SessionToken", traits: {"smithy.api#required" => {}}))
    Credentials.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "Expiration", traits: {"smithy.api#required" => {}}))
    Credentials.type = Types::Credentials
    DecodeAuthorizationMessageRequest.add_member(:encoded_message, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodedMessageType, name: "EncodedMessage", traits: {"smithy.api#required" => {}}))
    DecodeAuthorizationMessageRequest.type = Types::DecodeAuthorizationMessageRequest
    DecodeAuthorizationMessageResponse.add_member(:decoded_message, ::Smithy::Schema::Shapes::MemberShape.new(target: DecodedMessageType, name: "DecodedMessage"))
    DecodeAuthorizationMessageResponse.type = Types::DecodeAuthorizationMessageResponse
    ExpiredTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiredIdentityTokenMessage, name: "message"))
    ExpiredTokenException.type = Types::ExpiredTokenException
    FederatedUser.add_member(:federated_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FederatedIdType, name: "FederatedUserId", traits: {"smithy.api#required" => {}}))
    FederatedUser.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn", traits: {"smithy.api#required" => {}}))
    FederatedUser.type = Types::FederatedUser
    GetAccessKeyInfoRequest.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdType, name: "AccessKeyId", traits: {"smithy.api#required" => {}}))
    GetAccessKeyInfoRequest.type = Types::GetAccessKeyInfoRequest
    GetAccessKeyInfoResponse.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountType, name: "Account"))
    GetAccessKeyInfoResponse.type = Types::GetAccessKeyInfoResponse
    GetCallerIdentityRequest.type = Types::GetCallerIdentityRequest
    GetCallerIdentityResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdType, name: "UserId"))
    GetCallerIdentityResponse.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountType, name: "Account"))
    GetCallerIdentityResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn"))
    GetCallerIdentityResponse.type = Types::GetCallerIdentityResponse
    GetFederationTokenRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "Name", traits: {"smithy.api#required" => {}}))
    GetFederationTokenRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionPolicyDocumentType, name: "Policy"))
    GetFederationTokenRequest.add_member(:policy_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescriptorListType, name: "PolicyArns"))
    GetFederationTokenRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSecondsType, name: "DurationSeconds"))
    GetFederationTokenRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    GetFederationTokenRequest.type = Types::GetFederationTokenRequest
    GetFederationTokenResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "Credentials"))
    GetFederationTokenResponse.add_member(:federated_user, ::Smithy::Schema::Shapes::MemberShape.new(target: FederatedUser, name: "FederatedUser"))
    GetFederationTokenResponse.add_member(:packed_policy_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeIntegerType, name: "PackedPolicySize"))
    GetFederationTokenResponse.type = Types::GetFederationTokenResponse
    GetSessionTokenRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSecondsType, name: "DurationSeconds"))
    GetSessionTokenRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber"))
    GetSessionTokenRequest.add_member(:token_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenCodeType, name: "TokenCode"))
    GetSessionTokenRequest.type = Types::GetSessionTokenRequest
    GetSessionTokenResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "Credentials"))
    GetSessionTokenResponse.type = Types::GetSessionTokenResponse
    IDPCommunicationErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpCommunicationErrorMessage, name: "message"))
    IDPCommunicationErrorException.type = Types::IDPCommunicationErrorException
    IDPRejectedClaimException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpRejectedClaimMessage, name: "message"))
    IDPRejectedClaimException.type = Types::IDPRejectedClaimException
    InvalidAuthorizationMessageException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidAuthorizationMessage, name: "message"))
    InvalidAuthorizationMessageException.type = Types::InvalidAuthorizationMessageException
    InvalidIdentityTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidIdentityTokenMessage, name: "message"))
    InvalidIdentityTokenException.type = Types::InvalidIdentityTokenException
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MalformedPolicyDocumentMessage, name: "message"))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    PackedPolicyTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: PackedPolicyTooLargeMessage, name: "message"))
    PackedPolicyTooLargeException.type = Types::PackedPolicyTooLargeException
    PolicyDescriptorType.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "arn"))
    PolicyDescriptorType.type = Types::PolicyDescriptorType
    ProvidedContext.add_member(:provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ProviderArn"))
    ProvidedContext.add_member(:context_assertion, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextAssertionType, name: "ContextAssertion"))
    ProvidedContext.type = Types::ProvidedContext
    ProvidedContextsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvidedContext, name: "member"))
    RegionDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionDisabledMessage, name: "message"))
    RegionDisabledException.type = Types::RegionDisabledException
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyType, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueType, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    PolicyDescriptorListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescriptorType, name: "member"))
    TagKeyListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyType, name: "member"))
    TagListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))

    AWSSecurityTokenServiceV20110615 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sts#AWSSecurityTokenServiceV20110615"
      service.name = "AWSSecurityTokenServiceV20110615"
      service.version = "2011-06-15"
      service.traits = {"aws.api#service" => {"sdkId" => "STS", "arnNamespace" => "sts", "cloudFormationName" => "STS", "cloudTrailEventSource" => "sts.amazonaws.com", "endpointPrefix" => "sts"}, "aws.auth#sigv4" => {"name" => "sts"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "AWS Security Token Service", "smithy.api#xmlNamespace" => {"uri" => "https://sts.amazonaws.com/doc/2011-06-15/"}}
      service.add_operation(:assume_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sts#AssumeRole"
        operation.name = "AssumeRole"
        operation.input = AssumeRoleRequest
        operation.output = AssumeRoleResponse
        operation.errors << ExpiredTokenException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PackedPolicyTooLargeException
        operation.errors << RegionDisabledException
        operation.traits = {}
      end)
      service.add_operation(:assume_role_with_saml, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sts#AssumeRoleWithSAML"
        operation.name = "AssumeRoleWithSAML"
        operation.input = AssumeRoleWithSAMLRequest
        operation.output = AssumeRoleWithSAMLResponse
        operation.errors << ExpiredTokenException
        operation.errors << IDPRejectedClaimException
        operation.errors << InvalidIdentityTokenException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PackedPolicyTooLargeException
        operation.errors << RegionDisabledException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:assume_role_with_web_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sts#AssumeRoleWithWebIdentity"
        operation.name = "AssumeRoleWithWebIdentity"
        operation.input = AssumeRoleWithWebIdentityRequest
        operation.output = AssumeRoleWithWebIdentityResponse
        operation.errors << ExpiredTokenException
        operation.errors << IDPCommunicationErrorException
        operation.errors << IDPRejectedClaimException
        operation.errors << InvalidIdentityTokenException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PackedPolicyTooLargeException
        operation.errors << RegionDisabledException
        operation.traits = {"smithy.api#auth" => [], "smithy.api#optionalAuth" => {}}
      end)
      service.add_operation(:assume_root, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sts#AssumeRoot"
        operation.name = "AssumeRoot"
        operation.input = AssumeRootRequest
        operation.output = AssumeRootResponse
        operation.errors << ExpiredTokenException
        operation.errors << RegionDisabledException
        operation.traits = {}
      end)
      service.add_operation(:decode_authorization_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sts#DecodeAuthorizationMessage"
        operation.name = "DecodeAuthorizationMessage"
        operation.input = DecodeAuthorizationMessageRequest
        operation.output = DecodeAuthorizationMessageResponse
        operation.errors << InvalidAuthorizationMessageException
        operation.traits = {}
      end)
      service.add_operation(:get_access_key_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sts#GetAccessKeyInfo"
        operation.name = "GetAccessKeyInfo"
        operation.input = GetAccessKeyInfoRequest
        operation.output = GetAccessKeyInfoResponse
        operation.traits = {}
      end)
      service.add_operation(:get_caller_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sts#GetCallerIdentity"
        operation.name = "GetCallerIdentity"
        operation.input = GetCallerIdentityRequest
        operation.output = GetCallerIdentityResponse
        operation.traits = {}
      end)
      service.add_operation(:get_federation_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sts#GetFederationToken"
        operation.name = "GetFederationToken"
        operation.input = GetFederationTokenRequest
        operation.output = GetFederationTokenResponse
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PackedPolicyTooLargeException
        operation.errors << RegionDisabledException
        operation.traits = {}
      end)
      service.add_operation(:get_session_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sts#GetSessionToken"
        operation.name = "GetSessionToken"
        operation.input = GetSessionTokenRequest
        operation.output = GetSessionTokenResponse
        operation.errors << RegionDisabledException
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
