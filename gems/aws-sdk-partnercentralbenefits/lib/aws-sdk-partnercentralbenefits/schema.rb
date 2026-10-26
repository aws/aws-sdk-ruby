# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralBenefits
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#AccessDetails", name: "AccessDetails")
    AmendBenefitApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#AmendBenefitApplicationInput", name: "AmendBenefitApplicationInput")
    AmendBenefitApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#AmendBenefitApplicationOutput", name: "AmendBenefitApplicationOutput")
    Amendment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#Amendment", name: "Amendment")
    AmendmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#AmendmentList", name: "AmendmentList")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:aws:([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.+)$"})
    Arns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#Arns", name: "Arns")
    AssociateBenefitApplicationResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#AssociateBenefitApplicationResourceInput", name: "AssociateBenefitApplicationResourceInput")
    AssociateBenefitApplicationResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#AssociateBenefitApplicationResourceOutput", name: "AssociateBenefitApplicationResourceOutput")
    AssociatedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#AssociatedResource", name: "AssociatedResource")
    AssociatedResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#AssociatedResources", name: "AssociatedResources")
    Attributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.partnercentralbenefits#Attributes", name: "Attributes")
    BenefitAllocationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitAllocationArn", name: "BenefitAllocationArn", traits: {"smithy.api#pattern" => "^(arn:.+benalloc-[0-9a-z]{14})$"})
    BenefitAllocationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitAllocationId", name: "BenefitAllocationId", traits: {"smithy.api#pattern" => "^benalloc-[0-9a-z]{14}$"})
    BenefitAllocationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitAllocationIdentifier", name: "BenefitAllocationIdentifier", traits: {"smithy.api#pattern" => "^(arn:.+|benalloc-[0-9a-z]{14})$"})
    BenefitAllocationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitAllocationName", name: "BenefitAllocationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    BenefitAllocationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitAllocationStatus", name: "BenefitAllocationStatus")
    BenefitAllocationStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitAllocationStatusList", name: "BenefitAllocationStatusList")
    BenefitAllocationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitAllocationSummaries", name: "BenefitAllocationSummaries")
    BenefitAllocationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitAllocationSummary", name: "BenefitAllocationSummary")
    BenefitApplicationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitApplicationDescription", name: "BenefitApplicationDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    BenefitApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitApplicationId", name: "BenefitApplicationId", traits: {"smithy.api#pattern" => "^benappl-[0-9a-z]{14}$"})
    BenefitApplicationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitApplicationIdentifier", name: "BenefitApplicationIdentifier", traits: {"smithy.api#pattern" => "^(arn:.+|benappl-[0-9a-z]{14})$"})
    BenefitApplicationIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitApplicationIdentifierList", name: "BenefitApplicationIdentifierList")
    BenefitApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitApplicationName", name: "BenefitApplicationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    BenefitApplicationStage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitApplicationStage", name: "BenefitApplicationStage")
    BenefitApplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitApplicationStatus", name: "BenefitApplicationStatus")
    BenefitApplicationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitApplicationSummaries", name: "BenefitApplicationSummaries")
    BenefitApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitApplicationSummary", name: "BenefitApplicationSummary")
    BenefitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitId", name: "BenefitId", traits: {"smithy.api#pattern" => "^(arn:.+|ben-[0-9a-z]{14})$"})
    BenefitIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitIdentifiers", name: "BenefitIdentifiers")
    BenefitIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitIds", name: "BenefitIds")
    BenefitStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitStatus", name: "BenefitStatus")
    BenefitStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitStatuses", name: "BenefitStatuses")
    BenefitSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitSummaries", name: "BenefitSummaries")
    BenefitSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#BenefitSummary", name: "BenefitSummary")
    CancelBenefitApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#CancelBenefitApplicationInput", name: "CancelBenefitApplicationInput")
    CancelBenefitApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#CancelBenefitApplicationOutput", name: "CancelBenefitApplicationOutput")
    CatalogName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#CatalogName", name: "CatalogName", traits: {"smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConsumableDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ConsumableDetails", name: "ConsumableDetails")
    Contact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#Contact", name: "Contact")
    ContactEmail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#ContactEmail", name: "ContactEmail", traits: {"smithy.api#length" => {"min" => 0, "max" => 80}, "smithy.api#pattern" => "^[a-z0-9!\#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!\#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$", "smithy.api#sensitive" => {}})
    ContactFirstName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#ContactFirstName", name: "ContactFirstName", traits: {"smithy.api#length" => {"min" => 0, "max" => 80}, "smithy.api#sensitive" => {}})
    ContactLastName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#ContactLastName", name: "ContactLastName", traits: {"smithy.api#length" => {"min" => 0, "max" => 80}, "smithy.api#sensitive" => {}})
    ContactPhone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#ContactPhone", name: "ContactPhone", traits: {"smithy.api#sensitive" => {}})
    Contacts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#Contacts", name: "Contacts")
    CreateBenefitApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#CreateBenefitApplicationInput", name: "CreateBenefitApplicationInput")
    CreateBenefitApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#CreateBenefitApplicationOutput", name: "CreateBenefitApplicationOutput")
    CreditCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#CreditCode", name: "CreditCode")
    CreditCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#CreditCodes", name: "CreditCodes")
    CreditDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#CreditDetails", name: "CreditDetails")
    CurrencyCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralbenefits#CurrencyCode", name: "CurrencyCode")
    DisassociateBenefitApplicationResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#DisassociateBenefitApplicationResourceInput", name: "DisassociateBenefitApplicationResourceInput")
    DisassociateBenefitApplicationResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#DisassociateBenefitApplicationResourceOutput", name: "DisassociateBenefitApplicationResourceOutput")
    DisbursementDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#DisbursementDetails", name: "DisbursementDetails")
    FileDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#FileDetail", name: "FileDetail")
    FileDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#FileDetails", name: "FileDetails")
    FileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#FileInput", name: "FileInput")
    FileInputDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#FileInputDetails", name: "FileInputDetails")
    FileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralbenefits#FileType", name: "FileType")
    FileURI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#FileURI", name: "FileURI", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^(s3://|https://).*"})
    FulfillmentDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralbenefits#FulfillmentDetails", name: "FulfillmentDetails")
    FulfillmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralbenefits#FulfillmentType", name: "FulfillmentType")
    FulfillmentTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#FulfillmentTypes", name: "FulfillmentTypes")
    GetBenefitAllocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#GetBenefitAllocationInput", name: "GetBenefitAllocationInput")
    GetBenefitAllocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#GetBenefitAllocationOutput", name: "GetBenefitAllocationOutput")
    GetBenefitApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#GetBenefitApplicationInput", name: "GetBenefitApplicationInput")
    GetBenefitApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#GetBenefitApplicationOutput", name: "GetBenefitApplicationOutput")
    GetBenefitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#GetBenefitInput", name: "GetBenefitInput")
    GetBenefitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#GetBenefitOutput", name: "GetBenefitOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IssuanceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#IssuanceDetail", name: "IssuanceDetail")
    ListBenefitAllocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ListBenefitAllocationsInput", name: "ListBenefitAllocationsInput")
    ListBenefitAllocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ListBenefitAllocationsOutput", name: "ListBenefitAllocationsOutput")
    ListBenefitApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ListBenefitApplicationsInput", name: "ListBenefitApplicationsInput")
    ListBenefitApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ListBenefitApplicationsOutput", name: "ListBenefitApplicationsOutput")
    ListBenefitsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ListBenefitsInput", name: "ListBenefitsInput")
    ListBenefitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ListBenefitsOutput", name: "ListBenefitsOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MonetaryValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#MonetaryValue", name: "MonetaryValue")
    Program = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#Program", name: "Program", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    Programs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#Programs", name: "Programs")
    RecallBenefitApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#RecallBenefitApplicationInput", name: "RecallBenefitApplicationInput")
    RecallBenefitApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#RecallBenefitApplicationOutput", name: "RecallBenefitApplicationOutput")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralbenefits#ResourceType", name: "ResourceType")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402, "smithy.api#retryable" => {}})
    Stages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#Stages", name: "Stages")
    StatusReasonCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#StatusReasonCode", name: "StatusReasonCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    StatusReasonCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#StatusReasonCodes", name: "StatusReasonCodes", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    Statuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#Statuses", name: "Statuses")
    SubmitBenefitApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#SubmitBenefitApplicationInput", name: "SubmitBenefitApplicationInput")
    SubmitBenefitApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#SubmitBenefitApplicationOutput", name: "SubmitBenefitApplicationOutput")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralbenefits#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:partnercentral:[\\w+=/,.@-]*:[0-9]{12}:catalog/([a-zA-Z]+)/[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#Tags", name: "Tags")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.partnercentralbenefits#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateBenefitApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#UpdateBenefitApplicationInput", name: "UpdateBenefitApplicationInput")
    UpdateBenefitApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#UpdateBenefitApplicationOutput", name: "UpdateBenefitApplicationOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralbenefits#ValidationExceptionErrorCode", name: "ValidationExceptionErrorCode")
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralbenefits#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralbenefits#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralbenefits#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    AccessDetails.type = Types::AccessDetails
    AmendBenefitApplicationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    AmendBenefitApplicationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]{1,64}$", "smithy.api#required" => {}}))
    AmendBenefitApplicationInput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Revision", traits: {"smithy.api#required" => {}}))
    AmendBenefitApplicationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    AmendBenefitApplicationInput.add_member(:amendment_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AmendmentReason", traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#required" => {}}))
    AmendBenefitApplicationInput.add_member(:amendments, ::Smithy::Schema::Shapes::MemberShape.new(target: AmendmentList, name: "Amendments", traits: {"smithy.api#required" => {}}))
    AmendBenefitApplicationInput.type = Types::AmendBenefitApplicationInput
    AmendBenefitApplicationOutput.type = Types::AmendBenefitApplicationOutput
    Amendment.add_member(:field_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FieldPath", traits: {"smithy.api#required" => {}}))
    Amendment.add_member(:new_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NewValue", traits: {"smithy.api#required" => {}}))
    Amendment.type = Types::Amendment
    AmendmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Amendment, name: "member"))
    Arns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    AssociateBenefitApplicationResourceInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    AssociateBenefitApplicationResourceInput.add_member(:benefit_application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationIdentifier, name: "BenefitApplicationIdentifier", traits: {"smithy.api#required" => {}}))
    AssociateBenefitApplicationResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#required" => {}}))
    AssociateBenefitApplicationResourceInput.type = Types::AssociateBenefitApplicationResourceInput
    AssociateBenefitApplicationResourceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationId, name: "Id"))
    AssociateBenefitApplicationResourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    AssociateBenefitApplicationResourceOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Revision"))
    AssociateBenefitApplicationResourceOutput.type = Types::AssociateBenefitApplicationResourceOutput
    AssociatedResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    AssociatedResource.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceIdentifier", traits: {"smithy.api#deprecated" => {"message" => "This field is no longer used", "since" => "Oct 08 2025"}}))
    AssociatedResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    AssociatedResource.type = Types::AssociatedResource
    AssociatedResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResource, name: "member"))
    Attributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    Attributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    BenefitAllocationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BenefitAllocationStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    BenefitAllocationStatus.add_member(:fulfilled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULFILLED", traits: {"smithy.api#enumValue" => "FULFILLED"}))
    BenefitAllocationStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationStatus, name: "member"))
    BenefitAllocationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationSummary, name: "member"))
    BenefitAllocationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationId, name: "Id"))
    BenefitAllocationSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog"))
    BenefitAllocationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    BenefitAllocationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationStatus, name: "Status"))
    BenefitAllocationSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusReason"))
    BenefitAllocationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationName, name: "Name"))
    BenefitAllocationSummary.add_member(:benefit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitId, name: "BenefitId"))
    BenefitAllocationSummary.add_member(:benefit_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationId, name: "BenefitApplicationId"))
    BenefitAllocationSummary.add_member(:fulfillment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentTypes, name: "FulfillmentTypes"))
    BenefitAllocationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    BenefitAllocationSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiresAt"))
    BenefitAllocationSummary.add_member(:applicable_benefit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitIds, name: "ApplicableBenefitIds"))
    BenefitAllocationSummary.type = Types::BenefitAllocationSummary
    BenefitApplicationIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationIdentifier, name: "member"))
    BenefitApplicationStatus.add_member(:pending_submission, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_SUBMISSION", traits: {"smithy.api#enumValue" => "PENDING_SUBMISSION"}))
    BenefitApplicationStatus.add_member(:in_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_REVIEW", traits: {"smithy.api#enumValue" => "IN_REVIEW"}))
    BenefitApplicationStatus.add_member(:action_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_REQUIRED", traits: {"smithy.api#enumValue" => "ACTION_REQUIRED"}))
    BenefitApplicationStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    BenefitApplicationStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    BenefitApplicationStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    BenefitApplicationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationSummary, name: "member"))
    BenefitApplicationSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog"))
    BenefitApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationName, name: "Name"))
    BenefitApplicationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationId, name: "Id"))
    BenefitApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    BenefitApplicationSummary.add_member(:benefit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitId, name: "BenefitId"))
    BenefitApplicationSummary.add_member(:programs, ::Smithy::Schema::Shapes::MemberShape.new(target: Programs, name: "Programs"))
    BenefitApplicationSummary.add_member(:fulfillment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentTypes, name: "FulfillmentTypes"))
    BenefitApplicationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationStatus, name: "Status"))
    BenefitApplicationSummary.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationStage, name: "Stage"))
    BenefitApplicationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    BenefitApplicationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    BenefitApplicationSummary.add_member(:benefit_application_details, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "BenefitApplicationDetails"))
    BenefitApplicationSummary.add_member(:associated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Arns, name: "AssociatedResources"))
    BenefitApplicationSummary.type = Types::BenefitApplicationSummary
    BenefitIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitId, name: "member"))
    BenefitIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitId, name: "member"))
    BenefitStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BenefitStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    BenefitStatuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitStatus, name: "member"))
    BenefitSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitSummary, name: "member"))
    BenefitSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id", traits: {"smithy.api#pattern" => "^ben-[0-9a-z]{14}$"}))
    BenefitSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog"))
    BenefitSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    BenefitSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    BenefitSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"max" => 1000}}))
    BenefitSummary.add_member(:programs, ::Smithy::Schema::Shapes::MemberShape.new(target: Programs, name: "Programs"))
    BenefitSummary.add_member(:fulfillment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentTypes, name: "FulfillmentTypes"))
    BenefitSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitStatus, name: "Status"))
    BenefitSummary.type = Types::BenefitSummary
    CancelBenefitApplicationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CancelBenefitApplicationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]{1,64}$", "smithy.api#required" => {}}))
    CancelBenefitApplicationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    CancelBenefitApplicationInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Reason", traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]{1,1000}$"}))
    CancelBenefitApplicationInput.type = Types::CancelBenefitApplicationInput
    CancelBenefitApplicationOutput.type = Types::CancelBenefitApplicationOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConsumableDetails.add_member(:allocated_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryValue, name: "AllocatedAmount"))
    ConsumableDetails.add_member(:remaining_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryValue, name: "RemainingAmount"))
    ConsumableDetails.add_member(:utilized_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryValue, name: "UtilizedAmount"))
    ConsumableDetails.add_member(:issuance_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IssuanceDetail, name: "IssuanceDetails"))
    ConsumableDetails.type = Types::ConsumableDetails
    Contact.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactEmail, name: "Email"))
    Contact.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactFirstName, name: "FirstName"))
    Contact.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactLastName, name: "LastName"))
    Contact.add_member(:business_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BusinessTitle", traits: {"smithy.api#length" => {"min" => 0, "max" => 80}}))
    Contact.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactPhone, name: "Phone"))
    Contact.type = Types::Contact
    Contacts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Contact, name: "member"))
    CreateBenefitApplicationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateBenefitApplicationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]{1,64}$", "smithy.api#required" => {}}))
    CreateBenefitApplicationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationName, name: "Name"))
    CreateBenefitApplicationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationDescription, name: "Description"))
    CreateBenefitApplicationInput.add_member(:benefit_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BenefitIdentifier", traits: {"smithy.api#pattern" => "^(arn:.+|ben-[0-9a-z]{14})$", "smithy.api#required" => {}}))
    CreateBenefitApplicationInput.add_member(:fulfillment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentTypes, name: "FulfillmentTypes"))
    CreateBenefitApplicationInput.add_member(:benefit_application_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "BenefitApplicationDetails"))
    CreateBenefitApplicationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#length" => {"max" => 200}}))
    CreateBenefitApplicationInput.add_member(:associated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Arns, name: "AssociatedResources", traits: {"smithy.api#length" => {"max" => 10}}))
    CreateBenefitApplicationInput.add_member(:partner_contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: Contacts, name: "PartnerContacts", traits: {"smithy.api#length" => {"max" => 1}}))
    CreateBenefitApplicationInput.add_member(:file_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FileInputDetails, name: "FileDetails", traits: {"smithy.api#length" => {"max" => 30}}))
    CreateBenefitApplicationInput.type = Types::CreateBenefitApplicationInput
    CreateBenefitApplicationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationId, name: "Id"))
    CreateBenefitApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    CreateBenefitApplicationOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Revision"))
    CreateBenefitApplicationOutput.type = Types::CreateBenefitApplicationOutput
    CreditCode.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AwsAccountId", traits: {"smithy.api#required" => {}}))
    CreditCode.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryValue, name: "Value", traits: {"smithy.api#required" => {}}))
    CreditCode.add_member(:aws_credit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AwsCreditCode", traits: {"smithy.api#required" => {}}))
    CreditCode.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CreditCode.add_member(:issued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "IssuedAt", traits: {"smithy.api#required" => {}}))
    CreditCode.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiresAt", traits: {"smithy.api#required" => {}}))
    CreditCode.type = Types::CreditCode
    CreditCodes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditCode, name: "member"))
    CreditDetails.add_member(:allocated_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryValue, name: "AllocatedAmount", traits: {"smithy.api#required" => {}}))
    CreditDetails.add_member(:issued_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryValue, name: "IssuedAmount", traits: {"smithy.api#required" => {}}))
    CreditDetails.add_member(:codes, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditCodes, name: "Codes", traits: {"smithy.api#required" => {}}))
    CreditDetails.type = Types::CreditDetails
    CurrencyCode.add_member(:aed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AED", traits: {"smithy.api#enumValue" => "AED"}))
    CurrencyCode.add_member(:amd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMD", traits: {"smithy.api#enumValue" => "AMD"}))
    CurrencyCode.add_member(:ars, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARS", traits: {"smithy.api#enumValue" => "ARS"}))
    CurrencyCode.add_member(:aud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUD", traits: {"smithy.api#enumValue" => "AUD"}))
    CurrencyCode.add_member(:awg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWG", traits: {"smithy.api#enumValue" => "AWG"}))
    CurrencyCode.add_member(:azn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZN", traits: {"smithy.api#enumValue" => "AZN"}))
    CurrencyCode.add_member(:bbd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BBD", traits: {"smithy.api#enumValue" => "BBD"}))
    CurrencyCode.add_member(:bdt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BDT", traits: {"smithy.api#enumValue" => "BDT"}))
    CurrencyCode.add_member(:bgn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BGN", traits: {"smithy.api#enumValue" => "BGN"}))
    CurrencyCode.add_member(:bmd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BMD", traits: {"smithy.api#enumValue" => "BMD"}))
    CurrencyCode.add_member(:bnd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BND", traits: {"smithy.api#enumValue" => "BND"}))
    CurrencyCode.add_member(:bob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOB", traits: {"smithy.api#enumValue" => "BOB"}))
    CurrencyCode.add_member(:brl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRL", traits: {"smithy.api#enumValue" => "BRL"}))
    CurrencyCode.add_member(:bsd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BSD", traits: {"smithy.api#enumValue" => "BSD"}))
    CurrencyCode.add_member(:byr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYR", traits: {"smithy.api#enumValue" => "BYR"}))
    CurrencyCode.add_member(:bzd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BZD", traits: {"smithy.api#enumValue" => "BZD"}))
    CurrencyCode.add_member(:cad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAD", traits: {"smithy.api#enumValue" => "CAD"}))
    CurrencyCode.add_member(:chf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHF", traits: {"smithy.api#enumValue" => "CHF"}))
    CurrencyCode.add_member(:clp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLP", traits: {"smithy.api#enumValue" => "CLP"}))
    CurrencyCode.add_member(:cny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CNY", traits: {"smithy.api#enumValue" => "CNY"}))
    CurrencyCode.add_member(:cop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COP", traits: {"smithy.api#enumValue" => "COP"}))
    CurrencyCode.add_member(:crc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC", traits: {"smithy.api#enumValue" => "CRC"}))
    CurrencyCode.add_member(:czk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CZK", traits: {"smithy.api#enumValue" => "CZK"}))
    CurrencyCode.add_member(:dkk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DKK", traits: {"smithy.api#enumValue" => "DKK"}))
    CurrencyCode.add_member(:dop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOP", traits: {"smithy.api#enumValue" => "DOP"}))
    CurrencyCode.add_member(:eek, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EEK", traits: {"smithy.api#enumValue" => "EEK"}))
    CurrencyCode.add_member(:egp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EGP", traits: {"smithy.api#enumValue" => "EGP"}))
    CurrencyCode.add_member(:eur, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EUR", traits: {"smithy.api#enumValue" => "EUR"}))
    CurrencyCode.add_member(:gbp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GBP", traits: {"smithy.api#enumValue" => "GBP"}))
    CurrencyCode.add_member(:gel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GEL", traits: {"smithy.api#enumValue" => "GEL"}))
    CurrencyCode.add_member(:ghs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GHS", traits: {"smithy.api#enumValue" => "GHS"}))
    CurrencyCode.add_member(:gtq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GTQ", traits: {"smithy.api#enumValue" => "GTQ"}))
    CurrencyCode.add_member(:gyd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GYD", traits: {"smithy.api#enumValue" => "GYD"}))
    CurrencyCode.add_member(:hkd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HKD", traits: {"smithy.api#enumValue" => "HKD"}))
    CurrencyCode.add_member(:hnl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HNL", traits: {"smithy.api#enumValue" => "HNL"}))
    CurrencyCode.add_member(:hrk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HRK", traits: {"smithy.api#enumValue" => "HRK"}))
    CurrencyCode.add_member(:htg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTG", traits: {"smithy.api#enumValue" => "HTG"}))
    CurrencyCode.add_member(:huf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HUF", traits: {"smithy.api#enumValue" => "HUF"}))
    CurrencyCode.add_member(:idr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDR", traits: {"smithy.api#enumValue" => "IDR"}))
    CurrencyCode.add_member(:ils, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILS", traits: {"smithy.api#enumValue" => "ILS"}))
    CurrencyCode.add_member(:inr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INR", traits: {"smithy.api#enumValue" => "INR"}))
    CurrencyCode.add_member(:isk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISK", traits: {"smithy.api#enumValue" => "ISK"}))
    CurrencyCode.add_member(:jmd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JMD", traits: {"smithy.api#enumValue" => "JMD"}))
    CurrencyCode.add_member(:jpy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPY", traits: {"smithy.api#enumValue" => "JPY"}))
    CurrencyCode.add_member(:kes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KES", traits: {"smithy.api#enumValue" => "KES"}))
    CurrencyCode.add_member(:khr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KHR", traits: {"smithy.api#enumValue" => "KHR"}))
    CurrencyCode.add_member(:krw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KRW", traits: {"smithy.api#enumValue" => "KRW"}))
    CurrencyCode.add_member(:kyd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KYD", traits: {"smithy.api#enumValue" => "KYD"}))
    CurrencyCode.add_member(:kzt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KZT", traits: {"smithy.api#enumValue" => "KZT"}))
    CurrencyCode.add_member(:lbp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LBP", traits: {"smithy.api#enumValue" => "LBP"}))
    CurrencyCode.add_member(:lkr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LKR", traits: {"smithy.api#enumValue" => "LKR"}))
    CurrencyCode.add_member(:ltl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LTL", traits: {"smithy.api#enumValue" => "LTL"}))
    CurrencyCode.add_member(:lvl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LVL", traits: {"smithy.api#enumValue" => "LVL"}))
    CurrencyCode.add_member(:mad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAD", traits: {"smithy.api#enumValue" => "MAD"}))
    CurrencyCode.add_member(:mnt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MNT", traits: {"smithy.api#enumValue" => "MNT"}))
    CurrencyCode.add_member(:mop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MOP", traits: {"smithy.api#enumValue" => "MOP"}))
    CurrencyCode.add_member(:mur, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUR", traits: {"smithy.api#enumValue" => "MUR"}))
    CurrencyCode.add_member(:mvr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MVR", traits: {"smithy.api#enumValue" => "MVR"}))
    CurrencyCode.add_member(:mxn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MXN", traits: {"smithy.api#enumValue" => "MXN"}))
    CurrencyCode.add_member(:myr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MYR", traits: {"smithy.api#enumValue" => "MYR"}))
    CurrencyCode.add_member(:nad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAD", traits: {"smithy.api#enumValue" => "NAD"}))
    CurrencyCode.add_member(:ngn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NGN", traits: {"smithy.api#enumValue" => "NGN"}))
    CurrencyCode.add_member(:nio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NIO", traits: {"smithy.api#enumValue" => "NIO"}))
    CurrencyCode.add_member(:nok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOK", traits: {"smithy.api#enumValue" => "NOK"}))
    CurrencyCode.add_member(:nzd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NZD", traits: {"smithy.api#enumValue" => "NZD"}))
    CurrencyCode.add_member(:pab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAB", traits: {"smithy.api#enumValue" => "PAB"}))
    CurrencyCode.add_member(:pen, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PEN", traits: {"smithy.api#enumValue" => "PEN"}))
    CurrencyCode.add_member(:php, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHP", traits: {"smithy.api#enumValue" => "PHP"}))
    CurrencyCode.add_member(:pkr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PKR", traits: {"smithy.api#enumValue" => "PKR"}))
    CurrencyCode.add_member(:pln, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLN", traits: {"smithy.api#enumValue" => "PLN"}))
    CurrencyCode.add_member(:pyg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PYG", traits: {"smithy.api#enumValue" => "PYG"}))
    CurrencyCode.add_member(:qar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QAR", traits: {"smithy.api#enumValue" => "QAR"}))
    CurrencyCode.add_member(:ron, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RON", traits: {"smithy.api#enumValue" => "RON"}))
    CurrencyCode.add_member(:rub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUB", traits: {"smithy.api#enumValue" => "RUB"}))
    CurrencyCode.add_member(:sar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAR", traits: {"smithy.api#enumValue" => "SAR"}))
    CurrencyCode.add_member(:sek, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEK", traits: {"smithy.api#enumValue" => "SEK"}))
    CurrencyCode.add_member(:sgd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SGD", traits: {"smithy.api#enumValue" => "SGD"}))
    CurrencyCode.add_member(:sit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIT", traits: {"smithy.api#enumValue" => "SIT"}))
    CurrencyCode.add_member(:skk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKK", traits: {"smithy.api#enumValue" => "SKK"}))
    CurrencyCode.add_member(:thb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THB", traits: {"smithy.api#enumValue" => "THB"}))
    CurrencyCode.add_member(:tnd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TND", traits: {"smithy.api#enumValue" => "TND"}))
    CurrencyCode.add_member(:try, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRY", traits: {"smithy.api#enumValue" => "TRY"}))
    CurrencyCode.add_member(:ttd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TTD", traits: {"smithy.api#enumValue" => "TTD"}))
    CurrencyCode.add_member(:twd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TWD", traits: {"smithy.api#enumValue" => "TWD"}))
    CurrencyCode.add_member(:tzs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TZS", traits: {"smithy.api#enumValue" => "TZS"}))
    CurrencyCode.add_member(:uah, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UAH", traits: {"smithy.api#enumValue" => "UAH"}))
    CurrencyCode.add_member(:usd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    CurrencyCode.add_member(:uyu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UYU", traits: {"smithy.api#enumValue" => "UYU"}))
    CurrencyCode.add_member(:uzs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UZS", traits: {"smithy.api#enumValue" => "UZS"}))
    CurrencyCode.add_member(:vnd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VND", traits: {"smithy.api#enumValue" => "VND"}))
    CurrencyCode.add_member(:xaf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XAF", traits: {"smithy.api#enumValue" => "XAF"}))
    CurrencyCode.add_member(:xcd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XCD", traits: {"smithy.api#enumValue" => "XCD"}))
    CurrencyCode.add_member(:xof, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XOF", traits: {"smithy.api#enumValue" => "XOF"}))
    CurrencyCode.add_member(:xpf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XPF", traits: {"smithy.api#enumValue" => "XPF"}))
    CurrencyCode.add_member(:zar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZAR", traits: {"smithy.api#enumValue" => "ZAR"}))
    DisassociateBenefitApplicationResourceInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    DisassociateBenefitApplicationResourceInput.add_member(:benefit_application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationIdentifier, name: "BenefitApplicationIdentifier", traits: {"smithy.api#required" => {}}))
    DisassociateBenefitApplicationResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#required" => {}}))
    DisassociateBenefitApplicationResourceInput.type = Types::DisassociateBenefitApplicationResourceInput
    DisassociateBenefitApplicationResourceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationId, name: "Id"))
    DisassociateBenefitApplicationResourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    DisassociateBenefitApplicationResourceOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Revision"))
    DisassociateBenefitApplicationResourceOutput.type = Types::DisassociateBenefitApplicationResourceOutput
    DisbursementDetails.add_member(:disbursed_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryValue, name: "DisbursedAmount"))
    DisbursementDetails.add_member(:issuance_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IssuanceDetail, name: "IssuanceDetails"))
    DisbursementDetails.type = Types::DisbursementDetails
    FileDetail.add_member(:file_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: FileURI, name: "FileURI", traits: {"smithy.api#required" => {}}))
    FileDetail.add_member(:business_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BusinessUseCase"))
    FileDetail.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FileName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    FileDetail.add_member(:file_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FileStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}}))
    FileDetail.add_member(:file_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FileStatusReason"))
    FileDetail.add_member(:file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileType, name: "FileType"))
    FileDetail.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CreatedBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    FileDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    FileDetail.type = Types::FileDetail
    FileDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FileDetail, name: "member"))
    FileInput.add_member(:file_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: FileURI, name: "FileURI", traits: {"smithy.api#required" => {}}))
    FileInput.add_member(:business_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BusinessUseCase"))
    FileInput.type = Types::FileInput
    FileInputDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FileInput, name: "member"))
    FileType.add_member(:doc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOC", traits: {"smithy.api#enumValue" => "application/msword"}))
    FileType.add_member(:docx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCX", traits: {"smithy.api#enumValue" => "application/vnd.openxmlformats-officedocument.wordprocessingml.document"}))
    FileType.add_member(:xlsx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XLSX", traits: {"smithy.api#enumValue" => "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"}))
    FileType.add_member(:pptx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PPTX", traits: {"smithy.api#enumValue" => "application/vnd.openxmlformats-officedocument.presentationml.presentation"}))
    FileType.add_member(:pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PDF", traits: {"smithy.api#enumValue" => "application/pdf"}))
    FileType.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "image/png"}))
    FileType.add_member(:jpg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPG", traits: {"smithy.api#enumValue" => "image/jpeg"}))
    FileType.add_member(:svg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SVG", traits: {"smithy.api#enumValue" => "image/svg+xml"}))
    FileType.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "text/csv"}))
    FulfillmentDetails.add_member(:disbursement_details, Types::FulfillmentDetails::DisbursementDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: DisbursementDetails, name: "DisbursementDetails"))
    FulfillmentDetails.add_member(:consumable_details, Types::FulfillmentDetails::ConsumableDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumableDetails, name: "ConsumableDetails"))
    FulfillmentDetails.add_member(:credit_details, Types::FulfillmentDetails::CreditDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: CreditDetails, name: "CreditDetails"))
    FulfillmentDetails.add_member(:access_details, Types::FulfillmentDetails::AccessDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDetails, name: "AccessDetails"))
    FulfillmentDetails.add_member(:unknown, Types::FulfillmentDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FulfillmentDetails.type = Types::FulfillmentDetails
    FulfillmentType.add_member(:credits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDITS", traits: {"smithy.api#enumValue" => "CREDITS"}))
    FulfillmentType.add_member(:cash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CASH", traits: {"smithy.api#enumValue" => "CASH"}))
    FulfillmentType.add_member(:access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS", traits: {"smithy.api#enumValue" => "ACCESS"}))
    FulfillmentTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentType, name: "member"))
    GetBenefitAllocationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetBenefitAllocationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetBenefitAllocationInput.type = Types::GetBenefitAllocationInput
    GetBenefitAllocationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationId, name: "Id"))
    GetBenefitAllocationOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog"))
    GetBenefitAllocationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationArn, name: "Arn"))
    GetBenefitAllocationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    GetBenefitAllocationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    GetBenefitAllocationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationStatus, name: "Status"))
    GetBenefitAllocationOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusReason"))
    GetBenefitAllocationOutput.add_member(:benefit_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationId, name: "BenefitApplicationId"))
    GetBenefitAllocationOutput.add_member(:benefit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitId, name: "BenefitId"))
    GetBenefitAllocationOutput.add_member(:fulfillment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentType, name: "FulfillmentType"))
    GetBenefitAllocationOutput.add_member(:applicable_benefit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitIdentifiers, name: "ApplicableBenefitIds"))
    GetBenefitAllocationOutput.add_member(:fulfillment_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentDetails, name: "FulfillmentDetail"))
    GetBenefitAllocationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetBenefitAllocationOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    GetBenefitAllocationOutput.add_member(:starts_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartsAt"))
    GetBenefitAllocationOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiresAt"))
    GetBenefitAllocationOutput.type = Types::GetBenefitAllocationOutput
    GetBenefitApplicationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetBenefitApplicationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetBenefitApplicationInput.type = Types::GetBenefitApplicationInput
    GetBenefitApplicationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationId, name: "Id"))
    GetBenefitApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetBenefitApplicationOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog"))
    GetBenefitApplicationOutput.add_member(:benefit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitId, name: "BenefitId"))
    GetBenefitApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationName, name: "Name"))
    GetBenefitApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationDescription, name: "Description"))
    GetBenefitApplicationOutput.add_member(:fulfillment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentTypes, name: "FulfillmentTypes"))
    GetBenefitApplicationOutput.add_member(:benefit_application_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "BenefitApplicationDetails"))
    GetBenefitApplicationOutput.add_member(:programs, ::Smithy::Schema::Shapes::MemberShape.new(target: Programs, name: "Programs"))
    GetBenefitApplicationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationStatus, name: "Status"))
    GetBenefitApplicationOutput.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationStage, name: "Stage"))
    GetBenefitApplicationOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusReason", traits: {"smithy.api#length" => {"max" => 1000}}))
    GetBenefitApplicationOutput.add_member(:status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReasonCode, name: "StatusReasonCode", traits: {"smithy.api#deprecated" => {"message" => "This field is no longer used", "since" => "Nov 08 2025"}}))
    GetBenefitApplicationOutput.add_member(:status_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReasonCodes, name: "StatusReasonCodes"))
    GetBenefitApplicationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetBenefitApplicationOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    GetBenefitApplicationOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Revision"))
    GetBenefitApplicationOutput.add_member(:associated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Arns, name: "AssociatedResources", traits: {"smithy.api#length" => {"max" => 10}}))
    GetBenefitApplicationOutput.add_member(:partner_contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: Contacts, name: "PartnerContacts"))
    GetBenefitApplicationOutput.add_member(:file_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FileDetails, name: "FileDetails", traits: {"smithy.api#length" => {"max" => 30}}))
    GetBenefitApplicationOutput.type = Types::GetBenefitApplicationOutput
    GetBenefitInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetBenefitInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Identifier", traits: {"smithy.api#pattern" => "^(arn:.+|ben-[0-9a-z]{14})$", "smithy.api#required" => {}}))
    GetBenefitInput.type = Types::GetBenefitInput
    GetBenefitOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id", traits: {"smithy.api#pattern" => "^ben-[0-9a-z]{14}$"}))
    GetBenefitOutput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog"))
    GetBenefitOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    GetBenefitOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    GetBenefitOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#length" => {"max" => 1000}}))
    GetBenefitOutput.add_member(:programs, ::Smithy::Schema::Shapes::MemberShape.new(target: Programs, name: "Programs"))
    GetBenefitOutput.add_member(:fulfillment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentTypes, name: "FulfillmentTypes"))
    GetBenefitOutput.add_member(:benefit_request_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "BenefitRequestSchema"))
    GetBenefitOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitStatus, name: "Status"))
    GetBenefitOutput.type = Types::GetBenefitOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IssuanceDetail.add_member(:issuance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IssuanceId"))
    IssuanceDetail.add_member(:issuance_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryValue, name: "IssuanceAmount"))
    IssuanceDetail.add_member(:issued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "IssuedAt"))
    IssuanceDetail.type = Types::IssuanceDetail
    ListBenefitAllocationsInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListBenefitAllocationsInput.add_member(:fulfillment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentTypes, name: "FulfillmentTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}}))
    ListBenefitAllocationsInput.add_member(:benefit_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitIdentifiers, name: "BenefitIdentifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    ListBenefitAllocationsInput.add_member(:benefit_application_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationIdentifierList, name: "BenefitApplicationIdentifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    ListBenefitAllocationsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationStatusList, name: "Status", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    ListBenefitAllocationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListBenefitAllocationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"}))
    ListBenefitAllocationsInput.type = Types::ListBenefitAllocationsInput
    ListBenefitAllocationsOutput.add_member(:benefit_allocation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitAllocationSummaries, name: "BenefitAllocationSummaries"))
    ListBenefitAllocationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"max" => 2048}}))
    ListBenefitAllocationsOutput.type = Types::ListBenefitAllocationsOutput
    ListBenefitApplicationsInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListBenefitApplicationsInput.add_member(:programs, ::Smithy::Schema::Shapes::MemberShape.new(target: Programs, name: "Programs", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    ListBenefitApplicationsInput.add_member(:fulfillment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentTypes, name: "FulfillmentTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}}))
    ListBenefitApplicationsInput.add_member(:benefit_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitIdentifiers, name: "BenefitIdentifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    ListBenefitApplicationsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Statuses, name: "Status", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    ListBenefitApplicationsInput.add_member(:stages, ::Smithy::Schema::Shapes::MemberShape.new(target: Stages, name: "Stages", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    ListBenefitApplicationsInput.add_member(:associated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResources, name: "AssociatedResources", traits: {"smithy.api#deprecated" => {"message" => "This field is no longer used.", "since" => "Oct 08 2025"}}))
    ListBenefitApplicationsInput.add_member(:associated_resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Arns, name: "AssociatedResourceArns"))
    ListBenefitApplicationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListBenefitApplicationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"}))
    ListBenefitApplicationsInput.type = Types::ListBenefitApplicationsInput
    ListBenefitApplicationsOutput.add_member(:benefit_application_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationSummaries, name: "BenefitApplicationSummaries"))
    ListBenefitApplicationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"max" => 2048}}))
    ListBenefitApplicationsOutput.type = Types::ListBenefitApplicationsOutput
    ListBenefitsInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListBenefitsInput.add_member(:programs, ::Smithy::Schema::Shapes::MemberShape.new(target: Programs, name: "Programs", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    ListBenefitsInput.add_member(:fulfillment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FulfillmentTypes, name: "FulfillmentTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}}))
    ListBenefitsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitStatuses, name: "Status", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}}))
    ListBenefitsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListBenefitsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"}))
    ListBenefitsInput.type = Types::ListBenefitsInput
    ListBenefitsOutput.add_member(:benefit_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitSummaries, name: "BenefitSummaries"))
    ListBenefitsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"max" => 2048}}))
    ListBenefitsOutput.type = Types::ListBenefitsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MonetaryValue.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Amount", traits: {"smithy.api#required" => {}}))
    MonetaryValue.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "CurrencyCode", traits: {"smithy.api#required" => {}}))
    MonetaryValue.type = Types::MonetaryValue
    Programs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Program, name: "member"))
    RecallBenefitApplicationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    RecallBenefitApplicationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken"))
    RecallBenefitApplicationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    RecallBenefitApplicationInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Reason", traits: {"smithy.api#required" => {}}))
    RecallBenefitApplicationInput.type = Types::RecallBenefitApplicationInput
    RecallBenefitApplicationOutput.type = Types::RecallBenefitApplicationOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPPORTUNITY", traits: {"smithy.api#enumValue" => "OPPORTUNITY"}))
    ResourceType.add_member(:benefit_allocation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BENEFIT_ALLOCATION", traits: {"smithy.api#enumValue" => "BENEFIT_ALLOCATION"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Stages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationStage, name: "member"))
    StatusReasonCodes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReasonCode, name: "member"))
    Statuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationStatus, name: "member"))
    SubmitBenefitApplicationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    SubmitBenefitApplicationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    SubmitBenefitApplicationInput.type = Types::SubmitBenefitApplicationInput
    SubmitBenefitApplicationOutput.type = Types::SubmitBenefitApplicationOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBenefitApplicationInput.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogName, name: "Catalog", traits: {"smithy.api#required" => {}}))
    UpdateBenefitApplicationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]{1,64}$", "smithy.api#required" => {}}))
    UpdateBenefitApplicationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationName, name: "Name"))
    UpdateBenefitApplicationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationDescription, name: "Description"))
    UpdateBenefitApplicationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    UpdateBenefitApplicationInput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Revision", traits: {"smithy.api#required" => {}}))
    UpdateBenefitApplicationInput.add_member(:benefit_application_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "BenefitApplicationDetails"))
    UpdateBenefitApplicationInput.add_member(:partner_contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: Contacts, name: "PartnerContacts", traits: {"smithy.api#length" => {"max" => 1}}))
    UpdateBenefitApplicationInput.add_member(:file_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FileInputDetails, name: "FileDetails", traits: {"smithy.api#length" => {"max" => 30}}))
    UpdateBenefitApplicationInput.type = Types::UpdateBenefitApplicationInput
    UpdateBenefitApplicationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: BenefitApplicationId, name: "Id"))
    UpdateBenefitApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    UpdateBenefitApplicationOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Revision"))
    UpdateBenefitApplicationOutput.type = Types::UpdateBenefitApplicationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "FieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionErrorCode.add_member(:required_field_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED_FIELD_MISSING", traits: {"smithy.api#enumValue" => "REQUIRED_FIELD_MISSING"}))
    ValidationExceptionErrorCode.add_member(:invalid_enum_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ENUM_VALUE", traits: {"smithy.api#enumValue" => "INVALID_ENUM_VALUE"}))
    ValidationExceptionErrorCode.add_member(:invalid_string_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_STRING_FORMAT", traits: {"smithy.api#enumValue" => "INVALID_STRING_FORMAT"}))
    ValidationExceptionErrorCode.add_member(:invalid_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_VALUE", traits: {"smithy.api#enumValue" => "INVALID_VALUE"}))
    ValidationExceptionErrorCode.add_member(:not_enough_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_ENOUGH_VALUES", traits: {"smithy.api#enumValue" => "NOT_ENOUGH_VALUES"}))
    ValidationExceptionErrorCode.add_member(:too_many_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOO_MANY_VALUES", traits: {"smithy.api#enumValue" => "TOO_MANY_VALUES"}))
    ValidationExceptionErrorCode.add_member(:invalid_resource_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_RESOURCE_STATE", traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_STATE"}))
    ValidationExceptionErrorCode.add_member(:duplicate_key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_KEY_VALUE", traits: {"smithy.api#enumValue" => "DUPLICATE_KEY_VALUE"}))
    ValidationExceptionErrorCode.add_member(:value_out_of_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE_OUT_OF_RANGE", traits: {"smithy.api#enumValue" => "VALUE_OUT_OF_RANGE"}))
    ValidationExceptionErrorCode.add_member(:action_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "ACTION_NOT_PERMITTED"}))
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionErrorCode, name: "Code"))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    ValidationExceptionReason.add_member(:business_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "BUSINESS_VALIDATION_FAILED"}))

    PartnerCentralBenefitsService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.partnercentralbenefits#PartnerCentralBenefitsService"
      service.name = "PartnerCentralBenefitsService"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "PartnerCentral Benefits", "endpointPrefix" => "partnercentral-benefits", "arnNamespace" => "partnercentral", "cloudTrailEventSource" => "partnercentral-benefits.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "partnercentral-benefits"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"partnercentral:Catalog" => {"type" => "String", "documentation" => "Filters access by the Catalog. Accepted values: [AWS, Sandbox]", "relativeDocumentation" => "page.html#Catalog"}, "partnercentral:Programs" => {"type" => "ArrayOfString", "documentation" => "Filters access by tags assigned to a program", "relativeDocumentation" => "page.html#Programs"}, "partnercentral:FulfillmentTypes" => {"type" => "ArrayOfString", "documentation" => "Filters access by tags assigned to a specific fulfilmentType", "relativeDocumentation" => "page.html#FulfillmentTypes"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Partner Central Benefits API", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-benefits-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-benefits.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:amend_benefit_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#AmendBenefitApplication"
        operation.name = "AmendBenefitApplication"
        operation.input = AmendBenefitApplicationInput
        operation.output = AmendBenefitApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/AmendBenefitApplication"}}
      end)
      service.add_operation(:associate_benefit_application_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#AssociateBenefitApplicationResource"
        operation.name = "AssociateBenefitApplicationResource"
        operation.input = AssociateBenefitApplicationResourceInput
        operation.output = AssociateBenefitApplicationResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/AssociateBenefitApplicationResource"}}
      end)
      service.add_operation(:cancel_benefit_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#CancelBenefitApplication"
        operation.name = "CancelBenefitApplication"
        operation.input = CancelBenefitApplicationInput
        operation.output = CancelBenefitApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/CancelBenefitApplication"}}
      end)
      service.add_operation(:create_benefit_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#CreateBenefitApplication"
        operation.name = "CreateBenefitApplication"
        operation.input = CreateBenefitApplicationInput
        operation.output = CreateBenefitApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/CreateBenefitApplication"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_benefit_application_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#DisassociateBenefitApplicationResource"
        operation.name = "DisassociateBenefitApplicationResource"
        operation.input = DisassociateBenefitApplicationResourceInput
        operation.output = DisassociateBenefitApplicationResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/DisassociateBenefitApplicationResource"}}
      end)
      service.add_operation(:get_benefit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#GetBenefit"
        operation.name = "GetBenefit"
        operation.input = GetBenefitInput
        operation.output = GetBenefitOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetBenefit"}}
      end)
      service.add_operation(:get_benefit_allocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#GetBenefitAllocation"
        operation.name = "GetBenefitAllocation"
        operation.input = GetBenefitAllocationInput
        operation.output = GetBenefitAllocationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetBenefitAllocation"}}
      end)
      service.add_operation(:get_benefit_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#GetBenefitApplication"
        operation.name = "GetBenefitApplication"
        operation.input = GetBenefitApplicationInput
        operation.output = GetBenefitApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetBenefitApplication"}}
      end)
      service.add_operation(:list_benefit_allocations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#ListBenefitAllocations"
        operation.name = "ListBenefitAllocations"
        operation.input = ListBenefitAllocationsInput
        operation.output = ListBenefitAllocationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListBenefitAllocations"}}
        operation[:paginator] = Paginators::ListBenefitAllocations.new
      end)
      service.add_operation(:list_benefit_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#ListBenefitApplications"
        operation.name = "ListBenefitApplications"
        operation.input = ListBenefitApplicationsInput
        operation.output = ListBenefitApplicationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListBenefitApplications"}}
        operation[:paginator] = Paginators::ListBenefitApplications.new
      end)
      service.add_operation(:list_benefits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#ListBenefits"
        operation.name = "ListBenefits"
        operation.input = ListBenefitsInput
        operation.output = ListBenefitsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:FulfillmentTypes", "partnercentral:Programs", "partnercentral:Catalog"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListBenefits"}, "smithy.test#smokeTests" => [{"id" => "ListBenefitsSuccess", "params" => {"Catalog" => "AWS", "MaxResults" => 10}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListBenefits.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"uri" => "/ListTagsForResource", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:recall_benefit_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#RecallBenefitApplication"
        operation.name = "RecallBenefitApplication"
        operation.input = RecallBenefitApplicationInput
        operation.output = RecallBenefitApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/RecallBenefitApplication"}}
      end)
      service.add_operation(:submit_benefit_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#SubmitBenefitApplication"
        operation.name = "SubmitBenefitApplication"
        operation.input = SubmitBenefitApplicationInput
        operation.output = SubmitBenefitApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/SubmitBenefitApplication"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"uri" => "/TagResource", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"uri" => "/UntagResource", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_benefit_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralbenefits#UpdateBenefitApplication"
        operation.name = "UpdateBenefitApplication"
        operation.input = UpdateBenefitApplicationInput
        operation.output = UpdateBenefitApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:FulfillmentTypes", "partnercentral:Programs", "aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/UpdateBenefitApplication"}}
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
