# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PartnerCentralMarketing
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionReason = Shapes::StringShape.new(name: 'AccessDeniedExceptionReason')
    ActivationIssue = Shapes::StructureShape.new(name: 'ActivationIssue')
    ActivationIssueList = Shapes::ListShape.new(name: 'ActivationIssueList')
    AllowedTagList = Shapes::ListShape.new(name: 'AllowedTagList')
    Amount = Shapes::StringShape.new(name: 'Amount')
    AssetBodyContent = Shapes::StringShape.new(name: 'AssetBodyContent')
    AssetLanguage = Shapes::StringShape.new(name: 'AssetLanguage')
    AssetLinkFieldType = Shapes::StructureShape.new(name: 'AssetLinkFieldType')
    AssetName = Shapes::StringShape.new(name: 'AssetName')
    AttemptStatus = Shapes::StringShape.new(name: 'AttemptStatus')
    AuthorizationUrl = Shapes::StringShape.new(name: 'AuthorizationUrl')
    AwsServiceFilterList = Shapes::ListShape.new(name: 'AwsServiceFilterList')
    AwsServicesList = Shapes::ListShape.new(name: 'AwsServicesList')
    BatchCreateCampaignAssetEntries = Shapes::ListShape.new(name: 'BatchCreateCampaignAssetEntries')
    BatchCreateCampaignAssetEntry = Shapes::StructureShape.new(name: 'BatchCreateCampaignAssetEntry')
    BatchCreateCampaignAssetError = Shapes::StructureShape.new(name: 'BatchCreateCampaignAssetError')
    BatchCreateCampaignAssetErrors = Shapes::ListShape.new(name: 'BatchCreateCampaignAssetErrors')
    BatchCreateCampaignAssetRequest = Shapes::StructureShape.new(name: 'BatchCreateCampaignAssetRequest')
    BatchCreateCampaignAssetResponse = Shapes::StructureShape.new(name: 'BatchCreateCampaignAssetResponse')
    BatchCreateCampaignAssetResult = Shapes::StructureShape.new(name: 'BatchCreateCampaignAssetResult')
    BatchCreateCampaignAssetResults = Shapes::ListShape.new(name: 'BatchCreateCampaignAssetResults')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Campaign = Shapes::StructureShape.new(name: 'Campaign')
    CampaignAsset = Shapes::StructureShape.new(name: 'CampaignAsset')
    CampaignAssetActivationOutcome = Shapes::StructureShape.new(name: 'CampaignAssetActivationOutcome')
    CampaignAssetActivationOutcomes = Shapes::ListShape.new(name: 'CampaignAssetActivationOutcomes')
    CampaignAssetActivationStatus = Shapes::StringShape.new(name: 'CampaignAssetActivationStatus')
    CampaignAssetActivationTaskId = Shapes::StringShape.new(name: 'CampaignAssetActivationTaskId')
    CampaignAssetActivationTaskStatus = Shapes::StringShape.new(name: 'CampaignAssetActivationTaskStatus')
    CampaignAssetCategory = Shapes::StringShape.new(name: 'CampaignAssetCategory')
    CampaignAssetExportFailureCode = Shapes::StringShape.new(name: 'CampaignAssetExportFailureCode')
    CampaignAssetExportFailureReason = Shapes::StructureShape.new(name: 'CampaignAssetExportFailureReason')
    CampaignAssetExportTaskId = Shapes::StringShape.new(name: 'CampaignAssetExportTaskId')
    CampaignAssetExportTaskStatus = Shapes::StringShape.new(name: 'CampaignAssetExportTaskStatus')
    CampaignAssetFieldValue = Shapes::StructureShape.new(name: 'CampaignAssetFieldValue')
    CampaignAssetFieldValueList = Shapes::ListShape.new(name: 'CampaignAssetFieldValueList')
    CampaignAssetId = Shapes::StringShape.new(name: 'CampaignAssetId')
    CampaignAssetIdList = Shapes::ListShape.new(name: 'CampaignAssetIdList')
    CampaignAssetIdentifiers = Shapes::ListShape.new(name: 'CampaignAssetIdentifiers')
    CampaignAssetImageSource = Shapes::StructureShape.new(name: 'CampaignAssetImageSource')
    CampaignAssetLayout = Shapes::StructureShape.new(name: 'CampaignAssetLayout')
    CampaignAssetLayoutOption = Shapes::StructureShape.new(name: 'CampaignAssetLayoutOption')
    CampaignAssetLayoutOptionList = Shapes::ListShape.new(name: 'CampaignAssetLayoutOptionList')
    CampaignAssetState = Shapes::StringShape.new(name: 'CampaignAssetState')
    CampaignAssetStateReason = Shapes::StringShape.new(name: 'CampaignAssetStateReason')
    CampaignAssetSummary = Shapes::StructureShape.new(name: 'CampaignAssetSummary')
    CampaignAssetSummaryList = Shapes::ListShape.new(name: 'CampaignAssetSummaryList')
    CampaignAssetTemplate = Shapes::StructureShape.new(name: 'CampaignAssetTemplate')
    CampaignAssetTemplateField = Shapes::StructureShape.new(name: 'CampaignAssetTemplateField')
    CampaignAssetTemplateFieldList = Shapes::ListShape.new(name: 'CampaignAssetTemplateFieldList')
    CampaignAssetTemplateFieldPageInteger = Shapes::IntegerShape.new(name: 'CampaignAssetTemplateFieldPageInteger')
    CampaignAssetTemplateIdList = Shapes::ListShape.new(name: 'CampaignAssetTemplateIdList')
    CampaignAssetTemplateList = Shapes::ListShape.new(name: 'CampaignAssetTemplateList')
    CampaignAssetTemplateType = Shapes::StringShape.new(name: 'CampaignAssetTemplateType')
    CampaignId = Shapes::StringShape.new(name: 'CampaignId')
    CampaignIdentifier = Shapes::StringShape.new(name: 'CampaignIdentifier')
    CampaignIdentifierList = Shapes::ListShape.new(name: 'CampaignIdentifierList')
    CampaignName = Shapes::StringShape.new(name: 'CampaignName')
    CampaignSetting = Shapes::StringShape.new(name: 'CampaignSetting')
    CampaignSocialConnectionIds = Shapes::ListShape.new(name: 'CampaignSocialConnectionIds')
    CampaignSocialConnections = Shapes::MapShape.new(name: 'CampaignSocialConnections')
    CampaignSort = Shapes::StructureShape.new(name: 'CampaignSort')
    CampaignSortName = Shapes::StringShape.new(name: 'CampaignSortName')
    CampaignState = Shapes::StringShape.new(name: 'CampaignState')
    CampaignStateList = Shapes::ListShape.new(name: 'CampaignStateList')
    CampaignSummary = Shapes::StructureShape.new(name: 'CampaignSummary')
    CampaignSummaryList = Shapes::ListShape.new(name: 'CampaignSummaryList')
    CampaignTemplate = Shapes::StructureShape.new(name: 'CampaignTemplate')
    CampaignTemplateCollection = Shapes::StringShape.new(name: 'CampaignTemplateCollection')
    CampaignTemplateCollectionFilterList = Shapes::ListShape.new(name: 'CampaignTemplateCollectionFilterList')
    CampaignTemplateDescription = Shapes::StringShape.new(name: 'CampaignTemplateDescription')
    CampaignTemplateId = Shapes::StringShape.new(name: 'CampaignTemplateId')
    CampaignTemplateSummary = Shapes::StructureShape.new(name: 'CampaignTemplateSummary')
    CampaignTemplateSummaryList = Shapes::ListShape.new(name: 'CampaignTemplateSummaryList')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CompanySize = Shapes::StringShape.new(name: 'CompanySize')
    CompanySizeList = Shapes::ListShape.new(name: 'CompanySizeList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictReason = Shapes::StringShape.new(name: 'ConflictReason')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CountryCodeList = Shapes::ListShape.new(name: 'CountryCodeList')
    CreateCampaignRequest = Shapes::StructureShape.new(name: 'CreateCampaignRequest')
    CreateCampaignResponse = Shapes::StructureShape.new(name: 'CreateCampaignResponse')
    CreateSocialConnectionAuthorizationUrlRequest = Shapes::StructureShape.new(name: 'CreateSocialConnectionAuthorizationUrlRequest')
    CreateSocialConnectionAuthorizationUrlResponse = Shapes::StructureShape.new(name: 'CreateSocialConnectionAuthorizationUrlResponse')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    CustomerSegment = Shapes::StringShape.new(name: 'CustomerSegment')
    CustomerSegmentFilterList = Shapes::ListShape.new(name: 'CustomerSegmentFilterList')
    CustomerSegmentList = Shapes::ListShape.new(name: 'CustomerSegmentList')
    DeactivateCampaignAssetRequest = Shapes::StructureShape.new(name: 'DeactivateCampaignAssetRequest')
    DeactivateCampaignAssetResponse = Shapes::StructureShape.new(name: 'DeactivateCampaignAssetResponse')
    DeleteCampaignAssetRequest = Shapes::StructureShape.new(name: 'DeleteCampaignAssetRequest')
    DeleteCampaignRequest = Shapes::StructureShape.new(name: 'DeleteCampaignRequest')
    DeleteSocialConnectionRequest = Shapes::StructureShape.new(name: 'DeleteSocialConnectionRequest')
    DeliveryStatus = Shapes::StringShape.new(name: 'DeliveryStatus')
    EmailTargetDetail = Shapes::StructureShape.new(name: 'EmailTargetDetail')
    EngagementGroupId = Shapes::StringShape.new(name: 'EngagementGroupId')
    EngagementGroupIdList = Shapes::ListShape.new(name: 'EngagementGroupIdList')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FieldType = Shapes::UnionShape.new(name: 'FieldType')
    FieldValueInput = Shapes::StructureShape.new(name: 'FieldValueInput')
    FieldValueInputList = Shapes::ListShape.new(name: 'FieldValueInputList')
    FileFormat = Shapes::StringShape.new(name: 'FileFormat')
    FileRef = Shapes::StructureShape.new(name: 'FileRef')
    FileReference = Shapes::StringShape.new(name: 'FileReference')
    GetCampaignAssetActivationTaskRequest = Shapes::StructureShape.new(name: 'GetCampaignAssetActivationTaskRequest')
    GetCampaignAssetActivationTaskResponse = Shapes::StructureShape.new(name: 'GetCampaignAssetActivationTaskResponse')
    GetCampaignAssetExportTaskRequest = Shapes::StructureShape.new(name: 'GetCampaignAssetExportTaskRequest')
    GetCampaignAssetExportTaskResponse = Shapes::StructureShape.new(name: 'GetCampaignAssetExportTaskResponse')
    GetCampaignAssetRequest = Shapes::StructureShape.new(name: 'GetCampaignAssetRequest')
    GetCampaignAssetResponse = Shapes::StructureShape.new(name: 'GetCampaignAssetResponse')
    GetCampaignRequest = Shapes::StructureShape.new(name: 'GetCampaignRequest')
    GetCampaignResponse = Shapes::StructureShape.new(name: 'GetCampaignResponse')
    GetCampaignTemplateRequest = Shapes::StructureShape.new(name: 'GetCampaignTemplateRequest')
    GetCampaignTemplateResponse = Shapes::StructureShape.new(name: 'GetCampaignTemplateResponse')
    HtmlTagName = Shapes::StringShape.new(name: 'HtmlTagName')
    Id = Shapes::StringShape.new(name: 'Id')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    ImageFieldType = Shapes::StructureShape.new(name: 'ImageFieldType')
    ImageFieldTypeMaxSizeBytesLong = Shapes::IntegerShape.new(name: 'ImageFieldTypeMaxSizeBytesLong')
    ImageFieldTypeRecommendedHeightPixelsInteger = Shapes::IntegerShape.new(name: 'ImageFieldTypeRecommendedHeightPixelsInteger')
    ImageFieldTypeRecommendedWidthPixelsInteger = Shapes::IntegerShape.new(name: 'ImageFieldTypeRecommendedWidthPixelsInteger')
    ImageFormat = Shapes::StringShape.new(name: 'ImageFormat')
    ImageFormatList = Shapes::ListShape.new(name: 'ImageFormatList')
    Industry = Shapes::StringShape.new(name: 'Industry')
    IndustryFilterList = Shapes::ListShape.new(name: 'IndustryFilterList')
    IndustryList = Shapes::ListShape.new(name: 'IndustryList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LanguageFilterList = Shapes::ListShape.new(name: 'LanguageFilterList')
    LayoutFormat = Shapes::StringShape.new(name: 'LayoutFormat')
    LayoutOptionValue = Shapes::StringShape.new(name: 'LayoutOptionValue')
    LayoutPageType = Shapes::StringShape.new(name: 'LayoutPageType')
    LayoutPreview = Shapes::StructureShape.new(name: 'LayoutPreview')
    LayoutPreviewList = Shapes::ListShape.new(name: 'LayoutPreviewList')
    LayoutUrl = Shapes::StringShape.new(name: 'LayoutUrl')
    LinkLabel = Shapes::StringShape.new(name: 'LinkLabel')
    ListCampaignAssetsRequest = Shapes::StructureShape.new(name: 'ListCampaignAssetsRequest')
    ListCampaignAssetsResponse = Shapes::StructureShape.new(name: 'ListCampaignAssetsResponse')
    ListCampaignsRequest = Shapes::StructureShape.new(name: 'ListCampaignsRequest')
    ListCampaignsResponse = Shapes::StructureShape.new(name: 'ListCampaignsResponse')
    ListSocialConnectionsRequest = Shapes::StructureShape.new(name: 'ListSocialConnectionsRequest')
    ListSocialConnectionsResponse = Shapes::StructureShape.new(name: 'ListSocialConnectionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MonetaryValue = Shapes::StructureShape.new(name: 'MonetaryValue')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PartnerAddress = Shapes::StringShape.new(name: 'PartnerAddress')
    PartnerBadgeDetail = Shapes::StructureShape.new(name: 'PartnerBadgeDetail')
    PartnerLogoUrl = Shapes::StringShape.new(name: 'PartnerLogoUrl')
    PartnerProfileBranding = Shapes::StructureShape.new(name: 'PartnerProfileBranding')
    PartnerProfileField = Shapes::StringShape.new(name: 'PartnerProfileField')
    Platform = Shapes::StringShape.new(name: 'Platform')
    PresignedUrl = Shapes::StringShape.new(name: 'PresignedUrl')
    PrivacyPolicyUrl = Shapes::StringShape.new(name: 'PrivacyPolicyUrl')
    PublicUrl = Shapes::StringShape.new(name: 'PublicUrl')
    ReferenceMaterial = Shapes::StructureShape.new(name: 'ReferenceMaterial')
    ReferenceMaterialList = Shapes::ListShape.new(name: 'ReferenceMaterialList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RichTextFieldType = Shapes::StructureShape.new(name: 'RichTextFieldType')
    RichTextFieldTypeMaxLengthInteger = Shapes::IntegerShape.new(name: 'RichTextFieldTypeMaxLengthInteger')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    S3VersionId = Shapes::StringShape.new(name: 'S3VersionId')
    ScanStatus = Shapes::StringShape.new(name: 'ScanStatus')
    SearchCampaignTemplatesRequest = Shapes::StructureShape.new(name: 'SearchCampaignTemplatesRequest')
    SearchCampaignTemplatesResponse = Shapes::StructureShape.new(name: 'SearchCampaignTemplatesResponse')
    SendMode = Shapes::StringShape.new(name: 'SendMode')
    SenderEmail = Shapes::StringShape.new(name: 'SenderEmail')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SocialAccountName = Shapes::StringShape.new(name: 'SocialAccountName')
    SocialConnectionId = Shapes::StringShape.new(name: 'SocialConnectionId')
    SocialConnectionIdentifier = Shapes::StringShape.new(name: 'SocialConnectionIdentifier')
    SocialConnectionStatus = Shapes::StringShape.new(name: 'SocialConnectionStatus')
    SocialConnectionSummary = Shapes::StructureShape.new(name: 'SocialConnectionSummary')
    SocialConnectionSummaryList = Shapes::ListShape.new(name: 'SocialConnectionSummaryList')
    SocialPageName = Shapes::StringShape.new(name: 'SocialPageName')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartCampaignAssetActivationTaskRequest = Shapes::StructureShape.new(name: 'StartCampaignAssetActivationTaskRequest')
    StartCampaignAssetActivationTaskResponse = Shapes::StructureShape.new(name: 'StartCampaignAssetActivationTaskResponse')
    StartCampaignAssetExportTaskRequest = Shapes::StructureShape.new(name: 'StartCampaignAssetExportTaskRequest')
    StartCampaignAssetExportTaskResponse = Shapes::StructureShape.new(name: 'StartCampaignAssetExportTaskResponse')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    TargetAudience = Shapes::StructureShape.new(name: 'TargetAudience')
    TemplateFieldDescription = Shapes::StringShape.new(name: 'TemplateFieldDescription')
    TemplateFieldId = Shapes::StringShape.new(name: 'TemplateFieldId')
    TemplateFieldIdList = Shapes::ListShape.new(name: 'TemplateFieldIdList')
    TemplateFieldLabel = Shapes::StringShape.new(name: 'TemplateFieldLabel')
    TemplateFieldPattern = Shapes::StringShape.new(name: 'TemplateFieldPattern')
    TemplateFieldSection = Shapes::StringShape.new(name: 'TemplateFieldSection')
    TemplateFieldValue = Shapes::UnionShape.new(name: 'TemplateFieldValue')
    TemplateName = Shapes::StringShape.new(name: 'TemplateName')
    TemplateSearchText = Shapes::StringShape.new(name: 'TemplateSearchText')
    TextFieldType = Shapes::StructureShape.new(name: 'TextFieldType')
    TextFieldTypeMaxLengthInteger = Shapes::IntegerShape.new(name: 'TextFieldTypeMaxLengthInteger')
    TextFieldTypeMinLengthInteger = Shapes::IntegerShape.new(name: 'TextFieldTypeMinLengthInteger')
    Theme = Shapes::StringShape.new(name: 'Theme')
    ThemeFilterList = Shapes::ListShape.new(name: 'ThemeFilterList')
    ThemeList = Shapes::ListShape.new(name: 'ThemeList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCampaignAssetRequest = Shapes::StructureShape.new(name: 'UpdateCampaignAssetRequest')
    UpdateCampaignAssetResponse = Shapes::StructureShape.new(name: 'UpdateCampaignAssetResponse')
    UpdateCampaignRequest = Shapes::StructureShape.new(name: 'UpdateCampaignRequest')
    UpdateCampaignResponse = Shapes::StructureShape.new(name: 'UpdateCampaignResponse')
    UseCaseFilter = Shapes::StringShape.new(name: 'UseCaseFilter')
    UseCaseFilterList = Shapes::ListShape.new(name: 'UseCaseFilterList')
    UtcDate = Shapes::StringShape.new(name: 'UtcDate')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldCode = Shapes::StringShape.new(name: 'ValidationExceptionFieldCode')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, location_name: "Reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActivationIssue.add_member(:code, Shapes::ShapeRef.new(shape: CampaignAssetStateReason, required: true, location_name: "Code"))
    ActivationIssue.add_member(:field_id, Shapes::ShapeRef.new(shape: TemplateFieldId, location_name: "FieldId"))
    ActivationIssue.add_member(:campaign_setting, Shapes::ShapeRef.new(shape: CampaignSetting, location_name: "CampaignSetting"))
    ActivationIssue.add_member(:partner_profile_field, Shapes::ShapeRef.new(shape: PartnerProfileField, location_name: "PartnerProfileField"))
    ActivationIssue.add_member(:affected_asset_ids, Shapes::ShapeRef.new(shape: CampaignAssetIdList, location_name: "AffectedAssetIds"))
    ActivationIssue.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ActivationIssue.struct_class = Types::ActivationIssue

    ActivationIssueList.member = Shapes::ShapeRef.new(shape: ActivationIssue)

    AllowedTagList.member = Shapes::ShapeRef.new(shape: HtmlTagName)

    AssetLinkFieldType.add_member(:category, Shapes::ShapeRef.new(shape: CampaignAssetCategory, required: true, location_name: "Category"))
    AssetLinkFieldType.add_member(:label_field_id, Shapes::ShapeRef.new(shape: TemplateFieldId, location_name: "LabelFieldId"))
    AssetLinkFieldType.struct_class = Types::AssetLinkFieldType

    AwsServiceFilterList.member = Shapes::ShapeRef.new(shape: String)

    AwsServicesList.member = Shapes::ShapeRef.new(shape: String)

    BatchCreateCampaignAssetEntries.member = Shapes::ShapeRef.new(shape: BatchCreateCampaignAssetEntry)

    BatchCreateCampaignAssetEntry.add_member(:source_asset_template_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "SourceAssetTemplateIdentifier"))
    BatchCreateCampaignAssetEntry.struct_class = Types::BatchCreateCampaignAssetEntry

    BatchCreateCampaignAssetError.add_member(:source_asset_template_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "SourceAssetTemplateId"))
    BatchCreateCampaignAssetError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Code"))
    BatchCreateCampaignAssetError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    BatchCreateCampaignAssetError.struct_class = Types::BatchCreateCampaignAssetError

    BatchCreateCampaignAssetErrors.member = Shapes::ShapeRef.new(shape: BatchCreateCampaignAssetError)

    BatchCreateCampaignAssetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    BatchCreateCampaignAssetRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    BatchCreateCampaignAssetRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchCreateCampaignAssetEntries, required: true, location_name: "Entries"))
    BatchCreateCampaignAssetRequest.struct_class = Types::BatchCreateCampaignAssetRequest

    BatchCreateCampaignAssetResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateCampaignAssetErrors, required: true, location_name: "Errors"))
    BatchCreateCampaignAssetResponse.add_member(:successful, Shapes::ShapeRef.new(shape: BatchCreateCampaignAssetResults, location_name: "Successful"))
    BatchCreateCampaignAssetResponse.struct_class = Types::BatchCreateCampaignAssetResponse

    BatchCreateCampaignAssetResult.add_member(:source_asset_template_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "SourceAssetTemplateId"))
    BatchCreateCampaignAssetResult.add_member(:id, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "Id"))
    BatchCreateCampaignAssetResult.add_member(:layout, Shapes::ShapeRef.new(shape: CampaignAssetLayout, location_name: "Layout"))
    BatchCreateCampaignAssetResult.struct_class = Types::BatchCreateCampaignAssetResult

    BatchCreateCampaignAssetResults.member = Shapes::ShapeRef.new(shape: BatchCreateCampaignAssetResult)

    Campaign.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "CampaignId"))
    Campaign.add_member(:arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "Arn"))
    Campaign.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "Name"))
    Campaign.add_member(:state, Shapes::ShapeRef.new(shape: CampaignState, required: true, location_name: "State"))
    Campaign.add_member(:campaign_template_id, Shapes::ShapeRef.new(shape: CampaignTemplateId, location_name: "CampaignTemplateId"))
    Campaign.add_member(:language, Shapes::ShapeRef.new(shape: AssetLanguage, location_name: "Language"))
    Campaign.add_member(:partner_profile, Shapes::ShapeRef.new(shape: PartnerProfileBranding, location_name: "PartnerProfile"))
    Campaign.add_member(:sender_email, Shapes::ShapeRef.new(shape: SenderEmail, location_name: "SenderEmail"))
    Campaign.add_member(:privacy_policy_url, Shapes::ShapeRef.new(shape: PrivacyPolicyUrl, location_name: "PrivacyPolicyUrl"))
    Campaign.add_member(:partner_address, Shapes::ShapeRef.new(shape: PartnerAddress, location_name: "PartnerAddress"))
    Campaign.add_member(:partner_badge, Shapes::ShapeRef.new(shape: PartnerBadgeDetail, location_name: "PartnerBadge"))
    Campaign.add_member(:email_target, Shapes::ShapeRef.new(shape: EmailTargetDetail, location_name: "EmailTarget"))
    Campaign.add_member(:email_target_engagement_group_ids, Shapes::ShapeRef.new(shape: EngagementGroupIdList, location_name: "EmailTargetEngagementGroupIds"))
    Campaign.add_member(:social_connections, Shapes::ShapeRef.new(shape: CampaignSocialConnections, location_name: "SocialConnections"))
    Campaign.add_member(:estimated_budget, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "EstimatedBudget"))
    Campaign.add_member(:total_budget, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "TotalBudget"))
    Campaign.add_member(:target_audience, Shapes::ShapeRef.new(shape: TargetAudience, location_name: "TargetAudience"))
    Campaign.add_member(:start_on, Shapes::ShapeRef.new(shape: UtcDate, location_name: "StartOn"))
    Campaign.add_member(:end_on, Shapes::ShapeRef.new(shape: UtcDate, location_name: "EndOn"))
    Campaign.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Campaign.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Campaign.add_member(:activation_issues, Shapes::ShapeRef.new(shape: ActivationIssueList, required: true, location_name: "ActivationIssues"))
    Campaign.struct_class = Types::Campaign

    CampaignAsset.add_member(:id, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "Id"))
    CampaignAsset.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "CampaignId"))
    CampaignAsset.add_member(:category, Shapes::ShapeRef.new(shape: CampaignAssetCategory, required: true, location_name: "Category"))
    CampaignAsset.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "Name"))
    CampaignAsset.add_member(:link_label, Shapes::ShapeRef.new(shape: LinkLabel, location_name: "LinkLabel"))
    CampaignAsset.add_member(:state, Shapes::ShapeRef.new(shape: CampaignAssetState, required: true, location_name: "State"))
    CampaignAsset.add_member(:last_activation_status, Shapes::ShapeRef.new(shape: AttemptStatus, location_name: "LastActivationStatus"))
    CampaignAsset.add_member(:delivery_status, Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: "DeliveryStatus"))
    CampaignAsset.add_member(:delivery_status_reason, Shapes::ShapeRef.new(shape: CampaignAssetStateReason, location_name: "DeliveryStatusReason"))
    CampaignAsset.add_member(:source_asset_template_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceAssetTemplateId"))
    CampaignAsset.add_member(:social_platform, Shapes::ShapeRef.new(shape: Platform, location_name: "SocialPlatform"))
    CampaignAsset.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, location_name: "FileFormat"))
    CampaignAsset.add_member(:send_mode, Shapes::ShapeRef.new(shape: SendMode, location_name: "SendMode"))
    CampaignAsset.add_member(:scheduled_send_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ScheduledSendAt"))
    CampaignAsset.add_member(:field_values, Shapes::ShapeRef.new(shape: CampaignAssetFieldValueList, location_name: "FieldValues"))
    CampaignAsset.add_member(:layout_previews, Shapes::ShapeRef.new(shape: LayoutPreviewList, location_name: "LayoutPreviews"))
    CampaignAsset.add_member(:layout, Shapes::ShapeRef.new(shape: CampaignAssetLayout, location_name: "Layout"))
    CampaignAsset.add_member(:activation_issues, Shapes::ShapeRef.new(shape: ActivationIssueList, required: true, location_name: "ActivationIssues"))
    CampaignAsset.add_member(:public_url, Shapes::ShapeRef.new(shape: PublicUrl, location_name: "PublicUrl"))
    CampaignAsset.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    CampaignAsset.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    CampaignAsset.struct_class = Types::CampaignAsset

    CampaignAssetActivationOutcome.add_member(:campaign_asset_id, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "CampaignAssetId"))
    CampaignAssetActivationOutcome.add_member(:status, Shapes::ShapeRef.new(shape: CampaignAssetActivationStatus, required: true, location_name: "Status"))
    CampaignAssetActivationOutcome.add_member(:reason, Shapes::ShapeRef.new(shape: CampaignAssetStateReason, location_name: "Reason"))
    CampaignAssetActivationOutcome.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    CampaignAssetActivationOutcome.struct_class = Types::CampaignAssetActivationOutcome

    CampaignAssetActivationOutcomes.member = Shapes::ShapeRef.new(shape: CampaignAssetActivationOutcome)

    CampaignAssetExportFailureReason.add_member(:code, Shapes::ShapeRef.new(shape: CampaignAssetExportFailureCode, required: true, location_name: "Code"))
    CampaignAssetExportFailureReason.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    CampaignAssetExportFailureReason.struct_class = Types::CampaignAssetExportFailureReason

    CampaignAssetFieldValue.add_member(:field, Shapes::ShapeRef.new(shape: CampaignAssetTemplateField, required: true, location_name: "Field"))
    CampaignAssetFieldValue.add_member(:value, Shapes::ShapeRef.new(shape: TemplateFieldValue, location_name: "Value"))
    CampaignAssetFieldValue.struct_class = Types::CampaignAssetFieldValue

    CampaignAssetFieldValueList.member = Shapes::ShapeRef.new(shape: CampaignAssetFieldValue)

    CampaignAssetIdList.member = Shapes::ShapeRef.new(shape: CampaignAssetId)

    CampaignAssetIdentifiers.member = Shapes::ShapeRef.new(shape: CampaignAssetId)

    CampaignAssetImageSource.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    CampaignAssetImageSource.add_member(:campaign_asset_identifier, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "CampaignAssetIdentifier"))
    CampaignAssetImageSource.add_member(:field_id, Shapes::ShapeRef.new(shape: TemplateFieldId, required: true, location_name: "FieldId"))
    CampaignAssetImageSource.struct_class = Types::CampaignAssetImageSource

    CampaignAssetLayout.add_member(:selected, Shapes::ShapeRef.new(shape: LayoutOptionValue, location_name: "Selected"))
    CampaignAssetLayout.add_member(:options, Shapes::ShapeRef.new(shape: CampaignAssetLayoutOptionList, required: true, location_name: "Options"))
    CampaignAssetLayout.struct_class = Types::CampaignAssetLayout

    CampaignAssetLayoutOption.add_member(:value, Shapes::ShapeRef.new(shape: LayoutOptionValue, required: true, location_name: "Value"))
    CampaignAssetLayoutOption.add_member(:label, Shapes::ShapeRef.new(shape: AssetName, location_name: "Label"))
    CampaignAssetLayoutOption.add_member(:field_ids, Shapes::ShapeRef.new(shape: TemplateFieldIdList, required: true, location_name: "FieldIds"))
    CampaignAssetLayoutOption.add_member(:layout_previews, Shapes::ShapeRef.new(shape: LayoutPreviewList, location_name: "LayoutPreviews"))
    CampaignAssetLayoutOption.struct_class = Types::CampaignAssetLayoutOption

    CampaignAssetLayoutOptionList.member = Shapes::ShapeRef.new(shape: CampaignAssetLayoutOption)

    CampaignAssetSummary.add_member(:id, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "Id"))
    CampaignAssetSummary.add_member(:category, Shapes::ShapeRef.new(shape: CampaignAssetCategory, required: true, location_name: "Category"))
    CampaignAssetSummary.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "Name"))
    CampaignAssetSummary.add_member(:link_label, Shapes::ShapeRef.new(shape: LinkLabel, location_name: "LinkLabel"))
    CampaignAssetSummary.add_member(:state, Shapes::ShapeRef.new(shape: CampaignAssetState, location_name: "State"))
    CampaignAssetSummary.add_member(:last_activation_status, Shapes::ShapeRef.new(shape: AttemptStatus, location_name: "LastActivationStatus"))
    CampaignAssetSummary.add_member(:delivery_status, Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: "DeliveryStatus"))
    CampaignAssetSummary.add_member(:delivery_status_reason, Shapes::ShapeRef.new(shape: CampaignAssetStateReason, location_name: "DeliveryStatusReason"))
    CampaignAssetSummary.add_member(:source_asset_template_id, Shapes::ShapeRef.new(shape: Id, location_name: "SourceAssetTemplateId"))
    CampaignAssetSummary.add_member(:social_platform, Shapes::ShapeRef.new(shape: Platform, location_name: "SocialPlatform"))
    CampaignAssetSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedAt"))
    CampaignAssetSummary.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, location_name: "FileFormat"))
    CampaignAssetSummary.add_member(:send_mode, Shapes::ShapeRef.new(shape: SendMode, location_name: "SendMode"))
    CampaignAssetSummary.add_member(:scheduled_send_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ScheduledSendAt"))
    CampaignAssetSummary.struct_class = Types::CampaignAssetSummary

    CampaignAssetSummaryList.member = Shapes::ShapeRef.new(shape: CampaignAssetSummary)

    CampaignAssetTemplate.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    CampaignAssetTemplate.add_member(:type, Shapes::ShapeRef.new(shape: CampaignAssetTemplateType, required: true, location_name: "Type"))
    CampaignAssetTemplate.add_member(:label, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "Label"))
    CampaignAssetTemplate.add_member(:display_order, Shapes::ShapeRef.new(shape: Integer, location_name: "DisplayOrder"))
    CampaignAssetTemplate.add_member(:fields, Shapes::ShapeRef.new(shape: CampaignAssetTemplateFieldList, location_name: "Fields"))
    CampaignAssetTemplate.add_member(:layout_previews, Shapes::ShapeRef.new(shape: LayoutPreviewList, location_name: "LayoutPreviews"))
    CampaignAssetTemplate.add_member(:prerequisite_asset_template_ids, Shapes::ShapeRef.new(shape: CampaignAssetTemplateIdList, location_name: "PrerequisiteAssetTemplateIds"))
    CampaignAssetTemplate.add_member(:social_platform, Shapes::ShapeRef.new(shape: Platform, location_name: "SocialPlatform"))
    CampaignAssetTemplate.struct_class = Types::CampaignAssetTemplate

    CampaignAssetTemplateField.add_member(:field_id, Shapes::ShapeRef.new(shape: TemplateFieldId, required: true, location_name: "FieldId"))
    CampaignAssetTemplateField.add_member(:label, Shapes::ShapeRef.new(shape: TemplateFieldLabel, location_name: "Label"))
    CampaignAssetTemplateField.add_member(:description, Shapes::ShapeRef.new(shape: TemplateFieldDescription, location_name: "Description"))
    CampaignAssetTemplateField.add_member(:section, Shapes::ShapeRef.new(shape: TemplateFieldSection, location_name: "Section"))
    CampaignAssetTemplateField.add_member(:page, Shapes::ShapeRef.new(shape: CampaignAssetTemplateFieldPageInteger, location_name: "Page"))
    CampaignAssetTemplateField.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "Required"))
    CampaignAssetTemplateField.add_member(:type, Shapes::ShapeRef.new(shape: FieldType, required: true, location_name: "Type"))
    CampaignAssetTemplateField.add_member(:campaign_setting, Shapes::ShapeRef.new(shape: CampaignSetting, location_name: "CampaignSetting"))
    CampaignAssetTemplateField.add_member(:partner_profile_field, Shapes::ShapeRef.new(shape: PartnerProfileField, location_name: "PartnerProfileField"))
    CampaignAssetTemplateField.struct_class = Types::CampaignAssetTemplateField

    CampaignAssetTemplateFieldList.member = Shapes::ShapeRef.new(shape: CampaignAssetTemplateField)

    CampaignAssetTemplateIdList.member = Shapes::ShapeRef.new(shape: Id)

    CampaignAssetTemplateList.member = Shapes::ShapeRef.new(shape: CampaignAssetTemplate)

    CampaignIdentifierList.member = Shapes::ShapeRef.new(shape: CampaignIdentifier)

    CampaignSocialConnectionIds.member = Shapes::ShapeRef.new(shape: SocialConnectionId)

    CampaignSocialConnections.key = Shapes::ShapeRef.new(shape: Platform)
    CampaignSocialConnections.value = Shapes::ShapeRef.new(shape: CampaignSocialConnectionIds)

    CampaignSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: CampaignSortName, required: true, location_name: "SortBy"))
    CampaignSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    CampaignSort.struct_class = Types::CampaignSort

    CampaignStateList.member = Shapes::ShapeRef.new(shape: CampaignState)

    CampaignSummary.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "CampaignId"))
    CampaignSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "Arn"))
    CampaignSummary.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "Name"))
    CampaignSummary.add_member(:state, Shapes::ShapeRef.new(shape: CampaignState, required: true, location_name: "State"))
    CampaignSummary.add_member(:language, Shapes::ShapeRef.new(shape: AssetLanguage, location_name: "Language"))
    CampaignSummary.add_member(:start_on, Shapes::ShapeRef.new(shape: UtcDate, location_name: "StartOn"))
    CampaignSummary.add_member(:end_on, Shapes::ShapeRef.new(shape: UtcDate, location_name: "EndOn"))
    CampaignSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    CampaignSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    CampaignSummary.struct_class = Types::CampaignSummary

    CampaignSummaryList.member = Shapes::ShapeRef.new(shape: CampaignSummary)

    CampaignTemplate.add_member(:id, Shapes::ShapeRef.new(shape: CampaignTemplateId, required: true, location_name: "Id"))
    CampaignTemplate.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "Name"))
    CampaignTemplate.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, location_name: "Industry"))
    CampaignTemplate.add_member(:use_case, Shapes::ShapeRef.new(shape: String, location_name: "UseCase"))
    CampaignTemplate.add_member(:description, Shapes::ShapeRef.new(shape: CampaignTemplateDescription, location_name: "Description"))
    CampaignTemplate.add_member(:language_code, Shapes::ShapeRef.new(shape: AssetLanguage, location_name: "LanguageCode"))
    CampaignTemplate.add_member(:collection, Shapes::ShapeRef.new(shape: CampaignTemplateCollection, required: true, location_name: "Collection"))
    CampaignTemplate.add_member(:aws_services, Shapes::ShapeRef.new(shape: AwsServicesList, location_name: "AwsServices"))
    CampaignTemplate.add_member(:customer_segments, Shapes::ShapeRef.new(shape: CustomerSegmentList, location_name: "CustomerSegments"))
    CampaignTemplate.add_member(:themes, Shapes::ShapeRef.new(shape: ThemeList, location_name: "Themes"))
    CampaignTemplate.add_member(:setup_duration, Shapes::ShapeRef.new(shape: String, location_name: "SetupDuration"))
    CampaignTemplate.add_member(:thumbnail_url, Shapes::ShapeRef.new(shape: String, location_name: "ThumbnailUrl"))
    CampaignTemplate.add_member(:effective_date_begin, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EffectiveDateBegin"))
    CampaignTemplate.add_member(:asset_templates, Shapes::ShapeRef.new(shape: CampaignAssetTemplateList, location_name: "AssetTemplates"))
    CampaignTemplate.add_member(:reference_materials, Shapes::ShapeRef.new(shape: ReferenceMaterialList, location_name: "ReferenceMaterials"))
    CampaignTemplate.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    CampaignTemplate.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    CampaignTemplate.struct_class = Types::CampaignTemplate

    CampaignTemplateCollectionFilterList.member = Shapes::ShapeRef.new(shape: CampaignTemplateCollection)

    CampaignTemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: CampaignTemplateId, required: true, location_name: "Id"))
    CampaignTemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "Name"))
    CampaignTemplateSummary.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, location_name: "Industry"))
    CampaignTemplateSummary.add_member(:use_case, Shapes::ShapeRef.new(shape: String, location_name: "UseCase"))
    CampaignTemplateSummary.add_member(:description, Shapes::ShapeRef.new(shape: CampaignTemplateDescription, location_name: "Description"))
    CampaignTemplateSummary.add_member(:language_code, Shapes::ShapeRef.new(shape: AssetLanguage, location_name: "LanguageCode"))
    CampaignTemplateSummary.add_member(:collection, Shapes::ShapeRef.new(shape: CampaignTemplateCollection, required: true, location_name: "Collection"))
    CampaignTemplateSummary.add_member(:aws_services, Shapes::ShapeRef.new(shape: AwsServicesList, location_name: "AwsServices"))
    CampaignTemplateSummary.add_member(:customer_segments, Shapes::ShapeRef.new(shape: CustomerSegmentList, location_name: "CustomerSegments"))
    CampaignTemplateSummary.add_member(:themes, Shapes::ShapeRef.new(shape: ThemeList, location_name: "Themes"))
    CampaignTemplateSummary.add_member(:thumbnail_url, Shapes::ShapeRef.new(shape: String, location_name: "ThumbnailUrl"))
    CampaignTemplateSummary.struct_class = Types::CampaignTemplateSummary

    CampaignTemplateSummaryList.member = Shapes::ShapeRef.new(shape: CampaignTemplateSummary)

    CompanySizeList.member = Shapes::ShapeRef.new(shape: CompanySize)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictReason, location_name: "Reason"))
    ConflictException.struct_class = Types::ConflictException

    CountryCodeList.member = Shapes::ShapeRef.new(shape: CountryCode)

    CreateCampaignRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CreateCampaignRequest.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "Name"))
    CreateCampaignRequest.add_member(:campaign_template_id, Shapes::ShapeRef.new(shape: CampaignTemplateId, required: true, location_name: "CampaignTemplateId"))
    CreateCampaignRequest.add_member(:sender_email, Shapes::ShapeRef.new(shape: SenderEmail, location_name: "SenderEmail"))
    CreateCampaignRequest.add_member(:privacy_policy_url, Shapes::ShapeRef.new(shape: PrivacyPolicyUrl, location_name: "PrivacyPolicyUrl"))
    CreateCampaignRequest.add_member(:partner_address, Shapes::ShapeRef.new(shape: PartnerAddress, location_name: "PartnerAddress"))
    CreateCampaignRequest.add_member(:partner_badge, Shapes::ShapeRef.new(shape: FileRef, location_name: "PartnerBadge"))
    CreateCampaignRequest.add_member(:email_target, Shapes::ShapeRef.new(shape: FileRef, location_name: "EmailTarget"))
    CreateCampaignRequest.add_member(:email_target_engagement_group_ids, Shapes::ShapeRef.new(shape: EngagementGroupIdList, location_name: "EmailTargetEngagementGroupIds"))
    CreateCampaignRequest.add_member(:target_audience, Shapes::ShapeRef.new(shape: TargetAudience, location_name: "TargetAudience"))
    CreateCampaignRequest.add_member(:estimated_budget, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "EstimatedBudget"))
    CreateCampaignRequest.add_member(:total_budget, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "TotalBudget"))
    CreateCampaignRequest.add_member(:start_on, Shapes::ShapeRef.new(shape: UtcDate, location_name: "StartOn"))
    CreateCampaignRequest.add_member(:end_on, Shapes::ShapeRef.new(shape: UtcDate, location_name: "EndOn"))
    CreateCampaignRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateCampaignRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateCampaignRequest.struct_class = Types::CreateCampaignRequest

    CreateCampaignResponse.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "Id"))
    CreateCampaignResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "Arn"))
    CreateCampaignResponse.struct_class = Types::CreateCampaignResponse

    CreateSocialConnectionAuthorizationUrlRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CreateSocialConnectionAuthorizationUrlRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "Platform"))
    CreateSocialConnectionAuthorizationUrlRequest.struct_class = Types::CreateSocialConnectionAuthorizationUrlRequest

    CreateSocialConnectionAuthorizationUrlResponse.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "Platform"))
    CreateSocialConnectionAuthorizationUrlResponse.add_member(:authorization_url, Shapes::ShapeRef.new(shape: AuthorizationUrl, required: true, location_name: "AuthorizationUrl"))
    CreateSocialConnectionAuthorizationUrlResponse.struct_class = Types::CreateSocialConnectionAuthorizationUrlResponse

    CustomerSegmentFilterList.member = Shapes::ShapeRef.new(shape: CustomerSegment)

    CustomerSegmentList.member = Shapes::ShapeRef.new(shape: CustomerSegment)

    DeactivateCampaignAssetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    DeactivateCampaignAssetRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    DeactivateCampaignAssetRequest.add_member(:campaign_asset_identifier, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "CampaignAssetIdentifier"))
    DeactivateCampaignAssetRequest.struct_class = Types::DeactivateCampaignAssetRequest

    DeactivateCampaignAssetResponse.add_member(:id, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "Id"))
    DeactivateCampaignAssetResponse.add_member(:state, Shapes::ShapeRef.new(shape: CampaignAssetState, required: true, location_name: "State"))
    DeactivateCampaignAssetResponse.add_member(:last_activation_status, Shapes::ShapeRef.new(shape: AttemptStatus, location_name: "LastActivationStatus"))
    DeactivateCampaignAssetResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: CampaignAssetStateReason, location_name: "StateReason"))
    DeactivateCampaignAssetResponse.struct_class = Types::DeactivateCampaignAssetResponse

    DeleteCampaignAssetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    DeleteCampaignAssetRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    DeleteCampaignAssetRequest.add_member(:campaign_asset_identifier, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "CampaignAssetIdentifier"))
    DeleteCampaignAssetRequest.struct_class = Types::DeleteCampaignAssetRequest

    DeleteCampaignRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    DeleteCampaignRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    DeleteCampaignRequest.struct_class = Types::DeleteCampaignRequest

    DeleteSocialConnectionRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    DeleteSocialConnectionRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: SocialConnectionIdentifier, required: true, location_name: "Identifier"))
    DeleteSocialConnectionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    DeleteSocialConnectionRequest.struct_class = Types::DeleteSocialConnectionRequest

    EmailTargetDetail.add_member(:scan_status, Shapes::ShapeRef.new(shape: ScanStatus, location_name: "ScanStatus"))
    EmailTargetDetail.add_member(:attached_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AttachedAt"))
    EmailTargetDetail.add_member(:valid_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ValidCount"))
    EmailTargetDetail.add_member(:rejected_count, Shapes::ShapeRef.new(shape: Integer, location_name: "RejectedCount"))
    EmailTargetDetail.add_member(:duplicate_count, Shapes::ShapeRef.new(shape: Integer, location_name: "DuplicateCount"))
    EmailTargetDetail.add_member(:file_name, Shapes::ShapeRef.new(shape: String, location_name: "FileName"))
    EmailTargetDetail.struct_class = Types::EmailTargetDetail

    EngagementGroupIdList.member = Shapes::ShapeRef.new(shape: EngagementGroupId)

    FieldType.add_member(:text, Shapes::ShapeRef.new(shape: TextFieldType, location_name: "Text"))
    FieldType.add_member(:rich_text, Shapes::ShapeRef.new(shape: RichTextFieldType, location_name: "RichText"))
    FieldType.add_member(:image, Shapes::ShapeRef.new(shape: ImageFieldType, location_name: "Image"))
    FieldType.add_member(:asset_link, Shapes::ShapeRef.new(shape: AssetLinkFieldType, location_name: "AssetLink"))
    FieldType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FieldType.add_member_subclass(:text, Types::FieldType::Text)
    FieldType.add_member_subclass(:rich_text, Types::FieldType::RichText)
    FieldType.add_member_subclass(:image, Types::FieldType::Image)
    FieldType.add_member_subclass(:asset_link, Types::FieldType::AssetLink)
    FieldType.add_member_subclass(:unknown, Types::FieldType::Unknown)
    FieldType.struct_class = Types::FieldType

    FieldValueInput.add_member(:field_id, Shapes::ShapeRef.new(shape: TemplateFieldId, required: true, location_name: "FieldId"))
    FieldValueInput.add_member(:value, Shapes::ShapeRef.new(shape: TemplateFieldValue, location_name: "Value"))
    FieldValueInput.struct_class = Types::FieldValueInput

    FieldValueInputList.member = Shapes::ShapeRef.new(shape: FieldValueInput)

    FileRef.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    FileRef.add_member(:version_id, Shapes::ShapeRef.new(shape: S3VersionId, required: true, location_name: "VersionId"))
    FileRef.struct_class = Types::FileRef

    GetCampaignAssetActivationTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetCampaignAssetActivationTaskRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    GetCampaignAssetActivationTaskRequest.struct_class = Types::GetCampaignAssetActivationTaskRequest

    GetCampaignAssetActivationTaskResponse.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "CampaignId"))
    GetCampaignAssetActivationTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: CampaignAssetActivationTaskId, required: true, location_name: "TaskId"))
    GetCampaignAssetActivationTaskResponse.add_member(:task_status, Shapes::ShapeRef.new(shape: CampaignAssetActivationTaskStatus, required: true, location_name: "TaskStatus"))
    GetCampaignAssetActivationTaskResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartedAt"))
    GetCampaignAssetActivationTaskResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndedAt"))
    GetCampaignAssetActivationTaskResponse.add_member(:assets, Shapes::ShapeRef.new(shape: CampaignAssetActivationOutcomes, required: true, location_name: "Assets"))
    GetCampaignAssetActivationTaskResponse.struct_class = Types::GetCampaignAssetActivationTaskResponse

    GetCampaignAssetExportTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetCampaignAssetExportTaskRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    GetCampaignAssetExportTaskRequest.add_member(:campaign_asset_export_task_identifier, Shapes::ShapeRef.new(shape: CampaignAssetExportTaskId, required: true, location_name: "CampaignAssetExportTaskIdentifier"))
    GetCampaignAssetExportTaskRequest.struct_class = Types::GetCampaignAssetExportTaskRequest

    GetCampaignAssetExportTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: CampaignAssetExportTaskId, required: true, location_name: "Id"))
    GetCampaignAssetExportTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: CampaignAssetExportTaskStatus, required: true, location_name: "Status"))
    GetCampaignAssetExportTaskResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetCampaignAssetExportTaskResponse.add_member(:download_url, Shapes::ShapeRef.new(shape: PresignedUrl, location_name: "DownloadUrl"))
    GetCampaignAssetExportTaskResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiresAt"))
    GetCampaignAssetExportTaskResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: CampaignAssetExportFailureReason, location_name: "FailureReason"))
    GetCampaignAssetExportTaskResponse.struct_class = Types::GetCampaignAssetExportTaskResponse

    GetCampaignAssetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetCampaignAssetRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    GetCampaignAssetRequest.add_member(:campaign_asset_identifier, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "CampaignAssetIdentifier"))
    GetCampaignAssetRequest.struct_class = Types::GetCampaignAssetRequest

    GetCampaignAssetResponse.add_member(:asset, Shapes::ShapeRef.new(shape: CampaignAsset, required: true, location_name: "Asset"))
    GetCampaignAssetResponse.struct_class = Types::GetCampaignAssetResponse

    GetCampaignRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetCampaignRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    GetCampaignRequest.struct_class = Types::GetCampaignRequest

    GetCampaignResponse.add_member(:campaign, Shapes::ShapeRef.new(shape: Campaign, required: true, location_name: "Campaign"))
    GetCampaignResponse.struct_class = Types::GetCampaignResponse

    GetCampaignTemplateRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetCampaignTemplateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: CampaignTemplateId, required: true, location_name: "Identifier"))
    GetCampaignTemplateRequest.struct_class = Types::GetCampaignTemplateRequest

    GetCampaignTemplateResponse.add_member(:campaign_template, Shapes::ShapeRef.new(shape: CampaignTemplate, required: true, location_name: "CampaignTemplate"))
    GetCampaignTemplateResponse.struct_class = Types::GetCampaignTemplateResponse

    ImageFieldType.add_member(:max_size_bytes, Shapes::ShapeRef.new(shape: ImageFieldTypeMaxSizeBytesLong, location_name: "MaxSizeBytes"))
    ImageFieldType.add_member(:allowed_formats, Shapes::ShapeRef.new(shape: ImageFormatList, location_name: "AllowedFormats"))
    ImageFieldType.add_member(:default_value, Shapes::ShapeRef.new(shape: LayoutPreview, location_name: "DefaultValue"))
    ImageFieldType.add_member(:recommended_width_pixels, Shapes::ShapeRef.new(shape: ImageFieldTypeRecommendedWidthPixelsInteger, location_name: "RecommendedWidthPixels"))
    ImageFieldType.add_member(:recommended_height_pixels, Shapes::ShapeRef.new(shape: ImageFieldTypeRecommendedHeightPixelsInteger, location_name: "RecommendedHeightPixels"))
    ImageFieldType.struct_class = Types::ImageFieldType

    ImageFormatList.member = Shapes::ShapeRef.new(shape: ImageFormat)

    IndustryFilterList.member = Shapes::ShapeRef.new(shape: Industry)

    IndustryList.member = Shapes::ShapeRef.new(shape: Industry)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "RetryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    LanguageFilterList.member = Shapes::ShapeRef.new(shape: AssetLanguage)

    LayoutPreview.add_member(:format, Shapes::ShapeRef.new(shape: LayoutFormat, required: true, location_name: "Format"))
    LayoutPreview.add_member(:url, Shapes::ShapeRef.new(shape: LayoutUrl, required: true, location_name: "Url"))
    LayoutPreview.add_member(:page_type, Shapes::ShapeRef.new(shape: LayoutPageType, location_name: "PageType"))
    LayoutPreview.struct_class = Types::LayoutPreview

    LayoutPreviewList.member = Shapes::ShapeRef.new(shape: LayoutPreview)

    ListCampaignAssetsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ListCampaignAssetsRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    ListCampaignAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCampaignAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCampaignAssetsRequest.struct_class = Types::ListCampaignAssetsRequest

    ListCampaignAssetsResponse.add_member(:items, Shapes::ShapeRef.new(shape: CampaignAssetSummaryList, required: true, location_name: "Items"))
    ListCampaignAssetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCampaignAssetsResponse.struct_class = Types::ListCampaignAssetsResponse

    ListCampaignsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ListCampaignsRequest.add_member(:campaign_identifiers, Shapes::ShapeRef.new(shape: CampaignIdentifierList, location_name: "CampaignIdentifiers"))
    ListCampaignsRequest.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, location_name: "Name"))
    ListCampaignsRequest.add_member(:states, Shapes::ShapeRef.new(shape: CampaignStateList, location_name: "States"))
    ListCampaignsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: CampaignSort, location_name: "Sort"))
    ListCampaignsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCampaignsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCampaignsRequest.struct_class = Types::ListCampaignsRequest

    ListCampaignsResponse.add_member(:items, Shapes::ShapeRef.new(shape: CampaignSummaryList, required: true, location_name: "Items"))
    ListCampaignsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCampaignsResponse.struct_class = Types::ListCampaignsResponse

    ListSocialConnectionsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ListSocialConnectionsRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "Platform"))
    ListSocialConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListSocialConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSocialConnectionsRequest.struct_class = Types::ListSocialConnectionsRequest

    ListSocialConnectionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: SocialConnectionSummaryList, required: true, location_name: "Items"))
    ListSocialConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSocialConnectionsResponse.struct_class = Types::ListSocialConnectionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MonetaryValue.add_member(:amount, Shapes::ShapeRef.new(shape: Amount, required: true, location_name: "Amount"))
    MonetaryValue.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "CurrencyCode"))
    MonetaryValue.struct_class = Types::MonetaryValue

    PartnerBadgeDetail.add_member(:url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Url"))
    PartnerBadgeDetail.add_member(:attached_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "AttachedAt"))
    PartnerBadgeDetail.struct_class = Types::PartnerBadgeDetail

    PartnerProfileBranding.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    PartnerProfileBranding.add_member(:website_url, Shapes::ShapeRef.new(shape: String, location_name: "WebsiteUrl"))
    PartnerProfileBranding.add_member(:logo_url, Shapes::ShapeRef.new(shape: PartnerLogoUrl, location_name: "LogoUrl"))
    PartnerProfileBranding.add_member(:refreshed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "RefreshedAt"))
    PartnerProfileBranding.struct_class = Types::PartnerProfileBranding

    ReferenceMaterial.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "Name"))
    ReferenceMaterial.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "Url"))
    ReferenceMaterial.struct_class = Types::ReferenceMaterial

    ReferenceMaterialList.member = Shapes::ShapeRef.new(shape: ReferenceMaterial)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RichTextFieldType.add_member(:max_length, Shapes::ShapeRef.new(shape: RichTextFieldTypeMaxLengthInteger, location_name: "MaxLength"))
    RichTextFieldType.add_member(:allowed_tags, Shapes::ShapeRef.new(shape: AllowedTagList, required: true, location_name: "AllowedTags"))
    RichTextFieldType.add_member(:placeholder, Shapes::ShapeRef.new(shape: AssetBodyContent, location_name: "Placeholder"))
    RichTextFieldType.struct_class = Types::RichTextFieldType

    SearchCampaignTemplatesRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    SearchCampaignTemplatesRequest.add_member(:search_text, Shapes::ShapeRef.new(shape: TemplateSearchText, location_name: "SearchText"))
    SearchCampaignTemplatesRequest.add_member(:industry, Shapes::ShapeRef.new(shape: IndustryFilterList, location_name: "Industry"))
    SearchCampaignTemplatesRequest.add_member(:use_case, Shapes::ShapeRef.new(shape: UseCaseFilterList, location_name: "UseCase"))
    SearchCampaignTemplatesRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageFilterList, location_name: "Language"))
    SearchCampaignTemplatesRequest.add_member(:aws_services, Shapes::ShapeRef.new(shape: AwsServiceFilterList, location_name: "AwsServices"))
    SearchCampaignTemplatesRequest.add_member(:customer_segments, Shapes::ShapeRef.new(shape: CustomerSegmentFilterList, location_name: "CustomerSegments"))
    SearchCampaignTemplatesRequest.add_member(:themes, Shapes::ShapeRef.new(shape: ThemeFilterList, location_name: "Themes"))
    SearchCampaignTemplatesRequest.add_member(:collection, Shapes::ShapeRef.new(shape: CampaignTemplateCollectionFilterList, location_name: "Collection"))
    SearchCampaignTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchCampaignTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchCampaignTemplatesRequest.struct_class = Types::SearchCampaignTemplatesRequest

    SearchCampaignTemplatesResponse.add_member(:total_results, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalResults"))
    SearchCampaignTemplatesResponse.add_member(:campaign_templates, Shapes::ShapeRef.new(shape: CampaignTemplateSummaryList, required: true, location_name: "CampaignTemplates"))
    SearchCampaignTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchCampaignTemplatesResponse.struct_class = Types::SearchCampaignTemplatesResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SocialConnectionSummary.add_member(:id, Shapes::ShapeRef.new(shape: SocialConnectionId, required: true, location_name: "Id"))
    SocialConnectionSummary.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "Platform"))
    SocialConnectionSummary.add_member(:status, Shapes::ShapeRef.new(shape: SocialConnectionStatus, required: true, location_name: "Status"))
    SocialConnectionSummary.add_member(:page_name, Shapes::ShapeRef.new(shape: SocialPageName, location_name: "PageName"))
    SocialConnectionSummary.add_member(:account_name, Shapes::ShapeRef.new(shape: SocialAccountName, location_name: "AccountName"))
    SocialConnectionSummary.add_member(:connected_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ConnectedAt"))
    SocialConnectionSummary.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiresAt"))
    SocialConnectionSummary.struct_class = Types::SocialConnectionSummary

    SocialConnectionSummaryList.member = Shapes::ShapeRef.new(shape: SocialConnectionSummary)

    StartCampaignAssetActivationTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    StartCampaignAssetActivationTaskRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    StartCampaignAssetActivationTaskRequest.add_member(:campaign_asset_identifiers, Shapes::ShapeRef.new(shape: CampaignAssetIdentifiers, required: true, location_name: "CampaignAssetIdentifiers"))
    StartCampaignAssetActivationTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartCampaignAssetActivationTaskRequest.struct_class = Types::StartCampaignAssetActivationTaskRequest

    StartCampaignAssetActivationTaskResponse.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "CampaignId"))
    StartCampaignAssetActivationTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: CampaignAssetActivationTaskId, required: true, location_name: "TaskId"))
    StartCampaignAssetActivationTaskResponse.add_member(:task_status, Shapes::ShapeRef.new(shape: CampaignAssetActivationTaskStatus, required: true, location_name: "TaskStatus"))
    StartCampaignAssetActivationTaskResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartedAt"))
    StartCampaignAssetActivationTaskResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndedAt"))
    StartCampaignAssetActivationTaskResponse.add_member(:assets, Shapes::ShapeRef.new(shape: CampaignAssetActivationOutcomes, required: true, location_name: "Assets"))
    StartCampaignAssetActivationTaskResponse.struct_class = Types::StartCampaignAssetActivationTaskResponse

    StartCampaignAssetExportTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    StartCampaignAssetExportTaskRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    StartCampaignAssetExportTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartCampaignAssetExportTaskRequest.struct_class = Types::StartCampaignAssetExportTaskRequest

    StartCampaignAssetExportTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: CampaignAssetExportTaskId, required: true, location_name: "Id"))
    StartCampaignAssetExportTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: CampaignAssetExportTaskStatus, required: true, location_name: "Status"))
    StartCampaignAssetExportTaskResponse.struct_class = Types::StartCampaignAssetExportTaskResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetAudience.add_member(:industries, Shapes::ShapeRef.new(shape: IndustryList, location_name: "Industries"))
    TargetAudience.add_member(:company_sizes, Shapes::ShapeRef.new(shape: CompanySizeList, location_name: "CompanySizes"))
    TargetAudience.add_member(:countries, Shapes::ShapeRef.new(shape: CountryCodeList, location_name: "Countries"))
    TargetAudience.struct_class = Types::TargetAudience

    TemplateFieldIdList.member = Shapes::ShapeRef.new(shape: TemplateFieldId)

    TemplateFieldValue.add_member(:text, Shapes::ShapeRef.new(shape: AssetBodyContent, location_name: "Text"))
    TemplateFieldValue.add_member(:image_reference, Shapes::ShapeRef.new(shape: FileReference, location_name: "ImageReference"))
    TemplateFieldValue.add_member(:linked_asset_id, Shapes::ShapeRef.new(shape: CampaignAssetId, location_name: "LinkedAssetId"))
    TemplateFieldValue.add_member(:campaign_asset_image, Shapes::ShapeRef.new(shape: CampaignAssetImageSource, location_name: "CampaignAssetImage"))
    TemplateFieldValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TemplateFieldValue.add_member_subclass(:text, Types::TemplateFieldValue::Text)
    TemplateFieldValue.add_member_subclass(:image_reference, Types::TemplateFieldValue::ImageReference)
    TemplateFieldValue.add_member_subclass(:linked_asset_id, Types::TemplateFieldValue::LinkedAssetId)
    TemplateFieldValue.add_member_subclass(:campaign_asset_image, Types::TemplateFieldValue::CampaignAssetImage)
    TemplateFieldValue.add_member_subclass(:unknown, Types::TemplateFieldValue::Unknown)
    TemplateFieldValue.struct_class = Types::TemplateFieldValue

    TextFieldType.add_member(:min_length, Shapes::ShapeRef.new(shape: TextFieldTypeMinLengthInteger, location_name: "MinLength"))
    TextFieldType.add_member(:max_length, Shapes::ShapeRef.new(shape: TextFieldTypeMaxLengthInteger, location_name: "MaxLength"))
    TextFieldType.add_member(:pattern, Shapes::ShapeRef.new(shape: TemplateFieldPattern, location_name: "Pattern"))
    TextFieldType.add_member(:placeholder, Shapes::ShapeRef.new(shape: AssetBodyContent, location_name: "Placeholder"))
    TextFieldType.struct_class = Types::TextFieldType

    ThemeFilterList.member = Shapes::ShapeRef.new(shape: Theme)

    ThemeList.member = Shapes::ShapeRef.new(shape: Theme)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "RetryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateCampaignAssetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    UpdateCampaignAssetRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    UpdateCampaignAssetRequest.add_member(:campaign_asset_identifier, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "CampaignAssetIdentifier"))
    UpdateCampaignAssetRequest.add_member(:field_values, Shapes::ShapeRef.new(shape: FieldValueInputList, location_name: "FieldValues"))
    UpdateCampaignAssetRequest.add_member(:layout, Shapes::ShapeRef.new(shape: LayoutOptionValue, location_name: "Layout"))
    UpdateCampaignAssetRequest.add_member(:send_mode, Shapes::ShapeRef.new(shape: SendMode, location_name: "SendMode"))
    UpdateCampaignAssetRequest.add_member(:scheduled_send_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ScheduledSendAt"))
    UpdateCampaignAssetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdateCampaignAssetRequest.struct_class = Types::UpdateCampaignAssetRequest

    UpdateCampaignAssetResponse.add_member(:id, Shapes::ShapeRef.new(shape: CampaignAssetId, required: true, location_name: "Id"))
    UpdateCampaignAssetResponse.add_member(:state, Shapes::ShapeRef.new(shape: CampaignAssetState, required: true, location_name: "State"))
    UpdateCampaignAssetResponse.add_member(:activation_issues, Shapes::ShapeRef.new(shape: ActivationIssueList, required: true, location_name: "ActivationIssues"))
    UpdateCampaignAssetResponse.struct_class = Types::UpdateCampaignAssetResponse

    UpdateCampaignRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    UpdateCampaignRequest.add_member(:campaign_identifier, Shapes::ShapeRef.new(shape: CampaignIdentifier, required: true, location_name: "CampaignIdentifier"))
    UpdateCampaignRequest.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, location_name: "Name"))
    UpdateCampaignRequest.add_member(:sender_email, Shapes::ShapeRef.new(shape: SenderEmail, location_name: "SenderEmail"))
    UpdateCampaignRequest.add_member(:privacy_policy_url, Shapes::ShapeRef.new(shape: PrivacyPolicyUrl, location_name: "PrivacyPolicyUrl"))
    UpdateCampaignRequest.add_member(:partner_address, Shapes::ShapeRef.new(shape: PartnerAddress, location_name: "PartnerAddress"))
    UpdateCampaignRequest.add_member(:partner_badge, Shapes::ShapeRef.new(shape: FileRef, location_name: "PartnerBadge"))
    UpdateCampaignRequest.add_member(:email_target, Shapes::ShapeRef.new(shape: FileRef, location_name: "EmailTarget"))
    UpdateCampaignRequest.add_member(:email_target_engagement_group_ids, Shapes::ShapeRef.new(shape: EngagementGroupIdList, location_name: "EmailTargetEngagementGroupIds"))
    UpdateCampaignRequest.add_member(:social_connections, Shapes::ShapeRef.new(shape: CampaignSocialConnections, location_name: "SocialConnections"))
    UpdateCampaignRequest.add_member(:estimated_budget, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "EstimatedBudget"))
    UpdateCampaignRequest.add_member(:total_budget, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "TotalBudget"))
    UpdateCampaignRequest.add_member(:target_audience, Shapes::ShapeRef.new(shape: TargetAudience, location_name: "TargetAudience"))
    UpdateCampaignRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdateCampaignRequest.add_member(:start_on, Shapes::ShapeRef.new(shape: UtcDate, location_name: "StartOn"))
    UpdateCampaignRequest.add_member(:end_on, Shapes::ShapeRef.new(shape: UtcDate, location_name: "EndOn"))
    UpdateCampaignRequest.struct_class = Types::UpdateCampaignRequest

    UpdateCampaignResponse.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "Id"))
    UpdateCampaignResponse.struct_class = Types::UpdateCampaignResponse

    UseCaseFilterList.member = Shapes::ShapeRef.new(shape: UseCaseFilter)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "FieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:field_id, Shapes::ShapeRef.new(shape: TemplateFieldId, location_name: "FieldId"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.add_member(:code, Shapes::ShapeRef.new(shape: ValidationExceptionFieldCode, location_name: "Code"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-05-31"

      api.metadata = {
        "apiVersion" => "2026-05-31",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "partnercentral-marketing",
        "protocol" => "smithy-rpc-v2-cbor",
        "protocols" => ["smithy-rpc-v2-cbor"],
        "serviceFullName" => "Partner Central Marketing API",
        "serviceId" => "PartnerCentral Marketing",
        "signatureVersion" => "v4",
        "signingName" => "partnercentral-marketing",
        "targetPrefix" => "AWSPartnerDemandGenerator",
        "uid" => "partnercentral-marketing-2026-05-31",
      }

      api.add_operation(:batch_create_campaign_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateCampaignAsset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateCampaignAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateCampaignAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_social_connection_authorization_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSocialConnectionAuthorizationUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSocialConnectionAuthorizationUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSocialConnectionAuthorizationUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:deactivate_campaign_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivateCampaignAsset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeactivateCampaignAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeactivateCampaignAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_campaign_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCampaignAsset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCampaignAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_social_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSocialConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSocialConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_campaign_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaignAsset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_campaign_asset_activation_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaignAssetActivationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignAssetActivationTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignAssetActivationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_campaign_asset_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaignAssetExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignAssetExportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignAssetExportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_campaign_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaignTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_campaign_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCampaignAssets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCampaignAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCampaignAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_campaigns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCampaigns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCampaignsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCampaignsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_social_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSocialConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSocialConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSocialConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:search_campaign_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchCampaignTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchCampaignTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchCampaignTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_campaign_asset_activation_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCampaignAssetActivationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartCampaignAssetActivationTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCampaignAssetActivationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_campaign_asset_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCampaignAssetExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartCampaignAssetExportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCampaignAssetExportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_campaign_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignAsset"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCampaignAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
