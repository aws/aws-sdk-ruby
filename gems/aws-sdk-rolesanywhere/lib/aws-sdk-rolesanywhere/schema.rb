# frozen_string_literal: true

# This is generated code!

module Aws::RolesAnywhere
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AttributeMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#AttributeMapping", name: "AttributeMapping")
    AttributeMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#AttributeMappings", name: "AttributeMappings")
    CertificateField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#CertificateField", name: "CertificateField", traits: {"smithy.api#enum" => [{"name" => "x509Subject", "value" => "x509Subject"}, {"name" => "x509Issuer", "value" => "x509Issuer"}, {"name" => "x509SAN", "value" => "x509SAN"}]})
    CreateProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#CreateProfileInput", name: "CreateProfileInput")
    CreateProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#CreateProfileOutput", name: "CreateProfileOutput")
    CreateTrustAnchorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#CreateTrustAnchorInput", name: "CreateTrustAnchorInput")
    CreateTrustAnchorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#CreateTrustAnchorOutput", name: "CreateTrustAnchorOutput")
    CredentialSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#CredentialSummaries", name: "CredentialSummaries")
    CredentialSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#CredentialSummary", name: "CredentialSummary")
    CrlDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#CrlDetail", name: "CrlDetail")
    CrlDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#CrlDetails", name: "CrlDetails")
    DeleteAttributeMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DeleteAttributeMappingRequest", name: "DeleteAttributeMappingRequest")
    DeleteAttributeMappingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DeleteAttributeMappingResponse", name: "DeleteAttributeMappingResponse")
    DeleteCrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DeleteCrlInput", name: "DeleteCrlInput")
    DeleteCrlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DeleteCrlOutput", name: "DeleteCrlOutput")
    DeleteProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DeleteProfileInput", name: "DeleteProfileInput")
    DeleteProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DeleteProfileOutput", name: "DeleteProfileOutput")
    DeleteTrustAnchorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DeleteTrustAnchorInput", name: "DeleteTrustAnchorInput")
    DeleteTrustAnchorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DeleteTrustAnchorOutput", name: "DeleteTrustAnchorOutput")
    DisableCrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DisableCrlInput", name: "DisableCrlInput")
    DisableCrlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DisableCrlOutput", name: "DisableCrlOutput")
    DisableProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DisableProfileInput", name: "DisableProfileInput")
    DisableProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DisableProfileOutput", name: "DisableProfileOutput")
    DisableTrustAnchorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DisableTrustAnchorInput", name: "DisableTrustAnchorInput")
    DisableTrustAnchorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#DisableTrustAnchorOutput", name: "DisableTrustAnchorOutput")
    EnableCrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#EnableCrlInput", name: "EnableCrlInput")
    EnableCrlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#EnableCrlOutput", name: "EnableCrlOutput")
    EnableProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#EnableProfileInput", name: "EnableProfileInput")
    EnableProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#EnableProfileOutput", name: "EnableProfileOutput")
    EnableTrustAnchorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#EnableTrustAnchorInput", name: "EnableTrustAnchorInput")
    EnableTrustAnchorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#EnableTrustAnchorOutput", name: "EnableTrustAnchorOutput")
    GetCrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#GetCrlInput", name: "GetCrlInput")
    GetCrlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#GetCrlOutput", name: "GetCrlOutput")
    GetProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#GetProfileInput", name: "GetProfileInput")
    GetProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#GetProfileOutput", name: "GetProfileOutput")
    GetSubjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#GetSubjectInput", name: "GetSubjectInput")
    GetSubjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#GetSubjectOutput", name: "GetSubjectOutput")
    GetTrustAnchorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#GetTrustAnchorInput", name: "GetTrustAnchorInput")
    GetTrustAnchorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#GetTrustAnchorOutput", name: "GetTrustAnchorOutput")
    ImportCrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ImportCrlInput", name: "ImportCrlInput")
    ImportCrlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ImportCrlOutput", name: "ImportCrlOutput")
    InstanceProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#InstanceProperties", name: "InstanceProperties")
    InstanceProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#InstanceProperty", name: "InstanceProperty")
    InstancePropertyMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.rolesanywhere#InstancePropertyMap", name: "InstancePropertyMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ListCrlsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ListCrlsInput", name: "ListCrlsInput")
    ListCrlsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ListCrlsOutput", name: "ListCrlsOutput")
    ListProfilesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ListProfilesInput", name: "ListProfilesInput")
    ListProfilesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ListProfilesOutput", name: "ListProfilesOutput")
    ListSubjectsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ListSubjectsInput", name: "ListSubjectsInput")
    ListSubjectsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ListSubjectsOutput", name: "ListSubjectsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTrustAnchorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ListTrustAnchorsInput", name: "ListTrustAnchorsInput")
    ListTrustAnchorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ListTrustAnchorsOutput", name: "ListTrustAnchorsOutput")
    ManagedPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#ManagedPolicyList", name: "ManagedPolicyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MappingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#MappingRule", name: "MappingRule")
    MappingRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#MappingRules", name: "MappingRules")
    NotificationChannel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#NotificationChannel", name: "NotificationChannel", traits: {"smithy.api#enum" => [{"value" => "ALL", "name" => "ALL"}]})
    NotificationEvent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#NotificationEvent", name: "NotificationEvent", traits: {"smithy.api#enum" => [{"value" => "CA_CERTIFICATE_EXPIRY", "name" => "CA_CERTIFICATE_EXPIRY"}, {"value" => "END_ENTITY_CERTIFICATE_EXPIRY", "name" => "END_ENTITY_CERTIFICATE_EXPIRY"}]})
    NotificationSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#NotificationSetting", name: "NotificationSetting")
    NotificationSettingDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#NotificationSettingDetail", name: "NotificationSettingDetail")
    NotificationSettingDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#NotificationSettingDetails", name: "NotificationSettingDetails", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    NotificationSettingKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#NotificationSettingKey", name: "NotificationSettingKey")
    NotificationSettingKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#NotificationSettingKeys", name: "NotificationSettingKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    NotificationSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#NotificationSettings", name: "NotificationSettings", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#ProfileArn", name: "ProfileArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:rolesanywhere(:.*){2}(:profile.*)$"})
    ProfileDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ProfileDetail", name: "ProfileDetail")
    ProfileDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#ProfileDetails", name: "ProfileDetails")
    PutAttributeMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#PutAttributeMappingRequest", name: "PutAttributeMappingRequest")
    PutAttributeMappingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#PutAttributeMappingResponse", name: "PutAttributeMappingResponse")
    PutNotificationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#PutNotificationSettingsRequest", name: "PutNotificationSettingsRequest")
    PutNotificationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#PutNotificationSettingsResponse", name: "PutNotificationSettingsResponse")
    ResetNotificationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ResetNotificationSettingsRequest", name: "ResetNotificationSettingsRequest")
    ResetNotificationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ResetNotificationSettingsResponse", name: "ResetNotificationSettingsResponse")
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[ a-zA-Z0-9-_]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam(:.*){2}(:role.*)$"})
    RoleArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#RoleArnList", name: "RoleArnList", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#Source", name: "Source")
    SourceData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.rolesanywhere#SourceData", name: "SourceData")
    SpecifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#SpecifierList", name: "SpecifierList")
    SubjectDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#SubjectDetail", name: "SubjectDetail")
    SubjectSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#SubjectSummaries", name: "SubjectSummaries")
    SubjectSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#SubjectSummary", name: "SubjectSummary")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9_.:/=+@-]*$", "smithy.api#sensitive" => {}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[ a-zA-Z0-9_.:/=+@-]*$", "smithy.api#sensitive" => {}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustAnchorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#TrustAnchorArn", name: "TrustAnchorArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:rolesanywhere(:.*){2}(:trust-anchor.*)$"})
    TrustAnchorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#TrustAnchorDetail", name: "TrustAnchorDetail")
    TrustAnchorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rolesanywhere#TrustAnchorDetails", name: "TrustAnchorDetails")
    TrustAnchorType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#TrustAnchorType", name: "TrustAnchorType", traits: {"smithy.api#enum" => [{"value" => "AWS_ACM_PCA", "name" => "AWS_ACM_PCA"}, {"value" => "CERTIFICATE_BUNDLE", "name" => "CERTIFICATE_BUNDLE"}, {"value" => "SELF_SIGNED_REPOSITORY", "name" => "SELF_SIGNED_REPOSITORY"}]})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateCrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#UpdateCrlInput", name: "UpdateCrlInput")
    UpdateCrlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#UpdateCrlOutput", name: "UpdateCrlOutput")
    UpdateProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#UpdateProfileInput", name: "UpdateProfileInput")
    UpdateProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#UpdateProfileOutput", name: "UpdateProfileOutput")
    UpdateTrustAnchorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#UpdateTrustAnchorInput", name: "UpdateTrustAnchorInput")
    UpdateTrustAnchorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#UpdateTrustAnchorOutput", name: "UpdateTrustAnchorOutput")
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rolesanywhere#Uuid", name: "Uuid", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "[a-f0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rolesanywhere#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AttributeMapping.add_member(:certificate_field, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateField, name: "certificateField"))
    AttributeMapping.add_member(:mapping_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingRules, name: "mappingRules"))
    AttributeMapping.type = Types::AttributeMapping
    AttributeMappings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMapping, name: "member")
    CreateProfileInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateProfileInput.add_member(:require_instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "requireInstanceProperties"))
    CreateProfileInput.add_member(:session_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionPolicy"))
    CreateProfileInput.add_member(:role_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArnList, name: "roleArns", traits: {"smithy.api#required" => {}}))
    CreateProfileInput.add_member(:managed_policy_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyList, name: "managedPolicyArns"))
    CreateProfileInput.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "durationSeconds", traits: {"smithy.api#range" => {"min" => 900, "max" => 43200}}))
    CreateProfileInput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    CreateProfileInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateProfileInput.add_member(:accept_role_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "acceptRoleSessionName"))
    CreateProfileInput.type = Types::CreateProfileInput
    CreateProfileOutput.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDetail, name: "profile"))
    CreateProfileOutput.type = Types::CreateProfileOutput
    CreateTrustAnchorInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateTrustAnchorInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source", traits: {"smithy.api#required" => {}}))
    CreateTrustAnchorInput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    CreateTrustAnchorInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateTrustAnchorInput.add_member(:notification_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSettings, name: "notificationSettings"))
    CreateTrustAnchorInput.type = Types::CreateTrustAnchorInput
    CreateTrustAnchorOutput.add_member(:trust_anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorDetail, name: "trustAnchor", traits: {"smithy.api#required" => {}}))
    CreateTrustAnchorOutput.type = Types::CreateTrustAnchorOutput
    CredentialSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialSummary, name: "member")
    CredentialSummary.add_member(:seen_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "seenAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CredentialSummary.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serialNumber"))
    CredentialSummary.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "issuer"))
    CredentialSummary.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    CredentialSummary.add_member(:x509_certificate_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "x509CertificateData"))
    CredentialSummary.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "failed"))
    CredentialSummary.type = Types::CredentialSummary
    CrlDetail.add_member(:crl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "crlId"))
    CrlDetail.add_member(:crl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "crlArn"))
    CrlDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    CrlDetail.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    CrlDetail.add_member(:crl_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "crlData"))
    CrlDetail.add_member(:trust_anchor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "trustAnchorArn"))
    CrlDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CrlDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CrlDetail.type = Types::CrlDetail
    CrlDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CrlDetail, name: "member")
    DeleteAttributeMappingRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "profileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttributeMappingRequest.add_member(:certificate_field, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateField, name: "certificateField", traits: {"smithy.api#httpQuery" => "certificateField", "smithy.api#required" => {}}))
    DeleteAttributeMappingRequest.add_member(:specifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: SpecifierList, name: "specifiers", traits: {"smithy.api#httpQuery" => "specifiers"}))
    DeleteAttributeMappingRequest.type = Types::DeleteAttributeMappingRequest
    DeleteAttributeMappingResponse.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDetail, name: "profile", traits: {"smithy.api#required" => {}}))
    DeleteAttributeMappingResponse.type = Types::DeleteAttributeMappingResponse
    DeleteCrlInput.add_member(:crl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "crlId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCrlInput.type = Types::DeleteCrlInput
    DeleteCrlOutput.add_member(:crl, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlDetail, name: "crl", traits: {"smithy.api#required" => {}}))
    DeleteCrlOutput.type = Types::DeleteCrlOutput
    DeleteProfileInput.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "profileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileInput.type = Types::DeleteProfileInput
    DeleteProfileOutput.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDetail, name: "profile"))
    DeleteProfileOutput.type = Types::DeleteProfileOutput
    DeleteTrustAnchorInput.add_member(:trust_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "trustAnchorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrustAnchorInput.type = Types::DeleteTrustAnchorInput
    DeleteTrustAnchorOutput.add_member(:trust_anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorDetail, name: "trustAnchor", traits: {"smithy.api#required" => {}}))
    DeleteTrustAnchorOutput.type = Types::DeleteTrustAnchorOutput
    DisableCrlInput.add_member(:crl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "crlId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisableCrlInput.type = Types::DisableCrlInput
    DisableCrlOutput.add_member(:crl, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlDetail, name: "crl", traits: {"smithy.api#required" => {}}))
    DisableCrlOutput.type = Types::DisableCrlOutput
    DisableProfileInput.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "profileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisableProfileInput.type = Types::DisableProfileInput
    DisableProfileOutput.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDetail, name: "profile"))
    DisableProfileOutput.type = Types::DisableProfileOutput
    DisableTrustAnchorInput.add_member(:trust_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "trustAnchorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisableTrustAnchorInput.type = Types::DisableTrustAnchorInput
    DisableTrustAnchorOutput.add_member(:trust_anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorDetail, name: "trustAnchor", traits: {"smithy.api#required" => {}}))
    DisableTrustAnchorOutput.type = Types::DisableTrustAnchorOutput
    EnableCrlInput.add_member(:crl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "crlId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EnableCrlInput.type = Types::EnableCrlInput
    EnableCrlOutput.add_member(:crl, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlDetail, name: "crl", traits: {"smithy.api#required" => {}}))
    EnableCrlOutput.type = Types::EnableCrlOutput
    EnableProfileInput.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "profileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EnableProfileInput.type = Types::EnableProfileInput
    EnableProfileOutput.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDetail, name: "profile"))
    EnableProfileOutput.type = Types::EnableProfileOutput
    EnableTrustAnchorInput.add_member(:trust_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "trustAnchorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EnableTrustAnchorInput.type = Types::EnableTrustAnchorInput
    EnableTrustAnchorOutput.add_member(:trust_anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorDetail, name: "trustAnchor", traits: {"smithy.api#required" => {}}))
    EnableTrustAnchorOutput.type = Types::EnableTrustAnchorOutput
    GetCrlInput.add_member(:crl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "crlId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCrlInput.type = Types::GetCrlInput
    GetCrlOutput.add_member(:crl, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlDetail, name: "crl", traits: {"smithy.api#required" => {}}))
    GetCrlOutput.type = Types::GetCrlOutput
    GetProfileInput.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "profileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileInput.type = Types::GetProfileInput
    GetProfileOutput.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDetail, name: "profile"))
    GetProfileOutput.type = Types::GetProfileOutput
    GetSubjectInput.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "subjectId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSubjectInput.type = Types::GetSubjectInput
    GetSubjectOutput.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectDetail, name: "subject"))
    GetSubjectOutput.type = Types::GetSubjectOutput
    GetTrustAnchorInput.add_member(:trust_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "trustAnchorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrustAnchorInput.type = Types::GetTrustAnchorInput
    GetTrustAnchorOutput.add_member(:trust_anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorDetail, name: "trustAnchor", traits: {"smithy.api#required" => {}}))
    GetTrustAnchorOutput.type = Types::GetTrustAnchorOutput
    ImportCrlInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    ImportCrlInput.add_member(:crl_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "crlData", traits: {"smithy.api#length" => {"min" => 1, "max" => 300000}, "smithy.api#required" => {}}))
    ImportCrlInput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    ImportCrlInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ImportCrlInput.add_member(:trust_anchor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorArn, name: "trustAnchorArn", traits: {"smithy.api#required" => {}}))
    ImportCrlInput.type = Types::ImportCrlInput
    ImportCrlOutput.add_member(:crl, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlDetail, name: "crl", traits: {"smithy.api#required" => {}}))
    ImportCrlOutput.type = Types::ImportCrlOutput
    InstanceProperties.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProperty, name: "member")
    InstanceProperty.add_member(:seen_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "seenAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    InstanceProperty.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyMap, name: "properties"))
    InstanceProperty.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "failed"))
    InstanceProperty.type = Types::InstanceProperty
    InstancePropertyMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    InstancePropertyMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ListCrlsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListCrlsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "pageSize", traits: {"smithy.api#httpQuery" => "pageSize"}))
    ListCrlsInput.type = Types::ListCrlsInput
    ListCrlsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCrlsOutput.add_member(:crls, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlDetails, name: "crls"))
    ListCrlsOutput.type = Types::ListCrlsOutput
    ListProfilesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListProfilesInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "pageSize", traits: {"smithy.api#httpQuery" => "pageSize"}))
    ListProfilesInput.type = Types::ListProfilesInput
    ListProfilesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListProfilesOutput.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDetails, name: "profiles"))
    ListProfilesOutput.type = Types::ListProfilesOutput
    ListSubjectsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListSubjectsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "pageSize", traits: {"smithy.api#httpQuery" => "pageSize"}))
    ListSubjectsInput.type = Types::ListSubjectsInput
    ListSubjectsOutput.add_member(:subjects, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectSummaries, name: "subjects"))
    ListSubjectsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSubjectsOutput.type = Types::ListSubjectsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTrustAnchorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListTrustAnchorsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "pageSize", traits: {"smithy.api#httpQuery" => "pageSize"}))
    ListTrustAnchorsInput.type = Types::ListTrustAnchorsInput
    ListTrustAnchorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListTrustAnchorsOutput.add_member(:trust_anchors, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorDetails, name: "trustAnchors"))
    ListTrustAnchorsOutput.type = Types::ListTrustAnchorsOutput
    ManagedPolicyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    MappingRule.add_member(:specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "specifier", traits: {"smithy.api#length" => {"max" => 60}, "smithy.api#required" => {}}))
    MappingRule.type = Types::MappingRule
    MappingRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MappingRule, name: "member")
    NotificationSetting.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    NotificationSetting.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationEvent, name: "event", traits: {"smithy.api#required" => {}}))
    NotificationSetting.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "threshold", traits: {"smithy.api#range" => {"min" => 1, "max" => 360}}))
    NotificationSetting.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannel, name: "channel"))
    NotificationSetting.type = Types::NotificationSetting
    NotificationSettingDetail.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    NotificationSettingDetail.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationEvent, name: "event", traits: {"smithy.api#required" => {}}))
    NotificationSettingDetail.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "threshold", traits: {"smithy.api#range" => {"min" => 1, "max" => 360}}))
    NotificationSettingDetail.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannel, name: "channel"))
    NotificationSettingDetail.add_member(:configured_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "configuredBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}}))
    NotificationSettingDetail.type = Types::NotificationSettingDetail
    NotificationSettingDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSettingDetail, name: "member")
    NotificationSettingKey.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationEvent, name: "event", traits: {"smithy.api#required" => {}}))
    NotificationSettingKey.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannel, name: "channel"))
    NotificationSettingKey.type = Types::NotificationSettingKey
    NotificationSettingKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSettingKey, name: "member")
    NotificationSettings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSetting, name: "member")
    ProfileDetail.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "profileId"))
    ProfileDetail.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileArn, name: "profileArn"))
    ProfileDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ProfileDetail.add_member(:require_instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "requireInstanceProperties"))
    ProfileDetail.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    ProfileDetail.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "createdBy"))
    ProfileDetail.add_member(:session_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionPolicy"))
    ProfileDetail.add_member(:role_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArnList, name: "roleArns"))
    ProfileDetail.add_member(:managed_policy_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyList, name: "managedPolicyArns"))
    ProfileDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ProfileDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ProfileDetail.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "durationSeconds"))
    ProfileDetail.add_member(:accept_role_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "acceptRoleSessionName"))
    ProfileDetail.add_member(:attribute_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMappings, name: "attributeMappings"))
    ProfileDetail.type = Types::ProfileDetail
    ProfileDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDetail, name: "member")
    PutAttributeMappingRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "profileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAttributeMappingRequest.add_member(:certificate_field, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateField, name: "certificateField", traits: {"smithy.api#required" => {}}))
    PutAttributeMappingRequest.add_member(:mapping_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingRules, name: "mappingRules", traits: {"smithy.api#required" => {}}))
    PutAttributeMappingRequest.type = Types::PutAttributeMappingRequest
    PutAttributeMappingResponse.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDetail, name: "profile", traits: {"smithy.api#required" => {}}))
    PutAttributeMappingResponse.type = Types::PutAttributeMappingResponse
    PutNotificationSettingsRequest.add_member(:trust_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "trustAnchorId", traits: {"smithy.api#required" => {}}))
    PutNotificationSettingsRequest.add_member(:notification_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSettings, name: "notificationSettings", traits: {"smithy.api#required" => {}}))
    PutNotificationSettingsRequest.type = Types::PutNotificationSettingsRequest
    PutNotificationSettingsResponse.add_member(:trust_anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorDetail, name: "trustAnchor", traits: {"smithy.api#required" => {}}))
    PutNotificationSettingsResponse.type = Types::PutNotificationSettingsResponse
    ResetNotificationSettingsRequest.add_member(:trust_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "trustAnchorId", traits: {"smithy.api#required" => {}}))
    ResetNotificationSettingsRequest.add_member(:notification_setting_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSettingKeys, name: "notificationSettingKeys", traits: {"smithy.api#required" => {}}))
    ResetNotificationSettingsRequest.type = Types::ResetNotificationSettingsRequest
    ResetNotificationSettingsResponse.add_member(:trust_anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorDetail, name: "trustAnchor", traits: {"smithy.api#required" => {}}))
    ResetNotificationSettingsResponse.type = Types::ResetNotificationSettingsResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoleArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "member")
    Source.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorType, name: "sourceType"))
    Source.add_member(:source_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceData, name: "sourceData"))
    Source.type = Types::Source
    SourceData.add_member(:x509_certificate_data, Types::SourceData::X509CertificateData, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "x509CertificateData", traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}}))
    SourceData.add_member(:acm_pca_arn, Types::SourceData::AcmPcaArn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "acmPcaArn"))
    SourceData.add_member(:unknown, Types::SourceData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SourceData.type = Types::SourceData
    SpecifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    SubjectDetail.add_member(:subject_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "subjectArn"))
    SubjectDetail.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "subjectId"))
    SubjectDetail.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    SubjectDetail.add_member(:x509_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "x509Subject"))
    SubjectDetail.add_member(:last_seen_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastSeenAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SubjectDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SubjectDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SubjectDetail.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialSummaries, name: "credentials"))
    SubjectDetail.add_member(:instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProperties, name: "instanceProperties"))
    SubjectDetail.type = Types::SubjectDetail
    SubjectSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectSummary, name: "member")
    SubjectSummary.add_member(:subject_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "subjectArn"))
    SubjectSummary.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "subjectId"))
    SubjectSummary.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    SubjectSummary.add_member(:x509_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "x509Subject"))
    SubjectSummary.add_member(:last_seen_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastSeenAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SubjectSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SubjectSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SubjectSummary.type = Types::SubjectSummary
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    TrustAnchorDetail.add_member(:trust_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "trustAnchorId"))
    TrustAnchorDetail.add_member(:trust_anchor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "trustAnchorArn"))
    TrustAnchorDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    TrustAnchorDetail.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    TrustAnchorDetail.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    TrustAnchorDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    TrustAnchorDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    TrustAnchorDetail.add_member(:notification_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSettingDetails, name: "notificationSettings"))
    TrustAnchorDetail.type = Types::TrustAnchorDetail
    TrustAnchorDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorDetail, name: "member")
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateCrlInput.add_member(:crl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "crlId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCrlInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    UpdateCrlInput.add_member(:crl_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "crlData", traits: {"smithy.api#length" => {"min" => 1, "max" => 300000}}))
    UpdateCrlInput.type = Types::UpdateCrlInput
    UpdateCrlOutput.add_member(:crl, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlDetail, name: "crl", traits: {"smithy.api#required" => {}}))
    UpdateCrlOutput.type = Types::UpdateCrlOutput
    UpdateProfileInput.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "profileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProfileInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    UpdateProfileInput.add_member(:session_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionPolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}}))
    UpdateProfileInput.add_member(:role_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArnList, name: "roleArns"))
    UpdateProfileInput.add_member(:managed_policy_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyList, name: "managedPolicyArns"))
    UpdateProfileInput.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "durationSeconds", traits: {"smithy.api#range" => {"min" => 900, "max" => 43200}}))
    UpdateProfileInput.add_member(:accept_role_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "acceptRoleSessionName"))
    UpdateProfileInput.type = Types::UpdateProfileInput
    UpdateProfileOutput.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDetail, name: "profile"))
    UpdateProfileOutput.type = Types::UpdateProfileOutput
    UpdateTrustAnchorInput.add_member(:trust_anchor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "trustAnchorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTrustAnchorInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    UpdateTrustAnchorInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    UpdateTrustAnchorInput.type = Types::UpdateTrustAnchorInput
    UpdateTrustAnchorOutput.add_member(:trust_anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustAnchorDetail, name: "trustAnchor", traits: {"smithy.api#required" => {}}))
    UpdateTrustAnchorOutput.type = Types::UpdateTrustAnchorOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException

    RolesAnywhere = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rolesanywhere#RolesAnywhere"
      service.name = "RolesAnywhere"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "RolesAnywhere", "arnNamespace" => "rolesanywhere", "cloudFormationName" => "RolesAnywhere"}, "aws.auth#sigv4" => {"name" => "rolesanywhere"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "IAM Roles Anywhere"}
      service.add_operation(:create_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#CreateProfile"
        operation.name = "CreateProfile"
        operation.input = CreateProfileInput
        operation.output = CreateProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/profiles", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_trust_anchor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#CreateTrustAnchor"
        operation.name = "CreateTrustAnchor"
        operation.input = CreateTrustAnchorInput
        operation.output = CreateTrustAnchorOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchors", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:delete_attribute_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DeleteAttributeMapping"
        operation.name = "DeleteAttributeMapping"
        operation.input = DeleteAttributeMappingRequest
        operation.output = DeleteAttributeMappingResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/profiles/{profileId}/mappings", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_crl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DeleteCrl"
        operation.name = "DeleteCrl"
        operation.input = DeleteCrlInput
        operation.output = DeleteCrlOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/crl/{crlId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DeleteProfile"
        operation.name = "DeleteProfile"
        operation.input = DeleteProfileInput
        operation.output = DeleteProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/profile/{profileId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_trust_anchor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DeleteTrustAnchor"
        operation.name = "DeleteTrustAnchor"
        operation.input = DeleteTrustAnchorInput
        operation.output = DeleteTrustAnchorOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchor/{trustAnchorId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disable_crl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DisableCrl"
        operation.name = "DisableCrl"
        operation.input = DisableCrlInput
        operation.output = DisableCrlOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/crl/{crlId}/disable", "method" => "POST"}}
      end)
      service.add_operation(:disable_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DisableProfile"
        operation.name = "DisableProfile"
        operation.input = DisableProfileInput
        operation.output = DisableProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/profile/{profileId}/disable", "method" => "POST"}}
      end)
      service.add_operation(:disable_trust_anchor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DisableTrustAnchor"
        operation.name = "DisableTrustAnchor"
        operation.input = DisableTrustAnchorInput
        operation.output = DisableTrustAnchorOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchor/{trustAnchorId}/disable", "method" => "POST"}}
      end)
      service.add_operation(:enable_crl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#EnableCrl"
        operation.name = "EnableCrl"
        operation.input = EnableCrlInput
        operation.output = EnableCrlOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/crl/{crlId}/enable", "method" => "POST"}}
      end)
      service.add_operation(:enable_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#EnableProfile"
        operation.name = "EnableProfile"
        operation.input = EnableProfileInput
        operation.output = EnableProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/profile/{profileId}/enable", "method" => "POST"}}
      end)
      service.add_operation(:enable_trust_anchor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#EnableTrustAnchor"
        operation.name = "EnableTrustAnchor"
        operation.input = EnableTrustAnchorInput
        operation.output = EnableTrustAnchorOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchor/{trustAnchorId}/enable", "method" => "POST"}}
      end)
      service.add_operation(:get_crl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#GetCrl"
        operation.name = "GetCrl"
        operation.input = GetCrlInput
        operation.output = GetCrlOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/crl/{crlId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#GetProfile"
        operation.name = "GetProfile"
        operation.input = GetProfileInput
        operation.output = GetProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/profile/{profileId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_subject, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#GetSubject"
        operation.name = "GetSubject"
        operation.input = GetSubjectInput
        operation.output = GetSubjectOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/subject/{subjectId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_trust_anchor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#GetTrustAnchor"
        operation.name = "GetTrustAnchor"
        operation.input = GetTrustAnchorInput
        operation.output = GetTrustAnchorOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchor/{trustAnchorId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_crl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ImportCrl"
        operation.name = "ImportCrl"
        operation.input = ImportCrlInput
        operation.output = ImportCrlOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/crls", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:list_crls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ListCrls"
        operation.name = "ListCrls"
        operation.input = ListCrlsInput
        operation.output = ListCrlsOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/crls", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCrls.new
      end)
      service.add_operation(:list_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ListProfiles"
        operation.name = "ListProfiles"
        operation.input = ListProfilesInput
        operation.output = ListProfilesOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/profiles", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProfiles.new
      end)
      service.add_operation(:list_subjects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ListSubjects"
        operation.name = "ListSubjects"
        operation.input = ListSubjectsInput
        operation.output = ListSubjectsOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/subjects", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSubjects.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListTagsForResource", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_trust_anchors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ListTrustAnchors"
        operation.name = "ListTrustAnchors"
        operation.input = ListTrustAnchorsInput
        operation.output = ListTrustAnchorsOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchors", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrustAnchors.new
      end)
      service.add_operation(:put_attribute_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#PutAttributeMapping"
        operation.name = "PutAttributeMapping"
        operation.input = PutAttributeMappingRequest
        operation.output = PutAttributeMappingResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/profiles/{profileId}/mappings", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_notification_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#PutNotificationSettings"
        operation.name = "PutNotificationSettings"
        operation.input = PutNotificationSettingsRequest
        operation.output = PutNotificationSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/put-notifications-settings", "method" => "PATCH"}}
      end)
      service.add_operation(:reset_notification_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ResetNotificationSettings"
        operation.name = "ResetNotificationSettings"
        operation.input = ResetNotificationSettingsRequest
        operation.output = ResetNotificationSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/reset-notifications-settings", "method" => "PATCH"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/TagResource", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UntagResource", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_crl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#UpdateCrl"
        operation.name = "UpdateCrl"
        operation.input = UpdateCrlInput
        operation.output = UpdateCrlOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/crl/{crlId}", "method" => "PATCH"}}
      end)
      service.add_operation(:update_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#UpdateProfile"
        operation.name = "UpdateProfile"
        operation.input = UpdateProfileInput
        operation.output = UpdateProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/profile/{profileId}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_trust_anchor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#UpdateTrustAnchor"
        operation.name = "UpdateTrustAnchor"
        operation.input = UpdateTrustAnchorInput
        operation.output = UpdateTrustAnchorOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchor/{trustAnchorId}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
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
