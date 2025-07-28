# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SocialMessaging
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedByMetaException = Shapes::StructureShape.new(name: 'AccessDeniedByMetaException')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddContactNumber = Shapes::BooleanShape.new(name: 'AddContactNumber')
    AddLearnMoreLink = Shapes::BooleanShape.new(name: 'AddLearnMoreLink')
    AddSecurityRecommendation = Shapes::BooleanShape.new(name: 'AddSecurityRecommendation')
    AddTrackPackageLink = Shapes::BooleanShape.new(name: 'AddTrackPackageLink')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateInProgressToken = Shapes::StringShape.new(name: 'AssociateInProgressToken')
    AssociateWhatsAppBusinessAccountInput = Shapes::StructureShape.new(name: 'AssociateWhatsAppBusinessAccountInput')
    AssociateWhatsAppBusinessAccountOutput = Shapes::StructureShape.new(name: 'AssociateWhatsAppBusinessAccountOutput')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ButtonType = Shapes::StringShape.new(name: 'ButtonType')
    CodeExpirationMinutes = Shapes::IntegerShape.new(name: 'CodeExpirationMinutes')
    CreateWhatsAppMessageTemplateFromLibraryInput = Shapes::StructureShape.new(name: 'CreateWhatsAppMessageTemplateFromLibraryInput')
    CreateWhatsAppMessageTemplateFromLibraryOutput = Shapes::StructureShape.new(name: 'CreateWhatsAppMessageTemplateFromLibraryOutput')
    CreateWhatsAppMessageTemplateInput = Shapes::StructureShape.new(name: 'CreateWhatsAppMessageTemplateInput')
    CreateWhatsAppMessageTemplateMediaInput = Shapes::StructureShape.new(name: 'CreateWhatsAppMessageTemplateMediaInput')
    CreateWhatsAppMessageTemplateMediaOutput = Shapes::StructureShape.new(name: 'CreateWhatsAppMessageTemplateMediaOutput')
    CreateWhatsAppMessageTemplateOutput = Shapes::StructureShape.new(name: 'CreateWhatsAppMessageTemplateOutput')
    DeleteAllLanguages = Shapes::BooleanShape.new(name: 'DeleteAllLanguages')
    DeleteWhatsAppMessageMediaInput = Shapes::StructureShape.new(name: 'DeleteWhatsAppMessageMediaInput')
    DeleteWhatsAppMessageMediaOutput = Shapes::StructureShape.new(name: 'DeleteWhatsAppMessageMediaOutput')
    DeleteWhatsAppMessageTemplateInput = Shapes::StructureShape.new(name: 'DeleteWhatsAppMessageTemplateInput')
    DeleteWhatsAppMessageTemplateOutput = Shapes::StructureShape.new(name: 'DeleteWhatsAppMessageTemplateOutput')
    DependencyException = Shapes::StructureShape.new(name: 'DependencyException')
    DisassociateWhatsAppBusinessAccountInput = Shapes::StructureShape.new(name: 'DisassociateWhatsAppBusinessAccountInput')
    DisassociateWhatsAppBusinessAccountOutput = Shapes::StructureShape.new(name: 'DisassociateWhatsAppBusinessAccountOutput')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventDestinationArn = Shapes::StringShape.new(name: 'EventDestinationArn')
    Filter = Shapes::MapShape.new(name: 'Filter')
    FilterKeyString = Shapes::StringShape.new(name: 'FilterKeyString')
    FilterValueString = Shapes::StringShape.new(name: 'FilterValueString')
    GetLinkedWhatsAppBusinessAccountInput = Shapes::StructureShape.new(name: 'GetLinkedWhatsAppBusinessAccountInput')
    GetLinkedWhatsAppBusinessAccountOutput = Shapes::StructureShape.new(name: 'GetLinkedWhatsAppBusinessAccountOutput')
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput = Shapes::StructureShape.new(name: 'GetLinkedWhatsAppBusinessAccountPhoneNumberInput')
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput = Shapes::StructureShape.new(name: 'GetLinkedWhatsAppBusinessAccountPhoneNumberOutput')
    GetWhatsAppMessageMediaInput = Shapes::StructureShape.new(name: 'GetWhatsAppMessageMediaInput')
    GetWhatsAppMessageMediaOutput = Shapes::StructureShape.new(name: 'GetWhatsAppMessageMediaOutput')
    GetWhatsAppMessageTemplateInput = Shapes::StructureShape.new(name: 'GetWhatsAppMessageTemplateInput')
    GetWhatsAppMessageTemplateOutput = Shapes::StructureShape.new(name: 'GetWhatsAppMessageTemplateOutput')
    Headers = Shapes::MapShape.new(name: 'Headers')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidParametersException = Shapes::StructureShape.new(name: 'InvalidParametersException')
    IsoCountryCode = Shapes::StringShape.new(name: 'IsoCountryCode')
    LibraryTemplateBodyInputs = Shapes::StructureShape.new(name: 'LibraryTemplateBodyInputs')
    LibraryTemplateButtonInput = Shapes::StructureShape.new(name: 'LibraryTemplateButtonInput')
    LibraryTemplateButtonList = Shapes::StructureShape.new(name: 'LibraryTemplateButtonList')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LinkedAccountWithIncompleteSetup = Shapes::MapShape.new(name: 'LinkedAccountWithIncompleteSetup')
    LinkedWhatsAppBusinessAccount = Shapes::StructureShape.new(name: 'LinkedWhatsAppBusinessAccount')
    LinkedWhatsAppBusinessAccountArn = Shapes::StringShape.new(name: 'LinkedWhatsAppBusinessAccountArn')
    LinkedWhatsAppBusinessAccountId = Shapes::StringShape.new(name: 'LinkedWhatsAppBusinessAccountId')
    LinkedWhatsAppBusinessAccountIdMetaData = Shapes::StructureShape.new(name: 'LinkedWhatsAppBusinessAccountIdMetaData')
    LinkedWhatsAppBusinessAccountSummary = Shapes::StructureShape.new(name: 'LinkedWhatsAppBusinessAccountSummary')
    LinkedWhatsAppBusinessAccountSummaryList = Shapes::ListShape.new(name: 'LinkedWhatsAppBusinessAccountSummaryList')
    LinkedWhatsAppPhoneNumberArn = Shapes::StringShape.new(name: 'LinkedWhatsAppPhoneNumberArn')
    ListLinkedWhatsAppBusinessAccountsInput = Shapes::StructureShape.new(name: 'ListLinkedWhatsAppBusinessAccountsInput')
    ListLinkedWhatsAppBusinessAccountsOutput = Shapes::StructureShape.new(name: 'ListLinkedWhatsAppBusinessAccountsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListWhatsAppMessageTemplatesInput = Shapes::StructureShape.new(name: 'ListWhatsAppMessageTemplatesInput')
    ListWhatsAppMessageTemplatesOutput = Shapes::StructureShape.new(name: 'ListWhatsAppMessageTemplatesOutput')
    ListWhatsAppTemplateLibraryInput = Shapes::StructureShape.new(name: 'ListWhatsAppTemplateLibraryInput')
    ListWhatsAppTemplateLibraryOutput = Shapes::StructureShape.new(name: 'ListWhatsAppTemplateLibraryOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetaIndustries = Shapes::ListShape.new(name: 'MetaIndustries')
    MetaIndustry = Shapes::StringShape.new(name: 'MetaIndustry')
    MetaLibraryTemplate = Shapes::StructureShape.new(name: 'MetaLibraryTemplate')
    MetaLibraryTemplateButtonInputs = Shapes::ListShape.new(name: 'MetaLibraryTemplateButtonInputs')
    MetaLibraryTemplateButtonList = Shapes::ListShape.new(name: 'MetaLibraryTemplateButtonList')
    MetaLibraryTemplateDefinition = Shapes::StructureShape.new(name: 'MetaLibraryTemplateDefinition')
    MetaLibraryTemplatesList = Shapes::ListShape.new(name: 'MetaLibraryTemplatesList')
    MetaTemplate = Shapes::StringShape.new(name: 'MetaTemplate')
    MetaTemplateBody = Shapes::StringShape.new(name: 'MetaTemplateBody')
    MetaTemplateCategory = Shapes::StringShape.new(name: 'MetaTemplateCategory')
    MetaTemplateComponents = Shapes::BlobShape.new(name: 'MetaTemplateComponents')
    MetaTemplateDefinition = Shapes::BlobShape.new(name: 'MetaTemplateDefinition')
    MetaTemplateHeader = Shapes::StringShape.new(name: 'MetaTemplateHeader')
    MetaTemplateId = Shapes::StringShape.new(name: 'MetaTemplateId')
    MetaTemplateLanguage = Shapes::StringShape.new(name: 'MetaTemplateLanguage')
    MetaTemplateName = Shapes::StringShape.new(name: 'MetaTemplateName')
    MetaTemplateQualityScore = Shapes::StringShape.new(name: 'MetaTemplateQualityScore')
    MetaTemplateStatus = Shapes::StringShape.new(name: 'MetaTemplateStatus')
    MetaTemplateTopic = Shapes::StringShape.new(name: 'MetaTemplateTopic')
    MetaTemplateUseCase = Shapes::StringShape.new(name: 'MetaTemplateUseCase')
    MetaText = Shapes::StringShape.new(name: 'MetaText')
    MetaUrl = Shapes::StringShape.new(name: 'MetaUrl')
    MetaUrlWithSuffixExample = Shapes::MapShape.new(name: 'MetaUrlWithSuffixExample')
    MetaUrlWithSuffixExampleKeyString = Shapes::StringShape.new(name: 'MetaUrlWithSuffixExampleKeyString')
    MetaUrlWithSuffixExampleValueString = Shapes::StringShape.new(name: 'MetaUrlWithSuffixExampleValueString')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OtpType = Shapes::StringShape.new(name: 'OtpType')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    PostWhatsAppMessageMediaInput = Shapes::StructureShape.new(name: 'PostWhatsAppMessageMediaInput')
    PostWhatsAppMessageMediaOutput = Shapes::StructureShape.new(name: 'PostWhatsAppMessageMediaOutput')
    PutWhatsAppBusinessAccountEventDestinationsInput = Shapes::StructureShape.new(name: 'PutWhatsAppBusinessAccountEventDestinationsInput')
    PutWhatsAppBusinessAccountEventDestinationsOutput = Shapes::StructureShape.new(name: 'PutWhatsAppBusinessAccountEventDestinationsOutput')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3File = Shapes::StructureShape.new(name: 'S3File')
    S3FileBucketNameString = Shapes::StringShape.new(name: 'S3FileBucketNameString')
    S3FileKeyString = Shapes::StringShape.new(name: 'S3FileKeyString')
    S3PresignedUrl = Shapes::StructureShape.new(name: 'S3PresignedUrl')
    S3PresignedUrlUrlString = Shapes::StringShape.new(name: 'S3PresignedUrlUrlString')
    SendWhatsAppMessageInput = Shapes::StructureShape.new(name: 'SendWhatsAppMessageInput')
    SendWhatsAppMessageOutput = Shapes::StructureShape.new(name: 'SendWhatsAppMessageOutput')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SupportedApp = Shapes::MapShape.new(name: 'SupportedApp')
    SupportedAppKeyString = Shapes::StringShape.new(name: 'SupportedAppKeyString')
    SupportedAppValueString = Shapes::StringShape.new(name: 'SupportedAppValueString')
    SupportedApps = Shapes::ListShape.new(name: 'SupportedApps')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKeyString = Shapes::StringShape.new(name: 'TagKeyString')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValueString = Shapes::StringShape.new(name: 'TagValueString')
    TemplateSummary = Shapes::StructureShape.new(name: 'TemplateSummary')
    TemplateSummaryList = Shapes::ListShape.new(name: 'TemplateSummaryList')
    ThrottledRequestException = Shapes::StructureShape.new(name: 'ThrottledRequestException')
    TwoFactorPin = Shapes::StringShape.new(name: 'TwoFactorPin')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateWhatsAppMessageTemplateInput = Shapes::StructureShape.new(name: 'UpdateWhatsAppMessageTemplateInput')
    UpdateWhatsAppMessageTemplateOutput = Shapes::StructureShape.new(name: 'UpdateWhatsAppMessageTemplateOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WabaPhoneNumberSetupFinalization = Shapes::StructureShape.new(name: 'WabaPhoneNumberSetupFinalization')
    WabaPhoneNumberSetupFinalizationList = Shapes::ListShape.new(name: 'WabaPhoneNumberSetupFinalizationList')
    WabaSetupFinalization = Shapes::StructureShape.new(name: 'WabaSetupFinalization')
    WhatsAppBusinessAccountEventDestination = Shapes::StructureShape.new(name: 'WhatsAppBusinessAccountEventDestination')
    WhatsAppBusinessAccountEventDestinations = Shapes::ListShape.new(name: 'WhatsAppBusinessAccountEventDestinations')
    WhatsAppBusinessAccountId = Shapes::StringShape.new(name: 'WhatsAppBusinessAccountId')
    WhatsAppBusinessAccountLinkDate = Shapes::TimestampShape.new(name: 'WhatsAppBusinessAccountLinkDate')
    WhatsAppBusinessAccountName = Shapes::StringShape.new(name: 'WhatsAppBusinessAccountName')
    WhatsAppDisplayPhoneNumber = Shapes::StringShape.new(name: 'WhatsAppDisplayPhoneNumber')
    WhatsAppMediaId = Shapes::StringShape.new(name: 'WhatsAppMediaId')
    WhatsAppMessageBlob = Shapes::BlobShape.new(name: 'WhatsAppMessageBlob')
    WhatsAppPhoneNumber = Shapes::StringShape.new(name: 'WhatsAppPhoneNumber')
    WhatsAppPhoneNumberDetail = Shapes::StructureShape.new(name: 'WhatsAppPhoneNumberDetail')
    WhatsAppPhoneNumberDetailList = Shapes::ListShape.new(name: 'WhatsAppPhoneNumberDetailList')
    WhatsAppPhoneNumberId = Shapes::StringShape.new(name: 'WhatsAppPhoneNumberId')
    WhatsAppPhoneNumberName = Shapes::StringShape.new(name: 'WhatsAppPhoneNumberName')
    WhatsAppPhoneNumberQualityRating = Shapes::StringShape.new(name: 'WhatsAppPhoneNumberQualityRating')
    WhatsAppPhoneNumberSummary = Shapes::StructureShape.new(name: 'WhatsAppPhoneNumberSummary')
    WhatsAppPhoneNumberSummaryList = Shapes::ListShape.new(name: 'WhatsAppPhoneNumberSummaryList')
    WhatsAppSetupFinalization = Shapes::StructureShape.new(name: 'WhatsAppSetupFinalization')
    WhatsAppSignupCallback = Shapes::StructureShape.new(name: 'WhatsAppSignupCallback')
    WhatsAppSignupCallbackAccessTokenString = Shapes::StringShape.new(name: 'WhatsAppSignupCallbackAccessTokenString')
    WhatsAppSignupCallbackCallbackUrlString = Shapes::StringShape.new(name: 'WhatsAppSignupCallbackCallbackUrlString')
    WhatsAppSignupCallbackResult = Shapes::StructureShape.new(name: 'WhatsAppSignupCallbackResult')
    ZeroTapTermsAccepted = Shapes::BooleanShape.new(name: 'ZeroTapTermsAccepted')

    AccessDeniedByMetaException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedByMetaException.struct_class = Types::AccessDeniedByMetaException

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateWhatsAppBusinessAccountInput.add_member(:signup_callback, Shapes::ShapeRef.new(shape: WhatsAppSignupCallback, location_name: "signupCallback"))
    AssociateWhatsAppBusinessAccountInput.add_member(:setup_finalization, Shapes::ShapeRef.new(shape: WhatsAppSetupFinalization, location_name: "setupFinalization"))
    AssociateWhatsAppBusinessAccountInput.struct_class = Types::AssociateWhatsAppBusinessAccountInput

    AssociateWhatsAppBusinessAccountOutput.add_member(:signup_callback_result, Shapes::ShapeRef.new(shape: WhatsAppSignupCallbackResult, location_name: "signupCallbackResult"))
    AssociateWhatsAppBusinessAccountOutput.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location_name: "statusCode"))
    AssociateWhatsAppBusinessAccountOutput.struct_class = Types::AssociateWhatsAppBusinessAccountOutput

    CreateWhatsAppMessageTemplateFromLibraryInput.add_member(:meta_library_template, Shapes::ShapeRef.new(shape: MetaLibraryTemplate, required: true, location_name: "metaLibraryTemplate"))
    CreateWhatsAppMessageTemplateFromLibraryInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location_name: "id"))
    CreateWhatsAppMessageTemplateFromLibraryInput.struct_class = Types::CreateWhatsAppMessageTemplateFromLibraryInput

    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:meta_template_id, Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: "metaTemplateId"))
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:template_status, Shapes::ShapeRef.new(shape: String, location_name: "templateStatus"))
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:category, Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: "category"))
    CreateWhatsAppMessageTemplateFromLibraryOutput.struct_class = Types::CreateWhatsAppMessageTemplateFromLibraryOutput

    CreateWhatsAppMessageTemplateInput.add_member(:template_definition, Shapes::ShapeRef.new(shape: MetaTemplateDefinition, required: true, location_name: "templateDefinition"))
    CreateWhatsAppMessageTemplateInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location_name: "id"))
    CreateWhatsAppMessageTemplateInput.struct_class = Types::CreateWhatsAppMessageTemplateInput

    CreateWhatsAppMessageTemplateMediaInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location_name: "id"))
    CreateWhatsAppMessageTemplateMediaInput.add_member(:source_s3_file, Shapes::ShapeRef.new(shape: S3File, location_name: "sourceS3File"))
    CreateWhatsAppMessageTemplateMediaInput.struct_class = Types::CreateWhatsAppMessageTemplateMediaInput

    CreateWhatsAppMessageTemplateMediaOutput.add_member(:meta_header_handle, Shapes::ShapeRef.new(shape: String, location_name: "metaHeaderHandle"))
    CreateWhatsAppMessageTemplateMediaOutput.struct_class = Types::CreateWhatsAppMessageTemplateMediaOutput

    CreateWhatsAppMessageTemplateOutput.add_member(:meta_template_id, Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: "metaTemplateId"))
    CreateWhatsAppMessageTemplateOutput.add_member(:template_status, Shapes::ShapeRef.new(shape: String, location_name: "templateStatus"))
    CreateWhatsAppMessageTemplateOutput.add_member(:category, Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: "category"))
    CreateWhatsAppMessageTemplateOutput.struct_class = Types::CreateWhatsAppMessageTemplateOutput

    DeleteWhatsAppMessageMediaInput.add_member(:media_id, Shapes::ShapeRef.new(shape: WhatsAppMediaId, required: true, location: "querystring", location_name: "mediaId"))
    DeleteWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, required: true, location: "querystring", location_name: "originationPhoneNumberId"))
    DeleteWhatsAppMessageMediaInput.struct_class = Types::DeleteWhatsAppMessageMediaInput

    DeleteWhatsAppMessageMediaOutput.add_member(:success, Shapes::ShapeRef.new(shape: Boolean, location_name: "success"))
    DeleteWhatsAppMessageMediaOutput.struct_class = Types::DeleteWhatsAppMessageMediaOutput

    DeleteWhatsAppMessageTemplateInput.add_member(:meta_template_id, Shapes::ShapeRef.new(shape: MetaTemplateId, location: "querystring", location_name: "metaTemplateId"))
    DeleteWhatsAppMessageTemplateInput.add_member(:delete_all_languages, Shapes::ShapeRef.new(shape: DeleteAllLanguages, location: "querystring", location_name: "deleteAllTemplates"))
    DeleteWhatsAppMessageTemplateInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location: "querystring", location_name: "id"))
    DeleteWhatsAppMessageTemplateInput.add_member(:template_name, Shapes::ShapeRef.new(shape: MetaTemplateName, required: true, location: "querystring", location_name: "templateName"))
    DeleteWhatsAppMessageTemplateInput.struct_class = Types::DeleteWhatsAppMessageTemplateInput

    DeleteWhatsAppMessageTemplateOutput.struct_class = Types::DeleteWhatsAppMessageTemplateOutput

    DependencyException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DependencyException.struct_class = Types::DependencyException

    DisassociateWhatsAppBusinessAccountInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location: "querystring", location_name: "id"))
    DisassociateWhatsAppBusinessAccountInput.struct_class = Types::DisassociateWhatsAppBusinessAccountInput

    DisassociateWhatsAppBusinessAccountOutput.struct_class = Types::DisassociateWhatsAppBusinessAccountOutput

    Filter.key = Shapes::ShapeRef.new(shape: FilterKeyString)
    Filter.value = Shapes::ShapeRef.new(shape: FilterValueString)

    GetLinkedWhatsAppBusinessAccountInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location: "querystring", location_name: "id"))
    GetLinkedWhatsAppBusinessAccountInput.struct_class = Types::GetLinkedWhatsAppBusinessAccountInput

    GetLinkedWhatsAppBusinessAccountOutput.add_member(:account, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccount, location_name: "account"))
    GetLinkedWhatsAppBusinessAccountOutput.struct_class = Types::GetLinkedWhatsAppBusinessAccountOutput

    GetLinkedWhatsAppBusinessAccountPhoneNumberInput.add_member(:id, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, required: true, location: "querystring", location_name: "id"))
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput.struct_class = Types::GetLinkedWhatsAppBusinessAccountPhoneNumberInput

    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.add_member(:phone_number, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberDetail, location_name: "phoneNumber"))
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.add_member(:linked_whats_app_business_account_id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: "linkedWhatsAppBusinessAccountId"))
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.struct_class = Types::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput

    GetWhatsAppMessageMediaInput.add_member(:media_id, Shapes::ShapeRef.new(shape: WhatsAppMediaId, required: true, location_name: "mediaId"))
    GetWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, required: true, location_name: "originationPhoneNumberId"))
    GetWhatsAppMessageMediaInput.add_member(:metadata_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "metadataOnly"))
    GetWhatsAppMessageMediaInput.add_member(:destination_s3_presigned_url, Shapes::ShapeRef.new(shape: S3PresignedUrl, location_name: "destinationS3PresignedUrl"))
    GetWhatsAppMessageMediaInput.add_member(:destination_s3_file, Shapes::ShapeRef.new(shape: S3File, location_name: "destinationS3File"))
    GetWhatsAppMessageMediaInput.struct_class = Types::GetWhatsAppMessageMediaInput

    GetWhatsAppMessageMediaOutput.add_member(:mime_type, Shapes::ShapeRef.new(shape: String, location_name: "mimeType"))
    GetWhatsAppMessageMediaOutput.add_member(:file_size, Shapes::ShapeRef.new(shape: Long, location_name: "fileSize"))
    GetWhatsAppMessageMediaOutput.struct_class = Types::GetWhatsAppMessageMediaOutput

    GetWhatsAppMessageTemplateInput.add_member(:meta_template_id, Shapes::ShapeRef.new(shape: MetaTemplateId, required: true, location: "querystring", location_name: "metaTemplateId"))
    GetWhatsAppMessageTemplateInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location: "querystring", location_name: "id"))
    GetWhatsAppMessageTemplateInput.struct_class = Types::GetWhatsAppMessageTemplateInput

    GetWhatsAppMessageTemplateOutput.add_member(:template, Shapes::ShapeRef.new(shape: MetaTemplate, location_name: "template"))
    GetWhatsAppMessageTemplateOutput.struct_class = Types::GetWhatsAppMessageTemplateOutput

    Headers.key = Shapes::ShapeRef.new(shape: String)
    Headers.value = Shapes::ShapeRef.new(shape: String)

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    InvalidParametersException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidParametersException.struct_class = Types::InvalidParametersException

    LibraryTemplateBodyInputs.add_member(:add_contact_number, Shapes::ShapeRef.new(shape: AddContactNumber, location_name: "addContactNumber"))
    LibraryTemplateBodyInputs.add_member(:add_learn_more_link, Shapes::ShapeRef.new(shape: AddLearnMoreLink, location_name: "addLearnMoreLink"))
    LibraryTemplateBodyInputs.add_member(:add_security_recommendation, Shapes::ShapeRef.new(shape: AddSecurityRecommendation, location_name: "addSecurityRecommendation"))
    LibraryTemplateBodyInputs.add_member(:add_track_package_link, Shapes::ShapeRef.new(shape: AddTrackPackageLink, location_name: "addTrackPackageLink"))
    LibraryTemplateBodyInputs.add_member(:code_expiration_minutes, Shapes::ShapeRef.new(shape: CodeExpirationMinutes, location_name: "codeExpirationMinutes"))
    LibraryTemplateBodyInputs.struct_class = Types::LibraryTemplateBodyInputs

    LibraryTemplateButtonInput.add_member(:type, Shapes::ShapeRef.new(shape: ButtonType, location_name: "type"))
    LibraryTemplateButtonInput.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "phoneNumber"))
    LibraryTemplateButtonInput.add_member(:url, Shapes::ShapeRef.new(shape: MetaUrlWithSuffixExample, location_name: "url"))
    LibraryTemplateButtonInput.add_member(:otp_type, Shapes::ShapeRef.new(shape: OtpType, location_name: "otpType"))
    LibraryTemplateButtonInput.add_member(:zero_tap_terms_accepted, Shapes::ShapeRef.new(shape: ZeroTapTermsAccepted, location_name: "zeroTapTermsAccepted"))
    LibraryTemplateButtonInput.add_member(:supported_apps, Shapes::ShapeRef.new(shape: SupportedApps, location_name: "supportedApps"))
    LibraryTemplateButtonInput.struct_class = Types::LibraryTemplateButtonInput

    LibraryTemplateButtonList.add_member(:type, Shapes::ShapeRef.new(shape: ButtonType, location_name: "type"))
    LibraryTemplateButtonList.add_member(:text, Shapes::ShapeRef.new(shape: MetaText, location_name: "text"))
    LibraryTemplateButtonList.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "phoneNumber"))
    LibraryTemplateButtonList.add_member(:url, Shapes::ShapeRef.new(shape: MetaUrl, location_name: "url"))
    LibraryTemplateButtonList.add_member(:otp_type, Shapes::ShapeRef.new(shape: OtpType, location_name: "otpType"))
    LibraryTemplateButtonList.add_member(:zero_tap_terms_accepted, Shapes::ShapeRef.new(shape: ZeroTapTermsAccepted, location_name: "zeroTapTermsAccepted"))
    LibraryTemplateButtonList.add_member(:supported_apps, Shapes::ShapeRef.new(shape: SupportedApps, location_name: "supportedApps"))
    LibraryTemplateButtonList.struct_class = Types::LibraryTemplateButtonList

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    LinkedAccountWithIncompleteSetup.key = Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountId)
    LinkedAccountWithIncompleteSetup.value = Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountIdMetaData)

    LinkedWhatsAppBusinessAccount.add_member(:arn, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountArn, required: true, location_name: "arn"))
    LinkedWhatsAppBusinessAccount.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location_name: "id"))
    LinkedWhatsAppBusinessAccount.add_member(:waba_id, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountId, required: true, location_name: "wabaId"))
    LinkedWhatsAppBusinessAccount.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "registrationStatus"))
    LinkedWhatsAppBusinessAccount.add_member(:link_date, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountLinkDate, required: true, location_name: "linkDate"))
    LinkedWhatsAppBusinessAccount.add_member(:waba_name, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountName, required: true, location_name: "wabaName"))
    LinkedWhatsAppBusinessAccount.add_member(:event_destinations, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountEventDestinations, required: true, location_name: "eventDestinations"))
    LinkedWhatsAppBusinessAccount.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberSummaryList, required: true, location_name: "phoneNumbers"))
    LinkedWhatsAppBusinessAccount.struct_class = Types::LinkedWhatsAppBusinessAccount

    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:account_name, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountName, location_name: "accountName"))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: "registrationStatus"))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:unregistered_whats_app_phone_numbers, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberDetailList, location_name: "unregisteredWhatsAppPhoneNumbers"))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:waba_id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: "wabaId"))
    LinkedWhatsAppBusinessAccountIdMetaData.struct_class = Types::LinkedWhatsAppBusinessAccountIdMetaData

    LinkedWhatsAppBusinessAccountSummary.add_member(:arn, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountArn, required: true, location_name: "arn"))
    LinkedWhatsAppBusinessAccountSummary.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location_name: "id"))
    LinkedWhatsAppBusinessAccountSummary.add_member(:waba_id, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountId, required: true, location_name: "wabaId"))
    LinkedWhatsAppBusinessAccountSummary.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "registrationStatus"))
    LinkedWhatsAppBusinessAccountSummary.add_member(:link_date, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountLinkDate, required: true, location_name: "linkDate"))
    LinkedWhatsAppBusinessAccountSummary.add_member(:waba_name, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountName, required: true, location_name: "wabaName"))
    LinkedWhatsAppBusinessAccountSummary.add_member(:event_destinations, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountEventDestinations, required: true, location_name: "eventDestinations"))
    LinkedWhatsAppBusinessAccountSummary.struct_class = Types::LinkedWhatsAppBusinessAccountSummary

    LinkedWhatsAppBusinessAccountSummaryList.member = Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountSummary)

    ListLinkedWhatsAppBusinessAccountsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListLinkedWhatsAppBusinessAccountsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListLinkedWhatsAppBusinessAccountsInput.struct_class = Types::ListLinkedWhatsAppBusinessAccountsInput

    ListLinkedWhatsAppBusinessAccountsOutput.add_member(:linked_accounts, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountSummaryList, location_name: "linkedAccounts"))
    ListLinkedWhatsAppBusinessAccountsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLinkedWhatsAppBusinessAccountsOutput.struct_class = Types::ListLinkedWhatsAppBusinessAccountsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location_name: "statusCode"))
    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListWhatsAppMessageTemplatesInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location: "querystring", location_name: "id"))
    ListWhatsAppMessageTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWhatsAppMessageTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWhatsAppMessageTemplatesInput.struct_class = Types::ListWhatsAppMessageTemplatesInput

    ListWhatsAppMessageTemplatesOutput.add_member(:templates, Shapes::ShapeRef.new(shape: TemplateSummaryList, location_name: "templates"))
    ListWhatsAppMessageTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWhatsAppMessageTemplatesOutput.struct_class = Types::ListWhatsAppMessageTemplatesOutput

    ListWhatsAppTemplateLibraryInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWhatsAppTemplateLibraryInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListWhatsAppTemplateLibraryInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location: "querystring", location_name: "id"))
    ListWhatsAppTemplateLibraryInput.add_member(:filters, Shapes::ShapeRef.new(shape: Filter, location_name: "filters"))
    ListWhatsAppTemplateLibraryInput.struct_class = Types::ListWhatsAppTemplateLibraryInput

    ListWhatsAppTemplateLibraryOutput.add_member(:meta_library_templates, Shapes::ShapeRef.new(shape: MetaLibraryTemplatesList, location_name: "metaLibraryTemplates"))
    ListWhatsAppTemplateLibraryOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWhatsAppTemplateLibraryOutput.struct_class = Types::ListWhatsAppTemplateLibraryOutput

    MetaIndustries.member = Shapes::ShapeRef.new(shape: MetaIndustry)

    MetaLibraryTemplate.add_member(:template_name, Shapes::ShapeRef.new(shape: MetaTemplateName, required: true, location_name: "templateName"))
    MetaLibraryTemplate.add_member(:library_template_name, Shapes::ShapeRef.new(shape: MetaTemplateName, required: true, location_name: "libraryTemplateName"))
    MetaLibraryTemplate.add_member(:template_category, Shapes::ShapeRef.new(shape: MetaTemplateCategory, required: true, location_name: "templateCategory"))
    MetaLibraryTemplate.add_member(:template_language, Shapes::ShapeRef.new(shape: MetaTemplateLanguage, required: true, location_name: "templateLanguage"))
    MetaLibraryTemplate.add_member(:library_template_button_inputs, Shapes::ShapeRef.new(shape: MetaLibraryTemplateButtonInputs, location_name: "libraryTemplateButtonInputs"))
    MetaLibraryTemplate.add_member(:library_template_body_inputs, Shapes::ShapeRef.new(shape: LibraryTemplateBodyInputs, location_name: "libraryTemplateBodyInputs"))
    MetaLibraryTemplate.struct_class = Types::MetaLibraryTemplate

    MetaLibraryTemplateButtonInputs.member = Shapes::ShapeRef.new(shape: LibraryTemplateButtonInput)

    MetaLibraryTemplateButtonList.member = Shapes::ShapeRef.new(shape: LibraryTemplateButtonList)

    MetaLibraryTemplateDefinition.add_member(:template_name, Shapes::ShapeRef.new(shape: MetaTemplateName, location_name: "templateName"))
    MetaLibraryTemplateDefinition.add_member(:template_language, Shapes::ShapeRef.new(shape: MetaTemplateLanguage, location_name: "templateLanguage"))
    MetaLibraryTemplateDefinition.add_member(:template_category, Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: "templateCategory"))
    MetaLibraryTemplateDefinition.add_member(:template_topic, Shapes::ShapeRef.new(shape: MetaTemplateTopic, location_name: "templateTopic"))
    MetaLibraryTemplateDefinition.add_member(:template_use_case, Shapes::ShapeRef.new(shape: MetaTemplateUseCase, location_name: "templateUseCase"))
    MetaLibraryTemplateDefinition.add_member(:template_industry, Shapes::ShapeRef.new(shape: MetaIndustries, location_name: "templateIndustry"))
    MetaLibraryTemplateDefinition.add_member(:template_header, Shapes::ShapeRef.new(shape: MetaTemplateHeader, location_name: "templateHeader"))
    MetaLibraryTemplateDefinition.add_member(:template_body, Shapes::ShapeRef.new(shape: MetaTemplateBody, location_name: "templateBody"))
    MetaLibraryTemplateDefinition.add_member(:template_buttons, Shapes::ShapeRef.new(shape: MetaLibraryTemplateButtonList, location_name: "templateButtons"))
    MetaLibraryTemplateDefinition.add_member(:template_id, Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: "templateId"))
    MetaLibraryTemplateDefinition.struct_class = Types::MetaLibraryTemplateDefinition

    MetaLibraryTemplatesList.member = Shapes::ShapeRef.new(shape: MetaLibraryTemplateDefinition)

    MetaUrlWithSuffixExample.key = Shapes::ShapeRef.new(shape: MetaUrlWithSuffixExampleKeyString)
    MetaUrlWithSuffixExample.value = Shapes::ShapeRef.new(shape: MetaUrlWithSuffixExampleValueString)

    PostWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, required: true, location_name: "originationPhoneNumberId"))
    PostWhatsAppMessageMediaInput.add_member(:source_s3_presigned_url, Shapes::ShapeRef.new(shape: S3PresignedUrl, location_name: "sourceS3PresignedUrl"))
    PostWhatsAppMessageMediaInput.add_member(:source_s3_file, Shapes::ShapeRef.new(shape: S3File, location_name: "sourceS3File"))
    PostWhatsAppMessageMediaInput.struct_class = Types::PostWhatsAppMessageMediaInput

    PostWhatsAppMessageMediaOutput.add_member(:media_id, Shapes::ShapeRef.new(shape: WhatsAppMediaId, location_name: "mediaId"))
    PostWhatsAppMessageMediaOutput.struct_class = Types::PostWhatsAppMessageMediaOutput

    PutWhatsAppBusinessAccountEventDestinationsInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location_name: "id"))
    PutWhatsAppBusinessAccountEventDestinationsInput.add_member(:event_destinations, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountEventDestinations, required: true, location_name: "eventDestinations"))
    PutWhatsAppBusinessAccountEventDestinationsInput.struct_class = Types::PutWhatsAppBusinessAccountEventDestinationsInput

    PutWhatsAppBusinessAccountEventDestinationsOutput.struct_class = Types::PutWhatsAppBusinessAccountEventDestinationsOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3File.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3FileBucketNameString, required: true, location_name: "bucketName"))
    S3File.add_member(:key, Shapes::ShapeRef.new(shape: S3FileKeyString, required: true, location_name: "key"))
    S3File.struct_class = Types::S3File

    S3PresignedUrl.add_member(:url, Shapes::ShapeRef.new(shape: S3PresignedUrlUrlString, required: true, location_name: "url"))
    S3PresignedUrl.add_member(:headers, Shapes::ShapeRef.new(shape: Headers, required: true, location_name: "headers"))
    S3PresignedUrl.struct_class = Types::S3PresignedUrl

    SendWhatsAppMessageInput.add_member(:origination_phone_number_id, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, required: true, location_name: "originationPhoneNumberId"))
    SendWhatsAppMessageInput.add_member(:message, Shapes::ShapeRef.new(shape: WhatsAppMessageBlob, required: true, location_name: "message"))
    SendWhatsAppMessageInput.add_member(:meta_api_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "metaApiVersion"))
    SendWhatsAppMessageInput.struct_class = Types::SendWhatsAppMessageInput

    SendWhatsAppMessageOutput.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "messageId"))
    SendWhatsAppMessageOutput.struct_class = Types::SendWhatsAppMessageOutput

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SupportedApp.key = Shapes::ShapeRef.new(shape: SupportedAppKeyString)
    SupportedApp.value = Shapes::ShapeRef.new(shape: SupportedAppValueString)

    SupportedApps.member = Shapes::ShapeRef.new(shape: SupportedApp)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKeyString, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValueString, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location_name: "statusCode"))
    TagResourceOutput.struct_class = Types::TagResourceOutput

    TemplateSummary.add_member(:template_name, Shapes::ShapeRef.new(shape: MetaTemplateName, location_name: "templateName"))
    TemplateSummary.add_member(:meta_template_id, Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: "metaTemplateId"))
    TemplateSummary.add_member(:template_status, Shapes::ShapeRef.new(shape: MetaTemplateStatus, location_name: "templateStatus"))
    TemplateSummary.add_member(:template_quality_score, Shapes::ShapeRef.new(shape: MetaTemplateQualityScore, location_name: "templateQualityScore"))
    TemplateSummary.add_member(:template_language, Shapes::ShapeRef.new(shape: MetaTemplateLanguage, location_name: "templateLanguage"))
    TemplateSummary.add_member(:template_category, Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: "templateCategory"))
    TemplateSummary.struct_class = Types::TemplateSummary

    TemplateSummaryList.member = Shapes::ShapeRef.new(shape: TemplateSummary)

    ThrottledRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottledRequestException.struct_class = Types::ThrottledRequestException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location_name: "statusCode"))
    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateWhatsAppMessageTemplateInput.add_member(:id, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, required: true, location_name: "id"))
    UpdateWhatsAppMessageTemplateInput.add_member(:meta_template_id, Shapes::ShapeRef.new(shape: MetaTemplateId, required: true, location_name: "metaTemplateId"))
    UpdateWhatsAppMessageTemplateInput.add_member(:template_category, Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: "templateCategory"))
    UpdateWhatsAppMessageTemplateInput.add_member(:template_components, Shapes::ShapeRef.new(shape: MetaTemplateComponents, location_name: "templateComponents"))
    UpdateWhatsAppMessageTemplateInput.struct_class = Types::UpdateWhatsAppMessageTemplateInput

    UpdateWhatsAppMessageTemplateOutput.struct_class = Types::UpdateWhatsAppMessageTemplateOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WabaPhoneNumberSetupFinalization.add_member(:id, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumber, required: true, location_name: "id"))
    WabaPhoneNumberSetupFinalization.add_member(:two_factor_pin, Shapes::ShapeRef.new(shape: TwoFactorPin, required: true, location_name: "twoFactorPin"))
    WabaPhoneNumberSetupFinalization.add_member(:data_localization_region, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "dataLocalizationRegion"))
    WabaPhoneNumberSetupFinalization.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    WabaPhoneNumberSetupFinalization.struct_class = Types::WabaPhoneNumberSetupFinalization

    WabaPhoneNumberSetupFinalizationList.member = Shapes::ShapeRef.new(shape: WabaPhoneNumberSetupFinalization)

    WabaSetupFinalization.add_member(:id, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountId, location_name: "id"))
    WabaSetupFinalization.add_member(:event_destinations, Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountEventDestinations, location_name: "eventDestinations"))
    WabaSetupFinalization.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    WabaSetupFinalization.struct_class = Types::WabaSetupFinalization

    WhatsAppBusinessAccountEventDestination.add_member(:event_destination_arn, Shapes::ShapeRef.new(shape: EventDestinationArn, required: true, location_name: "eventDestinationArn"))
    WhatsAppBusinessAccountEventDestination.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    WhatsAppBusinessAccountEventDestination.struct_class = Types::WhatsAppBusinessAccountEventDestination

    WhatsAppBusinessAccountEventDestinations.member = Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountEventDestination)

    WhatsAppPhoneNumberDetail.add_member(:arn, Shapes::ShapeRef.new(shape: LinkedWhatsAppPhoneNumberArn, required: true, location_name: "arn"))
    WhatsAppPhoneNumberDetail.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "phoneNumber"))
    WhatsAppPhoneNumberDetail.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, required: true, location_name: "phoneNumberId"))
    WhatsAppPhoneNumberDetail.add_member(:meta_phone_number_id, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumber, required: true, location_name: "metaPhoneNumberId"))
    WhatsAppPhoneNumberDetail.add_member(:display_phone_number_name, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberName, required: true, location_name: "displayPhoneNumberName"))
    WhatsAppPhoneNumberDetail.add_member(:display_phone_number, Shapes::ShapeRef.new(shape: WhatsAppDisplayPhoneNumber, required: true, location_name: "displayPhoneNumber"))
    WhatsAppPhoneNumberDetail.add_member(:quality_rating, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberQualityRating, required: true, location_name: "qualityRating"))
    WhatsAppPhoneNumberDetail.add_member(:data_localization_region, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "dataLocalizationRegion"))
    WhatsAppPhoneNumberDetail.struct_class = Types::WhatsAppPhoneNumberDetail

    WhatsAppPhoneNumberDetailList.member = Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberDetail)

    WhatsAppPhoneNumberSummary.add_member(:arn, Shapes::ShapeRef.new(shape: LinkedWhatsAppPhoneNumberArn, required: true, location_name: "arn"))
    WhatsAppPhoneNumberSummary.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "phoneNumber"))
    WhatsAppPhoneNumberSummary.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, required: true, location_name: "phoneNumberId"))
    WhatsAppPhoneNumberSummary.add_member(:meta_phone_number_id, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumber, required: true, location_name: "metaPhoneNumberId"))
    WhatsAppPhoneNumberSummary.add_member(:display_phone_number_name, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberName, required: true, location_name: "displayPhoneNumberName"))
    WhatsAppPhoneNumberSummary.add_member(:display_phone_number, Shapes::ShapeRef.new(shape: WhatsAppDisplayPhoneNumber, required: true, location_name: "displayPhoneNumber"))
    WhatsAppPhoneNumberSummary.add_member(:quality_rating, Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberQualityRating, required: true, location_name: "qualityRating"))
    WhatsAppPhoneNumberSummary.add_member(:data_localization_region, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "dataLocalizationRegion"))
    WhatsAppPhoneNumberSummary.struct_class = Types::WhatsAppPhoneNumberSummary

    WhatsAppPhoneNumberSummaryList.member = Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberSummary)

    WhatsAppSetupFinalization.add_member(:associate_in_progress_token, Shapes::ShapeRef.new(shape: AssociateInProgressToken, required: true, location_name: "associateInProgressToken"))
    WhatsAppSetupFinalization.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: WabaPhoneNumberSetupFinalizationList, required: true, location_name: "phoneNumbers"))
    WhatsAppSetupFinalization.add_member(:phone_number_parent, Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: "phoneNumberParent"))
    WhatsAppSetupFinalization.add_member(:waba, Shapes::ShapeRef.new(shape: WabaSetupFinalization, location_name: "waba"))
    WhatsAppSetupFinalization.struct_class = Types::WhatsAppSetupFinalization

    WhatsAppSignupCallback.add_member(:access_token, Shapes::ShapeRef.new(shape: WhatsAppSignupCallbackAccessTokenString, required: true, location_name: "accessToken"))
    WhatsAppSignupCallback.add_member(:callback_url, Shapes::ShapeRef.new(shape: WhatsAppSignupCallbackCallbackUrlString, location_name: "callbackUrl"))
    WhatsAppSignupCallback.struct_class = Types::WhatsAppSignupCallback

    WhatsAppSignupCallbackResult.add_member(:associate_in_progress_token, Shapes::ShapeRef.new(shape: AssociateInProgressToken, location_name: "associateInProgressToken"))
    WhatsAppSignupCallbackResult.add_member(:linked_accounts_with_incomplete_setup, Shapes::ShapeRef.new(shape: LinkedAccountWithIncompleteSetup, location_name: "linkedAccountsWithIncompleteSetup"))
    WhatsAppSignupCallbackResult.struct_class = Types::WhatsAppSignupCallbackResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-01-01"

      api.metadata = {
        "apiVersion" => "2024-01-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "social-messaging",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS End User Messaging Social",
        "serviceId" => "SocialMessaging",
        "signatureVersion" => "v4",
        "signingName" => "social-messaging",
        "uid" => "socialmessaging-2024-01-01",
      }

      api.add_operation(:associate_whats_app_business_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateWhatsAppBusinessAccount"
        o.http_method = "POST"
        o.http_request_uri = "/v1/whatsapp/signup"
        o.input = Shapes::ShapeRef.new(shape: AssociateWhatsAppBusinessAccountInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateWhatsAppBusinessAccountOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:create_whats_app_message_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWhatsAppMessageTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/v1/whatsapp/template/put"
        o.input = Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:create_whats_app_message_template_from_library, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWhatsAppMessageTemplateFromLibrary"
        o.http_method = "POST"
        o.http_request_uri = "/v1/whatsapp/template/create"
        o.input = Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateFromLibraryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateFromLibraryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:create_whats_app_message_template_media, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWhatsAppMessageTemplateMedia"
        o.http_method = "POST"
        o.http_request_uri = "/v1/whatsapp/template/media"
        o.input = Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateMediaInput)
        o.output = Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateMediaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:delete_whats_app_message_media, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWhatsAppMessageMedia"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/whatsapp/media"
        o.input = Shapes::ShapeRef.new(shape: DeleteWhatsAppMessageMediaInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteWhatsAppMessageMediaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedByMetaException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:delete_whats_app_message_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWhatsAppMessageTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/whatsapp/template"
        o.input = Shapes::ShapeRef.new(shape: DeleteWhatsAppMessageTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteWhatsAppMessageTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:disassociate_whats_app_business_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateWhatsAppBusinessAccount"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/whatsapp/waba/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateWhatsAppBusinessAccountInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateWhatsAppBusinessAccountOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:get_linked_whats_app_business_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLinkedWhatsAppBusinessAccount"
        o.http_method = "GET"
        o.http_request_uri = "/v1/whatsapp/waba/details"
        o.input = Shapes::ShapeRef.new(shape: GetLinkedWhatsAppBusinessAccountInput)
        o.output = Shapes::ShapeRef.new(shape: GetLinkedWhatsAppBusinessAccountOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:get_linked_whats_app_business_account_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLinkedWhatsAppBusinessAccountPhoneNumber"
        o.http_method = "GET"
        o.http_request_uri = "/v1/whatsapp/waba/phone/details"
        o.input = Shapes::ShapeRef.new(shape: GetLinkedWhatsAppBusinessAccountPhoneNumberInput)
        o.output = Shapes::ShapeRef.new(shape: GetLinkedWhatsAppBusinessAccountPhoneNumberOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:get_whats_app_message_media, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWhatsAppMessageMedia"
        o.http_method = "POST"
        o.http_request_uri = "/v1/whatsapp/media/get"
        o.input = Shapes::ShapeRef.new(shape: GetWhatsAppMessageMediaInput)
        o.output = Shapes::ShapeRef.new(shape: GetWhatsAppMessageMediaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedByMetaException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:get_whats_app_message_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWhatsAppMessageTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/v1/whatsapp/template"
        o.input = Shapes::ShapeRef.new(shape: GetWhatsAppMessageTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetWhatsAppMessageTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:list_linked_whats_app_business_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLinkedWhatsAppBusinessAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/v1/whatsapp/waba/list"
        o.input = Shapes::ShapeRef.new(shape: ListLinkedWhatsAppBusinessAccountsInput)
        o.output = Shapes::ShapeRef.new(shape: ListLinkedWhatsAppBusinessAccountsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/v1/tags/list"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:list_whats_app_message_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWhatsAppMessageTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/v1/whatsapp/template/list"
        o.input = Shapes::ShapeRef.new(shape: ListWhatsAppMessageTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListWhatsAppMessageTemplatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_whats_app_template_library, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWhatsAppTemplateLibrary"
        o.http_method = "POST"
        o.http_request_uri = "/v1/whatsapp/template/library"
        o.input = Shapes::ShapeRef.new(shape: ListWhatsAppTemplateLibraryInput)
        o.output = Shapes::ShapeRef.new(shape: ListWhatsAppTemplateLibraryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:post_whats_app_message_media, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostWhatsAppMessageMedia"
        o.http_method = "POST"
        o.http_request_uri = "/v1/whatsapp/media"
        o.input = Shapes::ShapeRef.new(shape: PostWhatsAppMessageMediaInput)
        o.output = Shapes::ShapeRef.new(shape: PostWhatsAppMessageMediaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedByMetaException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:put_whats_app_business_account_event_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutWhatsAppBusinessAccountEventDestinations"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/whatsapp/waba/eventdestinations"
        o.input = Shapes::ShapeRef.new(shape: PutWhatsAppBusinessAccountEventDestinationsInput)
        o.output = Shapes::ShapeRef.new(shape: PutWhatsAppBusinessAccountEventDestinationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:send_whats_app_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendWhatsAppMessage"
        o.http_method = "POST"
        o.http_request_uri = "/v1/whatsapp/send"
        o.input = Shapes::ShapeRef.new(shape: SendWhatsAppMessageInput)
        o.output = Shapes::ShapeRef.new(shape: SendWhatsAppMessageOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/tag-resource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/untag-resource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_whats_app_message_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWhatsAppMessageTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/v1/whatsapp/template"
        o.input = Shapes::ShapeRef.new(shape: UpdateWhatsAppMessageTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateWhatsAppMessageTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
      end)
    end

  end
end
