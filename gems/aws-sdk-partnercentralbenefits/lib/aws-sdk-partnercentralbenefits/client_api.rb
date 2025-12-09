# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PartnerCentralBenefits
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDetails = Shapes::StructureShape.new(name: 'AccessDetails')
    AmendBenefitApplicationInput = Shapes::StructureShape.new(name: 'AmendBenefitApplicationInput')
    AmendBenefitApplicationInputAmendmentReasonString = Shapes::StringShape.new(name: 'AmendBenefitApplicationInputAmendmentReasonString')
    AmendBenefitApplicationInputClientTokenString = Shapes::StringShape.new(name: 'AmendBenefitApplicationInputClientTokenString')
    AmendBenefitApplicationOutput = Shapes::StructureShape.new(name: 'AmendBenefitApplicationOutput')
    Amendment = Shapes::StructureShape.new(name: 'Amendment')
    AmendmentList = Shapes::ListShape.new(name: 'AmendmentList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Arns = Shapes::ListShape.new(name: 'Arns')
    AssociateBenefitApplicationResourceInput = Shapes::StructureShape.new(name: 'AssociateBenefitApplicationResourceInput')
    AssociateBenefitApplicationResourceInputResourceArnString = Shapes::StringShape.new(name: 'AssociateBenefitApplicationResourceInputResourceArnString')
    AssociateBenefitApplicationResourceOutput = Shapes::StructureShape.new(name: 'AssociateBenefitApplicationResourceOutput')
    AssociatedResource = Shapes::StructureShape.new(name: 'AssociatedResource')
    AssociatedResources = Shapes::ListShape.new(name: 'AssociatedResources')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    BenefitAllocationArn = Shapes::StringShape.new(name: 'BenefitAllocationArn')
    BenefitAllocationId = Shapes::StringShape.new(name: 'BenefitAllocationId')
    BenefitAllocationIdentifier = Shapes::StringShape.new(name: 'BenefitAllocationIdentifier')
    BenefitAllocationName = Shapes::StringShape.new(name: 'BenefitAllocationName')
    BenefitAllocationStatus = Shapes::StringShape.new(name: 'BenefitAllocationStatus')
    BenefitAllocationSummaries = Shapes::ListShape.new(name: 'BenefitAllocationSummaries')
    BenefitAllocationSummary = Shapes::StructureShape.new(name: 'BenefitAllocationSummary')
    BenefitApplicationDescription = Shapes::StringShape.new(name: 'BenefitApplicationDescription')
    BenefitApplicationId = Shapes::StringShape.new(name: 'BenefitApplicationId')
    BenefitApplicationIdentifier = Shapes::StringShape.new(name: 'BenefitApplicationIdentifier')
    BenefitApplicationName = Shapes::StringShape.new(name: 'BenefitApplicationName')
    BenefitApplicationStage = Shapes::StringShape.new(name: 'BenefitApplicationStage')
    BenefitApplicationStatus = Shapes::StringShape.new(name: 'BenefitApplicationStatus')
    BenefitApplicationSummaries = Shapes::ListShape.new(name: 'BenefitApplicationSummaries')
    BenefitApplicationSummary = Shapes::StructureShape.new(name: 'BenefitApplicationSummary')
    BenefitId = Shapes::StringShape.new(name: 'BenefitId')
    BenefitIdentifiers = Shapes::ListShape.new(name: 'BenefitIdentifiers')
    BenefitIds = Shapes::ListShape.new(name: 'BenefitIds')
    BenefitStatus = Shapes::StringShape.new(name: 'BenefitStatus')
    BenefitSummaries = Shapes::ListShape.new(name: 'BenefitSummaries')
    BenefitSummary = Shapes::StructureShape.new(name: 'BenefitSummary')
    BenefitSummaryDescriptionString = Shapes::StringShape.new(name: 'BenefitSummaryDescriptionString')
    BenefitSummaryIdString = Shapes::StringShape.new(name: 'BenefitSummaryIdString')
    BenefitSummaryNameString = Shapes::StringShape.new(name: 'BenefitSummaryNameString')
    CancelBenefitApplicationInput = Shapes::StructureShape.new(name: 'CancelBenefitApplicationInput')
    CancelBenefitApplicationInputClientTokenString = Shapes::StringShape.new(name: 'CancelBenefitApplicationInputClientTokenString')
    CancelBenefitApplicationInputReasonString = Shapes::StringShape.new(name: 'CancelBenefitApplicationInputReasonString')
    CancelBenefitApplicationOutput = Shapes::StructureShape.new(name: 'CancelBenefitApplicationOutput')
    CatalogName = Shapes::StringShape.new(name: 'CatalogName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConsumableDetails = Shapes::StructureShape.new(name: 'ConsumableDetails')
    Contact = Shapes::StructureShape.new(name: 'Contact')
    ContactBusinessTitleString = Shapes::StringShape.new(name: 'ContactBusinessTitleString')
    ContactEmail = Shapes::StringShape.new(name: 'ContactEmail')
    ContactFirstName = Shapes::StringShape.new(name: 'ContactFirstName')
    ContactLastName = Shapes::StringShape.new(name: 'ContactLastName')
    ContactPhone = Shapes::StringShape.new(name: 'ContactPhone')
    Contacts = Shapes::ListShape.new(name: 'Contacts')
    CreateBenefitApplicationInput = Shapes::StructureShape.new(name: 'CreateBenefitApplicationInput')
    CreateBenefitApplicationInputAssociatedResourcesList = Shapes::ListShape.new(name: 'CreateBenefitApplicationInputAssociatedResourcesList')
    CreateBenefitApplicationInputBenefitIdentifierString = Shapes::StringShape.new(name: 'CreateBenefitApplicationInputBenefitIdentifierString')
    CreateBenefitApplicationInputClientTokenString = Shapes::StringShape.new(name: 'CreateBenefitApplicationInputClientTokenString')
    CreateBenefitApplicationInputFileDetailsList = Shapes::ListShape.new(name: 'CreateBenefitApplicationInputFileDetailsList')
    CreateBenefitApplicationInputPartnerContactsList = Shapes::ListShape.new(name: 'CreateBenefitApplicationInputPartnerContactsList')
    CreateBenefitApplicationInputTagsList = Shapes::ListShape.new(name: 'CreateBenefitApplicationInputTagsList')
    CreateBenefitApplicationOutput = Shapes::StructureShape.new(name: 'CreateBenefitApplicationOutput')
    CreditCode = Shapes::StructureShape.new(name: 'CreditCode')
    CreditCodes = Shapes::ListShape.new(name: 'CreditCodes')
    CreditDetails = Shapes::StructureShape.new(name: 'CreditDetails')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    DisassociateBenefitApplicationResourceInput = Shapes::StructureShape.new(name: 'DisassociateBenefitApplicationResourceInput')
    DisassociateBenefitApplicationResourceInputResourceArnString = Shapes::StringShape.new(name: 'DisassociateBenefitApplicationResourceInputResourceArnString')
    DisassociateBenefitApplicationResourceOutput = Shapes::StructureShape.new(name: 'DisassociateBenefitApplicationResourceOutput')
    DisbursementDetails = Shapes::StructureShape.new(name: 'DisbursementDetails')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    FileDetail = Shapes::StructureShape.new(name: 'FileDetail')
    FileDetailCreatedByString = Shapes::StringShape.new(name: 'FileDetailCreatedByString')
    FileDetailFileNameString = Shapes::StringShape.new(name: 'FileDetailFileNameString')
    FileDetailFileStatusString = Shapes::StringShape.new(name: 'FileDetailFileStatusString')
    FileInput = Shapes::StructureShape.new(name: 'FileInput')
    FileType = Shapes::StringShape.new(name: 'FileType')
    FileURI = Shapes::StringShape.new(name: 'FileURI')
    FulfillmentDetails = Shapes::UnionShape.new(name: 'FulfillmentDetails')
    FulfillmentType = Shapes::StringShape.new(name: 'FulfillmentType')
    FulfillmentTypes = Shapes::ListShape.new(name: 'FulfillmentTypes')
    GetBenefitAllocationInput = Shapes::StructureShape.new(name: 'GetBenefitAllocationInput')
    GetBenefitAllocationOutput = Shapes::StructureShape.new(name: 'GetBenefitAllocationOutput')
    GetBenefitApplicationInput = Shapes::StructureShape.new(name: 'GetBenefitApplicationInput')
    GetBenefitApplicationOutput = Shapes::StructureShape.new(name: 'GetBenefitApplicationOutput')
    GetBenefitApplicationOutputAssociatedResourcesList = Shapes::ListShape.new(name: 'GetBenefitApplicationOutputAssociatedResourcesList')
    GetBenefitApplicationOutputFileDetailsList = Shapes::ListShape.new(name: 'GetBenefitApplicationOutputFileDetailsList')
    GetBenefitApplicationOutputStatusReasonString = Shapes::StringShape.new(name: 'GetBenefitApplicationOutputStatusReasonString')
    GetBenefitInput = Shapes::StructureShape.new(name: 'GetBenefitInput')
    GetBenefitInputIdentifierString = Shapes::StringShape.new(name: 'GetBenefitInputIdentifierString')
    GetBenefitOutput = Shapes::StructureShape.new(name: 'GetBenefitOutput')
    GetBenefitOutputDescriptionString = Shapes::StringShape.new(name: 'GetBenefitOutputDescriptionString')
    GetBenefitOutputIdString = Shapes::StringShape.new(name: 'GetBenefitOutputIdString')
    GetBenefitOutputNameString = Shapes::StringShape.new(name: 'GetBenefitOutputNameString')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IssuanceDetail = Shapes::StructureShape.new(name: 'IssuanceDetail')
    ListBenefitAllocationsInput = Shapes::StructureShape.new(name: 'ListBenefitAllocationsInput')
    ListBenefitAllocationsInputBenefitApplicationIdentifiersList = Shapes::ListShape.new(name: 'ListBenefitAllocationsInputBenefitApplicationIdentifiersList')
    ListBenefitAllocationsInputBenefitIdentifiersList = Shapes::ListShape.new(name: 'ListBenefitAllocationsInputBenefitIdentifiersList')
    ListBenefitAllocationsInputFulfillmentTypesList = Shapes::ListShape.new(name: 'ListBenefitAllocationsInputFulfillmentTypesList')
    ListBenefitAllocationsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListBenefitAllocationsInputMaxResultsInteger')
    ListBenefitAllocationsInputNextTokenString = Shapes::StringShape.new(name: 'ListBenefitAllocationsInputNextTokenString')
    ListBenefitAllocationsInputStatusList = Shapes::ListShape.new(name: 'ListBenefitAllocationsInputStatusList')
    ListBenefitAllocationsOutput = Shapes::StructureShape.new(name: 'ListBenefitAllocationsOutput')
    ListBenefitAllocationsOutputNextTokenString = Shapes::StringShape.new(name: 'ListBenefitAllocationsOutputNextTokenString')
    ListBenefitApplicationsInput = Shapes::StructureShape.new(name: 'ListBenefitApplicationsInput')
    ListBenefitApplicationsInputBenefitIdentifiersList = Shapes::ListShape.new(name: 'ListBenefitApplicationsInputBenefitIdentifiersList')
    ListBenefitApplicationsInputFulfillmentTypesList = Shapes::ListShape.new(name: 'ListBenefitApplicationsInputFulfillmentTypesList')
    ListBenefitApplicationsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListBenefitApplicationsInputMaxResultsInteger')
    ListBenefitApplicationsInputNextTokenString = Shapes::StringShape.new(name: 'ListBenefitApplicationsInputNextTokenString')
    ListBenefitApplicationsInputProgramsList = Shapes::ListShape.new(name: 'ListBenefitApplicationsInputProgramsList')
    ListBenefitApplicationsInputStagesList = Shapes::ListShape.new(name: 'ListBenefitApplicationsInputStagesList')
    ListBenefitApplicationsInputStatusList = Shapes::ListShape.new(name: 'ListBenefitApplicationsInputStatusList')
    ListBenefitApplicationsOutput = Shapes::StructureShape.new(name: 'ListBenefitApplicationsOutput')
    ListBenefitApplicationsOutputNextTokenString = Shapes::StringShape.new(name: 'ListBenefitApplicationsOutputNextTokenString')
    ListBenefitsInput = Shapes::StructureShape.new(name: 'ListBenefitsInput')
    ListBenefitsInputFulfillmentTypesList = Shapes::ListShape.new(name: 'ListBenefitsInputFulfillmentTypesList')
    ListBenefitsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListBenefitsInputMaxResultsInteger')
    ListBenefitsInputNextTokenString = Shapes::StringShape.new(name: 'ListBenefitsInputNextTokenString')
    ListBenefitsInputProgramsList = Shapes::ListShape.new(name: 'ListBenefitsInputProgramsList')
    ListBenefitsInputStatusList = Shapes::ListShape.new(name: 'ListBenefitsInputStatusList')
    ListBenefitsOutput = Shapes::StructureShape.new(name: 'ListBenefitsOutput')
    ListBenefitsOutputNextTokenString = Shapes::StringShape.new(name: 'ListBenefitsOutputNextTokenString')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MonetaryValue = Shapes::StructureShape.new(name: 'MonetaryValue')
    Program = Shapes::StringShape.new(name: 'Program')
    Programs = Shapes::ListShape.new(name: 'Programs')
    RecallBenefitApplicationInput = Shapes::StructureShape.new(name: 'RecallBenefitApplicationInput')
    RecallBenefitApplicationOutput = Shapes::StructureShape.new(name: 'RecallBenefitApplicationOutput')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StatusReasonCode = Shapes::StringShape.new(name: 'StatusReasonCode')
    StatusReasonCodes = Shapes::ListShape.new(name: 'StatusReasonCodes')
    String = Shapes::StringShape.new(name: 'String')
    SubmitBenefitApplicationInput = Shapes::StructureShape.new(name: 'SubmitBenefitApplicationInput')
    SubmitBenefitApplicationOutput = Shapes::StructureShape.new(name: 'SubmitBenefitApplicationOutput')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    Tags = Shapes::ListShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBenefitApplicationInput = Shapes::StructureShape.new(name: 'UpdateBenefitApplicationInput')
    UpdateBenefitApplicationInputClientTokenString = Shapes::StringShape.new(name: 'UpdateBenefitApplicationInputClientTokenString')
    UpdateBenefitApplicationInputFileDetailsList = Shapes::ListShape.new(name: 'UpdateBenefitApplicationInputFileDetailsList')
    UpdateBenefitApplicationInputPartnerContactsList = Shapes::ListShape.new(name: 'UpdateBenefitApplicationInputPartnerContactsList')
    UpdateBenefitApplicationOutput = Shapes::StructureShape.new(name: 'UpdateBenefitApplicationOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionErrorCode = Shapes::StringShape.new(name: 'ValidationExceptionErrorCode')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessDetails.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    AccessDetails.struct_class = Types::AccessDetails

    AmendBenefitApplicationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    AmendBenefitApplicationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: AmendBenefitApplicationInputClientTokenString, required: true, location_name: "ClientToken"))
    AmendBenefitApplicationInput.add_member(:revision, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Revision"))
    AmendBenefitApplicationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: BenefitApplicationIdentifier, required: true, location_name: "Identifier"))
    AmendBenefitApplicationInput.add_member(:amendment_reason, Shapes::ShapeRef.new(shape: AmendBenefitApplicationInputAmendmentReasonString, required: true, location_name: "AmendmentReason"))
    AmendBenefitApplicationInput.add_member(:amendments, Shapes::ShapeRef.new(shape: AmendmentList, required: true, location_name: "Amendments"))
    AmendBenefitApplicationInput.struct_class = Types::AmendBenefitApplicationInput

    AmendBenefitApplicationOutput.struct_class = Types::AmendBenefitApplicationOutput

    Amendment.add_member(:field_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FieldPath"))
    Amendment.add_member(:new_value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "NewValue"))
    Amendment.struct_class = Types::Amendment

    AmendmentList.member = Shapes::ShapeRef.new(shape: Amendment)

    Arns.member = Shapes::ShapeRef.new(shape: Arn)

    AssociateBenefitApplicationResourceInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    AssociateBenefitApplicationResourceInput.add_member(:benefit_application_identifier, Shapes::ShapeRef.new(shape: BenefitApplicationIdentifier, required: true, location_name: "BenefitApplicationIdentifier"))
    AssociateBenefitApplicationResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AssociateBenefitApplicationResourceInputResourceArnString, required: true, location_name: "ResourceArn"))
    AssociateBenefitApplicationResourceInput.struct_class = Types::AssociateBenefitApplicationResourceInput

    AssociateBenefitApplicationResourceOutput.add_member(:id, Shapes::ShapeRef.new(shape: BenefitApplicationId, location_name: "Id"))
    AssociateBenefitApplicationResourceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    AssociateBenefitApplicationResourceOutput.add_member(:revision, Shapes::ShapeRef.new(shape: String, location_name: "Revision"))
    AssociateBenefitApplicationResourceOutput.struct_class = Types::AssociateBenefitApplicationResourceOutput

    AssociatedResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    AssociatedResource.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "ResourceIdentifier", metadata: {"deprecatedMessage" => "This field is no longer used", "deprecatedSince" => "Oct 08 2025"}))
    AssociatedResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    AssociatedResource.struct_class = Types::AssociatedResource

    AssociatedResources.member = Shapes::ShapeRef.new(shape: AssociatedResource)

    Attributes.key = Shapes::ShapeRef.new(shape: String)
    Attributes.value = Shapes::ShapeRef.new(shape: String)

    BenefitAllocationSummaries.member = Shapes::ShapeRef.new(shape: BenefitAllocationSummary)

    BenefitAllocationSummary.add_member(:id, Shapes::ShapeRef.new(shape: BenefitAllocationId, location_name: "Id"))
    BenefitAllocationSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, location_name: "Catalog"))
    BenefitAllocationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    BenefitAllocationSummary.add_member(:status, Shapes::ShapeRef.new(shape: BenefitAllocationStatus, location_name: "Status"))
    BenefitAllocationSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "StatusReason"))
    BenefitAllocationSummary.add_member(:name, Shapes::ShapeRef.new(shape: BenefitAllocationName, location_name: "Name"))
    BenefitAllocationSummary.add_member(:benefit_id, Shapes::ShapeRef.new(shape: BenefitId, location_name: "BenefitId"))
    BenefitAllocationSummary.add_member(:benefit_application_id, Shapes::ShapeRef.new(shape: BenefitApplicationId, location_name: "BenefitApplicationId"))
    BenefitAllocationSummary.add_member(:fulfillment_types, Shapes::ShapeRef.new(shape: FulfillmentTypes, location_name: "FulfillmentTypes"))
    BenefitAllocationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    BenefitAllocationSummary.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiresAt"))
    BenefitAllocationSummary.add_member(:applicable_benefit_ids, Shapes::ShapeRef.new(shape: BenefitIds, location_name: "ApplicableBenefitIds"))
    BenefitAllocationSummary.struct_class = Types::BenefitAllocationSummary

    BenefitApplicationSummaries.member = Shapes::ShapeRef.new(shape: BenefitApplicationSummary)

    BenefitApplicationSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, location_name: "Catalog"))
    BenefitApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: BenefitApplicationName, location_name: "Name"))
    BenefitApplicationSummary.add_member(:id, Shapes::ShapeRef.new(shape: BenefitApplicationId, location_name: "Id"))
    BenefitApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    BenefitApplicationSummary.add_member(:benefit_id, Shapes::ShapeRef.new(shape: BenefitId, location_name: "BenefitId"))
    BenefitApplicationSummary.add_member(:programs, Shapes::ShapeRef.new(shape: Programs, location_name: "Programs"))
    BenefitApplicationSummary.add_member(:fulfillment_types, Shapes::ShapeRef.new(shape: FulfillmentTypes, location_name: "FulfillmentTypes"))
    BenefitApplicationSummary.add_member(:status, Shapes::ShapeRef.new(shape: BenefitApplicationStatus, location_name: "Status"))
    BenefitApplicationSummary.add_member(:stage, Shapes::ShapeRef.new(shape: BenefitApplicationStage, location_name: "Stage"))
    BenefitApplicationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    BenefitApplicationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    BenefitApplicationSummary.add_member(:benefit_application_details, Shapes::ShapeRef.new(shape: Attributes, location_name: "BenefitApplicationDetails"))
    BenefitApplicationSummary.add_member(:associated_resources, Shapes::ShapeRef.new(shape: Arns, location_name: "AssociatedResources"))
    BenefitApplicationSummary.struct_class = Types::BenefitApplicationSummary

    BenefitIdentifiers.member = Shapes::ShapeRef.new(shape: BenefitId)

    BenefitIds.member = Shapes::ShapeRef.new(shape: BenefitId)

    BenefitSummaries.member = Shapes::ShapeRef.new(shape: BenefitSummary)

    BenefitSummary.add_member(:id, Shapes::ShapeRef.new(shape: BenefitSummaryIdString, location_name: "Id"))
    BenefitSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, location_name: "Catalog"))
    BenefitSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    BenefitSummary.add_member(:name, Shapes::ShapeRef.new(shape: BenefitSummaryNameString, location_name: "Name"))
    BenefitSummary.add_member(:description, Shapes::ShapeRef.new(shape: BenefitSummaryDescriptionString, location_name: "Description"))
    BenefitSummary.add_member(:programs, Shapes::ShapeRef.new(shape: Programs, location_name: "Programs"))
    BenefitSummary.add_member(:fulfillment_types, Shapes::ShapeRef.new(shape: FulfillmentTypes, location_name: "FulfillmentTypes"))
    BenefitSummary.add_member(:status, Shapes::ShapeRef.new(shape: BenefitStatus, location_name: "Status"))
    BenefitSummary.struct_class = Types::BenefitSummary

    CancelBenefitApplicationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    CancelBenefitApplicationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CancelBenefitApplicationInputClientTokenString, required: true, location_name: "ClientToken"))
    CancelBenefitApplicationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: BenefitApplicationIdentifier, required: true, location_name: "Identifier"))
    CancelBenefitApplicationInput.add_member(:reason, Shapes::ShapeRef.new(shape: CancelBenefitApplicationInputReasonString, location_name: "Reason"))
    CancelBenefitApplicationInput.struct_class = Types::CancelBenefitApplicationInput

    CancelBenefitApplicationOutput.struct_class = Types::CancelBenefitApplicationOutput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ConsumableDetails.add_member(:allocated_amount, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "AllocatedAmount"))
    ConsumableDetails.add_member(:remaining_amount, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "RemainingAmount"))
    ConsumableDetails.add_member(:utilized_amount, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "UtilizedAmount"))
    ConsumableDetails.add_member(:issuance_details, Shapes::ShapeRef.new(shape: IssuanceDetail, location_name: "IssuanceDetails"))
    ConsumableDetails.struct_class = Types::ConsumableDetails

    Contact.add_member(:email, Shapes::ShapeRef.new(shape: ContactEmail, location_name: "Email"))
    Contact.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactFirstName, location_name: "FirstName"))
    Contact.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactLastName, location_name: "LastName"))
    Contact.add_member(:business_title, Shapes::ShapeRef.new(shape: ContactBusinessTitleString, location_name: "BusinessTitle"))
    Contact.add_member(:phone, Shapes::ShapeRef.new(shape: ContactPhone, location_name: "Phone"))
    Contact.struct_class = Types::Contact

    Contacts.member = Shapes::ShapeRef.new(shape: Contact)

    CreateBenefitApplicationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    CreateBenefitApplicationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateBenefitApplicationInputClientTokenString, required: true, location_name: "ClientToken"))
    CreateBenefitApplicationInput.add_member(:name, Shapes::ShapeRef.new(shape: BenefitApplicationName, location_name: "Name"))
    CreateBenefitApplicationInput.add_member(:description, Shapes::ShapeRef.new(shape: BenefitApplicationDescription, location_name: "Description"))
    CreateBenefitApplicationInput.add_member(:benefit_identifier, Shapes::ShapeRef.new(shape: CreateBenefitApplicationInputBenefitIdentifierString, required: true, location_name: "BenefitIdentifier"))
    CreateBenefitApplicationInput.add_member(:fulfillment_types, Shapes::ShapeRef.new(shape: FulfillmentTypes, location_name: "FulfillmentTypes"))
    CreateBenefitApplicationInput.add_member(:benefit_application_details, Shapes::ShapeRef.new(shape: Document, location_name: "BenefitApplicationDetails"))
    CreateBenefitApplicationInput.add_member(:tags, Shapes::ShapeRef.new(shape: CreateBenefitApplicationInputTagsList, location_name: "Tags"))
    CreateBenefitApplicationInput.add_member(:associated_resources, Shapes::ShapeRef.new(shape: CreateBenefitApplicationInputAssociatedResourcesList, location_name: "AssociatedResources"))
    CreateBenefitApplicationInput.add_member(:partner_contacts, Shapes::ShapeRef.new(shape: CreateBenefitApplicationInputPartnerContactsList, location_name: "PartnerContacts"))
    CreateBenefitApplicationInput.add_member(:file_details, Shapes::ShapeRef.new(shape: CreateBenefitApplicationInputFileDetailsList, location_name: "FileDetails"))
    CreateBenefitApplicationInput.struct_class = Types::CreateBenefitApplicationInput

    CreateBenefitApplicationInputAssociatedResourcesList.member = Shapes::ShapeRef.new(shape: Arn)

    CreateBenefitApplicationInputFileDetailsList.member = Shapes::ShapeRef.new(shape: FileInput)

    CreateBenefitApplicationInputPartnerContactsList.member = Shapes::ShapeRef.new(shape: Contact)

    CreateBenefitApplicationInputTagsList.member = Shapes::ShapeRef.new(shape: Tag)

    CreateBenefitApplicationOutput.add_member(:id, Shapes::ShapeRef.new(shape: BenefitApplicationId, location_name: "Id"))
    CreateBenefitApplicationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    CreateBenefitApplicationOutput.add_member(:revision, Shapes::ShapeRef.new(shape: String, location_name: "Revision"))
    CreateBenefitApplicationOutput.struct_class = Types::CreateBenefitApplicationOutput

    CreditCode.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AwsAccountId"))
    CreditCode.add_member(:value, Shapes::ShapeRef.new(shape: MonetaryValue, required: true, location_name: "Value"))
    CreditCode.add_member(:aws_credit_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AwsCreditCode"))
    CreditCode.add_member(:status, Shapes::ShapeRef.new(shape: BenefitAllocationStatus, required: true, location_name: "Status"))
    CreditCode.add_member(:issued_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "IssuedAt"))
    CreditCode.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ExpiresAt"))
    CreditCode.struct_class = Types::CreditCode

    CreditCodes.member = Shapes::ShapeRef.new(shape: CreditCode)

    CreditDetails.add_member(:allocated_amount, Shapes::ShapeRef.new(shape: MonetaryValue, required: true, location_name: "AllocatedAmount"))
    CreditDetails.add_member(:issued_amount, Shapes::ShapeRef.new(shape: MonetaryValue, required: true, location_name: "IssuedAmount"))
    CreditDetails.add_member(:codes, Shapes::ShapeRef.new(shape: CreditCodes, required: true, location_name: "Codes"))
    CreditDetails.struct_class = Types::CreditDetails

    DisassociateBenefitApplicationResourceInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    DisassociateBenefitApplicationResourceInput.add_member(:benefit_application_identifier, Shapes::ShapeRef.new(shape: BenefitApplicationIdentifier, required: true, location_name: "BenefitApplicationIdentifier"))
    DisassociateBenefitApplicationResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: DisassociateBenefitApplicationResourceInputResourceArnString, required: true, location_name: "ResourceArn"))
    DisassociateBenefitApplicationResourceInput.struct_class = Types::DisassociateBenefitApplicationResourceInput

    DisassociateBenefitApplicationResourceOutput.add_member(:id, Shapes::ShapeRef.new(shape: BenefitApplicationId, location_name: "Id"))
    DisassociateBenefitApplicationResourceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    DisassociateBenefitApplicationResourceOutput.add_member(:revision, Shapes::ShapeRef.new(shape: String, location_name: "Revision"))
    DisassociateBenefitApplicationResourceOutput.struct_class = Types::DisassociateBenefitApplicationResourceOutput

    DisbursementDetails.add_member(:disbursed_amount, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "DisbursedAmount"))
    DisbursementDetails.add_member(:issuance_details, Shapes::ShapeRef.new(shape: IssuanceDetail, location_name: "IssuanceDetails"))
    DisbursementDetails.struct_class = Types::DisbursementDetails

    FileDetail.add_member(:file_uri, Shapes::ShapeRef.new(shape: FileURI, required: true, location_name: "FileURI"))
    FileDetail.add_member(:business_use_case, Shapes::ShapeRef.new(shape: String, location_name: "BusinessUseCase"))
    FileDetail.add_member(:file_name, Shapes::ShapeRef.new(shape: FileDetailFileNameString, location_name: "FileName"))
    FileDetail.add_member(:file_status, Shapes::ShapeRef.new(shape: FileDetailFileStatusString, location_name: "FileStatus"))
    FileDetail.add_member(:file_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "FileStatusReason"))
    FileDetail.add_member(:file_type, Shapes::ShapeRef.new(shape: FileType, location_name: "FileType"))
    FileDetail.add_member(:created_by, Shapes::ShapeRef.new(shape: FileDetailCreatedByString, location_name: "CreatedBy"))
    FileDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    FileDetail.struct_class = Types::FileDetail

    FileInput.add_member(:file_uri, Shapes::ShapeRef.new(shape: FileURI, required: true, location_name: "FileURI"))
    FileInput.add_member(:business_use_case, Shapes::ShapeRef.new(shape: String, location_name: "BusinessUseCase"))
    FileInput.struct_class = Types::FileInput

    FulfillmentDetails.add_member(:disbursement_details, Shapes::ShapeRef.new(shape: DisbursementDetails, location_name: "DisbursementDetails"))
    FulfillmentDetails.add_member(:consumable_details, Shapes::ShapeRef.new(shape: ConsumableDetails, location_name: "ConsumableDetails"))
    FulfillmentDetails.add_member(:credit_details, Shapes::ShapeRef.new(shape: CreditDetails, location_name: "CreditDetails"))
    FulfillmentDetails.add_member(:access_details, Shapes::ShapeRef.new(shape: AccessDetails, location_name: "AccessDetails"))
    FulfillmentDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FulfillmentDetails.add_member_subclass(:disbursement_details, Types::FulfillmentDetails::DisbursementDetails)
    FulfillmentDetails.add_member_subclass(:consumable_details, Types::FulfillmentDetails::ConsumableDetails)
    FulfillmentDetails.add_member_subclass(:credit_details, Types::FulfillmentDetails::CreditDetails)
    FulfillmentDetails.add_member_subclass(:access_details, Types::FulfillmentDetails::AccessDetails)
    FulfillmentDetails.add_member_subclass(:unknown, Types::FulfillmentDetails::Unknown)
    FulfillmentDetails.struct_class = Types::FulfillmentDetails

    FulfillmentTypes.member = Shapes::ShapeRef.new(shape: FulfillmentType)

    GetBenefitAllocationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetBenefitAllocationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: BenefitAllocationIdentifier, required: true, location_name: "Identifier"))
    GetBenefitAllocationInput.struct_class = Types::GetBenefitAllocationInput

    GetBenefitAllocationOutput.add_member(:id, Shapes::ShapeRef.new(shape: BenefitAllocationId, location_name: "Id"))
    GetBenefitAllocationOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, location_name: "Catalog"))
    GetBenefitAllocationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: BenefitAllocationArn, location_name: "Arn"))
    GetBenefitAllocationOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    GetBenefitAllocationOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    GetBenefitAllocationOutput.add_member(:status, Shapes::ShapeRef.new(shape: BenefitAllocationStatus, location_name: "Status"))
    GetBenefitAllocationOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "StatusReason"))
    GetBenefitAllocationOutput.add_member(:benefit_application_id, Shapes::ShapeRef.new(shape: BenefitApplicationId, location_name: "BenefitApplicationId"))
    GetBenefitAllocationOutput.add_member(:benefit_id, Shapes::ShapeRef.new(shape: BenefitId, location_name: "BenefitId"))
    GetBenefitAllocationOutput.add_member(:fulfillment_type, Shapes::ShapeRef.new(shape: FulfillmentType, location_name: "FulfillmentType"))
    GetBenefitAllocationOutput.add_member(:applicable_benefit_ids, Shapes::ShapeRef.new(shape: BenefitIdentifiers, location_name: "ApplicableBenefitIds"))
    GetBenefitAllocationOutput.add_member(:fulfillment_detail, Shapes::ShapeRef.new(shape: FulfillmentDetails, location_name: "FulfillmentDetail"))
    GetBenefitAllocationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetBenefitAllocationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    GetBenefitAllocationOutput.add_member(:starts_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartsAt"))
    GetBenefitAllocationOutput.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiresAt"))
    GetBenefitAllocationOutput.struct_class = Types::GetBenefitAllocationOutput

    GetBenefitApplicationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetBenefitApplicationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: BenefitApplicationIdentifier, required: true, location_name: "Identifier"))
    GetBenefitApplicationInput.struct_class = Types::GetBenefitApplicationInput

    GetBenefitApplicationOutput.add_member(:id, Shapes::ShapeRef.new(shape: BenefitApplicationId, location_name: "Id"))
    GetBenefitApplicationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GetBenefitApplicationOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, location_name: "Catalog"))
    GetBenefitApplicationOutput.add_member(:benefit_id, Shapes::ShapeRef.new(shape: BenefitId, location_name: "BenefitId"))
    GetBenefitApplicationOutput.add_member(:name, Shapes::ShapeRef.new(shape: BenefitApplicationName, location_name: "Name"))
    GetBenefitApplicationOutput.add_member(:description, Shapes::ShapeRef.new(shape: BenefitApplicationDescription, location_name: "Description"))
    GetBenefitApplicationOutput.add_member(:fulfillment_types, Shapes::ShapeRef.new(shape: FulfillmentTypes, location_name: "FulfillmentTypes"))
    GetBenefitApplicationOutput.add_member(:benefit_application_details, Shapes::ShapeRef.new(shape: Document, location_name: "BenefitApplicationDetails"))
    GetBenefitApplicationOutput.add_member(:programs, Shapes::ShapeRef.new(shape: Programs, location_name: "Programs"))
    GetBenefitApplicationOutput.add_member(:status, Shapes::ShapeRef.new(shape: BenefitApplicationStatus, location_name: "Status"))
    GetBenefitApplicationOutput.add_member(:stage, Shapes::ShapeRef.new(shape: BenefitApplicationStage, location_name: "Stage"))
    GetBenefitApplicationOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: GetBenefitApplicationOutputStatusReasonString, location_name: "StatusReason"))
    GetBenefitApplicationOutput.add_member(:status_reason_code, Shapes::ShapeRef.new(shape: StatusReasonCode, deprecated: true, location_name: "StatusReasonCode", metadata: {"deprecatedMessage" => "This field is no longer used", "deprecatedSince" => "Nov 08 2025"}))
    GetBenefitApplicationOutput.add_member(:status_reason_codes, Shapes::ShapeRef.new(shape: StatusReasonCodes, location_name: "StatusReasonCodes"))
    GetBenefitApplicationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetBenefitApplicationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    GetBenefitApplicationOutput.add_member(:revision, Shapes::ShapeRef.new(shape: String, location_name: "Revision"))
    GetBenefitApplicationOutput.add_member(:associated_resources, Shapes::ShapeRef.new(shape: GetBenefitApplicationOutputAssociatedResourcesList, location_name: "AssociatedResources"))
    GetBenefitApplicationOutput.add_member(:partner_contacts, Shapes::ShapeRef.new(shape: Contacts, location_name: "PartnerContacts"))
    GetBenefitApplicationOutput.add_member(:file_details, Shapes::ShapeRef.new(shape: GetBenefitApplicationOutputFileDetailsList, location_name: "FileDetails"))
    GetBenefitApplicationOutput.struct_class = Types::GetBenefitApplicationOutput

    GetBenefitApplicationOutputAssociatedResourcesList.member = Shapes::ShapeRef.new(shape: Arn)

    GetBenefitApplicationOutputFileDetailsList.member = Shapes::ShapeRef.new(shape: FileDetail)

    GetBenefitInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    GetBenefitInput.add_member(:identifier, Shapes::ShapeRef.new(shape: GetBenefitInputIdentifierString, required: true, location_name: "Identifier"))
    GetBenefitInput.struct_class = Types::GetBenefitInput

    GetBenefitOutput.add_member(:id, Shapes::ShapeRef.new(shape: GetBenefitOutputIdString, location_name: "Id"))
    GetBenefitOutput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, location_name: "Catalog"))
    GetBenefitOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    GetBenefitOutput.add_member(:name, Shapes::ShapeRef.new(shape: GetBenefitOutputNameString, location_name: "Name"))
    GetBenefitOutput.add_member(:description, Shapes::ShapeRef.new(shape: GetBenefitOutputDescriptionString, location_name: "Description"))
    GetBenefitOutput.add_member(:programs, Shapes::ShapeRef.new(shape: Programs, location_name: "Programs"))
    GetBenefitOutput.add_member(:fulfillment_types, Shapes::ShapeRef.new(shape: FulfillmentTypes, location_name: "FulfillmentTypes"))
    GetBenefitOutput.add_member(:benefit_request_schema, Shapes::ShapeRef.new(shape: Document, location_name: "BenefitRequestSchema"))
    GetBenefitOutput.add_member(:status, Shapes::ShapeRef.new(shape: BenefitStatus, location_name: "Status"))
    GetBenefitOutput.struct_class = Types::GetBenefitOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    IssuanceDetail.add_member(:issuance_id, Shapes::ShapeRef.new(shape: String, location_name: "IssuanceId"))
    IssuanceDetail.add_member(:issuance_amount, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "IssuanceAmount"))
    IssuanceDetail.add_member(:issued_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "IssuedAt"))
    IssuanceDetail.struct_class = Types::IssuanceDetail

    ListBenefitAllocationsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    ListBenefitAllocationsInput.add_member(:fulfillment_types, Shapes::ShapeRef.new(shape: ListBenefitAllocationsInputFulfillmentTypesList, location_name: "FulfillmentTypes"))
    ListBenefitAllocationsInput.add_member(:benefit_identifiers, Shapes::ShapeRef.new(shape: ListBenefitAllocationsInputBenefitIdentifiersList, location_name: "BenefitIdentifiers"))
    ListBenefitAllocationsInput.add_member(:benefit_application_identifiers, Shapes::ShapeRef.new(shape: ListBenefitAllocationsInputBenefitApplicationIdentifiersList, location_name: "BenefitApplicationIdentifiers"))
    ListBenefitAllocationsInput.add_member(:status, Shapes::ShapeRef.new(shape: ListBenefitAllocationsInputStatusList, location_name: "Status"))
    ListBenefitAllocationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListBenefitAllocationsInputMaxResultsInteger, location_name: "MaxResults"))
    ListBenefitAllocationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListBenefitAllocationsInputNextTokenString, location_name: "NextToken"))
    ListBenefitAllocationsInput.struct_class = Types::ListBenefitAllocationsInput

    ListBenefitAllocationsInputBenefitApplicationIdentifiersList.member = Shapes::ShapeRef.new(shape: BenefitApplicationIdentifier)

    ListBenefitAllocationsInputBenefitIdentifiersList.member = Shapes::ShapeRef.new(shape: BenefitId)

    ListBenefitAllocationsInputFulfillmentTypesList.member = Shapes::ShapeRef.new(shape: FulfillmentType)

    ListBenefitAllocationsInputStatusList.member = Shapes::ShapeRef.new(shape: BenefitAllocationStatus)

    ListBenefitAllocationsOutput.add_member(:benefit_allocation_summaries, Shapes::ShapeRef.new(shape: BenefitAllocationSummaries, location_name: "BenefitAllocationSummaries"))
    ListBenefitAllocationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListBenefitAllocationsOutputNextTokenString, location_name: "NextToken"))
    ListBenefitAllocationsOutput.struct_class = Types::ListBenefitAllocationsOutput

    ListBenefitApplicationsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    ListBenefitApplicationsInput.add_member(:programs, Shapes::ShapeRef.new(shape: ListBenefitApplicationsInputProgramsList, location_name: "Programs"))
    ListBenefitApplicationsInput.add_member(:fulfillment_types, Shapes::ShapeRef.new(shape: ListBenefitApplicationsInputFulfillmentTypesList, location_name: "FulfillmentTypes"))
    ListBenefitApplicationsInput.add_member(:benefit_identifiers, Shapes::ShapeRef.new(shape: ListBenefitApplicationsInputBenefitIdentifiersList, location_name: "BenefitIdentifiers"))
    ListBenefitApplicationsInput.add_member(:status, Shapes::ShapeRef.new(shape: ListBenefitApplicationsInputStatusList, location_name: "Status"))
    ListBenefitApplicationsInput.add_member(:stages, Shapes::ShapeRef.new(shape: ListBenefitApplicationsInputStagesList, location_name: "Stages"))
    ListBenefitApplicationsInput.add_member(:associated_resources, Shapes::ShapeRef.new(shape: AssociatedResources, deprecated: true, location_name: "AssociatedResources", metadata: {"deprecatedMessage" => "This field is no longer used.", "deprecatedSince" => "Oct 08 2025"}))
    ListBenefitApplicationsInput.add_member(:associated_resource_arns, Shapes::ShapeRef.new(shape: Arns, location_name: "AssociatedResourceArns"))
    ListBenefitApplicationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListBenefitApplicationsInputMaxResultsInteger, location_name: "MaxResults"))
    ListBenefitApplicationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListBenefitApplicationsInputNextTokenString, location_name: "NextToken"))
    ListBenefitApplicationsInput.struct_class = Types::ListBenefitApplicationsInput

    ListBenefitApplicationsInputBenefitIdentifiersList.member = Shapes::ShapeRef.new(shape: BenefitId)

    ListBenefitApplicationsInputFulfillmentTypesList.member = Shapes::ShapeRef.new(shape: FulfillmentType)

    ListBenefitApplicationsInputProgramsList.member = Shapes::ShapeRef.new(shape: Program)

    ListBenefitApplicationsInputStagesList.member = Shapes::ShapeRef.new(shape: BenefitApplicationStage)

    ListBenefitApplicationsInputStatusList.member = Shapes::ShapeRef.new(shape: BenefitApplicationStatus)

    ListBenefitApplicationsOutput.add_member(:benefit_application_summaries, Shapes::ShapeRef.new(shape: BenefitApplicationSummaries, location_name: "BenefitApplicationSummaries"))
    ListBenefitApplicationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListBenefitApplicationsOutputNextTokenString, location_name: "NextToken"))
    ListBenefitApplicationsOutput.struct_class = Types::ListBenefitApplicationsOutput

    ListBenefitsInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    ListBenefitsInput.add_member(:programs, Shapes::ShapeRef.new(shape: ListBenefitsInputProgramsList, location_name: "Programs"))
    ListBenefitsInput.add_member(:fulfillment_types, Shapes::ShapeRef.new(shape: ListBenefitsInputFulfillmentTypesList, location_name: "FulfillmentTypes"))
    ListBenefitsInput.add_member(:status, Shapes::ShapeRef.new(shape: ListBenefitsInputStatusList, location_name: "Status"))
    ListBenefitsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListBenefitsInputMaxResultsInteger, location_name: "MaxResults"))
    ListBenefitsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListBenefitsInputNextTokenString, location_name: "NextToken"))
    ListBenefitsInput.struct_class = Types::ListBenefitsInput

    ListBenefitsInputFulfillmentTypesList.member = Shapes::ShapeRef.new(shape: FulfillmentType)

    ListBenefitsInputProgramsList.member = Shapes::ShapeRef.new(shape: Program)

    ListBenefitsInputStatusList.member = Shapes::ShapeRef.new(shape: BenefitStatus)

    ListBenefitsOutput.add_member(:benefit_summaries, Shapes::ShapeRef.new(shape: BenefitSummaries, location_name: "BenefitSummaries"))
    ListBenefitsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListBenefitsOutputNextTokenString, location_name: "NextToken"))
    ListBenefitsOutput.struct_class = Types::ListBenefitsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MonetaryValue.add_member(:amount, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Amount"))
    MonetaryValue.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "CurrencyCode"))
    MonetaryValue.struct_class = Types::MonetaryValue

    Programs.member = Shapes::ShapeRef.new(shape: Program)

    RecallBenefitApplicationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    RecallBenefitApplicationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "ClientToken"))
    RecallBenefitApplicationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: BenefitApplicationIdentifier, required: true, location_name: "Identifier"))
    RecallBenefitApplicationInput.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Reason"))
    RecallBenefitApplicationInput.struct_class = Types::RecallBenefitApplicationInput

    RecallBenefitApplicationOutput.struct_class = Types::RecallBenefitApplicationOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StatusReasonCodes.member = Shapes::ShapeRef.new(shape: StatusReasonCode)

    SubmitBenefitApplicationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    SubmitBenefitApplicationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: BenefitApplicationIdentifier, required: true, location_name: "Identifier"))
    SubmitBenefitApplicationInput.struct_class = Types::SubmitBenefitApplicationInput

    SubmitBenefitApplicationOutput.struct_class = Types::SubmitBenefitApplicationOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateBenefitApplicationInput.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogName, required: true, location_name: "Catalog"))
    UpdateBenefitApplicationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: UpdateBenefitApplicationInputClientTokenString, required: true, location_name: "ClientToken"))
    UpdateBenefitApplicationInput.add_member(:name, Shapes::ShapeRef.new(shape: BenefitApplicationName, location_name: "Name"))
    UpdateBenefitApplicationInput.add_member(:description, Shapes::ShapeRef.new(shape: BenefitApplicationDescription, location_name: "Description"))
    UpdateBenefitApplicationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: BenefitApplicationIdentifier, required: true, location_name: "Identifier"))
    UpdateBenefitApplicationInput.add_member(:revision, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Revision"))
    UpdateBenefitApplicationInput.add_member(:benefit_application_details, Shapes::ShapeRef.new(shape: Document, location_name: "BenefitApplicationDetails"))
    UpdateBenefitApplicationInput.add_member(:partner_contacts, Shapes::ShapeRef.new(shape: UpdateBenefitApplicationInputPartnerContactsList, location_name: "PartnerContacts"))
    UpdateBenefitApplicationInput.add_member(:file_details, Shapes::ShapeRef.new(shape: UpdateBenefitApplicationInputFileDetailsList, location_name: "FileDetails"))
    UpdateBenefitApplicationInput.struct_class = Types::UpdateBenefitApplicationInput

    UpdateBenefitApplicationInputFileDetailsList.member = Shapes::ShapeRef.new(shape: FileInput)

    UpdateBenefitApplicationInputPartnerContactsList.member = Shapes::ShapeRef.new(shape: Contact)

    UpdateBenefitApplicationOutput.add_member(:id, Shapes::ShapeRef.new(shape: BenefitApplicationId, location_name: "Id"))
    UpdateBenefitApplicationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    UpdateBenefitApplicationOutput.add_member(:revision, Shapes::ShapeRef.new(shape: String, location_name: "Revision"))
    UpdateBenefitApplicationOutput.struct_class = Types::UpdateBenefitApplicationOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "Reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "FieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.add_member(:code, Shapes::ShapeRef.new(shape: ValidationExceptionErrorCode, location_name: "Code"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "partnercentral-benefits",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "PartnerCentral Benefits",
        "serviceFullName" => "Partner Central Benefits API",
        "serviceId" => "PartnerCentral Benefits",
        "signatureVersion" => "v4",
        "signingName" => "partnercentral-benefits",
        "targetPrefix" => "PartnerCentralBenefitsService",
        "uid" => "partnercentral-benefits-2018-05-10",
      }

      api.add_operation(:amend_benefit_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AmendBenefitApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AmendBenefitApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: AmendBenefitApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:associate_benefit_application_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateBenefitApplicationResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateBenefitApplicationResourceInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateBenefitApplicationResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:cancel_benefit_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelBenefitApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelBenefitApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: CancelBenefitApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_benefit_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBenefitApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBenefitApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBenefitApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_benefit_application_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateBenefitApplicationResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateBenefitApplicationResourceInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateBenefitApplicationResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_benefit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBenefit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBenefitInput)
        o.output = Shapes::ShapeRef.new(shape: GetBenefitOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_benefit_allocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBenefitAllocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBenefitAllocationInput)
        o.output = Shapes::ShapeRef.new(shape: GetBenefitAllocationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_benefit_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBenefitApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBenefitApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: GetBenefitApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_benefit_allocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBenefitAllocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBenefitAllocationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBenefitAllocationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_benefit_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBenefitApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBenefitApplicationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBenefitApplicationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_benefits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBenefits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBenefitsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBenefitsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:recall_benefit_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RecallBenefitApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RecallBenefitApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: RecallBenefitApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:submit_benefit_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitBenefitApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubmitBenefitApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: SubmitBenefitApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_benefit_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBenefitApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBenefitApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateBenefitApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
