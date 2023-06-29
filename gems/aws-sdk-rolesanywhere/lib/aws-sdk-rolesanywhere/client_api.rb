# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RolesAnywhere
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CreateProfileRequest = Shapes::StructureShape.new(name: 'CreateProfileRequest')
    CreateProfileRequestDurationSecondsInteger = Shapes::IntegerShape.new(name: 'CreateProfileRequestDurationSecondsInteger')
    CreateTrustAnchorRequest = Shapes::StructureShape.new(name: 'CreateTrustAnchorRequest')
    CredentialSummaries = Shapes::ListShape.new(name: 'CredentialSummaries')
    CredentialSummary = Shapes::StructureShape.new(name: 'CredentialSummary')
    CrlDetail = Shapes::StructureShape.new(name: 'CrlDetail')
    CrlDetailResponse = Shapes::StructureShape.new(name: 'CrlDetailResponse')
    CrlDetails = Shapes::ListShape.new(name: 'CrlDetails')
    ImportCrlRequest = Shapes::StructureShape.new(name: 'ImportCrlRequest')
    ImportCrlRequestCrlDataBlob = Shapes::BlobShape.new(name: 'ImportCrlRequestCrlDataBlob')
    InstanceProperties = Shapes::ListShape.new(name: 'InstanceProperties')
    InstanceProperty = Shapes::StructureShape.new(name: 'InstanceProperty')
    InstancePropertyMap = Shapes::MapShape.new(name: 'InstancePropertyMap')
    InstancePropertyMapKeyString = Shapes::StringShape.new(name: 'InstancePropertyMapKeyString')
    InstancePropertyMapValueString = Shapes::StringShape.new(name: 'InstancePropertyMapValueString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    ListCrlsResponse = Shapes::StructureShape.new(name: 'ListCrlsResponse')
    ListProfilesResponse = Shapes::StructureShape.new(name: 'ListProfilesResponse')
    ListRequest = Shapes::StructureShape.new(name: 'ListRequest')
    ListRequestNextTokenString = Shapes::StringShape.new(name: 'ListRequestNextTokenString')
    ListSubjectsResponse = Shapes::StructureShape.new(name: 'ListSubjectsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTrustAnchorsResponse = Shapes::StructureShape.new(name: 'ListTrustAnchorsResponse')
    ManagedPolicyList = Shapes::ListShape.new(name: 'ManagedPolicyList')
    ManagedPolicyListMemberString = Shapes::StringShape.new(name: 'ManagedPolicyListMemberString')
    NotificationChannel = Shapes::StringShape.new(name: 'NotificationChannel')
    NotificationEvent = Shapes::StringShape.new(name: 'NotificationEvent')
    NotificationSetting = Shapes::StructureShape.new(name: 'NotificationSetting')
    NotificationSettingDetail = Shapes::StructureShape.new(name: 'NotificationSettingDetail')
    NotificationSettingDetailConfiguredByString = Shapes::StringShape.new(name: 'NotificationSettingDetailConfiguredByString')
    NotificationSettingDetailThresholdInteger = Shapes::IntegerShape.new(name: 'NotificationSettingDetailThresholdInteger')
    NotificationSettingDetails = Shapes::ListShape.new(name: 'NotificationSettingDetails')
    NotificationSettingKey = Shapes::StructureShape.new(name: 'NotificationSettingKey')
    NotificationSettingKeys = Shapes::ListShape.new(name: 'NotificationSettingKeys')
    NotificationSettingThresholdInteger = Shapes::IntegerShape.new(name: 'NotificationSettingThresholdInteger')
    NotificationSettings = Shapes::ListShape.new(name: 'NotificationSettings')
    ProfileArn = Shapes::StringShape.new(name: 'ProfileArn')
    ProfileDetail = Shapes::StructureShape.new(name: 'ProfileDetail')
    ProfileDetailResponse = Shapes::StructureShape.new(name: 'ProfileDetailResponse')
    ProfileDetails = Shapes::ListShape.new(name: 'ProfileDetails')
    PutNotificationSettingsRequest = Shapes::StructureShape.new(name: 'PutNotificationSettingsRequest')
    PutNotificationSettingsResponse = Shapes::StructureShape.new(name: 'PutNotificationSettingsResponse')
    ResetNotificationSettingsRequest = Shapes::StructureShape.new(name: 'ResetNotificationSettingsRequest')
    ResetNotificationSettingsResponse = Shapes::StructureShape.new(name: 'ResetNotificationSettingsResponse')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RoleArnList = Shapes::ListShape.new(name: 'RoleArnList')
    ScalarCrlRequest = Shapes::StructureShape.new(name: 'ScalarCrlRequest')
    ScalarProfileRequest = Shapes::StructureShape.new(name: 'ScalarProfileRequest')
    ScalarSubjectRequest = Shapes::StructureShape.new(name: 'ScalarSubjectRequest')
    ScalarTrustAnchorRequest = Shapes::StructureShape.new(name: 'ScalarTrustAnchorRequest')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourceData = Shapes::UnionShape.new(name: 'SourceData')
    SourceDataX509CertificateDataString = Shapes::StringShape.new(name: 'SourceDataX509CertificateDataString')
    String = Shapes::StringShape.new(name: 'String')
    SubjectDetail = Shapes::StructureShape.new(name: 'SubjectDetail')
    SubjectDetailResponse = Shapes::StructureShape.new(name: 'SubjectDetailResponse')
    SubjectSummaries = Shapes::ListShape.new(name: 'SubjectSummaries')
    SubjectSummary = Shapes::StructureShape.new(name: 'SubjectSummary')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TrustAnchorArn = Shapes::StringShape.new(name: 'TrustAnchorArn')
    TrustAnchorDetail = Shapes::StructureShape.new(name: 'TrustAnchorDetail')
    TrustAnchorDetailResponse = Shapes::StructureShape.new(name: 'TrustAnchorDetailResponse')
    TrustAnchorDetails = Shapes::ListShape.new(name: 'TrustAnchorDetails')
    TrustAnchorType = Shapes::StringShape.new(name: 'TrustAnchorType')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCrlRequest = Shapes::StructureShape.new(name: 'UpdateCrlRequest')
    UpdateCrlRequestCrlDataBlob = Shapes::BlobShape.new(name: 'UpdateCrlRequestCrlDataBlob')
    UpdateProfileRequest = Shapes::StructureShape.new(name: 'UpdateProfileRequest')
    UpdateProfileRequestDurationSecondsInteger = Shapes::IntegerShape.new(name: 'UpdateProfileRequestDurationSecondsInteger')
    UpdateProfileRequestSessionPolicyString = Shapes::StringShape.new(name: 'UpdateProfileRequestSessionPolicyString')
    UpdateTrustAnchorRequest = Shapes::StructureShape.new(name: 'UpdateTrustAnchorRequest')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CreateProfileRequest.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: CreateProfileRequestDurationSecondsInteger, location_name: "durationSeconds"))
    CreateProfileRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    CreateProfileRequest.add_member(:managed_policy_arns, Shapes::ShapeRef.new(shape: ManagedPolicyList, location_name: "managedPolicyArns"))
    CreateProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateProfileRequest.add_member(:require_instance_properties, Shapes::ShapeRef.new(shape: Boolean, location_name: "requireInstanceProperties"))
    CreateProfileRequest.add_member(:role_arns, Shapes::ShapeRef.new(shape: RoleArnList, required: true, location_name: "roleArns"))
    CreateProfileRequest.add_member(:session_policy, Shapes::ShapeRef.new(shape: String, location_name: "sessionPolicy"))
    CreateProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateProfileRequest.struct_class = Types::CreateProfileRequest

    CreateTrustAnchorRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    CreateTrustAnchorRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateTrustAnchorRequest.add_member(:notification_settings, Shapes::ShapeRef.new(shape: NotificationSettings, location_name: "notificationSettings"))
    CreateTrustAnchorRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    CreateTrustAnchorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateTrustAnchorRequest.struct_class = Types::CreateTrustAnchorRequest

    CredentialSummaries.member = Shapes::ShapeRef.new(shape: CredentialSummary)

    CredentialSummary.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    CredentialSummary.add_member(:failed, Shapes::ShapeRef.new(shape: Boolean, location_name: "failed"))
    CredentialSummary.add_member(:issuer, Shapes::ShapeRef.new(shape: String, location_name: "issuer"))
    CredentialSummary.add_member(:seen_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "seenAt"))
    CredentialSummary.add_member(:serial_number, Shapes::ShapeRef.new(shape: String, location_name: "serialNumber"))
    CredentialSummary.add_member(:x509_certificate_data, Shapes::ShapeRef.new(shape: String, location_name: "x509CertificateData"))
    CredentialSummary.struct_class = Types::CredentialSummary

    CrlDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CrlDetail.add_member(:crl_arn, Shapes::ShapeRef.new(shape: String, location_name: "crlArn"))
    CrlDetail.add_member(:crl_data, Shapes::ShapeRef.new(shape: Blob, location_name: "crlData"))
    CrlDetail.add_member(:crl_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "crlId"))
    CrlDetail.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    CrlDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    CrlDetail.add_member(:trust_anchor_arn, Shapes::ShapeRef.new(shape: String, location_name: "trustAnchorArn"))
    CrlDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CrlDetail.struct_class = Types::CrlDetail

    CrlDetailResponse.add_member(:crl, Shapes::ShapeRef.new(shape: CrlDetail, required: true, location_name: "crl"))
    CrlDetailResponse.struct_class = Types::CrlDetailResponse

    CrlDetails.member = Shapes::ShapeRef.new(shape: CrlDetail)

    ImportCrlRequest.add_member(:crl_data, Shapes::ShapeRef.new(shape: ImportCrlRequestCrlDataBlob, required: true, location_name: "crlData"))
    ImportCrlRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    ImportCrlRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    ImportCrlRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ImportCrlRequest.add_member(:trust_anchor_arn, Shapes::ShapeRef.new(shape: TrustAnchorArn, required: true, location_name: "trustAnchorArn"))
    ImportCrlRequest.struct_class = Types::ImportCrlRequest

    InstanceProperties.member = Shapes::ShapeRef.new(shape: InstanceProperty)

    InstanceProperty.add_member(:failed, Shapes::ShapeRef.new(shape: Boolean, location_name: "failed"))
    InstanceProperty.add_member(:properties, Shapes::ShapeRef.new(shape: InstancePropertyMap, location_name: "properties"))
    InstanceProperty.add_member(:seen_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "seenAt"))
    InstanceProperty.struct_class = Types::InstanceProperty

    InstancePropertyMap.key = Shapes::ShapeRef.new(shape: InstancePropertyMapKeyString)
    InstancePropertyMap.value = Shapes::ShapeRef.new(shape: InstancePropertyMapValueString)

    ListCrlsResponse.add_member(:crls, Shapes::ShapeRef.new(shape: CrlDetails, location_name: "crls"))
    ListCrlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCrlsResponse.struct_class = Types::ListCrlsResponse

    ListProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListProfilesResponse.add_member(:profiles, Shapes::ShapeRef.new(shape: ProfileDetails, location_name: "profiles"))
    ListProfilesResponse.struct_class = Types::ListProfilesResponse

    ListRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "pageSize"))
    ListRequest.struct_class = Types::ListRequest

    ListSubjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSubjectsResponse.add_member(:subjects, Shapes::ShapeRef.new(shape: SubjectSummaries, location_name: "subjects"))
    ListSubjectsResponse.struct_class = Types::ListSubjectsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTrustAnchorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTrustAnchorsResponse.add_member(:trust_anchors, Shapes::ShapeRef.new(shape: TrustAnchorDetails, location_name: "trustAnchors"))
    ListTrustAnchorsResponse.struct_class = Types::ListTrustAnchorsResponse

    ManagedPolicyList.member = Shapes::ShapeRef.new(shape: ManagedPolicyListMemberString)

    NotificationSetting.add_member(:channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "channel"))
    NotificationSetting.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    NotificationSetting.add_member(:event, Shapes::ShapeRef.new(shape: NotificationEvent, required: true, location_name: "event"))
    NotificationSetting.add_member(:threshold, Shapes::ShapeRef.new(shape: NotificationSettingThresholdInteger, location_name: "threshold"))
    NotificationSetting.struct_class = Types::NotificationSetting

    NotificationSettingDetail.add_member(:channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "channel"))
    NotificationSettingDetail.add_member(:configured_by, Shapes::ShapeRef.new(shape: NotificationSettingDetailConfiguredByString, location_name: "configuredBy"))
    NotificationSettingDetail.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    NotificationSettingDetail.add_member(:event, Shapes::ShapeRef.new(shape: NotificationEvent, required: true, location_name: "event"))
    NotificationSettingDetail.add_member(:threshold, Shapes::ShapeRef.new(shape: NotificationSettingDetailThresholdInteger, location_name: "threshold"))
    NotificationSettingDetail.struct_class = Types::NotificationSettingDetail

    NotificationSettingDetails.member = Shapes::ShapeRef.new(shape: NotificationSettingDetail)

    NotificationSettingKey.add_member(:channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "channel"))
    NotificationSettingKey.add_member(:event, Shapes::ShapeRef.new(shape: NotificationEvent, required: true, location_name: "event"))
    NotificationSettingKey.struct_class = Types::NotificationSettingKey

    NotificationSettingKeys.member = Shapes::ShapeRef.new(shape: NotificationSettingKey)

    NotificationSettings.member = Shapes::ShapeRef.new(shape: NotificationSetting)

    ProfileDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ProfileDetail.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "createdBy"))
    ProfileDetail.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "durationSeconds"))
    ProfileDetail.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    ProfileDetail.add_member(:managed_policy_arns, Shapes::ShapeRef.new(shape: ManagedPolicyList, location_name: "managedPolicyArns"))
    ProfileDetail.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ProfileDetail.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, location_name: "profileArn"))
    ProfileDetail.add_member(:profile_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "profileId"))
    ProfileDetail.add_member(:require_instance_properties, Shapes::ShapeRef.new(shape: Boolean, location_name: "requireInstanceProperties"))
    ProfileDetail.add_member(:role_arns, Shapes::ShapeRef.new(shape: RoleArnList, location_name: "roleArns"))
    ProfileDetail.add_member(:session_policy, Shapes::ShapeRef.new(shape: String, location_name: "sessionPolicy"))
    ProfileDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    ProfileDetail.struct_class = Types::ProfileDetail

    ProfileDetailResponse.add_member(:profile, Shapes::ShapeRef.new(shape: ProfileDetail, location_name: "profile"))
    ProfileDetailResponse.struct_class = Types::ProfileDetailResponse

    ProfileDetails.member = Shapes::ShapeRef.new(shape: ProfileDetail)

    PutNotificationSettingsRequest.add_member(:notification_settings, Shapes::ShapeRef.new(shape: NotificationSettings, required: true, location_name: "notificationSettings"))
    PutNotificationSettingsRequest.add_member(:trust_anchor_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "trustAnchorId"))
    PutNotificationSettingsRequest.struct_class = Types::PutNotificationSettingsRequest

    PutNotificationSettingsResponse.add_member(:trust_anchor, Shapes::ShapeRef.new(shape: TrustAnchorDetail, required: true, location_name: "trustAnchor"))
    PutNotificationSettingsResponse.struct_class = Types::PutNotificationSettingsResponse

    ResetNotificationSettingsRequest.add_member(:notification_setting_keys, Shapes::ShapeRef.new(shape: NotificationSettingKeys, required: true, location_name: "notificationSettingKeys"))
    ResetNotificationSettingsRequest.add_member(:trust_anchor_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "trustAnchorId"))
    ResetNotificationSettingsRequest.struct_class = Types::ResetNotificationSettingsRequest

    ResetNotificationSettingsResponse.add_member(:trust_anchor, Shapes::ShapeRef.new(shape: TrustAnchorDetail, required: true, location_name: "trustAnchor"))
    ResetNotificationSettingsResponse.struct_class = Types::ResetNotificationSettingsResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RoleArnList.member = Shapes::ShapeRef.new(shape: RoleArn)

    ScalarCrlRequest.add_member(:crl_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "crlId"))
    ScalarCrlRequest.struct_class = Types::ScalarCrlRequest

    ScalarProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "profileId"))
    ScalarProfileRequest.struct_class = Types::ScalarProfileRequest

    ScalarSubjectRequest.add_member(:subject_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "subjectId"))
    ScalarSubjectRequest.struct_class = Types::ScalarSubjectRequest

    ScalarTrustAnchorRequest.add_member(:trust_anchor_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "trustAnchorId"))
    ScalarTrustAnchorRequest.struct_class = Types::ScalarTrustAnchorRequest

    Source.add_member(:source_data, Shapes::ShapeRef.new(shape: SourceData, location_name: "sourceData"))
    Source.add_member(:source_type, Shapes::ShapeRef.new(shape: TrustAnchorType, location_name: "sourceType"))
    Source.struct_class = Types::Source

    SourceData.add_member(:acm_pca_arn, Shapes::ShapeRef.new(shape: String, location_name: "acmPcaArn"))
    SourceData.add_member(:x509_certificate_data, Shapes::ShapeRef.new(shape: SourceDataX509CertificateDataString, location_name: "x509CertificateData"))
    SourceData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceData.add_member_subclass(:acm_pca_arn, Types::SourceData::AcmPcaArn)
    SourceData.add_member_subclass(:x509_certificate_data, Types::SourceData::X509CertificateData)
    SourceData.add_member_subclass(:unknown, Types::SourceData::Unknown)
    SourceData.struct_class = Types::SourceData

    SubjectDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    SubjectDetail.add_member(:credentials, Shapes::ShapeRef.new(shape: CredentialSummaries, location_name: "credentials"))
    SubjectDetail.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    SubjectDetail.add_member(:instance_properties, Shapes::ShapeRef.new(shape: InstanceProperties, location_name: "instanceProperties"))
    SubjectDetail.add_member(:last_seen_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastSeenAt"))
    SubjectDetail.add_member(:subject_arn, Shapes::ShapeRef.new(shape: String, location_name: "subjectArn"))
    SubjectDetail.add_member(:subject_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "subjectId"))
    SubjectDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    SubjectDetail.add_member(:x509_subject, Shapes::ShapeRef.new(shape: String, location_name: "x509Subject"))
    SubjectDetail.struct_class = Types::SubjectDetail

    SubjectDetailResponse.add_member(:subject, Shapes::ShapeRef.new(shape: SubjectDetail, location_name: "subject"))
    SubjectDetailResponse.struct_class = Types::SubjectDetailResponse

    SubjectSummaries.member = Shapes::ShapeRef.new(shape: SubjectSummary)

    SubjectSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    SubjectSummary.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    SubjectSummary.add_member(:last_seen_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastSeenAt"))
    SubjectSummary.add_member(:subject_arn, Shapes::ShapeRef.new(shape: String, location_name: "subjectArn"))
    SubjectSummary.add_member(:subject_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "subjectId"))
    SubjectSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    SubjectSummary.add_member(:x509_subject, Shapes::ShapeRef.new(shape: String, location_name: "x509Subject"))
    SubjectSummary.struct_class = Types::SubjectSummary

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TrustAnchorDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    TrustAnchorDetail.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    TrustAnchorDetail.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    TrustAnchorDetail.add_member(:notification_settings, Shapes::ShapeRef.new(shape: NotificationSettingDetails, location_name: "notificationSettings"))
    TrustAnchorDetail.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    TrustAnchorDetail.add_member(:trust_anchor_arn, Shapes::ShapeRef.new(shape: String, location_name: "trustAnchorArn"))
    TrustAnchorDetail.add_member(:trust_anchor_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "trustAnchorId"))
    TrustAnchorDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    TrustAnchorDetail.struct_class = Types::TrustAnchorDetail

    TrustAnchorDetailResponse.add_member(:trust_anchor, Shapes::ShapeRef.new(shape: TrustAnchorDetail, required: true, location_name: "trustAnchor"))
    TrustAnchorDetailResponse.struct_class = Types::TrustAnchorDetailResponse

    TrustAnchorDetails.member = Shapes::ShapeRef.new(shape: TrustAnchorDetail)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateCrlRequest.add_member(:crl_data, Shapes::ShapeRef.new(shape: UpdateCrlRequestCrlDataBlob, location_name: "crlData"))
    UpdateCrlRequest.add_member(:crl_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "crlId"))
    UpdateCrlRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    UpdateCrlRequest.struct_class = Types::UpdateCrlRequest

    UpdateProfileRequest.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: UpdateProfileRequestDurationSecondsInteger, location_name: "durationSeconds"))
    UpdateProfileRequest.add_member(:managed_policy_arns, Shapes::ShapeRef.new(shape: ManagedPolicyList, location_name: "managedPolicyArns"))
    UpdateProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    UpdateProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "profileId"))
    UpdateProfileRequest.add_member(:role_arns, Shapes::ShapeRef.new(shape: RoleArnList, location_name: "roleArns"))
    UpdateProfileRequest.add_member(:session_policy, Shapes::ShapeRef.new(shape: UpdateProfileRequestSessionPolicyString, location_name: "sessionPolicy"))
    UpdateProfileRequest.struct_class = Types::UpdateProfileRequest

    UpdateTrustAnchorRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    UpdateTrustAnchorRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    UpdateTrustAnchorRequest.add_member(:trust_anchor_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "trustAnchorId"))
    UpdateTrustAnchorRequest.struct_class = Types::UpdateTrustAnchorRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "rolesanywhere",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "IAM Roles Anywhere",
        "serviceId" => "RolesAnywhere",
        "signatureVersion" => "v4",
        "signingName" => "rolesanywhere",
        "uid" => "rolesanywhere-2018-05-10",
      }

      api.add_operation(:create_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ProfileDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_trust_anchor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrustAnchor"
        o.http_method = "POST"
        o.http_request_uri = "/trustanchors"
        o.input = Shapes::ShapeRef.new(shape: CreateTrustAnchorRequest)
        o.output = Shapes::ShapeRef.new(shape: TrustAnchorDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_crl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCrl"
        o.http_method = "DELETE"
        o.http_request_uri = "/crl/{crlId}"
        o.input = Shapes::ShapeRef.new(shape: ScalarCrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CrlDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/profile/{profileId}"
        o.input = Shapes::ShapeRef.new(shape: ScalarProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ProfileDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_trust_anchor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrustAnchor"
        o.http_method = "DELETE"
        o.http_request_uri = "/trustanchor/{trustAnchorId}"
        o.input = Shapes::ShapeRef.new(shape: ScalarTrustAnchorRequest)
        o.output = Shapes::ShapeRef.new(shape: TrustAnchorDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disable_crl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableCrl"
        o.http_method = "POST"
        o.http_request_uri = "/crl/{crlId}/disable"
        o.input = Shapes::ShapeRef.new(shape: ScalarCrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CrlDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disable_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableProfile"
        o.http_method = "POST"
        o.http_request_uri = "/profile/{profileId}/disable"
        o.input = Shapes::ShapeRef.new(shape: ScalarProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ProfileDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disable_trust_anchor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableTrustAnchor"
        o.http_method = "POST"
        o.http_request_uri = "/trustanchor/{trustAnchorId}/disable"
        o.input = Shapes::ShapeRef.new(shape: ScalarTrustAnchorRequest)
        o.output = Shapes::ShapeRef.new(shape: TrustAnchorDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:enable_crl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableCrl"
        o.http_method = "POST"
        o.http_request_uri = "/crl/{crlId}/enable"
        o.input = Shapes::ShapeRef.new(shape: ScalarCrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CrlDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:enable_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableProfile"
        o.http_method = "POST"
        o.http_request_uri = "/profile/{profileId}/enable"
        o.input = Shapes::ShapeRef.new(shape: ScalarProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ProfileDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:enable_trust_anchor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableTrustAnchor"
        o.http_method = "POST"
        o.http_request_uri = "/trustanchor/{trustAnchorId}/enable"
        o.input = Shapes::ShapeRef.new(shape: ScalarTrustAnchorRequest)
        o.output = Shapes::ShapeRef.new(shape: TrustAnchorDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_crl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCrl"
        o.http_method = "GET"
        o.http_request_uri = "/crl/{crlId}"
        o.input = Shapes::ShapeRef.new(shape: ScalarCrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CrlDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfile"
        o.http_method = "GET"
        o.http_request_uri = "/profile/{profileId}"
        o.input = Shapes::ShapeRef.new(shape: ScalarProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ProfileDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_subject, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubject"
        o.http_method = "GET"
        o.http_request_uri = "/subject/{subjectId}"
        o.input = Shapes::ShapeRef.new(shape: ScalarSubjectRequest)
        o.output = Shapes::ShapeRef.new(shape: SubjectDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_trust_anchor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrustAnchor"
        o.http_method = "GET"
        o.http_request_uri = "/trustanchor/{trustAnchorId}"
        o.input = Shapes::ShapeRef.new(shape: ScalarTrustAnchorRequest)
        o.output = Shapes::ShapeRef.new(shape: TrustAnchorDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:import_crl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportCrl"
        o.http_method = "POST"
        o.http_request_uri = "/crls"
        o.input = Shapes::ShapeRef.new(shape: ImportCrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CrlDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_crls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCrls"
        o.http_method = "GET"
        o.http_request_uri = "/crls"
        o.input = Shapes::ShapeRef.new(shape: ListRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCrlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/profiles"
        o.input = Shapes::ShapeRef.new(shape: ListRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_subjects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubjects"
        o.http_method = "GET"
        o.http_request_uri = "/subjects"
        o.input = Shapes::ShapeRef.new(shape: ListRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSubjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/ListTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_trust_anchors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrustAnchors"
        o.http_method = "GET"
        o.http_request_uri = "/trustanchors"
        o.input = Shapes::ShapeRef.new(shape: ListRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrustAnchorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_notification_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutNotificationSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/put-notifications-settings"
        o.input = Shapes::ShapeRef.new(shape: PutNotificationSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutNotificationSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:reset_notification_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetNotificationSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/reset-notifications-settings"
        o.input = Shapes::ShapeRef.new(shape: ResetNotificationSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetNotificationSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/TagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/UntagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_crl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCrl"
        o.http_method = "PATCH"
        o.http_request_uri = "/crl/{crlId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CrlDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfile"
        o.http_method = "PATCH"
        o.http_request_uri = "/profile/{profileId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ProfileDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_trust_anchor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrustAnchor"
        o.http_method = "PATCH"
        o.http_request_uri = "/trustanchor/{trustAnchorId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrustAnchorRequest)
        o.output = Shapes::ShapeRef.new(shape: TrustAnchorDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
