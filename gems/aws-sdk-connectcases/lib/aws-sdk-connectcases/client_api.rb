# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectCases
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociationTime = Shapes::TimestampShape.new(name: 'AssociationTime', timestampFormat: "iso8601")
    BasicLayout = Shapes::StructureShape.new(name: 'BasicLayout')
    BatchGetFieldIdentifierList = Shapes::ListShape.new(name: 'BatchGetFieldIdentifierList')
    BatchGetFieldRequest = Shapes::StructureShape.new(name: 'BatchGetFieldRequest')
    BatchGetFieldResponse = Shapes::StructureShape.new(name: 'BatchGetFieldResponse')
    BatchGetFieldResponseErrorsList = Shapes::ListShape.new(name: 'BatchGetFieldResponseErrorsList')
    BatchGetFieldResponseFieldsList = Shapes::ListShape.new(name: 'BatchGetFieldResponseFieldsList')
    BatchPutFieldOptionsRequest = Shapes::StructureShape.new(name: 'BatchPutFieldOptionsRequest')
    BatchPutFieldOptionsRequestOptionsList = Shapes::ListShape.new(name: 'BatchPutFieldOptionsRequestOptionsList')
    BatchPutFieldOptionsResponse = Shapes::StructureShape.new(name: 'BatchPutFieldOptionsResponse')
    BatchPutFieldOptionsResponseErrorsList = Shapes::ListShape.new(name: 'BatchPutFieldOptionsResponseErrorsList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CaseArn = Shapes::StringShape.new(name: 'CaseArn')
    CaseEventIncludedData = Shapes::StructureShape.new(name: 'CaseEventIncludedData')
    CaseEventIncludedDataFieldsList = Shapes::ListShape.new(name: 'CaseEventIncludedDataFieldsList')
    CaseFilter = Shapes::UnionShape.new(name: 'CaseFilter')
    CaseFilterAndAllList = Shapes::ListShape.new(name: 'CaseFilterAndAllList')
    CaseId = Shapes::StringShape.new(name: 'CaseId')
    CaseSummary = Shapes::StructureShape.new(name: 'CaseSummary')
    Channel = Shapes::StringShape.new(name: 'Channel')
    CommentBody = Shapes::StringShape.new(name: 'CommentBody')
    CommentBodyTextType = Shapes::StringShape.new(name: 'CommentBodyTextType')
    CommentContent = Shapes::StructureShape.new(name: 'CommentContent')
    CommentFilter = Shapes::StructureShape.new(name: 'CommentFilter')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectedToSystemTime = Shapes::TimestampShape.new(name: 'ConnectedToSystemTime', timestampFormat: "iso8601")
    Contact = Shapes::StructureShape.new(name: 'Contact')
    ContactArn = Shapes::StringShape.new(name: 'ContactArn')
    ContactContent = Shapes::StructureShape.new(name: 'ContactContent')
    ContactFilter = Shapes::StructureShape.new(name: 'ContactFilter')
    ContactFilterChannelList = Shapes::ListShape.new(name: 'ContactFilterChannelList')
    CreateCaseRequest = Shapes::StructureShape.new(name: 'CreateCaseRequest')
    CreateCaseRequestClientTokenString = Shapes::StringShape.new(name: 'CreateCaseRequestClientTokenString')
    CreateCaseRequestFieldsList = Shapes::ListShape.new(name: 'CreateCaseRequestFieldsList')
    CreateCaseResponse = Shapes::StructureShape.new(name: 'CreateCaseResponse')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResponse = Shapes::StructureShape.new(name: 'CreateDomainResponse')
    CreateFieldRequest = Shapes::StructureShape.new(name: 'CreateFieldRequest')
    CreateFieldResponse = Shapes::StructureShape.new(name: 'CreateFieldResponse')
    CreateLayoutRequest = Shapes::StructureShape.new(name: 'CreateLayoutRequest')
    CreateLayoutResponse = Shapes::StructureShape.new(name: 'CreateLayoutResponse')
    CreateRelatedItemRequest = Shapes::StructureShape.new(name: 'CreateRelatedItemRequest')
    CreateRelatedItemResponse = Shapes::StructureShape.new(name: 'CreateRelatedItemResponse')
    CreateTemplateRequest = Shapes::StructureShape.new(name: 'CreateTemplateRequest')
    CreateTemplateResponse = Shapes::StructureShape.new(name: 'CreateTemplateResponse')
    CreatedTime = Shapes::TimestampShape.new(name: 'CreatedTime', timestampFormat: "iso8601")
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteDomainResponse = Shapes::StructureShape.new(name: 'DeleteDomainResponse')
    DomainArn = Shapes::StringShape.new(name: 'DomainArn')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    DomainSummaryList = Shapes::ListShape.new(name: 'DomainSummaryList')
    Double = Shapes::FloatShape.new(name: 'Double')
    EventBridgeConfiguration = Shapes::StructureShape.new(name: 'EventBridgeConfiguration')
    EventIncludedData = Shapes::StructureShape.new(name: 'EventIncludedData')
    FieldArn = Shapes::StringShape.new(name: 'FieldArn')
    FieldDescription = Shapes::StringShape.new(name: 'FieldDescription')
    FieldError = Shapes::StructureShape.new(name: 'FieldError')
    FieldFilter = Shapes::UnionShape.new(name: 'FieldFilter')
    FieldGroup = Shapes::StructureShape.new(name: 'FieldGroup')
    FieldGroupFieldsList = Shapes::ListShape.new(name: 'FieldGroupFieldsList')
    FieldGroupNameString = Shapes::StringShape.new(name: 'FieldGroupNameString')
    FieldId = Shapes::StringShape.new(name: 'FieldId')
    FieldIdentifier = Shapes::StructureShape.new(name: 'FieldIdentifier')
    FieldItem = Shapes::StructureShape.new(name: 'FieldItem')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    FieldNamespace = Shapes::StringShape.new(name: 'FieldNamespace')
    FieldOption = Shapes::StructureShape.new(name: 'FieldOption')
    FieldOptionError = Shapes::StructureShape.new(name: 'FieldOptionError')
    FieldOptionName = Shapes::StringShape.new(name: 'FieldOptionName')
    FieldOptionValue = Shapes::StringShape.new(name: 'FieldOptionValue')
    FieldOptionsList = Shapes::ListShape.new(name: 'FieldOptionsList')
    FieldSummary = Shapes::StructureShape.new(name: 'FieldSummary')
    FieldType = Shapes::StringShape.new(name: 'FieldType')
    FieldValue = Shapes::StructureShape.new(name: 'FieldValue')
    FieldValueUnion = Shapes::UnionShape.new(name: 'FieldValueUnion')
    FieldValueUnionStringValueString = Shapes::StringShape.new(name: 'FieldValueUnionStringValueString')
    GetCaseEventConfigurationRequest = Shapes::StructureShape.new(name: 'GetCaseEventConfigurationRequest')
    GetCaseEventConfigurationResponse = Shapes::StructureShape.new(name: 'GetCaseEventConfigurationResponse')
    GetCaseRequest = Shapes::StructureShape.new(name: 'GetCaseRequest')
    GetCaseRequestFieldsList = Shapes::ListShape.new(name: 'GetCaseRequestFieldsList')
    GetCaseResponse = Shapes::StructureShape.new(name: 'GetCaseResponse')
    GetCaseResponseFieldsList = Shapes::ListShape.new(name: 'GetCaseResponseFieldsList')
    GetDomainRequest = Shapes::StructureShape.new(name: 'GetDomainRequest')
    GetDomainResponse = Shapes::StructureShape.new(name: 'GetDomainResponse')
    GetFieldResponse = Shapes::StructureShape.new(name: 'GetFieldResponse')
    GetLayoutRequest = Shapes::StructureShape.new(name: 'GetLayoutRequest')
    GetLayoutResponse = Shapes::StructureShape.new(name: 'GetLayoutResponse')
    GetTemplateRequest = Shapes::StructureShape.new(name: 'GetTemplateRequest')
    GetTemplateResponse = Shapes::StructureShape.new(name: 'GetTemplateResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LayoutArn = Shapes::StringShape.new(name: 'LayoutArn')
    LayoutConfiguration = Shapes::StructureShape.new(name: 'LayoutConfiguration')
    LayoutContent = Shapes::UnionShape.new(name: 'LayoutContent')
    LayoutId = Shapes::StringShape.new(name: 'LayoutId')
    LayoutName = Shapes::StringShape.new(name: 'LayoutName')
    LayoutSections = Shapes::StructureShape.new(name: 'LayoutSections')
    LayoutSummary = Shapes::StructureShape.new(name: 'LayoutSummary')
    LayoutSummaryList = Shapes::ListShape.new(name: 'LayoutSummaryList')
    ListCasesForContactRequest = Shapes::StructureShape.new(name: 'ListCasesForContactRequest')
    ListCasesForContactRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCasesForContactRequestMaxResultsInteger')
    ListCasesForContactResponse = Shapes::StructureShape.new(name: 'ListCasesForContactResponse')
    ListCasesForContactResponseCasesList = Shapes::ListShape.new(name: 'ListCasesForContactResponseCasesList')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDomainsRequestMaxResultsInteger')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListFieldOptionsRequest = Shapes::StructureShape.new(name: 'ListFieldOptionsRequest')
    ListFieldOptionsResponse = Shapes::StructureShape.new(name: 'ListFieldOptionsResponse')
    ListFieldsRequest = Shapes::StructureShape.new(name: 'ListFieldsRequest')
    ListFieldsResponse = Shapes::StructureShape.new(name: 'ListFieldsResponse')
    ListFieldsResponseFieldsList = Shapes::ListShape.new(name: 'ListFieldsResponseFieldsList')
    ListLayoutsRequest = Shapes::StructureShape.new(name: 'ListLayoutsRequest')
    ListLayoutsResponse = Shapes::StructureShape.new(name: 'ListLayoutsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTemplatesRequest = Shapes::StructureShape.new(name: 'ListTemplatesRequest')
    ListTemplatesResponse = Shapes::StructureShape.new(name: 'ListTemplatesResponse')
    ListTemplatesResponseTemplatesList = Shapes::ListShape.new(name: 'ListTemplatesResponseTemplatesList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Order = Shapes::StringShape.new(name: 'Order')
    PutCaseEventConfigurationRequest = Shapes::StructureShape.new(name: 'PutCaseEventConfigurationRequest')
    PutCaseEventConfigurationResponse = Shapes::StructureShape.new(name: 'PutCaseEventConfigurationResponse')
    RelatedItemArn = Shapes::StringShape.new(name: 'RelatedItemArn')
    RelatedItemContent = Shapes::UnionShape.new(name: 'RelatedItemContent')
    RelatedItemEventIncludedData = Shapes::StructureShape.new(name: 'RelatedItemEventIncludedData')
    RelatedItemId = Shapes::StringShape.new(name: 'RelatedItemId')
    RelatedItemInputContent = Shapes::UnionShape.new(name: 'RelatedItemInputContent')
    RelatedItemType = Shapes::StringShape.new(name: 'RelatedItemType')
    RelatedItemTypeFilter = Shapes::UnionShape.new(name: 'RelatedItemTypeFilter')
    RequiredField = Shapes::StructureShape.new(name: 'RequiredField')
    RequiredFieldList = Shapes::ListShape.new(name: 'RequiredFieldList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SearchCasesRequest = Shapes::StructureShape.new(name: 'SearchCasesRequest')
    SearchCasesRequestFieldsList = Shapes::ListShape.new(name: 'SearchCasesRequestFieldsList')
    SearchCasesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchCasesRequestMaxResultsInteger')
    SearchCasesRequestSearchTermString = Shapes::StringShape.new(name: 'SearchCasesRequestSearchTermString')
    SearchCasesRequestSortsList = Shapes::ListShape.new(name: 'SearchCasesRequestSortsList')
    SearchCasesResponse = Shapes::StructureShape.new(name: 'SearchCasesResponse')
    SearchCasesResponseCasesList = Shapes::ListShape.new(name: 'SearchCasesResponseCasesList')
    SearchCasesResponseItem = Shapes::StructureShape.new(name: 'SearchCasesResponseItem')
    SearchCasesResponseItemFieldsList = Shapes::ListShape.new(name: 'SearchCasesResponseItemFieldsList')
    SearchRelatedItemsRequest = Shapes::StructureShape.new(name: 'SearchRelatedItemsRequest')
    SearchRelatedItemsRequestFiltersList = Shapes::ListShape.new(name: 'SearchRelatedItemsRequestFiltersList')
    SearchRelatedItemsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchRelatedItemsRequestMaxResultsInteger')
    SearchRelatedItemsResponse = Shapes::StructureShape.new(name: 'SearchRelatedItemsResponse')
    SearchRelatedItemsResponseItem = Shapes::StructureShape.new(name: 'SearchRelatedItemsResponseItem')
    SearchRelatedItemsResponseRelatedItemsList = Shapes::ListShape.new(name: 'SearchRelatedItemsResponseRelatedItemsList')
    Section = Shapes::UnionShape.new(name: 'Section')
    SectionsList = Shapes::ListShape.new(name: 'SectionsList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Sort = Shapes::StructureShape.new(name: 'Sort')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TemplateArn = Shapes::StringShape.new(name: 'TemplateArn')
    TemplateDescription = Shapes::StringShape.new(name: 'TemplateDescription')
    TemplateId = Shapes::StringShape.new(name: 'TemplateId')
    TemplateName = Shapes::StringShape.new(name: 'TemplateName')
    TemplateStatus = Shapes::StringShape.new(name: 'TemplateStatus')
    TemplateStatusFilters = Shapes::ListShape.new(name: 'TemplateStatusFilters')
    TemplateSummary = Shapes::StructureShape.new(name: 'TemplateSummary')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateCaseRequest = Shapes::StructureShape.new(name: 'UpdateCaseRequest')
    UpdateCaseRequestFieldsList = Shapes::ListShape.new(name: 'UpdateCaseRequestFieldsList')
    UpdateCaseResponse = Shapes::StructureShape.new(name: 'UpdateCaseResponse')
    UpdateFieldRequest = Shapes::StructureShape.new(name: 'UpdateFieldRequest')
    UpdateFieldResponse = Shapes::StructureShape.new(name: 'UpdateFieldResponse')
    UpdateLayoutRequest = Shapes::StructureShape.new(name: 'UpdateLayoutRequest')
    UpdateLayoutResponse = Shapes::StructureShape.new(name: 'UpdateLayoutResponse')
    UpdateTemplateRequest = Shapes::StructureShape.new(name: 'UpdateTemplateRequest')
    UpdateTemplateResponse = Shapes::StructureShape.new(name: 'UpdateTemplateResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    ValuesList = Shapes::ListShape.new(name: 'ValuesList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BasicLayout.add_member(:more_info, Shapes::ShapeRef.new(shape: LayoutSections, location_name: "moreInfo"))
    BasicLayout.add_member(:top_panel, Shapes::ShapeRef.new(shape: LayoutSections, location_name: "topPanel"))
    BasicLayout.struct_class = Types::BasicLayout

    BatchGetFieldIdentifierList.member = Shapes::ShapeRef.new(shape: FieldIdentifier)

    BatchGetFieldRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    BatchGetFieldRequest.add_member(:fields, Shapes::ShapeRef.new(shape: BatchGetFieldIdentifierList, required: true, location_name: "fields"))
    BatchGetFieldRequest.struct_class = Types::BatchGetFieldRequest

    BatchGetFieldResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetFieldResponseErrorsList, required: true, location_name: "errors"))
    BatchGetFieldResponse.add_member(:fields, Shapes::ShapeRef.new(shape: BatchGetFieldResponseFieldsList, required: true, location_name: "fields"))
    BatchGetFieldResponse.struct_class = Types::BatchGetFieldResponse

    BatchGetFieldResponseErrorsList.member = Shapes::ShapeRef.new(shape: FieldError)

    BatchGetFieldResponseFieldsList.member = Shapes::ShapeRef.new(shape: GetFieldResponse)

    BatchPutFieldOptionsRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    BatchPutFieldOptionsRequest.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location: "uri", location_name: "fieldId"))
    BatchPutFieldOptionsRequest.add_member(:options, Shapes::ShapeRef.new(shape: BatchPutFieldOptionsRequestOptionsList, required: true, location_name: "options"))
    BatchPutFieldOptionsRequest.struct_class = Types::BatchPutFieldOptionsRequest

    BatchPutFieldOptionsRequestOptionsList.member = Shapes::ShapeRef.new(shape: FieldOption)

    BatchPutFieldOptionsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchPutFieldOptionsResponseErrorsList, location_name: "errors"))
    BatchPutFieldOptionsResponse.struct_class = Types::BatchPutFieldOptionsResponse

    BatchPutFieldOptionsResponseErrorsList.member = Shapes::ShapeRef.new(shape: FieldOptionError)

    CaseEventIncludedData.add_member(:fields, Shapes::ShapeRef.new(shape: CaseEventIncludedDataFieldsList, required: true, location_name: "fields"))
    CaseEventIncludedData.struct_class = Types::CaseEventIncludedData

    CaseEventIncludedDataFieldsList.member = Shapes::ShapeRef.new(shape: FieldIdentifier)

    CaseFilter.add_member(:and_all, Shapes::ShapeRef.new(shape: CaseFilterAndAllList, location_name: "andAll"))
    CaseFilter.add_member(:field, Shapes::ShapeRef.new(shape: FieldFilter, location_name: "field"))
    CaseFilter.add_member(:not, Shapes::ShapeRef.new(shape: CaseFilter, location_name: "not"))
    CaseFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CaseFilter.add_member_subclass(:and_all, Types::CaseFilter::AndAll)
    CaseFilter.add_member_subclass(:field, Types::CaseFilter::Field)
    CaseFilter.add_member_subclass(:not, Types::CaseFilter::Not)
    CaseFilter.add_member_subclass(:unknown, Types::CaseFilter::Unknown)
    CaseFilter.struct_class = Types::CaseFilter

    CaseFilterAndAllList.member = Shapes::ShapeRef.new(shape: CaseFilter)

    CaseSummary.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location_name: "caseId"))
    CaseSummary.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    CaseSummary.struct_class = Types::CaseSummary

    CommentContent.add_member(:body, Shapes::ShapeRef.new(shape: CommentBody, required: true, location_name: "body"))
    CommentContent.add_member(:content_type, Shapes::ShapeRef.new(shape: CommentBodyTextType, required: true, location_name: "contentType"))
    CommentContent.struct_class = Types::CommentContent

    CommentFilter.struct_class = Types::CommentFilter

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    Contact.add_member(:contact_arn, Shapes::ShapeRef.new(shape: ContactArn, required: true, location_name: "contactArn"))
    Contact.struct_class = Types::Contact

    ContactContent.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, required: true, location_name: "channel"))
    ContactContent.add_member(:connected_to_system_time, Shapes::ShapeRef.new(shape: ConnectedToSystemTime, required: true, location_name: "connectedToSystemTime"))
    ContactContent.add_member(:contact_arn, Shapes::ShapeRef.new(shape: ContactArn, required: true, location_name: "contactArn"))
    ContactContent.struct_class = Types::ContactContent

    ContactFilter.add_member(:channel, Shapes::ShapeRef.new(shape: ContactFilterChannelList, location_name: "channel"))
    ContactFilter.add_member(:contact_arn, Shapes::ShapeRef.new(shape: ContactArn, location_name: "contactArn"))
    ContactFilter.struct_class = Types::ContactFilter

    ContactFilterChannelList.member = Shapes::ShapeRef.new(shape: Channel)

    CreateCaseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateCaseRequestClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateCaseRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    CreateCaseRequest.add_member(:fields, Shapes::ShapeRef.new(shape: CreateCaseRequestFieldsList, required: true, location_name: "fields"))
    CreateCaseRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    CreateCaseRequest.struct_class = Types::CreateCaseRequest

    CreateCaseRequestFieldsList.member = Shapes::ShapeRef.new(shape: FieldValue)

    CreateCaseResponse.add_member(:case_arn, Shapes::ShapeRef.new(shape: CaseArn, required: true, location_name: "caseArn"))
    CreateCaseResponse.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location_name: "caseId"))
    CreateCaseResponse.struct_class = Types::CreateCaseResponse

    CreateDomainRequest.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResponse.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "domainArn"))
    CreateDomainResponse.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "domainStatus"))
    CreateDomainResponse.struct_class = Types::CreateDomainResponse

    CreateFieldRequest.add_member(:description, Shapes::ShapeRef.new(shape: FieldDescription, location_name: "description"))
    CreateFieldRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    CreateFieldRequest.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "name"))
    CreateFieldRequest.add_member(:type, Shapes::ShapeRef.new(shape: FieldType, required: true, location_name: "type"))
    CreateFieldRequest.struct_class = Types::CreateFieldRequest

    CreateFieldResponse.add_member(:field_arn, Shapes::ShapeRef.new(shape: FieldArn, required: true, location_name: "fieldArn"))
    CreateFieldResponse.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "fieldId"))
    CreateFieldResponse.struct_class = Types::CreateFieldResponse

    CreateLayoutRequest.add_member(:content, Shapes::ShapeRef.new(shape: LayoutContent, required: true, location_name: "content"))
    CreateLayoutRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    CreateLayoutRequest.add_member(:name, Shapes::ShapeRef.new(shape: LayoutName, required: true, location_name: "name"))
    CreateLayoutRequest.struct_class = Types::CreateLayoutRequest

    CreateLayoutResponse.add_member(:layout_arn, Shapes::ShapeRef.new(shape: LayoutArn, required: true, location_name: "layoutArn"))
    CreateLayoutResponse.add_member(:layout_id, Shapes::ShapeRef.new(shape: LayoutId, required: true, location_name: "layoutId"))
    CreateLayoutResponse.struct_class = Types::CreateLayoutResponse

    CreateRelatedItemRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    CreateRelatedItemRequest.add_member(:content, Shapes::ShapeRef.new(shape: RelatedItemInputContent, required: true, location_name: "content"))
    CreateRelatedItemRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    CreateRelatedItemRequest.add_member(:type, Shapes::ShapeRef.new(shape: RelatedItemType, required: true, location_name: "type"))
    CreateRelatedItemRequest.struct_class = Types::CreateRelatedItemRequest

    CreateRelatedItemResponse.add_member(:related_item_arn, Shapes::ShapeRef.new(shape: RelatedItemArn, required: true, location_name: "relatedItemArn"))
    CreateRelatedItemResponse.add_member(:related_item_id, Shapes::ShapeRef.new(shape: RelatedItemId, required: true, location_name: "relatedItemId"))
    CreateRelatedItemResponse.struct_class = Types::CreateRelatedItemResponse

    CreateTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: TemplateDescription, location_name: "description"))
    CreateTemplateRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    CreateTemplateRequest.add_member(:layout_configuration, Shapes::ShapeRef.new(shape: LayoutConfiguration, location_name: "layoutConfiguration"))
    CreateTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "name"))
    CreateTemplateRequest.add_member(:required_fields, Shapes::ShapeRef.new(shape: RequiredFieldList, location_name: "requiredFields"))
    CreateTemplateRequest.add_member(:status, Shapes::ShapeRef.new(shape: TemplateStatus, location_name: "status"))
    CreateTemplateRequest.struct_class = Types::CreateTemplateRequest

    CreateTemplateResponse.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location_name: "templateArn"))
    CreateTemplateResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    CreateTemplateResponse.struct_class = Types::CreateTemplateResponse

    DeleteDomainRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteDomainResponse.struct_class = Types::DeleteDomainResponse

    DomainSummary.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "domainArn"))
    DomainSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    DomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    DomainSummary.struct_class = Types::DomainSummary

    DomainSummaryList.member = Shapes::ShapeRef.new(shape: DomainSummary)

    EventBridgeConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    EventBridgeConfiguration.add_member(:included_data, Shapes::ShapeRef.new(shape: EventIncludedData, location_name: "includedData"))
    EventBridgeConfiguration.struct_class = Types::EventBridgeConfiguration

    EventIncludedData.add_member(:case_data, Shapes::ShapeRef.new(shape: CaseEventIncludedData, location_name: "caseData"))
    EventIncludedData.add_member(:related_item_data, Shapes::ShapeRef.new(shape: RelatedItemEventIncludedData, location_name: "relatedItemData"))
    EventIncludedData.struct_class = Types::EventIncludedData

    FieldError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorCode"))
    FieldError.add_member(:id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "id"))
    FieldError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    FieldError.struct_class = Types::FieldError

    FieldFilter.add_member(:contains, Shapes::ShapeRef.new(shape: FieldValue, location_name: "contains"))
    FieldFilter.add_member(:equal_to, Shapes::ShapeRef.new(shape: FieldValue, location_name: "equalTo"))
    FieldFilter.add_member(:greater_than, Shapes::ShapeRef.new(shape: FieldValue, location_name: "greaterThan"))
    FieldFilter.add_member(:greater_than_or_equal_to, Shapes::ShapeRef.new(shape: FieldValue, location_name: "greaterThanOrEqualTo"))
    FieldFilter.add_member(:less_than, Shapes::ShapeRef.new(shape: FieldValue, location_name: "lessThan"))
    FieldFilter.add_member(:less_than_or_equal_to, Shapes::ShapeRef.new(shape: FieldValue, location_name: "lessThanOrEqualTo"))
    FieldFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FieldFilter.add_member_subclass(:contains, Types::FieldFilter::Contains)
    FieldFilter.add_member_subclass(:equal_to, Types::FieldFilter::EqualTo)
    FieldFilter.add_member_subclass(:greater_than, Types::FieldFilter::GreaterThan)
    FieldFilter.add_member_subclass(:greater_than_or_equal_to, Types::FieldFilter::GreaterThanOrEqualTo)
    FieldFilter.add_member_subclass(:less_than, Types::FieldFilter::LessThan)
    FieldFilter.add_member_subclass(:less_than_or_equal_to, Types::FieldFilter::LessThanOrEqualTo)
    FieldFilter.add_member_subclass(:unknown, Types::FieldFilter::Unknown)
    FieldFilter.struct_class = Types::FieldFilter

    FieldGroup.add_member(:fields, Shapes::ShapeRef.new(shape: FieldGroupFieldsList, required: true, location_name: "fields"))
    FieldGroup.add_member(:name, Shapes::ShapeRef.new(shape: FieldGroupNameString, location_name: "name"))
    FieldGroup.struct_class = Types::FieldGroup

    FieldGroupFieldsList.member = Shapes::ShapeRef.new(shape: FieldItem)

    FieldIdentifier.add_member(:id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "id"))
    FieldIdentifier.struct_class = Types::FieldIdentifier

    FieldItem.add_member(:id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "id"))
    FieldItem.struct_class = Types::FieldItem

    FieldOption.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "active"))
    FieldOption.add_member(:name, Shapes::ShapeRef.new(shape: FieldOptionName, required: true, location_name: "name"))
    FieldOption.add_member(:value, Shapes::ShapeRef.new(shape: FieldOptionValue, required: true, location_name: "value"))
    FieldOption.struct_class = Types::FieldOption

    FieldOptionError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorCode"))
    FieldOptionError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    FieldOptionError.add_member(:value, Shapes::ShapeRef.new(shape: FieldOptionValue, required: true, location_name: "value"))
    FieldOptionError.struct_class = Types::FieldOptionError

    FieldOptionsList.member = Shapes::ShapeRef.new(shape: FieldOption)

    FieldSummary.add_member(:field_arn, Shapes::ShapeRef.new(shape: FieldArn, required: true, location_name: "fieldArn"))
    FieldSummary.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "fieldId"))
    FieldSummary.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "name"))
    FieldSummary.add_member(:namespace, Shapes::ShapeRef.new(shape: FieldNamespace, required: true, location_name: "namespace"))
    FieldSummary.add_member(:type, Shapes::ShapeRef.new(shape: FieldType, required: true, location_name: "type"))
    FieldSummary.struct_class = Types::FieldSummary

    FieldValue.add_member(:id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "id"))
    FieldValue.add_member(:value, Shapes::ShapeRef.new(shape: FieldValueUnion, required: true, location_name: "value"))
    FieldValue.struct_class = Types::FieldValue

    FieldValueUnion.add_member(:boolean_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "booleanValue"))
    FieldValueUnion.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "doubleValue"))
    FieldValueUnion.add_member(:string_value, Shapes::ShapeRef.new(shape: FieldValueUnionStringValueString, location_name: "stringValue"))
    FieldValueUnion.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FieldValueUnion.add_member_subclass(:boolean_value, Types::FieldValueUnion::BooleanValue)
    FieldValueUnion.add_member_subclass(:double_value, Types::FieldValueUnion::DoubleValue)
    FieldValueUnion.add_member_subclass(:string_value, Types::FieldValueUnion::StringValue)
    FieldValueUnion.add_member_subclass(:unknown, Types::FieldValueUnion::Unknown)
    FieldValueUnion.struct_class = Types::FieldValueUnion

    GetCaseEventConfigurationRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    GetCaseEventConfigurationRequest.struct_class = Types::GetCaseEventConfigurationRequest

    GetCaseEventConfigurationResponse.add_member(:event_bridge, Shapes::ShapeRef.new(shape: EventBridgeConfiguration, required: true, location_name: "eventBridge"))
    GetCaseEventConfigurationResponse.struct_class = Types::GetCaseEventConfigurationResponse

    GetCaseRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    GetCaseRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    GetCaseRequest.add_member(:fields, Shapes::ShapeRef.new(shape: GetCaseRequestFieldsList, required: true, location_name: "fields"))
    GetCaseRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetCaseRequest.struct_class = Types::GetCaseRequest

    GetCaseRequestFieldsList.member = Shapes::ShapeRef.new(shape: FieldIdentifier)

    GetCaseResponse.add_member(:fields, Shapes::ShapeRef.new(shape: GetCaseResponseFieldsList, required: true, location_name: "fields"))
    GetCaseResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetCaseResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetCaseResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    GetCaseResponse.struct_class = Types::GetCaseResponse

    GetCaseResponseFieldsList.member = Shapes::ShapeRef.new(shape: FieldValue)

    GetDomainRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    GetDomainRequest.struct_class = Types::GetDomainRequest

    GetDomainResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, required: true, location_name: "createdTime"))
    GetDomainResponse.add_member(:domain_arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "domainArn"))
    GetDomainResponse.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "domainStatus"))
    GetDomainResponse.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    GetDomainResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetDomainResponse.struct_class = Types::GetDomainResponse

    GetFieldResponse.add_member(:description, Shapes::ShapeRef.new(shape: FieldDescription, location_name: "description"))
    GetFieldResponse.add_member(:field_arn, Shapes::ShapeRef.new(shape: FieldArn, required: true, location_name: "fieldArn"))
    GetFieldResponse.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "fieldId"))
    GetFieldResponse.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "name"))
    GetFieldResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: FieldNamespace, required: true, location_name: "namespace"))
    GetFieldResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetFieldResponse.add_member(:type, Shapes::ShapeRef.new(shape: FieldType, required: true, location_name: "type"))
    GetFieldResponse.struct_class = Types::GetFieldResponse

    GetLayoutRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    GetLayoutRequest.add_member(:layout_id, Shapes::ShapeRef.new(shape: LayoutId, required: true, location: "uri", location_name: "layoutId"))
    GetLayoutRequest.struct_class = Types::GetLayoutRequest

    GetLayoutResponse.add_member(:content, Shapes::ShapeRef.new(shape: LayoutContent, required: true, location_name: "content"))
    GetLayoutResponse.add_member(:layout_arn, Shapes::ShapeRef.new(shape: LayoutArn, required: true, location_name: "layoutArn"))
    GetLayoutResponse.add_member(:layout_id, Shapes::ShapeRef.new(shape: LayoutId, required: true, location_name: "layoutId"))
    GetLayoutResponse.add_member(:name, Shapes::ShapeRef.new(shape: LayoutName, required: true, location_name: "name"))
    GetLayoutResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetLayoutResponse.struct_class = Types::GetLayoutResponse

    GetTemplateRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    GetTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location: "uri", location_name: "templateId"))
    GetTemplateRequest.struct_class = Types::GetTemplateRequest

    GetTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: TemplateDescription, location_name: "description"))
    GetTemplateResponse.add_member(:layout_configuration, Shapes::ShapeRef.new(shape: LayoutConfiguration, location_name: "layoutConfiguration"))
    GetTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "name"))
    GetTemplateResponse.add_member(:required_fields, Shapes::ShapeRef.new(shape: RequiredFieldList, location_name: "requiredFields"))
    GetTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: TemplateStatus, required: true, location_name: "status"))
    GetTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetTemplateResponse.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location_name: "templateArn"))
    GetTemplateResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    GetTemplateResponse.struct_class = Types::GetTemplateResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    LayoutConfiguration.add_member(:default_layout, Shapes::ShapeRef.new(shape: LayoutId, location_name: "defaultLayout"))
    LayoutConfiguration.struct_class = Types::LayoutConfiguration

    LayoutContent.add_member(:basic, Shapes::ShapeRef.new(shape: BasicLayout, location_name: "basic"))
    LayoutContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    LayoutContent.add_member_subclass(:basic, Types::LayoutContent::Basic)
    LayoutContent.add_member_subclass(:unknown, Types::LayoutContent::Unknown)
    LayoutContent.struct_class = Types::LayoutContent

    LayoutSections.add_member(:sections, Shapes::ShapeRef.new(shape: SectionsList, location_name: "sections"))
    LayoutSections.struct_class = Types::LayoutSections

    LayoutSummary.add_member(:layout_arn, Shapes::ShapeRef.new(shape: LayoutArn, required: true, location_name: "layoutArn"))
    LayoutSummary.add_member(:layout_id, Shapes::ShapeRef.new(shape: LayoutId, required: true, location_name: "layoutId"))
    LayoutSummary.add_member(:name, Shapes::ShapeRef.new(shape: LayoutName, required: true, location_name: "name"))
    LayoutSummary.struct_class = Types::LayoutSummary

    LayoutSummaryList.member = Shapes::ShapeRef.new(shape: LayoutSummary)

    ListCasesForContactRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: ContactArn, required: true, location_name: "contactArn"))
    ListCasesForContactRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    ListCasesForContactRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCasesForContactRequestMaxResultsInteger, location_name: "maxResults"))
    ListCasesForContactRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCasesForContactRequest.struct_class = Types::ListCasesForContactRequest

    ListCasesForContactResponse.add_member(:cases, Shapes::ShapeRef.new(shape: ListCasesForContactResponseCasesList, required: true, location_name: "cases"))
    ListCasesForContactResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCasesForContactResponse.struct_class = Types::ListCasesForContactResponse

    ListCasesForContactResponseCasesList.member = Shapes::ShapeRef.new(shape: CaseSummary)

    ListDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDomainsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:domains, Shapes::ShapeRef.new(shape: DomainSummaryList, required: true, location_name: "domains"))
    ListDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

    ListFieldOptionsRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    ListFieldOptionsRequest.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location: "uri", location_name: "fieldId"))
    ListFieldOptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFieldOptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFieldOptionsRequest.add_member(:values, Shapes::ShapeRef.new(shape: ValuesList, location: "querystring", location_name: "values"))
    ListFieldOptionsRequest.struct_class = Types::ListFieldOptionsRequest

    ListFieldOptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFieldOptionsResponse.add_member(:options, Shapes::ShapeRef.new(shape: FieldOptionsList, required: true, location_name: "options"))
    ListFieldOptionsResponse.struct_class = Types::ListFieldOptionsResponse

    ListFieldsRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    ListFieldsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFieldsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFieldsRequest.struct_class = Types::ListFieldsRequest

    ListFieldsResponse.add_member(:fields, Shapes::ShapeRef.new(shape: ListFieldsResponseFieldsList, required: true, location_name: "fields"))
    ListFieldsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFieldsResponse.struct_class = Types::ListFieldsResponse

    ListFieldsResponseFieldsList.member = Shapes::ShapeRef.new(shape: FieldSummary)

    ListLayoutsRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    ListLayoutsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListLayoutsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListLayoutsRequest.struct_class = Types::ListLayoutsRequest

    ListLayoutsResponse.add_member(:layouts, Shapes::ShapeRef.new(shape: LayoutSummaryList, required: true, location_name: "layouts"))
    ListLayoutsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLayoutsResponse.struct_class = Types::ListLayoutsResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTemplatesRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    ListTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTemplatesRequest.add_member(:status, Shapes::ShapeRef.new(shape: TemplateStatusFilters, location: "querystring", location_name: "status"))
    ListTemplatesRequest.struct_class = Types::ListTemplatesRequest

    ListTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTemplatesResponse.add_member(:templates, Shapes::ShapeRef.new(shape: ListTemplatesResponseTemplatesList, required: true, location_name: "templates"))
    ListTemplatesResponse.struct_class = Types::ListTemplatesResponse

    ListTemplatesResponseTemplatesList.member = Shapes::ShapeRef.new(shape: TemplateSummary)

    PutCaseEventConfigurationRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    PutCaseEventConfigurationRequest.add_member(:event_bridge, Shapes::ShapeRef.new(shape: EventBridgeConfiguration, required: true, location_name: "eventBridge"))
    PutCaseEventConfigurationRequest.struct_class = Types::PutCaseEventConfigurationRequest

    PutCaseEventConfigurationResponse.struct_class = Types::PutCaseEventConfigurationResponse

    RelatedItemContent.add_member(:comment, Shapes::ShapeRef.new(shape: CommentContent, location_name: "comment"))
    RelatedItemContent.add_member(:contact, Shapes::ShapeRef.new(shape: ContactContent, location_name: "contact"))
    RelatedItemContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RelatedItemContent.add_member_subclass(:comment, Types::RelatedItemContent::Comment)
    RelatedItemContent.add_member_subclass(:contact, Types::RelatedItemContent::Contact)
    RelatedItemContent.add_member_subclass(:unknown, Types::RelatedItemContent::Unknown)
    RelatedItemContent.struct_class = Types::RelatedItemContent

    RelatedItemEventIncludedData.add_member(:include_content, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "includeContent"))
    RelatedItemEventIncludedData.struct_class = Types::RelatedItemEventIncludedData

    RelatedItemInputContent.add_member(:comment, Shapes::ShapeRef.new(shape: CommentContent, location_name: "comment"))
    RelatedItemInputContent.add_member(:contact, Shapes::ShapeRef.new(shape: Contact, location_name: "contact"))
    RelatedItemInputContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RelatedItemInputContent.add_member_subclass(:comment, Types::RelatedItemInputContent::Comment)
    RelatedItemInputContent.add_member_subclass(:contact, Types::RelatedItemInputContent::Contact)
    RelatedItemInputContent.add_member_subclass(:unknown, Types::RelatedItemInputContent::Unknown)
    RelatedItemInputContent.struct_class = Types::RelatedItemInputContent

    RelatedItemTypeFilter.add_member(:comment, Shapes::ShapeRef.new(shape: CommentFilter, location_name: "comment"))
    RelatedItemTypeFilter.add_member(:contact, Shapes::ShapeRef.new(shape: ContactFilter, location_name: "contact"))
    RelatedItemTypeFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RelatedItemTypeFilter.add_member_subclass(:comment, Types::RelatedItemTypeFilter::Comment)
    RelatedItemTypeFilter.add_member_subclass(:contact, Types::RelatedItemTypeFilter::Contact)
    RelatedItemTypeFilter.add_member_subclass(:unknown, Types::RelatedItemTypeFilter::Unknown)
    RelatedItemTypeFilter.struct_class = Types::RelatedItemTypeFilter

    RequiredField.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "fieldId"))
    RequiredField.struct_class = Types::RequiredField

    RequiredFieldList.member = Shapes::ShapeRef.new(shape: RequiredField)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SearchCasesRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    SearchCasesRequest.add_member(:fields, Shapes::ShapeRef.new(shape: SearchCasesRequestFieldsList, location_name: "fields"))
    SearchCasesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: CaseFilter, location_name: "filter"))
    SearchCasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchCasesRequestMaxResultsInteger, location_name: "maxResults"))
    SearchCasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchCasesRequest.add_member(:search_term, Shapes::ShapeRef.new(shape: SearchCasesRequestSearchTermString, location_name: "searchTerm"))
    SearchCasesRequest.add_member(:sorts, Shapes::ShapeRef.new(shape: SearchCasesRequestSortsList, location_name: "sorts"))
    SearchCasesRequest.struct_class = Types::SearchCasesRequest

    SearchCasesRequestFieldsList.member = Shapes::ShapeRef.new(shape: FieldIdentifier)

    SearchCasesRequestSortsList.member = Shapes::ShapeRef.new(shape: Sort)

    SearchCasesResponse.add_member(:cases, Shapes::ShapeRef.new(shape: SearchCasesResponseCasesList, required: true, location_name: "cases"))
    SearchCasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchCasesResponse.struct_class = Types::SearchCasesResponse

    SearchCasesResponseCasesList.member = Shapes::ShapeRef.new(shape: SearchCasesResponseItem)

    SearchCasesResponseItem.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location_name: "caseId"))
    SearchCasesResponseItem.add_member(:fields, Shapes::ShapeRef.new(shape: SearchCasesResponseItemFieldsList, required: true, location_name: "fields"))
    SearchCasesResponseItem.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    SearchCasesResponseItem.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    SearchCasesResponseItem.struct_class = Types::SearchCasesResponseItem

    SearchCasesResponseItemFieldsList.member = Shapes::ShapeRef.new(shape: FieldValue)

    SearchRelatedItemsRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    SearchRelatedItemsRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    SearchRelatedItemsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchRelatedItemsRequestFiltersList, location_name: "filters"))
    SearchRelatedItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchRelatedItemsRequestMaxResultsInteger, location_name: "maxResults"))
    SearchRelatedItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchRelatedItemsRequest.struct_class = Types::SearchRelatedItemsRequest

    SearchRelatedItemsRequestFiltersList.member = Shapes::ShapeRef.new(shape: RelatedItemTypeFilter)

    SearchRelatedItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchRelatedItemsResponse.add_member(:related_items, Shapes::ShapeRef.new(shape: SearchRelatedItemsResponseRelatedItemsList, required: true, location_name: "relatedItems"))
    SearchRelatedItemsResponse.struct_class = Types::SearchRelatedItemsResponse

    SearchRelatedItemsResponseItem.add_member(:association_time, Shapes::ShapeRef.new(shape: AssociationTime, required: true, location_name: "associationTime"))
    SearchRelatedItemsResponseItem.add_member(:content, Shapes::ShapeRef.new(shape: RelatedItemContent, required: true, location_name: "content"))
    SearchRelatedItemsResponseItem.add_member(:related_item_id, Shapes::ShapeRef.new(shape: RelatedItemId, required: true, location_name: "relatedItemId"))
    SearchRelatedItemsResponseItem.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    SearchRelatedItemsResponseItem.add_member(:type, Shapes::ShapeRef.new(shape: RelatedItemType, required: true, location_name: "type"))
    SearchRelatedItemsResponseItem.struct_class = Types::SearchRelatedItemsResponseItem

    SearchRelatedItemsResponseRelatedItemsList.member = Shapes::ShapeRef.new(shape: SearchRelatedItemsResponseItem)

    Section.add_member(:field_group, Shapes::ShapeRef.new(shape: FieldGroup, location_name: "fieldGroup"))
    Section.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Section.add_member_subclass(:field_group, Types::Section::FieldGroup)
    Section.add_member_subclass(:unknown, Types::Section::Unknown)
    Section.struct_class = Types::Section

    SectionsList.member = Shapes::ShapeRef.new(shape: Section)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Sort.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "fieldId"))
    Sort.add_member(:sort_order, Shapes::ShapeRef.new(shape: Order, required: true, location_name: "sortOrder"))
    Sort.struct_class = Types::Sort

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: String)
    Tags.value = Shapes::ShapeRef.new(shape: String)

    TemplateStatusFilters.member = Shapes::ShapeRef.new(shape: TemplateStatus)

    TemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "name"))
    TemplateSummary.add_member(:status, Shapes::ShapeRef.new(shape: TemplateStatus, required: true, location_name: "status"))
    TemplateSummary.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location_name: "templateArn"))
    TemplateSummary.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    TemplateSummary.struct_class = Types::TemplateSummary

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateCaseRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location: "uri", location_name: "caseId"))
    UpdateCaseRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    UpdateCaseRequest.add_member(:fields, Shapes::ShapeRef.new(shape: UpdateCaseRequestFieldsList, required: true, location_name: "fields"))
    UpdateCaseRequest.struct_class = Types::UpdateCaseRequest

    UpdateCaseRequestFieldsList.member = Shapes::ShapeRef.new(shape: FieldValue)

    UpdateCaseResponse.struct_class = Types::UpdateCaseResponse

    UpdateFieldRequest.add_member(:description, Shapes::ShapeRef.new(shape: FieldDescription, location_name: "description"))
    UpdateFieldRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    UpdateFieldRequest.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location: "uri", location_name: "fieldId"))
    UpdateFieldRequest.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, location_name: "name"))
    UpdateFieldRequest.struct_class = Types::UpdateFieldRequest

    UpdateFieldResponse.struct_class = Types::UpdateFieldResponse

    UpdateLayoutRequest.add_member(:content, Shapes::ShapeRef.new(shape: LayoutContent, location_name: "content"))
    UpdateLayoutRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    UpdateLayoutRequest.add_member(:layout_id, Shapes::ShapeRef.new(shape: LayoutId, required: true, location: "uri", location_name: "layoutId"))
    UpdateLayoutRequest.add_member(:name, Shapes::ShapeRef.new(shape: LayoutName, location_name: "name"))
    UpdateLayoutRequest.struct_class = Types::UpdateLayoutRequest

    UpdateLayoutResponse.struct_class = Types::UpdateLayoutResponse

    UpdateTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: TemplateDescription, location_name: "description"))
    UpdateTemplateRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    UpdateTemplateRequest.add_member(:layout_configuration, Shapes::ShapeRef.new(shape: LayoutConfiguration, location_name: "layoutConfiguration"))
    UpdateTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "name"))
    UpdateTemplateRequest.add_member(:required_fields, Shapes::ShapeRef.new(shape: RequiredFieldList, location_name: "requiredFields"))
    UpdateTemplateRequest.add_member(:status, Shapes::ShapeRef.new(shape: TemplateStatus, location_name: "status"))
    UpdateTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location: "uri", location_name: "templateId"))
    UpdateTemplateRequest.struct_class = Types::UpdateTemplateRequest

    UpdateTemplateResponse.struct_class = Types::UpdateTemplateResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    ValuesList.member = Shapes::ShapeRef.new(shape: Value)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-10-03"

      api.metadata = {
        "apiVersion" => "2022-10-03",
        "endpointPrefix" => "cases",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "ConnectCases",
        "serviceFullName" => "Amazon Connect Cases",
        "serviceId" => "ConnectCases",
        "signatureVersion" => "v4",
        "signingName" => "cases",
        "uid" => "connectcases-2022-10-03",
      }

      api.add_operation(:batch_get_field, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetField"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/fields-batch"
        o.input = Shapes::ShapeRef.new(shape: BatchGetFieldRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetFieldResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_put_field_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutFieldOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{domainId}/fields/{fieldId}/options"
        o.input = Shapes::ShapeRef.new(shape: BatchPutFieldOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutFieldOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCase"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/cases"
        o.input = Shapes::ShapeRef.new(shape: CreateCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/domains"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_field, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateField"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/fields"
        o.input = Shapes::ShapeRef.new(shape: CreateFieldRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFieldResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_layout, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLayout"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/layouts"
        o.input = Shapes::ShapeRef.new(shape: CreateLayoutRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLayoutResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_related_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRelatedItem"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/cases/{caseId}/related-items/"
        o.input = Shapes::ShapeRef.new(shape: CreateRelatedItemRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRelatedItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/templates"
        o.input = Shapes::ShapeRef.new(shape: CreateTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{domainId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCase"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/cases/{caseId}"
        o.input = Shapes::ShapeRef.new(shape: GetCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_case_event_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCaseEventConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/case-event-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetCaseEventConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCaseEventConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomain"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_layout, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLayout"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/layouts/{layoutId}"
        o.input = Shapes::ShapeRef.new(shape: GetLayoutRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLayoutResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/templates/{templateId}"
        o.input = Shapes::ShapeRef.new(shape: GetTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_cases_for_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCasesForContact"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/list-cases-for-contact"
        o.input = Shapes::ShapeRef.new(shape: ListCasesForContactRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCasesForContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/domains-list"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_field_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFieldOptions"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/fields/{fieldId}/options-list"
        o.input = Shapes::ShapeRef.new(shape: ListFieldOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFieldOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fields, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFields"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/fields-list"
        o.input = Shapes::ShapeRef.new(shape: ListFieldsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFieldsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_layouts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLayouts"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/layouts-list"
        o.input = Shapes::ShapeRef.new(shape: ListLayoutsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLayoutsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/templates-list"
        o.input = Shapes::ShapeRef.new(shape: ListTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_case_event_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutCaseEventConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{domainId}/case-event-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutCaseEventConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutCaseEventConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:search_cases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchCases"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/cases-search"
        o.input = Shapes::ShapeRef.new(shape: SearchCasesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchCasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_related_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchRelatedItems"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/cases/{caseId}/related-items-search"
        o.input = Shapes::ShapeRef.new(shape: SearchRelatedItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchRelatedItemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCase"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{domainId}/cases/{caseId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_field, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateField"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{domainId}/fields/{fieldId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFieldRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFieldResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_layout, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLayout"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{domainId}/layouts/{layoutId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLayoutRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLayoutResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{domainId}/templates/{templateId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
