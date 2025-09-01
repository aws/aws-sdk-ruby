# frozen_string_literal: true

# This is generated code!

module Aws::RolesAnywhere
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AttributeMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#AttributeMapping', name: 'AttributeMapping')
    AttributeMappings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#AttributeMappings', name: 'AttributeMappings')
    CertificateField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#CertificateField', name: 'CertificateField', traits: {"smithy.api#enum" => [{"name" => "x509Subject", "value" => "x509Subject"}, {"name" => "x509Issuer", "value" => "x509Issuer"}, {"name" => "x509SAN", "value" => "x509SAN"}]})
    CreateProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#CreateProfileInput', name: 'CreateProfileInput')
    CreateProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#CreateProfileOutput', name: 'CreateProfileOutput')
    CreateTrustAnchorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#CreateTrustAnchorInput', name: 'CreateTrustAnchorInput')
    CreateTrustAnchorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#CreateTrustAnchorOutput', name: 'CreateTrustAnchorOutput')
    CredentialSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#CredentialSummaries', name: 'CredentialSummaries')
    CredentialSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#CredentialSummary', name: 'CredentialSummary')
    CrlDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#CrlDetail', name: 'CrlDetail')
    CrlDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#CrlDetails', name: 'CrlDetails')
    DeleteAttributeMappingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DeleteAttributeMappingRequest', name: 'DeleteAttributeMappingRequest')
    DeleteAttributeMappingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DeleteAttributeMappingResponse', name: 'DeleteAttributeMappingResponse')
    DeleteCrlInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DeleteCrlInput', name: 'DeleteCrlInput')
    DeleteCrlOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DeleteCrlOutput', name: 'DeleteCrlOutput')
    DeleteProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DeleteProfileInput', name: 'DeleteProfileInput')
    DeleteProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DeleteProfileOutput', name: 'DeleteProfileOutput')
    DeleteTrustAnchorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DeleteTrustAnchorInput', name: 'DeleteTrustAnchorInput')
    DeleteTrustAnchorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DeleteTrustAnchorOutput', name: 'DeleteTrustAnchorOutput')
    DisableCrlInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DisableCrlInput', name: 'DisableCrlInput')
    DisableCrlOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DisableCrlOutput', name: 'DisableCrlOutput')
    DisableProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DisableProfileInput', name: 'DisableProfileInput')
    DisableProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DisableProfileOutput', name: 'DisableProfileOutput')
    DisableTrustAnchorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DisableTrustAnchorInput', name: 'DisableTrustAnchorInput')
    DisableTrustAnchorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#DisableTrustAnchorOutput', name: 'DisableTrustAnchorOutput')
    EnableCrlInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#EnableCrlInput', name: 'EnableCrlInput')
    EnableCrlOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#EnableCrlOutput', name: 'EnableCrlOutput')
    EnableProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#EnableProfileInput', name: 'EnableProfileInput')
    EnableProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#EnableProfileOutput', name: 'EnableProfileOutput')
    EnableTrustAnchorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#EnableTrustAnchorInput', name: 'EnableTrustAnchorInput')
    EnableTrustAnchorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#EnableTrustAnchorOutput', name: 'EnableTrustAnchorOutput')
    GetCrlInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#GetCrlInput', name: 'GetCrlInput')
    GetCrlOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#GetCrlOutput', name: 'GetCrlOutput')
    GetProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#GetProfileInput', name: 'GetProfileInput')
    GetProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#GetProfileOutput', name: 'GetProfileOutput')
    GetSubjectInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#GetSubjectInput', name: 'GetSubjectInput')
    GetSubjectOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#GetSubjectOutput', name: 'GetSubjectOutput')
    GetTrustAnchorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#GetTrustAnchorInput', name: 'GetTrustAnchorInput')
    GetTrustAnchorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#GetTrustAnchorOutput', name: 'GetTrustAnchorOutput')
    ImportCrlInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ImportCrlInput', name: 'ImportCrlInput')
    ImportCrlOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ImportCrlOutput', name: 'ImportCrlOutput')
    InstanceProperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#InstanceProperties', name: 'InstanceProperties')
    InstanceProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#InstanceProperty', name: 'InstanceProperty')
    InstancePropertyMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.rolesanywhere#InstancePropertyMap', name: 'InstancePropertyMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ListCrlsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ListCrlsInput', name: 'ListCrlsInput')
    ListCrlsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ListCrlsOutput', name: 'ListCrlsOutput')
    ListProfilesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ListProfilesInput', name: 'ListProfilesInput')
    ListProfilesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ListProfilesOutput', name: 'ListProfilesOutput')
    ListSubjectsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ListSubjectsInput', name: 'ListSubjectsInput')
    ListSubjectsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ListSubjectsOutput', name: 'ListSubjectsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTrustAnchorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ListTrustAnchorsInput', name: 'ListTrustAnchorsInput')
    ListTrustAnchorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ListTrustAnchorsOutput', name: 'ListTrustAnchorsOutput')
    ManagedPolicyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#ManagedPolicyList', name: 'ManagedPolicyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MappingRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#MappingRule', name: 'MappingRule')
    MappingRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#MappingRules', name: 'MappingRules')
    NotificationChannel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#NotificationChannel', name: 'NotificationChannel', traits: {"smithy.api#enum" => [{"value" => "ALL", "name" => "ALL"}]})
    NotificationEvent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#NotificationEvent', name: 'NotificationEvent', traits: {"smithy.api#enum" => [{"value" => "CA_CERTIFICATE_EXPIRY", "name" => "CA_CERTIFICATE_EXPIRY"}, {"value" => "END_ENTITY_CERTIFICATE_EXPIRY", "name" => "END_ENTITY_CERTIFICATE_EXPIRY"}]})
    NotificationSetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#NotificationSetting', name: 'NotificationSetting')
    NotificationSettingDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#NotificationSettingDetail', name: 'NotificationSettingDetail')
    NotificationSettingDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#NotificationSettingDetails', name: 'NotificationSettingDetails', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    NotificationSettingKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#NotificationSettingKey', name: 'NotificationSettingKey')
    NotificationSettingKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#NotificationSettingKeys', name: 'NotificationSettingKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    NotificationSettings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#NotificationSettings', name: 'NotificationSettings', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ProfileArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#ProfileArn', name: 'ProfileArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:rolesanywhere(:.*){2}(:profile.*)$"})
    ProfileDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ProfileDetail', name: 'ProfileDetail')
    ProfileDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#ProfileDetails', name: 'ProfileDetails')
    PutAttributeMappingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#PutAttributeMappingRequest', name: 'PutAttributeMappingRequest')
    PutAttributeMappingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#PutAttributeMappingResponse', name: 'PutAttributeMappingResponse')
    PutNotificationSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#PutNotificationSettingsRequest', name: 'PutNotificationSettingsRequest')
    PutNotificationSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#PutNotificationSettingsResponse', name: 'PutNotificationSettingsResponse')
    ResetNotificationSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ResetNotificationSettingsRequest', name: 'ResetNotificationSettingsRequest')
    ResetNotificationSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ResetNotificationSettingsResponse', name: 'ResetNotificationSettingsResponse')
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[ a-zA-Z0-9-_]*$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam(:.*){2}(:role.*)$"})
    RoleArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#RoleArnList', name: 'RoleArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    Source = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#Source', name: 'Source')
    SourceData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.rolesanywhere#SourceData', name: 'SourceData')
    SpecifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#SpecifierList', name: 'SpecifierList')
    SubjectDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#SubjectDetail', name: 'SubjectDetail')
    SubjectSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#SubjectSummaries', name: 'SubjectSummaries')
    SubjectSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#SubjectSummary', name: 'SubjectSummary')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9_.:/=+@-]*$", "smithy.api#sensitive" => {}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[ a-zA-Z0-9_.:/=+@-]*$", "smithy.api#sensitive" => {}})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustAnchorArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#TrustAnchorArn', name: 'TrustAnchorArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:rolesanywhere(:.*){2}(:trust-anchor.*)$"})
    TrustAnchorDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#TrustAnchorDetail', name: 'TrustAnchorDetail')
    TrustAnchorDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rolesanywhere#TrustAnchorDetails', name: 'TrustAnchorDetails')
    TrustAnchorType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#TrustAnchorType', name: 'TrustAnchorType', traits: {"smithy.api#enum" => [{"value" => "AWS_ACM_PCA", "name" => "AWS_ACM_PCA"}, {"value" => "CERTIFICATE_BUNDLE", "name" => "CERTIFICATE_BUNDLE"}, {"value" => "SELF_SIGNED_REPOSITORY", "name" => "SELF_SIGNED_REPOSITORY"}]})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateCrlInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#UpdateCrlInput', name: 'UpdateCrlInput')
    UpdateCrlOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#UpdateCrlOutput', name: 'UpdateCrlOutput')
    UpdateProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#UpdateProfileInput', name: 'UpdateProfileInput')
    UpdateProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#UpdateProfileOutput', name: 'UpdateProfileOutput')
    UpdateTrustAnchorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#UpdateTrustAnchorInput', name: 'UpdateTrustAnchorInput')
    UpdateTrustAnchorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#UpdateTrustAnchorOutput', name: 'UpdateTrustAnchorOutput')
    Uuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rolesanywhere#Uuid', name: 'Uuid', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "[a-f0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rolesanywhere#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AttributeMapping.add_member(:certificate_field, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateField, location_name: 'certificateField', traits: {"smithy.api#documentation" => "<p>Fields (x509Subject, x509Issuer and x509SAN) within X.509 certificates.</p>"}))
    AttributeMapping.add_member(:mapping_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingRules, location_name: 'mappingRules', traits: {"smithy.api#documentation" => "<p>A list of mapping entries for every supported specifier or sub-field.</p>"}))
    AttributeMapping.type = Types::AttributeMapping
    AttributeMappings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMapping)
    CreateProfileInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the profile.</p>", "smithy.api#required" => {}}))
    CreateProfileInput.add_member(:require_instance_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'requireInstanceProperties', traits: {"smithy.api#documentation" => "<p>Specifies whether instance properties are required in temporary credential requests with this profile. </p>"}))
    CreateProfileInput.add_member(:session_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionPolicy', traits: {"smithy.api#documentation" => "<p>A session policy that applies to the trust boundary of the vended session credentials. </p>"}))
    CreateProfileInput.add_member(:role_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnList, location_name: 'roleArns', traits: {"smithy.api#documentation" => "<p>A list of IAM roles that this profile can assume in a temporary credential request.</p>", "smithy.api#required" => {}}))
    CreateProfileInput.add_member(:managed_policy_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedPolicyList, location_name: 'managedPolicyArns', traits: {"smithy.api#documentation" => "<p>A list of managed policy ARNs that apply to the vended session credentials. </p>"}))
    CreateProfileInput.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'durationSeconds', traits: {"smithy.api#documentation" => "<p> Used to determine how long sessions vended using this profile are valid for. See the <code>Expiration</code> section of the \n<a href=\"https://docs.aws.amazon.com/rolesanywhere/latest/userguide/authentication-create-session.html#credentials-object\">CreateSession API documentation</a>\npage for more details. In requests, if this value is not provided, the default value will be 3600. </p>", "smithy.api#range" => {"min" => 900, "max" => 43200}}))
    CreateProfileInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the profile is enabled.</p>"}))
    CreateProfileInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to attach to the profile.</p>"}))
    CreateProfileInput.add_member(:accept_role_session_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'acceptRoleSessionName', traits: {"smithy.api#documentation" => "<p>Used to determine if a custom role session name will be accepted in a temporary credential request.</p>"}))
    CreateProfileInput.type = Types::CreateProfileInput
    CreateProfileOutput.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDetail, location_name: 'profile', traits: {"smithy.api#documentation" => "<p>The state of the profile after a read or write operation.</p>"}))
    CreateProfileOutput.type = Types::CreateProfileOutput
    CreateTrustAnchorInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the trust anchor.</p>", "smithy.api#required" => {}}))
    CreateTrustAnchorInput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The trust anchor type and its related certificate data.</p>", "smithy.api#required" => {}}))
    CreateTrustAnchorInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the trust anchor is enabled.</p>"}))
    CreateTrustAnchorInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to attach to the trust anchor.</p>"}))
    CreateTrustAnchorInput.add_member(:notification_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSettings, location_name: 'notificationSettings', traits: {"smithy.api#documentation" => "<p>A list of notification settings to be associated to the trust anchor.</p>"}))
    CreateTrustAnchorInput.type = Types::CreateTrustAnchorInput
    CreateTrustAnchorOutput.add_member(:trust_anchor, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorDetail, location_name: 'trustAnchor', traits: {"smithy.api#documentation" => "<p>The state of the trust anchor after a read or write operation. </p>", "smithy.api#required" => {}}))
    CreateTrustAnchorOutput.type = Types::CreateTrustAnchorOutput
    CredentialSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialSummary)
    CredentialSummary.add_member(:seen_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'seenAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 time stamp of when the certificate was last used in a temporary credential request.</p>", "smithy.api#timestampFormat" => "date-time"}))
    CredentialSummary.add_member(:serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serialNumber', traits: {"smithy.api#documentation" => "<p>The serial number of the certificate.</p>"}))
    CredentialSummary.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'issuer', traits: {"smithy.api#documentation" => "<p>The fully qualified domain name of the issuing certificate for the presented end-entity certificate.</p>"}))
    CredentialSummary.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the credential is enabled.</p>"}))
    CredentialSummary.add_member(:x509_certificate_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'x509CertificateData', traits: {"smithy.api#documentation" => "<p>The PEM-encoded data of the certificate.</p>"}))
    CredentialSummary.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'failed', traits: {"smithy.api#documentation" => "<p>Indicates whether the temporary credential request was successful. </p>"}))
    CredentialSummary.type = Types::CredentialSummary
    CrlDetail.add_member(:crl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'crlId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the certificate revocation list (CRL).</p>"}))
    CrlDetail.add_member(:crl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'crlArn', traits: {"smithy.api#documentation" => "<p>The ARN of the certificate revocation list (CRL).</p>"}))
    CrlDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the certificate revocation list (CRL).</p>"}))
    CrlDetail.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the certificate revocation list (CRL) is enabled.</p>"}))
    CrlDetail.add_member(:crl_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Blob, location_name: 'crlData', traits: {"smithy.api#documentation" => "<p>The state of the certificate revocation list (CRL) after a read or write operation.</p>"}))
    CrlDetail.add_member(:trust_anchor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'trustAnchorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the TrustAnchor the certificate revocation list (CRL) will provide revocation for. </p>"}))
    CrlDetail.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 timestamp when the certificate revocation list (CRL) was created. </p>", "smithy.api#timestampFormat" => "date-time"}))
    CrlDetail.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 timestamp when the certificate revocation list (CRL) was last updated. </p>", "smithy.api#timestampFormat" => "date-time"}))
    CrlDetail.type = Types::CrlDetail
    CrlDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CrlDetail)
    DeleteAttributeMappingRequest.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'profileId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttributeMappingRequest.add_member(:certificate_field, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateField, location_name: 'certificateField', traits: {"smithy.api#documentation" => "<p>Fields (x509Subject, x509Issuer and x509SAN) within X.509 certificates.</p>", "smithy.api#httpQuery" => "certificateField", "smithy.api#required" => {}}))
    DeleteAttributeMappingRequest.add_member(:specifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: SpecifierList, location_name: 'specifiers', traits: {"smithy.api#documentation" => "<p>A list of specifiers of a certificate field; for example, CN, OU, UID from a Subject.</p>", "smithy.api#httpQuery" => "specifiers"}))
    DeleteAttributeMappingRequest.type = Types::DeleteAttributeMappingRequest
    DeleteAttributeMappingResponse.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDetail, location_name: 'profile', traits: {"smithy.api#documentation" => "<p>The state of the profile after a read or write operation.</p>", "smithy.api#required" => {}}))
    DeleteAttributeMappingResponse.type = Types::DeleteAttributeMappingResponse
    DeleteCrlInput.add_member(:crl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'crlId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the certificate revocation list (CRL).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCrlInput.type = Types::DeleteCrlInput
    DeleteCrlOutput.add_member(:crl, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlDetail, location_name: 'crl', traits: {"smithy.api#documentation" => "<p>The state of the certificate revocation list (CRL) after a read or write operation.</p>", "smithy.api#required" => {}}))
    DeleteCrlOutput.type = Types::DeleteCrlOutput
    DeleteProfileInput.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'profileId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileInput.type = Types::DeleteProfileInput
    DeleteProfileOutput.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDetail, location_name: 'profile', traits: {"smithy.api#documentation" => "<p>The state of the profile after a read or write operation.</p>"}))
    DeleteProfileOutput.type = Types::DeleteProfileOutput
    DeleteTrustAnchorInput.add_member(:trust_anchor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'trustAnchorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the trust anchor.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrustAnchorInput.type = Types::DeleteTrustAnchorInput
    DeleteTrustAnchorOutput.add_member(:trust_anchor, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorDetail, location_name: 'trustAnchor', traits: {"smithy.api#documentation" => "<p>The state of the trust anchor after a read or write operation. </p>", "smithy.api#required" => {}}))
    DeleteTrustAnchorOutput.type = Types::DeleteTrustAnchorOutput
    DisableCrlInput.add_member(:crl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'crlId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the certificate revocation list (CRL).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisableCrlInput.type = Types::DisableCrlInput
    DisableCrlOutput.add_member(:crl, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlDetail, location_name: 'crl', traits: {"smithy.api#documentation" => "<p>The state of the certificate revocation list (CRL) after a read or write operation.</p>", "smithy.api#required" => {}}))
    DisableCrlOutput.type = Types::DisableCrlOutput
    DisableProfileInput.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'profileId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisableProfileInput.type = Types::DisableProfileInput
    DisableProfileOutput.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDetail, location_name: 'profile', traits: {"smithy.api#documentation" => "<p>The state of the profile after a read or write operation.</p>"}))
    DisableProfileOutput.type = Types::DisableProfileOutput
    DisableTrustAnchorInput.add_member(:trust_anchor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'trustAnchorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the trust anchor.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisableTrustAnchorInput.type = Types::DisableTrustAnchorInput
    DisableTrustAnchorOutput.add_member(:trust_anchor, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorDetail, location_name: 'trustAnchor', traits: {"smithy.api#documentation" => "<p>The state of the trust anchor after a read or write operation. </p>", "smithy.api#required" => {}}))
    DisableTrustAnchorOutput.type = Types::DisableTrustAnchorOutput
    EnableCrlInput.add_member(:crl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'crlId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the certificate revocation list (CRL).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EnableCrlInput.type = Types::EnableCrlInput
    EnableCrlOutput.add_member(:crl, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlDetail, location_name: 'crl', traits: {"smithy.api#documentation" => "<p>The state of the certificate revocation list (CRL) after a read or write operation.</p>", "smithy.api#required" => {}}))
    EnableCrlOutput.type = Types::EnableCrlOutput
    EnableProfileInput.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'profileId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EnableProfileInput.type = Types::EnableProfileInput
    EnableProfileOutput.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDetail, location_name: 'profile', traits: {"smithy.api#documentation" => "<p>The state of the profile after a read or write operation.</p>"}))
    EnableProfileOutput.type = Types::EnableProfileOutput
    EnableTrustAnchorInput.add_member(:trust_anchor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'trustAnchorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the trust anchor.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EnableTrustAnchorInput.type = Types::EnableTrustAnchorInput
    EnableTrustAnchorOutput.add_member(:trust_anchor, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorDetail, location_name: 'trustAnchor', traits: {"smithy.api#documentation" => "<p>The state of the trust anchor after a read or write operation. </p>", "smithy.api#required" => {}}))
    EnableTrustAnchorOutput.type = Types::EnableTrustAnchorOutput
    GetCrlInput.add_member(:crl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'crlId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the certificate revocation list (CRL).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCrlInput.type = Types::GetCrlInput
    GetCrlOutput.add_member(:crl, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlDetail, location_name: 'crl', traits: {"smithy.api#documentation" => "<p>The state of the certificate revocation list (CRL) after a read or write operation.</p>", "smithy.api#required" => {}}))
    GetCrlOutput.type = Types::GetCrlOutput
    GetProfileInput.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'profileId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileInput.type = Types::GetProfileInput
    GetProfileOutput.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDetail, location_name: 'profile', traits: {"smithy.api#documentation" => "<p>The state of the profile after a read or write operation.</p>"}))
    GetProfileOutput.type = Types::GetProfileOutput
    GetSubjectInput.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the subject. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSubjectInput.type = Types::GetSubjectInput
    GetSubjectOutput.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectDetail, location_name: 'subject', traits: {"smithy.api#documentation" => "<p>The state of the subject after a read or write operation.</p>"}))
    GetSubjectOutput.type = Types::GetSubjectOutput
    GetTrustAnchorInput.add_member(:trust_anchor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'trustAnchorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the trust anchor.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrustAnchorInput.type = Types::GetTrustAnchorInput
    GetTrustAnchorOutput.add_member(:trust_anchor, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorDetail, location_name: 'trustAnchor', traits: {"smithy.api#documentation" => "<p>The state of the trust anchor after a read or write operation. </p>", "smithy.api#required" => {}}))
    GetTrustAnchorOutput.type = Types::GetTrustAnchorOutput
    ImportCrlInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the certificate revocation list (CRL).</p>", "smithy.api#required" => {}}))
    ImportCrlInput.add_member(:crl_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Blob, location_name: 'crlData', traits: {"smithy.api#documentation" => "<p>The x509 v3 specified certificate revocation list (CRL).</p>", "smithy.api#length" => {"min" => 1, "max" => 300000}, "smithy.api#required" => {}}))
    ImportCrlInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the certificate revocation list (CRL) is enabled.</p>"}))
    ImportCrlInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags to attach to the certificate revocation list (CRL).</p>"}))
    ImportCrlInput.add_member(:trust_anchor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorArn, location_name: 'trustAnchorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the TrustAnchor the certificate revocation list (CRL) will provide revocation for.</p>", "smithy.api#required" => {}}))
    ImportCrlInput.type = Types::ImportCrlInput
    ImportCrlOutput.add_member(:crl, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlDetail, location_name: 'crl', traits: {"smithy.api#documentation" => "<p>The state of the certificate revocation list (CRL) after a read or write operation.</p>", "smithy.api#required" => {}}))
    ImportCrlOutput.type = Types::ImportCrlOutput
    InstanceProperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProperty)
    InstanceProperty.add_member(:seen_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'seenAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 time stamp of when the certificate was last used in a temporary credential request.</p>", "smithy.api#timestampFormat" => "date-time"}))
    InstanceProperty.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: InstancePropertyMap, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A list of instanceProperty objects. </p>"}))
    InstanceProperty.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'failed', traits: {"smithy.api#documentation" => "<p>Indicates whether the temporary credential request was successful. </p>"}))
    InstanceProperty.type = Types::InstanceProperty
    InstancePropertyMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    InstancePropertyMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ListCrlsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListCrlsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'pageSize', traits: {"smithy.api#documentation" => "<p>The number of resources in the paginated list. </p>", "smithy.api#httpQuery" => "pageSize"}))
    ListCrlsInput.type = Types::ListCrlsInput
    ListCrlsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>"}))
    ListCrlsOutput.add_member(:crls, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlDetails, location_name: 'crls', traits: {"smithy.api#documentation" => "<p>A list of certificate revocation lists (CRL). </p>"}))
    ListCrlsOutput.type = Types::ListCrlsOutput
    ListProfilesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListProfilesInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'pageSize', traits: {"smithy.api#documentation" => "<p>The number of resources in the paginated list. </p>", "smithy.api#httpQuery" => "pageSize"}))
    ListProfilesInput.type = Types::ListProfilesInput
    ListProfilesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>"}))
    ListProfilesOutput.add_member(:profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDetails, location_name: 'profiles', traits: {"smithy.api#documentation" => "<p>A list of profiles.</p>"}))
    ListProfilesOutput.type = Types::ListProfilesOutput
    ListSubjectsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListSubjectsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'pageSize', traits: {"smithy.api#documentation" => "<p>The number of resources in the paginated list. </p>", "smithy.api#httpQuery" => "pageSize"}))
    ListSubjectsInput.type = Types::ListSubjectsInput
    ListSubjectsOutput.add_member(:subjects, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectSummaries, location_name: 'subjects', traits: {"smithy.api#documentation" => "<p>A list of subjects.</p>"}))
    ListSubjectsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>"}))
    ListSubjectsOutput.type = Types::ListSubjectsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags attached to the resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTrustAnchorsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListTrustAnchorsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'pageSize', traits: {"smithy.api#documentation" => "<p>The number of resources in the paginated list. </p>", "smithy.api#httpQuery" => "pageSize"}))
    ListTrustAnchorsInput.type = Types::ListTrustAnchorsInput
    ListTrustAnchorsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where the output should continue from, if a previous request did not show all results. To get the next results, make the request again with this value.</p>"}))
    ListTrustAnchorsOutput.add_member(:trust_anchors, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorDetails, location_name: 'trustAnchors', traits: {"smithy.api#documentation" => "<p>A list of trust anchors.</p>"}))
    ListTrustAnchorsOutput.type = Types::ListTrustAnchorsOutput
    ManagedPolicyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    MappingRule.add_member(:specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'specifier', traits: {"smithy.api#documentation" => "<p>Specifier within a certificate field, such as CN, OU, or UID from the Subject field.</p>", "smithy.api#length" => {"max" => 60}, "smithy.api#required" => {}}))
    MappingRule.type = Types::MappingRule
    MappingRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MappingRule)
    NotificationSetting.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the notification setting is enabled.</p>", "smithy.api#required" => {}}))
    NotificationSetting.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEvent, location_name: 'event', traits: {"smithy.api#documentation" => "<p>The event to which this notification setting is applied.</p>", "smithy.api#required" => {}}))
    NotificationSetting.add_member(:threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'threshold', traits: {"smithy.api#documentation" => "<p>The number of days before a notification event. This value is required for a notification setting that is enabled.</p>", "smithy.api#range" => {"min" => 1, "max" => 360}}))
    NotificationSetting.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'channel', traits: {"smithy.api#documentation" => "<p>The specified channel of notification.\n      IAM Roles Anywhere uses CloudWatch metrics, EventBridge, and Health Dashboard to notify for an event.</p>\n         <note>\n            <p>In the absence of a specific channel, IAM Roles Anywhere applies this setting to 'ALL' channels.</p>\n         </note>"}))
    NotificationSetting.type = Types::NotificationSetting
    NotificationSettingDetail.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the notification setting is enabled.</p>", "smithy.api#required" => {}}))
    NotificationSettingDetail.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEvent, location_name: 'event', traits: {"smithy.api#documentation" => "<p>The event to which this notification setting is applied.</p>", "smithy.api#required" => {}}))
    NotificationSettingDetail.add_member(:threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'threshold', traits: {"smithy.api#documentation" => "<p>The number of days before a notification event.</p>", "smithy.api#range" => {"min" => 1, "max" => 360}}))
    NotificationSettingDetail.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'channel', traits: {"smithy.api#documentation" => "<p>The specified channel of notification.\n      IAM Roles Anywhere uses CloudWatch metrics, EventBridge, and Health Dashboard to notify for an event.</p>\n         <note>\n            <p>In the absence of a specific channel, IAM Roles Anywhere applies this setting to 'ALL' channels.</p>\n         </note>"}))
    NotificationSettingDetail.add_member(:configured_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'configuredBy', traits: {"smithy.api#documentation" => "<p>The principal that configured the notification setting.\n      For default settings configured by IAM Roles Anywhere,\n      the value is <code>rolesanywhere.amazonaws.com</code>, and\n      for customized notifications settings, it is the respective account ID.\n      </p>", "smithy.api#length" => {"min" => 1, "max" => 200}}))
    NotificationSettingDetail.type = Types::NotificationSettingDetail
    NotificationSettingDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSettingDetail)
    NotificationSettingKey.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEvent, location_name: 'event', traits: {"smithy.api#documentation" => "<p>The notification setting event to reset.</p>", "smithy.api#required" => {}}))
    NotificationSettingKey.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'channel', traits: {"smithy.api#documentation" => "<p>The specified channel of notification.</p>"}))
    NotificationSettingKey.type = Types::NotificationSettingKey
    NotificationSettingKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSettingKey)
    NotificationSettings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSetting)
    ProfileDetail.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'profileId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the profile.</p>"}))
    ProfileDetail.add_member(:profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileArn, location_name: 'profileArn', traits: {"smithy.api#documentation" => "<p>The ARN of the profile.</p>"}))
    ProfileDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the profile.</p>"}))
    ProfileDetail.add_member(:require_instance_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'requireInstanceProperties', traits: {"smithy.api#documentation" => "<p>Specifies whether instance properties are required in temporary credential requests with this profile. </p>"}))
    ProfileDetail.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the profile is enabled.</p>"}))
    ProfileDetail.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that created the profile.</p>"}))
    ProfileDetail.add_member(:session_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionPolicy', traits: {"smithy.api#documentation" => "<p>A session policy that applies to the trust boundary of the vended session credentials. </p>"}))
    ProfileDetail.add_member(:role_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnList, location_name: 'roleArns', traits: {"smithy.api#documentation" => "<p>A list of IAM roles that this profile can assume in a temporary credential request.</p>"}))
    ProfileDetail.add_member(:managed_policy_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedPolicyList, location_name: 'managedPolicyArns', traits: {"smithy.api#documentation" => "<p>A list of managed policy ARNs that apply to the vended session credentials. </p>"}))
    ProfileDetail.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 timestamp when the profile was created. </p>", "smithy.api#timestampFormat" => "date-time"}))
    ProfileDetail.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 timestamp when the profile was last updated. </p>", "smithy.api#timestampFormat" => "date-time"}))
    ProfileDetail.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'durationSeconds', traits: {"smithy.api#documentation" => "<p> Used to determine how long sessions vended using this profile are valid for. See the <code>Expiration</code> section of the \n<a href=\"https://docs.aws.amazon.com/rolesanywhere/latest/userguide/authentication-create-session.html#credentials-object\">CreateSession API documentation</a>\npage for more details. In requests, if this value is not provided, the default value will be 3600. </p>"}))
    ProfileDetail.add_member(:accept_role_session_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'acceptRoleSessionName', traits: {"smithy.api#documentation" => "<p>Used to determine if a custom role session name will be accepted in a temporary credential request.</p>"}))
    ProfileDetail.add_member(:attribute_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMappings, location_name: 'attributeMappings', traits: {"smithy.api#documentation" => "<p>A mapping applied to the authenticating end-entity certificate.</p>"}))
    ProfileDetail.type = Types::ProfileDetail
    ProfileDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDetail)
    PutAttributeMappingRequest.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'profileId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAttributeMappingRequest.add_member(:certificate_field, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateField, location_name: 'certificateField', traits: {"smithy.api#documentation" => "<p>Fields (x509Subject, x509Issuer and x509SAN) within X.509 certificates.</p>", "smithy.api#required" => {}}))
    PutAttributeMappingRequest.add_member(:mapping_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingRules, location_name: 'mappingRules', traits: {"smithy.api#documentation" => "<p>A list of mapping entries for every supported specifier or sub-field.</p>", "smithy.api#required" => {}}))
    PutAttributeMappingRequest.type = Types::PutAttributeMappingRequest
    PutAttributeMappingResponse.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDetail, location_name: 'profile', traits: {"smithy.api#documentation" => "<p>The state of the profile after a read or write operation.</p>", "smithy.api#required" => {}}))
    PutAttributeMappingResponse.type = Types::PutAttributeMappingResponse
    PutNotificationSettingsRequest.add_member(:trust_anchor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'trustAnchorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the trust anchor.</p>", "smithy.api#required" => {}}))
    PutNotificationSettingsRequest.add_member(:notification_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSettings, location_name: 'notificationSettings', traits: {"smithy.api#documentation" => "<p>A list of notification settings to be associated to the trust anchor.</p>", "smithy.api#required" => {}}))
    PutNotificationSettingsRequest.type = Types::PutNotificationSettingsRequest
    PutNotificationSettingsResponse.add_member(:trust_anchor, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorDetail, location_name: 'trustAnchor', traits: {"smithy.api#required" => {}}))
    PutNotificationSettingsResponse.type = Types::PutNotificationSettingsResponse
    ResetNotificationSettingsRequest.add_member(:trust_anchor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'trustAnchorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the trust anchor.</p>", "smithy.api#required" => {}}))
    ResetNotificationSettingsRequest.add_member(:notification_setting_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSettingKeys, location_name: 'notificationSettingKeys', traits: {"smithy.api#documentation" => "<p>A list of notification setting keys to reset.\n         A notification setting key includes the event and the channel.\n      </p>", "smithy.api#required" => {}}))
    ResetNotificationSettingsRequest.type = Types::ResetNotificationSettingsRequest
    ResetNotificationSettingsResponse.add_member(:trust_anchor, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorDetail, location_name: 'trustAnchor', traits: {"smithy.api#required" => {}}))
    ResetNotificationSettingsResponse.type = Types::ResetNotificationSettingsResponse
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoleArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn)
    Source.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorType, location_name: 'sourceType', traits: {"smithy.api#documentation" => "<p>The type of the trust anchor. </p>"}))
    Source.add_member(:source_data, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceData, location_name: 'sourceData', traits: {"smithy.api#documentation" => "<p>The data field of the trust anchor depending on its type. </p>"}))
    Source.type = Types::Source
    SourceData.add_member(:x509_certificate_data, Types::SourceData::X509CertificateData, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'x509CertificateData', traits: {"smithy.api#documentation" => "<p>The PEM-encoded data for the certificate anchor. Included for trust anchors of type <code>CERTIFICATE_BUNDLE</code>. </p>", "smithy.api#length" => {"min" => 1, "max" => 8000}}))
    SourceData.add_member(:acm_pca_arn, Types::SourceData::AcmPcaArn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'acmPcaArn', traits: {"smithy.api#documentation" => "<p>\n         The root certificate of the Private Certificate Authority specified by this ARN is used in trust\n         validation for temporary credential requests. Included for trust anchors of type <code>AWS_ACM_PCA</code>.\n      </p>"}))
    SourceData.add_member(:unknown, Types::SourceData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SourceData.type = Types::SourceData
    SpecifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    SubjectDetail.add_member(:subject_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'subjectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    SubjectDetail.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p>The id of the resource</p>"}))
    SubjectDetail.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>The enabled status of the subject.</p>"}))
    SubjectDetail.add_member(:x509_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'x509Subject', traits: {"smithy.api#documentation" => "<p>The x509 principal identifier of the authenticating certificate.</p>"}))
    SubjectDetail.add_member(:last_seen_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastSeenAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 timestamp of the last time this subject requested temporary session credentials.</p>", "smithy.api#timestampFormat" => "date-time"}))
    SubjectDetail.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 timestamp when the subject was created. </p>", "smithy.api#timestampFormat" => "date-time"}))
    SubjectDetail.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 timestamp when the subject was last updated.</p>", "smithy.api#timestampFormat" => "date-time"}))
    SubjectDetail.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialSummaries, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>The temporary session credentials vended at the last authenticating call with this subject.</p>"}))
    SubjectDetail.add_member(:instance_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProperties, location_name: 'instanceProperties', traits: {"smithy.api#documentation" => "<p>The specified instance properties associated with the request.</p>"}))
    SubjectDetail.type = Types::SubjectDetail
    SubjectSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectSummary)
    SubjectSummary.add_member(:subject_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'subjectArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    SubjectSummary.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p>The id of the resource.</p>"}))
    SubjectSummary.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>The enabled status of the subject. </p>"}))
    SubjectSummary.add_member(:x509_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'x509Subject', traits: {"smithy.api#documentation" => "<p>The x509 principal identifier of the authenticating certificate.</p>"}))
    SubjectSummary.add_member(:last_seen_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastSeenAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 time stamp of when the certificate was last used in a temporary credential request.</p>", "smithy.api#timestampFormat" => "date-time"}))
    SubjectSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 time stamp of when the certificate was first used in a temporary credential request.</p>", "smithy.api#timestampFormat" => "date-time"}))
    SubjectSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 timestamp when the subject was last updated. </p>", "smithy.api#timestampFormat" => "date-time"}))
    SubjectSummary.type = Types::SubjectSummary
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to attach to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    TrustAnchorDetail.add_member(:trust_anchor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'trustAnchorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the trust anchor.</p>"}))
    TrustAnchorDetail.add_member(:trust_anchor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'trustAnchorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trust anchor.</p>"}))
    TrustAnchorDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the trust anchor.</p>"}))
    TrustAnchorDetail.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The trust anchor type and its related certificate data.</p>"}))
    TrustAnchorDetail.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the trust anchor is enabled.</p>"}))
    TrustAnchorDetail.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 timestamp when the trust anchor was created. </p>", "smithy.api#timestampFormat" => "date-time"}))
    TrustAnchorDetail.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The ISO-8601 timestamp when the trust anchor was last updated. </p>", "smithy.api#timestampFormat" => "date-time"}))
    TrustAnchorDetail.add_member(:notification_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSettingDetails, location_name: 'notificationSettings', traits: {"smithy.api#documentation" => "<p>A list of notification settings to be associated to the trust anchor.</p>"}))
    TrustAnchorDetail.type = Types::TrustAnchorDetail
    TrustAnchorDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorDetail)
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of keys. Tag keys are the unique identifiers of tags. </p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateCrlInput.add_member(:crl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'crlId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the certificate revocation list (CRL).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCrlInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Crl.</p>"}))
    UpdateCrlInput.add_member(:crl_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Blob, location_name: 'crlData', traits: {"smithy.api#documentation" => "<p>The x509 v3 specified certificate revocation list (CRL).</p>", "smithy.api#length" => {"min" => 1, "max" => 300000}}))
    UpdateCrlInput.type = Types::UpdateCrlInput
    UpdateCrlOutput.add_member(:crl, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlDetail, location_name: 'crl', traits: {"smithy.api#documentation" => "<p>The state of the certificate revocation list (CRL) after a read or write operation.</p>", "smithy.api#required" => {}}))
    UpdateCrlOutput.type = Types::UpdateCrlOutput
    UpdateProfileInput.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'profileId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProfileInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the profile.</p>"}))
    UpdateProfileInput.add_member(:session_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionPolicy', traits: {"smithy.api#documentation" => "<p>A session policy that applies to the trust boundary of the vended session credentials. </p>", "smithy.api#length" => {"min" => 1, "max" => 100000}}))
    UpdateProfileInput.add_member(:role_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArnList, location_name: 'roleArns', traits: {"smithy.api#documentation" => "<p>A list of IAM roles that this profile can assume in a temporary credential request.</p>"}))
    UpdateProfileInput.add_member(:managed_policy_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedPolicyList, location_name: 'managedPolicyArns', traits: {"smithy.api#documentation" => "<p>A list of managed policy ARNs that apply to the vended session credentials. </p>"}))
    UpdateProfileInput.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'durationSeconds', traits: {"smithy.api#documentation" => "<p> Used to determine how long sessions vended using this profile are valid for. See the <code>Expiration</code> section of the \n<a href=\"https://docs.aws.amazon.com/rolesanywhere/latest/userguide/authentication-create-session.html#credentials-object\">CreateSession API documentation</a>\npage for more details. In requests, if this value is not provided, the default value will be 3600. </p>", "smithy.api#range" => {"min" => 900, "max" => 43200}}))
    UpdateProfileInput.add_member(:accept_role_session_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'acceptRoleSessionName', traits: {"smithy.api#documentation" => "<p>Used to determine if a custom role session name will be accepted in a temporary credential request.</p>"}))
    UpdateProfileInput.type = Types::UpdateProfileInput
    UpdateProfileOutput.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileDetail, location_name: 'profile', traits: {"smithy.api#documentation" => "<p>The state of the profile after a read or write operation.</p>"}))
    UpdateProfileOutput.type = Types::UpdateProfileOutput
    UpdateTrustAnchorInput.add_member(:trust_anchor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'trustAnchorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the trust anchor.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTrustAnchorInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the trust anchor.</p>"}))
    UpdateTrustAnchorInput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The trust anchor type and its related certificate data.</p>"}))
    UpdateTrustAnchorInput.type = Types::UpdateTrustAnchorInput
    UpdateTrustAnchorOutput.add_member(:trust_anchor, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorDetail, location_name: 'trustAnchor', traits: {"smithy.api#documentation" => "<p>The state of the trust anchor after a read or write operation. </p>", "smithy.api#required" => {}}))
    UpdateTrustAnchorOutput.type = Types::UpdateTrustAnchorOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    RolesAnywhere = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rolesanywhere#RolesAnywhere"
      service.name = "RolesAnywhere"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "RolesAnywhere", "arnNamespace" => "rolesanywhere", "cloudFormationName" => "RolesAnywhere"}, "aws.auth#sigv4" => {"name" => "rolesanywhere"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "IAM Roles Anywhere"}
      service.add_operation(:create_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#CreateProfile"
        operation.name = "CreateProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/profiles", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_trust_anchor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#CreateTrustAnchor"
        operation.name = "CreateTrustAnchor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrustAnchorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrustAnchorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchors", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:delete_attribute_mapping, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DeleteAttributeMapping"
        operation.name = "DeleteAttributeMapping"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAttributeMappingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAttributeMappingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/profiles/{profileId}/mappings", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_crl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DeleteCrl"
        operation.name = "DeleteCrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCrlInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCrlOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/crl/{crlId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DeleteProfile"
        operation.name = "DeleteProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/profile/{profileId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_trust_anchor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DeleteTrustAnchor"
        operation.name = "DeleteTrustAnchor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrustAnchorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrustAnchorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchor/{trustAnchorId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disable_crl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DisableCrl"
        operation.name = "DisableCrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableCrlInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableCrlOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/crl/{crlId}/disable", "method" => "POST"}}
      end)
      service.add_operation(:disable_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DisableProfile"
        operation.name = "DisableProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/profile/{profileId}/disable", "method" => "POST"}}
      end)
      service.add_operation(:disable_trust_anchor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#DisableTrustAnchor"
        operation.name = "DisableTrustAnchor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableTrustAnchorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableTrustAnchorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchor/{trustAnchorId}/disable", "method" => "POST"}}
      end)
      service.add_operation(:enable_crl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#EnableCrl"
        operation.name = "EnableCrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableCrlInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableCrlOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/crl/{crlId}/enable", "method" => "POST"}}
      end)
      service.add_operation(:enable_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#EnableProfile"
        operation.name = "EnableProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/profile/{profileId}/enable", "method" => "POST"}}
      end)
      service.add_operation(:enable_trust_anchor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#EnableTrustAnchor"
        operation.name = "EnableTrustAnchor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableTrustAnchorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableTrustAnchorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchor/{trustAnchorId}/enable", "method" => "POST"}}
      end)
      service.add_operation(:get_crl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#GetCrl"
        operation.name = "GetCrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCrlInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCrlOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/crl/{crlId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#GetProfile"
        operation.name = "GetProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/profile/{profileId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_subject, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#GetSubject"
        operation.name = "GetSubject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubjectInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubjectOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"uri" => "/subject/{subjectId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_trust_anchor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#GetTrustAnchor"
        operation.name = "GetTrustAnchor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrustAnchorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrustAnchorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchor/{trustAnchorId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_crl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ImportCrl"
        operation.name = "ImportCrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportCrlInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportCrlOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/crls", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:list_crls, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ListCrls"
        operation.name = "ListCrls"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrlsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrlsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/crls", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCrls.new
      end)
      service.add_operation(:list_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ListProfiles"
        operation.name = "ListProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfilesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfilesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/profiles", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProfiles.new
      end)
      service.add_operation(:list_subjects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ListSubjects"
        operation.name = "ListSubjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubjectsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubjectsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/subjects", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSubjects.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListTagsForResource", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_trust_anchors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ListTrustAnchors"
        operation.name = "ListTrustAnchors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrustAnchorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrustAnchorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchors", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrustAnchors.new
      end)
      service.add_operation(:put_attribute_mapping, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#PutAttributeMapping"
        operation.name = "PutAttributeMapping"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAttributeMappingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAttributeMappingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/profiles/{profileId}/mappings", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_notification_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#PutNotificationSettings"
        operation.name = "PutNotificationSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutNotificationSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutNotificationSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/put-notifications-settings", "method" => "PATCH"}}
      end)
      service.add_operation(:reset_notification_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#ResetNotificationSettings"
        operation.name = "ResetNotificationSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetNotificationSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetNotificationSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/reset-notifications-settings", "method" => "PATCH"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/TagResource", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UntagResource", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_crl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#UpdateCrl"
        operation.name = "UpdateCrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCrlInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCrlOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/crl/{crlId}", "method" => "PATCH"}}
      end)
      service.add_operation(:update_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#UpdateProfile"
        operation.name = "UpdateProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/profile/{profileId}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_trust_anchor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rolesanywhere#UpdateTrustAnchor"
        operation.name = "UpdateTrustAnchor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrustAnchorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrustAnchorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/trustanchor/{trustAnchorId}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
