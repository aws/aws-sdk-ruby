# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PartnerCentralChannel
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptChannelHandshakeDetail = Shapes::StructureShape.new(name: 'AcceptChannelHandshakeDetail')
    AcceptChannelHandshakeRequest = Shapes::StructureShape.new(name: 'AcceptChannelHandshakeRequest')
    AcceptChannelHandshakeResponse = Shapes::StructureShape.new(name: 'AcceptChannelHandshakeResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountScope = Shapes::StringShape.new(name: 'AccountScope')
    Address = Shapes::StructureShape.new(name: 'Address')
    AddressLine = Shapes::StringShape.new(name: 'AddressLine')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociatedResourceId = Shapes::StringShape.new(name: 'AssociatedResourceId')
    AssociatedResourceIdentifier = Shapes::StringShape.new(name: 'AssociatedResourceIdentifier')
    AssociatedResourceIdentifierList = Shapes::ListShape.new(name: 'AssociatedResourceIdentifierList')
    AssociationType = Shapes::StringShape.new(name: 'AssociationType')
    AssociationTypeList = Shapes::ListShape.new(name: 'AssociationTypeList')
    CancelChannelContractDetail = Shapes::StructureShape.new(name: 'CancelChannelContractDetail')
    CancelChannelContractRequest = Shapes::StructureShape.new(name: 'CancelChannelContractRequest')
    CancelChannelContractResponse = Shapes::StructureShape.new(name: 'CancelChannelContractResponse')
    CancelChannelHandshakeDetail = Shapes::StructureShape.new(name: 'CancelChannelHandshakeDetail')
    CancelChannelHandshakeRequest = Shapes::StructureShape.new(name: 'CancelChannelHandshakeRequest')
    CancelChannelHandshakeResponse = Shapes::StructureShape.new(name: 'CancelChannelHandshakeResponse')
    CancellationReason = Shapes::StringShape.new(name: 'CancellationReason')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    ChannelContractDetail = Shapes::StructureShape.new(name: 'ChannelContractDetail')
    ChannelContractDetails = Shapes::UnionShape.new(name: 'ChannelContractDetails')
    ChannelContractId = Shapes::StringShape.new(name: 'ChannelContractId')
    ChannelContractIdentifier = Shapes::StringShape.new(name: 'ChannelContractIdentifier')
    ChannelContractLegalEntityName = Shapes::StringShape.new(name: 'ChannelContractLegalEntityName')
    ChannelContractLegalEntityNameFilterList = Shapes::ListShape.new(name: 'ChannelContractLegalEntityNameFilterList')
    ChannelContractPayload = Shapes::UnionShape.new(name: 'ChannelContractPayload')
    ChannelContractSignatoryEmail = Shapes::StringShape.new(name: 'ChannelContractSignatoryEmail')
    ChannelContractSignatoryName = Shapes::StringShape.new(name: 'ChannelContractSignatoryName')
    ChannelContractStatus = Shapes::StringShape.new(name: 'ChannelContractStatus')
    ChannelContractStatusFilterList = Shapes::ListShape.new(name: 'ChannelContractStatusFilterList')
    ChannelContractSummaries = Shapes::ListShape.new(name: 'ChannelContractSummaries')
    ChannelContractSummary = Shapes::StructureShape.new(name: 'ChannelContractSummary')
    ChannelContractSummaryDetails = Shapes::UnionShape.new(name: 'ChannelContractSummaryDetails')
    ChannelContractType = Shapes::StringShape.new(name: 'ChannelContractType')
    ChannelHandshakeId = Shapes::StringShape.new(name: 'ChannelHandshakeId')
    ChannelHandshakeIdentifier = Shapes::StringShape.new(name: 'ChannelHandshakeIdentifier')
    ChannelHandshakePayload = Shapes::UnionShape.new(name: 'ChannelHandshakePayload')
    ChannelHandshakeSummaries = Shapes::ListShape.new(name: 'ChannelHandshakeSummaries')
    ChannelHandshakeSummary = Shapes::StructureShape.new(name: 'ChannelHandshakeSummary')
    City = Shapes::StringShape.new(name: 'City')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    Coverage = Shapes::StringShape.new(name: 'Coverage')
    CreateChannelContractDetail = Shapes::StructureShape.new(name: 'CreateChannelContractDetail')
    CreateChannelContractRequest = Shapes::StructureShape.new(name: 'CreateChannelContractRequest')
    CreateChannelContractResponse = Shapes::StructureShape.new(name: 'CreateChannelContractResponse')
    CreateChannelHandshakeDetail = Shapes::StructureShape.new(name: 'CreateChannelHandshakeDetail')
    CreateChannelHandshakeRequest = Shapes::StructureShape.new(name: 'CreateChannelHandshakeRequest')
    CreateChannelHandshakeResponse = Shapes::StructureShape.new(name: 'CreateChannelHandshakeResponse')
    CreateProgramManagementAccountDetail = Shapes::StructureShape.new(name: 'CreateProgramManagementAccountDetail')
    CreateProgramManagementAccountRequest = Shapes::StructureShape.new(name: 'CreateProgramManagementAccountRequest')
    CreateProgramManagementAccountResponse = Shapes::StructureShape.new(name: 'CreateProgramManagementAccountResponse')
    CreateRelationshipDetail = Shapes::StructureShape.new(name: 'CreateRelationshipDetail')
    CreateRelationshipRequest = Shapes::StructureShape.new(name: 'CreateRelationshipRequest')
    CreateRelationshipResponse = Shapes::StructureShape.new(name: 'CreateRelationshipResponse')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DeleteProgramManagementAccountRequest = Shapes::StructureShape.new(name: 'DeleteProgramManagementAccountRequest')
    DeleteProgramManagementAccountResponse = Shapes::StructureShape.new(name: 'DeleteProgramManagementAccountResponse')
    DeleteRelationshipRequest = Shapes::StructureShape.new(name: 'DeleteRelationshipRequest')
    DeleteRelationshipResponse = Shapes::StructureShape.new(name: 'DeleteRelationshipResponse')
    GetChannelContractRequest = Shapes::StructureShape.new(name: 'GetChannelContractRequest')
    GetChannelContractResponse = Shapes::StructureShape.new(name: 'GetChannelContractResponse')
    GetRelationshipRequest = Shapes::StructureShape.new(name: 'GetRelationshipRequest')
    GetRelationshipResponse = Shapes::StructureShape.new(name: 'GetRelationshipResponse')
    HandshakeDetail = Shapes::UnionShape.new(name: 'HandshakeDetail')
    HandshakeStatus = Shapes::StringShape.new(name: 'HandshakeStatus')
    HandshakeStatusList = Shapes::ListShape.new(name: 'HandshakeStatusList')
    HandshakeType = Shapes::StringShape.new(name: 'HandshakeType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListChannelContractsRequest = Shapes::StructureShape.new(name: 'ListChannelContractsRequest')
    ListChannelContractsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListChannelContractsRequestMaxResultsInteger')
    ListChannelContractsResponse = Shapes::StructureShape.new(name: 'ListChannelContractsResponse')
    ListChannelContractsTypeFilters = Shapes::UnionShape.new(name: 'ListChannelContractsTypeFilters')
    ListChannelContractsTypeSort = Shapes::UnionShape.new(name: 'ListChannelContractsTypeSort')
    ListChannelHandshakesRequest = Shapes::StructureShape.new(name: 'ListChannelHandshakesRequest')
    ListChannelHandshakesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListChannelHandshakesRequestMaxResultsInteger')
    ListChannelHandshakesResponse = Shapes::StructureShape.new(name: 'ListChannelHandshakesResponse')
    ListChannelHandshakesTypeFilters = Shapes::UnionShape.new(name: 'ListChannelHandshakesTypeFilters')
    ListChannelHandshakesTypeSort = Shapes::UnionShape.new(name: 'ListChannelHandshakesTypeSort')
    ListProgramManagementAccountsRequest = Shapes::StructureShape.new(name: 'ListProgramManagementAccountsRequest')
    ListProgramManagementAccountsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListProgramManagementAccountsRequestMaxResultsInteger')
    ListProgramManagementAccountsResponse = Shapes::StructureShape.new(name: 'ListProgramManagementAccountsResponse')
    ListProgramManagementAccountsSortBase = Shapes::StructureShape.new(name: 'ListProgramManagementAccountsSortBase')
    ListProgramManagementAccountsSortName = Shapes::StringShape.new(name: 'ListProgramManagementAccountsSortName')
    ListRelationshipsRequest = Shapes::StructureShape.new(name: 'ListRelationshipsRequest')
    ListRelationshipsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRelationshipsRequestMaxResultsInteger')
    ListRelationshipsResponse = Shapes::StructureShape.new(name: 'ListRelationshipsResponse')
    ListRelationshipsSortBase = Shapes::StructureShape.new(name: 'ListRelationshipsSortBase')
    ListRelationshipsSortName = Shapes::StringShape.new(name: 'ListRelationshipsSortName')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManagedServicesAttestationDetails = Shapes::StructureShape.new(name: 'ManagedServicesAttestationDetails')
    ManagedServicesAttestationPayload = Shapes::StructureShape.new(name: 'ManagedServicesAttestationPayload')
    ManagedServicesAttestationSummaryDetails = Shapes::StructureShape.new(name: 'ManagedServicesAttestationSummaryDetails')
    ManagedServicesAttestationTypeFilters = Shapes::StructureShape.new(name: 'ManagedServicesAttestationTypeFilters')
    ManagedServicesAttestationTypeSort = Shapes::StructureShape.new(name: 'ManagedServicesAttestationTypeSort')
    ManagedServicesAttestationTypeSortName = Shapes::StringShape.new(name: 'ManagedServicesAttestationTypeSortName')
    ManagedServicesSupportedService = Shapes::StringShape.new(name: 'ManagedServicesSupportedService')
    ManagedServicesSupportedServiceList = Shapes::ListShape.new(name: 'ManagedServicesSupportedServiceList')
    MemberAccountIdList = Shapes::ListShape.new(name: 'MemberAccountIdList')
    MinimumNoticeDays = Shapes::StringShape.new(name: 'MinimumNoticeDays')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Note = Shapes::StringShape.new(name: 'Note')
    ParticipantType = Shapes::StringShape.new(name: 'ParticipantType')
    PartnerLedSupport = Shapes::StructureShape.new(name: 'PartnerLedSupport')
    PartnerProfileDisplayName = Shapes::StringShape.new(name: 'PartnerProfileDisplayName')
    PostalCode = Shapes::StringShape.new(name: 'PostalCode')
    Program = Shapes::StringShape.new(name: 'Program')
    ProgramList = Shapes::ListShape.new(name: 'ProgramList')
    ProgramManagementAccountDisplayName = Shapes::StringShape.new(name: 'ProgramManagementAccountDisplayName')
    ProgramManagementAccountDisplayNameList = Shapes::ListShape.new(name: 'ProgramManagementAccountDisplayNameList')
    ProgramManagementAccountHandshakeDetail = Shapes::StructureShape.new(name: 'ProgramManagementAccountHandshakeDetail')
    ProgramManagementAccountId = Shapes::StringShape.new(name: 'ProgramManagementAccountId')
    ProgramManagementAccountIdentifier = Shapes::StringShape.new(name: 'ProgramManagementAccountIdentifier')
    ProgramManagementAccountIdentifierList = Shapes::ListShape.new(name: 'ProgramManagementAccountIdentifierList')
    ProgramManagementAccountStatus = Shapes::StringShape.new(name: 'ProgramManagementAccountStatus')
    ProgramManagementAccountStatusList = Shapes::ListShape.new(name: 'ProgramManagementAccountStatusList')
    ProgramManagementAccountSummaries = Shapes::ListShape.new(name: 'ProgramManagementAccountSummaries')
    ProgramManagementAccountSummary = Shapes::StructureShape.new(name: 'ProgramManagementAccountSummary')
    ProgramManagementAccountType = Shapes::StringShape.new(name: 'ProgramManagementAccountType')
    ProgramManagementAccountTypeFilters = Shapes::StructureShape.new(name: 'ProgramManagementAccountTypeFilters')
    ProgramManagementAccountTypeSort = Shapes::StructureShape.new(name: 'ProgramManagementAccountTypeSort')
    ProgramManagementAccountTypeSortName = Shapes::StringShape.new(name: 'ProgramManagementAccountTypeSortName')
    Provider = Shapes::StringShape.new(name: 'Provider')
    RejectChannelHandshakeDetail = Shapes::StructureShape.new(name: 'RejectChannelHandshakeDetail')
    RejectChannelHandshakeRequest = Shapes::StructureShape.new(name: 'RejectChannelHandshakeRequest')
    RejectChannelHandshakeResponse = Shapes::StructureShape.new(name: 'RejectChannelHandshakeResponse')
    RelationshipDetail = Shapes::StructureShape.new(name: 'RelationshipDetail')
    RelationshipDisplayName = Shapes::StringShape.new(name: 'RelationshipDisplayName')
    RelationshipDisplayNameList = Shapes::ListShape.new(name: 'RelationshipDisplayNameList')
    RelationshipId = Shapes::StringShape.new(name: 'RelationshipId')
    RelationshipIdentifier = Shapes::StringShape.new(name: 'RelationshipIdentifier')
    RelationshipIdentifierFilterList = Shapes::ListShape.new(name: 'RelationshipIdentifierFilterList')
    RelationshipSummaries = Shapes::ListShape.new(name: 'RelationshipSummaries')
    RelationshipSummary = Shapes::StructureShape.new(name: 'RelationshipSummary')
    ResaleAccountModel = Shapes::StringShape.new(name: 'ResaleAccountModel')
    ResoldEnterprise = Shapes::StructureShape.new(name: 'ResoldEnterprise')
    ResoldUnifiedOperations = Shapes::StructureShape.new(name: 'ResoldUnifiedOperations')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Revision = Shapes::StringShape.new(name: 'Revision')
    RevokeServicePeriodHandshakeDetail = Shapes::StructureShape.new(name: 'RevokeServicePeriodHandshakeDetail')
    RevokeServicePeriodPayload = Shapes::StructureShape.new(name: 'RevokeServicePeriodPayload')
    RevokeServicePeriodTypeFilters = Shapes::StructureShape.new(name: 'RevokeServicePeriodTypeFilters')
    RevokeServicePeriodTypeSort = Shapes::StructureShape.new(name: 'RevokeServicePeriodTypeSort')
    RevokeServicePeriodTypeSortName = Shapes::StringShape.new(name: 'RevokeServicePeriodTypeSortName')
    Sector = Shapes::StringShape.new(name: 'Sector')
    ServicePeriodType = Shapes::StringShape.new(name: 'ServicePeriodType')
    ServicePeriodTypeList = Shapes::ListShape.new(name: 'ServicePeriodTypeList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartServicePeriodHandshakeDetail = Shapes::StructureShape.new(name: 'StartServicePeriodHandshakeDetail')
    StartServicePeriodPayload = Shapes::StructureShape.new(name: 'StartServicePeriodPayload')
    StartServicePeriodTypeFilters = Shapes::StructureShape.new(name: 'StartServicePeriodTypeFilters')
    StartServicePeriodTypeSort = Shapes::StructureShape.new(name: 'StartServicePeriodTypeSort')
    StartServicePeriodTypeSortName = Shapes::StringShape.new(name: 'StartServicePeriodTypeSortName')
    StateOrRegion = Shapes::StringShape.new(name: 'StateOrRegion')
    String = Shapes::StringShape.new(name: 'String')
    SupportPlan = Shapes::UnionShape.new(name: 'SupportPlan')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableArn = Shapes::StringShape.new(name: 'TaggableArn')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateProgramManagementAccountDetail = Shapes::StructureShape.new(name: 'UpdateProgramManagementAccountDetail')
    UpdateProgramManagementAccountRequest = Shapes::StructureShape.new(name: 'UpdateProgramManagementAccountRequest')
    UpdateProgramManagementAccountResponse = Shapes::StructureShape.new(name: 'UpdateProgramManagementAccountResponse')
    UpdateRelationshipDetail = Shapes::StructureShape.new(name: 'UpdateRelationshipDetail')
    UpdateRelationshipRequest = Shapes::StructureShape.new(name: 'UpdateRelationshipRequest')
    UpdateRelationshipResponse = Shapes::StructureShape.new(name: 'UpdateRelationshipResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AcceptChannelHandshakeDetail.add_member(:id, Shapes::ShapeRef.new(shape: ChannelHandshakeId, location_name: "id"))
    AcceptChannelHandshakeDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    AcceptChannelHandshakeDetail.add_member(:status, Shapes::ShapeRef.new(shape: HandshakeStatus, location_name: "status"))
    AcceptChannelHandshakeDetail.struct_class = Types::AcceptChannelHandshakeDetail

    AcceptChannelHandshakeRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    AcceptChannelHandshakeRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ChannelHandshakeIdentifier, required: true, location_name: "identifier"))
    AcceptChannelHandshakeRequest.struct_class = Types::AcceptChannelHandshakeRequest

    AcceptChannelHandshakeResponse.add_member(:channel_handshake_detail, Shapes::ShapeRef.new(shape: AcceptChannelHandshakeDetail, location_name: "channelHandshakeDetail"))
    AcceptChannelHandshakeResponse.struct_class = Types::AcceptChannelHandshakeResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    Address.add_member(:city, Shapes::ShapeRef.new(shape: City, required: true, location_name: "city"))
    Address.add_member(:state_or_region, Shapes::ShapeRef.new(shape: StateOrRegion, required: true, location_name: "stateOrRegion"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: PostalCode, required: true, location_name: "postalCode"))
    Address.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, required: true, location_name: "countryCode"))
    Address.add_member(:address_line, Shapes::ShapeRef.new(shape: AddressLine, required: true, location_name: "addressLine"))
    Address.add_member(:address_line_2, Shapes::ShapeRef.new(shape: AddressLine, location_name: "addressLine2"))
    Address.struct_class = Types::Address

    AssociatedResourceIdentifierList.member = Shapes::ShapeRef.new(shape: AssociatedResourceIdentifier)

    AssociationTypeList.member = Shapes::ShapeRef.new(shape: AssociationType)

    CancelChannelContractDetail.add_member(:id, Shapes::ShapeRef.new(shape: ChannelContractId, location_name: "id"))
    CancelChannelContractDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CancelChannelContractDetail.add_member(:status, Shapes::ShapeRef.new(shape: ChannelContractStatus, location_name: "status"))
    CancelChannelContractDetail.add_member(:cancellation_reason, Shapes::ShapeRef.new(shape: CancellationReason, location_name: "cancellationReason"))
    CancelChannelContractDetail.struct_class = Types::CancelChannelContractDetail

    CancelChannelContractRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    CancelChannelContractRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ChannelContractIdentifier, required: true, location_name: "identifier"))
    CancelChannelContractRequest.add_member(:reason, Shapes::ShapeRef.new(shape: CancellationReason, location_name: "reason"))
    CancelChannelContractRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CancelChannelContractRequest.struct_class = Types::CancelChannelContractRequest

    CancelChannelContractResponse.add_member(:channel_contract_detail, Shapes::ShapeRef.new(shape: CancelChannelContractDetail, location_name: "channelContractDetail"))
    CancelChannelContractResponse.struct_class = Types::CancelChannelContractResponse

    CancelChannelHandshakeDetail.add_member(:id, Shapes::ShapeRef.new(shape: ChannelHandshakeId, location_name: "id"))
    CancelChannelHandshakeDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CancelChannelHandshakeDetail.add_member(:status, Shapes::ShapeRef.new(shape: HandshakeStatus, location_name: "status"))
    CancelChannelHandshakeDetail.struct_class = Types::CancelChannelHandshakeDetail

    CancelChannelHandshakeRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    CancelChannelHandshakeRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ChannelHandshakeIdentifier, required: true, location_name: "identifier"))
    CancelChannelHandshakeRequest.struct_class = Types::CancelChannelHandshakeRequest

    CancelChannelHandshakeResponse.add_member(:channel_handshake_detail, Shapes::ShapeRef.new(shape: CancelChannelHandshakeDetail, location_name: "channelHandshakeDetail"))
    CancelChannelHandshakeResponse.struct_class = Types::CancelChannelHandshakeResponse

    ChannelContractDetail.add_member(:id, Shapes::ShapeRef.new(shape: ChannelContractId, required: true, location_name: "id"))
    ChannelContractDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    ChannelContractDetail.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    ChannelContractDetail.add_member(:contract_type, Shapes::ShapeRef.new(shape: ChannelContractType, required: true, location_name: "contractType"))
    ChannelContractDetail.add_member(:status, Shapes::ShapeRef.new(shape: ChannelContractStatus, required: true, location_name: "status"))
    ChannelContractDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    ChannelContractDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    ChannelContractDetail.add_member(:responded_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "respondedAt"))
    ChannelContractDetail.add_member(:cancellation_reason, Shapes::ShapeRef.new(shape: CancellationReason, location_name: "cancellationReason"))
    ChannelContractDetail.add_member(:details, Shapes::ShapeRef.new(shape: ChannelContractDetails, required: true, location_name: "details"))
    ChannelContractDetail.struct_class = Types::ChannelContractDetail

    ChannelContractDetails.add_member(:managed_services_attestation_details, Shapes::ShapeRef.new(shape: ManagedServicesAttestationDetails, location_name: "managedServicesAttestationDetails"))
    ChannelContractDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ChannelContractDetails.add_member_subclass(:managed_services_attestation_details, Types::ChannelContractDetails::ManagedServicesAttestationDetails)
    ChannelContractDetails.add_member_subclass(:unknown, Types::ChannelContractDetails::Unknown)
    ChannelContractDetails.struct_class = Types::ChannelContractDetails

    ChannelContractLegalEntityNameFilterList.member = Shapes::ShapeRef.new(shape: ChannelContractLegalEntityName)

    ChannelContractPayload.add_member(:managed_services_attestation_payload, Shapes::ShapeRef.new(shape: ManagedServicesAttestationPayload, location_name: "managedServicesAttestationPayload"))
    ChannelContractPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ChannelContractPayload.add_member_subclass(:managed_services_attestation_payload, Types::ChannelContractPayload::ManagedServicesAttestationPayload)
    ChannelContractPayload.add_member_subclass(:unknown, Types::ChannelContractPayload::Unknown)
    ChannelContractPayload.struct_class = Types::ChannelContractPayload

    ChannelContractStatusFilterList.member = Shapes::ShapeRef.new(shape: ChannelContractStatus)

    ChannelContractSummaries.member = Shapes::ShapeRef.new(shape: ChannelContractSummary)

    ChannelContractSummary.add_member(:id, Shapes::ShapeRef.new(shape: ChannelContractId, required: true, location_name: "id"))
    ChannelContractSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    ChannelContractSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    ChannelContractSummary.add_member(:contract_type, Shapes::ShapeRef.new(shape: ChannelContractType, required: true, location_name: "contractType"))
    ChannelContractSummary.add_member(:status, Shapes::ShapeRef.new(shape: ChannelContractStatus, required: true, location_name: "status"))
    ChannelContractSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    ChannelContractSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    ChannelContractSummary.add_member(:responded_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "respondedAt"))
    ChannelContractSummary.add_member(:details, Shapes::ShapeRef.new(shape: ChannelContractSummaryDetails, required: true, location_name: "details"))
    ChannelContractSummary.struct_class = Types::ChannelContractSummary

    ChannelContractSummaryDetails.add_member(:managed_services_attestation_details, Shapes::ShapeRef.new(shape: ManagedServicesAttestationSummaryDetails, location_name: "managedServicesAttestationDetails"))
    ChannelContractSummaryDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ChannelContractSummaryDetails.add_member_subclass(:managed_services_attestation_details, Types::ChannelContractSummaryDetails::ManagedServicesAttestationDetails)
    ChannelContractSummaryDetails.add_member_subclass(:unknown, Types::ChannelContractSummaryDetails::Unknown)
    ChannelContractSummaryDetails.struct_class = Types::ChannelContractSummaryDetails

    ChannelHandshakePayload.add_member(:start_service_period_payload, Shapes::ShapeRef.new(shape: StartServicePeriodPayload, location_name: "startServicePeriodPayload"))
    ChannelHandshakePayload.add_member(:revoke_service_period_payload, Shapes::ShapeRef.new(shape: RevokeServicePeriodPayload, location_name: "revokeServicePeriodPayload"))
    ChannelHandshakePayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ChannelHandshakePayload.add_member_subclass(:start_service_period_payload, Types::ChannelHandshakePayload::StartServicePeriodPayload)
    ChannelHandshakePayload.add_member_subclass(:revoke_service_period_payload, Types::ChannelHandshakePayload::RevokeServicePeriodPayload)
    ChannelHandshakePayload.add_member_subclass(:unknown, Types::ChannelHandshakePayload::Unknown)
    ChannelHandshakePayload.struct_class = Types::ChannelHandshakePayload

    ChannelHandshakeSummaries.member = Shapes::ShapeRef.new(shape: ChannelHandshakeSummary)

    ChannelHandshakeSummary.add_member(:id, Shapes::ShapeRef.new(shape: ChannelHandshakeId, location_name: "id"))
    ChannelHandshakeSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    ChannelHandshakeSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog"))
    ChannelHandshakeSummary.add_member(:handshake_type, Shapes::ShapeRef.new(shape: HandshakeType, location_name: "handshakeType"))
    ChannelHandshakeSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    ChannelHandshakeSummary.add_member(:sender_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "senderAccountId"))
    ChannelHandshakeSummary.add_member(:sender_display_name, Shapes::ShapeRef.new(shape: PartnerProfileDisplayName, location_name: "senderDisplayName"))
    ChannelHandshakeSummary.add_member(:receiver_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "receiverAccountId"))
    ChannelHandshakeSummary.add_member(:associated_resource_id, Shapes::ShapeRef.new(shape: AssociatedResourceId, location_name: "associatedResourceId"))
    ChannelHandshakeSummary.add_member(:detail, Shapes::ShapeRef.new(shape: HandshakeDetail, location_name: "detail"))
    ChannelHandshakeSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    ChannelHandshakeSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    ChannelHandshakeSummary.add_member(:status, Shapes::ShapeRef.new(shape: HandshakeStatus, location_name: "status"))
    ChannelHandshakeSummary.struct_class = Types::ChannelHandshakeSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateChannelContractDetail.add_member(:id, Shapes::ShapeRef.new(shape: ChannelContractId, location_name: "id"))
    CreateChannelContractDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateChannelContractDetail.struct_class = Types::CreateChannelContractDetail

    CreateChannelContractRequest.add_member(:contract_type, Shapes::ShapeRef.new(shape: ChannelContractType, required: true, location_name: "contractType"))
    CreateChannelContractRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    CreateChannelContractRequest.add_member(:payload, Shapes::ShapeRef.new(shape: ChannelContractPayload, required: true, location_name: "payload"))
    CreateChannelContractRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateChannelContractRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateChannelContractRequest.struct_class = Types::CreateChannelContractRequest

    CreateChannelContractResponse.add_member(:channel_contract_detail, Shapes::ShapeRef.new(shape: CreateChannelContractDetail, location_name: "channelContractDetail"))
    CreateChannelContractResponse.struct_class = Types::CreateChannelContractResponse

    CreateChannelHandshakeDetail.add_member(:id, Shapes::ShapeRef.new(shape: ChannelHandshakeId, location_name: "id"))
    CreateChannelHandshakeDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateChannelHandshakeDetail.struct_class = Types::CreateChannelHandshakeDetail

    CreateChannelHandshakeRequest.add_member(:handshake_type, Shapes::ShapeRef.new(shape: HandshakeType, required: true, location_name: "handshakeType"))
    CreateChannelHandshakeRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    CreateChannelHandshakeRequest.add_member(:associated_resource_identifier, Shapes::ShapeRef.new(shape: AssociatedResourceIdentifier, required: true, location_name: "associatedResourceIdentifier"))
    CreateChannelHandshakeRequest.add_member(:payload, Shapes::ShapeRef.new(shape: ChannelHandshakePayload, location_name: "payload"))
    CreateChannelHandshakeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateChannelHandshakeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateChannelHandshakeRequest.struct_class = Types::CreateChannelHandshakeRequest

    CreateChannelHandshakeResponse.add_member(:channel_handshake_detail, Shapes::ShapeRef.new(shape: CreateChannelHandshakeDetail, location_name: "channelHandshakeDetail"))
    CreateChannelHandshakeResponse.struct_class = Types::CreateChannelHandshakeResponse

    CreateProgramManagementAccountDetail.add_member(:id, Shapes::ShapeRef.new(shape: ProgramManagementAccountId, location_name: "id"))
    CreateProgramManagementAccountDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateProgramManagementAccountDetail.struct_class = Types::CreateProgramManagementAccountDetail

    CreateProgramManagementAccountRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    CreateProgramManagementAccountRequest.add_member(:program, Shapes::ShapeRef.new(shape: Program, required: true, location_name: "program"))
    CreateProgramManagementAccountRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ProgramManagementAccountDisplayName, required: true, location_name: "displayName"))
    CreateProgramManagementAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    CreateProgramManagementAccountRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateProgramManagementAccountRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateProgramManagementAccountRequest.add_member(:type, Shapes::ShapeRef.new(shape: ProgramManagementAccountType, location_name: "type"))
    CreateProgramManagementAccountRequest.struct_class = Types::CreateProgramManagementAccountRequest

    CreateProgramManagementAccountResponse.add_member(:program_management_account_detail, Shapes::ShapeRef.new(shape: CreateProgramManagementAccountDetail, location_name: "programManagementAccountDetail"))
    CreateProgramManagementAccountResponse.struct_class = Types::CreateProgramManagementAccountResponse

    CreateRelationshipDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateRelationshipDetail.add_member(:id, Shapes::ShapeRef.new(shape: RelationshipId, location_name: "id"))
    CreateRelationshipDetail.struct_class = Types::CreateRelationshipDetail

    CreateRelationshipRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    CreateRelationshipRequest.add_member(:association_type, Shapes::ShapeRef.new(shape: AssociationType, required: true, location_name: "associationType"))
    CreateRelationshipRequest.add_member(:program_management_account_identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "programManagementAccountIdentifier"))
    CreateRelationshipRequest.add_member(:associated_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "associatedAccountId"))
    CreateRelationshipRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: RelationshipDisplayName, required: true, location_name: "displayName"))
    CreateRelationshipRequest.add_member(:resale_account_model, Shapes::ShapeRef.new(shape: ResaleAccountModel, location_name: "resaleAccountModel"))
    CreateRelationshipRequest.add_member(:sector, Shapes::ShapeRef.new(shape: Sector, required: true, location_name: "sector"))
    CreateRelationshipRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRelationshipRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRelationshipRequest.add_member(:requested_support_plan, Shapes::ShapeRef.new(shape: SupportPlan, location_name: "requestedSupportPlan"))
    CreateRelationshipRequest.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "accountScope"))
    CreateRelationshipRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "startDate"))
    CreateRelationshipRequest.struct_class = Types::CreateRelationshipRequest

    CreateRelationshipResponse.add_member(:relationship_detail, Shapes::ShapeRef.new(shape: CreateRelationshipDetail, location_name: "relationshipDetail"))
    CreateRelationshipResponse.struct_class = Types::CreateRelationshipResponse

    DeleteProgramManagementAccountRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    DeleteProgramManagementAccountRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "identifier"))
    DeleteProgramManagementAccountRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteProgramManagementAccountRequest.struct_class = Types::DeleteProgramManagementAccountRequest

    DeleteProgramManagementAccountResponse.struct_class = Types::DeleteProgramManagementAccountResponse

    DeleteRelationshipRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    DeleteRelationshipRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RelationshipIdentifier, required: true, location_name: "identifier"))
    DeleteRelationshipRequest.add_member(:program_management_account_identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "programManagementAccountIdentifier"))
    DeleteRelationshipRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteRelationshipRequest.struct_class = Types::DeleteRelationshipRequest

    DeleteRelationshipResponse.struct_class = Types::DeleteRelationshipResponse

    GetChannelContractRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    GetChannelContractRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ChannelContractIdentifier, required: true, location_name: "identifier"))
    GetChannelContractRequest.struct_class = Types::GetChannelContractRequest

    GetChannelContractResponse.add_member(:channel_contract_detail, Shapes::ShapeRef.new(shape: ChannelContractDetail, location_name: "channelContractDetail"))
    GetChannelContractResponse.struct_class = Types::GetChannelContractResponse

    GetRelationshipRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    GetRelationshipRequest.add_member(:program_management_account_identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "programManagementAccountIdentifier"))
    GetRelationshipRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RelationshipIdentifier, required: true, location_name: "identifier"))
    GetRelationshipRequest.struct_class = Types::GetRelationshipRequest

    GetRelationshipResponse.add_member(:relationship_detail, Shapes::ShapeRef.new(shape: RelationshipDetail, location_name: "relationshipDetail"))
    GetRelationshipResponse.struct_class = Types::GetRelationshipResponse

    HandshakeDetail.add_member(:start_service_period_handshake_detail, Shapes::ShapeRef.new(shape: StartServicePeriodHandshakeDetail, location_name: "startServicePeriodHandshakeDetail"))
    HandshakeDetail.add_member(:revoke_service_period_handshake_detail, Shapes::ShapeRef.new(shape: RevokeServicePeriodHandshakeDetail, location_name: "revokeServicePeriodHandshakeDetail"))
    HandshakeDetail.add_member(:program_management_account_handshake_detail, Shapes::ShapeRef.new(shape: ProgramManagementAccountHandshakeDetail, location_name: "programManagementAccountHandshakeDetail"))
    HandshakeDetail.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HandshakeDetail.add_member_subclass(:start_service_period_handshake_detail, Types::HandshakeDetail::StartServicePeriodHandshakeDetail)
    HandshakeDetail.add_member_subclass(:revoke_service_period_handshake_detail, Types::HandshakeDetail::RevokeServicePeriodHandshakeDetail)
    HandshakeDetail.add_member_subclass(:program_management_account_handshake_detail, Types::HandshakeDetail::ProgramManagementAccountHandshakeDetail)
    HandshakeDetail.add_member_subclass(:unknown, Types::HandshakeDetail::Unknown)
    HandshakeDetail.struct_class = Types::HandshakeDetail

    HandshakeStatusList.member = Shapes::ShapeRef.new(shape: HandshakeStatus)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListChannelContractsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    ListChannelContractsRequest.add_member(:contract_type, Shapes::ShapeRef.new(shape: ChannelContractType, required: true, location_name: "contractType"))
    ListChannelContractsRequest.add_member(:statuses, Shapes::ShapeRef.new(shape: ChannelContractStatusFilterList, location_name: "statuses"))
    ListChannelContractsRequest.add_member(:contract_type_filters, Shapes::ShapeRef.new(shape: ListChannelContractsTypeFilters, location_name: "contractTypeFilters"))
    ListChannelContractsRequest.add_member(:contract_type_sort, Shapes::ShapeRef.new(shape: ListChannelContractsTypeSort, location_name: "contractTypeSort"))
    ListChannelContractsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListChannelContractsRequestMaxResultsInteger, location_name: "maxResults"))
    ListChannelContractsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListChannelContractsRequest.struct_class = Types::ListChannelContractsRequest

    ListChannelContractsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ChannelContractSummaries, required: true, location_name: "items"))
    ListChannelContractsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListChannelContractsResponse.struct_class = Types::ListChannelContractsResponse

    ListChannelContractsTypeFilters.add_member(:managed_services_attestation_type_filters, Shapes::ShapeRef.new(shape: ManagedServicesAttestationTypeFilters, location_name: "managedServicesAttestationTypeFilters"))
    ListChannelContractsTypeFilters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ListChannelContractsTypeFilters.add_member_subclass(:managed_services_attestation_type_filters, Types::ListChannelContractsTypeFilters::ManagedServicesAttestationTypeFilters)
    ListChannelContractsTypeFilters.add_member_subclass(:unknown, Types::ListChannelContractsTypeFilters::Unknown)
    ListChannelContractsTypeFilters.struct_class = Types::ListChannelContractsTypeFilters

    ListChannelContractsTypeSort.add_member(:managed_services_attestation_type_sort, Shapes::ShapeRef.new(shape: ManagedServicesAttestationTypeSort, location_name: "managedServicesAttestationTypeSort"))
    ListChannelContractsTypeSort.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ListChannelContractsTypeSort.add_member_subclass(:managed_services_attestation_type_sort, Types::ListChannelContractsTypeSort::ManagedServicesAttestationTypeSort)
    ListChannelContractsTypeSort.add_member_subclass(:unknown, Types::ListChannelContractsTypeSort::Unknown)
    ListChannelContractsTypeSort.struct_class = Types::ListChannelContractsTypeSort

    ListChannelHandshakesRequest.add_member(:handshake_type, Shapes::ShapeRef.new(shape: HandshakeType, required: true, location_name: "handshakeType"))
    ListChannelHandshakesRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    ListChannelHandshakesRequest.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, required: true, location_name: "participantType"))
    ListChannelHandshakesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListChannelHandshakesRequestMaxResultsInteger, location_name: "maxResults"))
    ListChannelHandshakesRequest.add_member(:statuses, Shapes::ShapeRef.new(shape: HandshakeStatusList, location_name: "statuses"))
    ListChannelHandshakesRequest.add_member(:associated_resource_identifiers, Shapes::ShapeRef.new(shape: AssociatedResourceIdentifierList, location_name: "associatedResourceIdentifiers"))
    ListChannelHandshakesRequest.add_member(:handshake_type_filters, Shapes::ShapeRef.new(shape: ListChannelHandshakesTypeFilters, location_name: "handshakeTypeFilters"))
    ListChannelHandshakesRequest.add_member(:handshake_type_sort, Shapes::ShapeRef.new(shape: ListChannelHandshakesTypeSort, location_name: "handshakeTypeSort"))
    ListChannelHandshakesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListChannelHandshakesRequest.struct_class = Types::ListChannelHandshakesRequest

    ListChannelHandshakesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ChannelHandshakeSummaries, location_name: "items"))
    ListChannelHandshakesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListChannelHandshakesResponse.struct_class = Types::ListChannelHandshakesResponse

    ListChannelHandshakesTypeFilters.add_member(:start_service_period_type_filters, Shapes::ShapeRef.new(shape: StartServicePeriodTypeFilters, location_name: "startServicePeriodTypeFilters"))
    ListChannelHandshakesTypeFilters.add_member(:revoke_service_period_type_filters, Shapes::ShapeRef.new(shape: RevokeServicePeriodTypeFilters, location_name: "revokeServicePeriodTypeFilters"))
    ListChannelHandshakesTypeFilters.add_member(:program_management_account_type_filters, Shapes::ShapeRef.new(shape: ProgramManagementAccountTypeFilters, location_name: "programManagementAccountTypeFilters"))
    ListChannelHandshakesTypeFilters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ListChannelHandshakesTypeFilters.add_member_subclass(:start_service_period_type_filters, Types::ListChannelHandshakesTypeFilters::StartServicePeriodTypeFilters)
    ListChannelHandshakesTypeFilters.add_member_subclass(:revoke_service_period_type_filters, Types::ListChannelHandshakesTypeFilters::RevokeServicePeriodTypeFilters)
    ListChannelHandshakesTypeFilters.add_member_subclass(:program_management_account_type_filters, Types::ListChannelHandshakesTypeFilters::ProgramManagementAccountTypeFilters)
    ListChannelHandshakesTypeFilters.add_member_subclass(:unknown, Types::ListChannelHandshakesTypeFilters::Unknown)
    ListChannelHandshakesTypeFilters.struct_class = Types::ListChannelHandshakesTypeFilters

    ListChannelHandshakesTypeSort.add_member(:start_service_period_type_sort, Shapes::ShapeRef.new(shape: StartServicePeriodTypeSort, location_name: "startServicePeriodTypeSort"))
    ListChannelHandshakesTypeSort.add_member(:revoke_service_period_type_sort, Shapes::ShapeRef.new(shape: RevokeServicePeriodTypeSort, location_name: "revokeServicePeriodTypeSort"))
    ListChannelHandshakesTypeSort.add_member(:program_management_account_type_sort, Shapes::ShapeRef.new(shape: ProgramManagementAccountTypeSort, location_name: "programManagementAccountTypeSort"))
    ListChannelHandshakesTypeSort.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ListChannelHandshakesTypeSort.add_member_subclass(:start_service_period_type_sort, Types::ListChannelHandshakesTypeSort::StartServicePeriodTypeSort)
    ListChannelHandshakesTypeSort.add_member_subclass(:revoke_service_period_type_sort, Types::ListChannelHandshakesTypeSort::RevokeServicePeriodTypeSort)
    ListChannelHandshakesTypeSort.add_member_subclass(:program_management_account_type_sort, Types::ListChannelHandshakesTypeSort::ProgramManagementAccountTypeSort)
    ListChannelHandshakesTypeSort.add_member_subclass(:unknown, Types::ListChannelHandshakesTypeSort::Unknown)
    ListChannelHandshakesTypeSort.struct_class = Types::ListChannelHandshakesTypeSort

    ListProgramManagementAccountsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    ListProgramManagementAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListProgramManagementAccountsRequestMaxResultsInteger, location_name: "maxResults"))
    ListProgramManagementAccountsRequest.add_member(:display_names, Shapes::ShapeRef.new(shape: ProgramManagementAccountDisplayNameList, location_name: "displayNames"))
    ListProgramManagementAccountsRequest.add_member(:programs, Shapes::ShapeRef.new(shape: ProgramList, location_name: "programs"))
    ListProgramManagementAccountsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "accountIds"))
    ListProgramManagementAccountsRequest.add_member(:statuses, Shapes::ShapeRef.new(shape: ProgramManagementAccountStatusList, location_name: "statuses"))
    ListProgramManagementAccountsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: ListProgramManagementAccountsSortBase, location_name: "sort"))
    ListProgramManagementAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProgramManagementAccountsRequest.add_member(:type, Shapes::ShapeRef.new(shape: ProgramManagementAccountType, location_name: "type"))
    ListProgramManagementAccountsRequest.struct_class = Types::ListProgramManagementAccountsRequest

    ListProgramManagementAccountsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProgramManagementAccountSummaries, location_name: "items"))
    ListProgramManagementAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProgramManagementAccountsResponse.struct_class = Types::ListProgramManagementAccountsResponse

    ListProgramManagementAccountsSortBase.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "sortOrder"))
    ListProgramManagementAccountsSortBase.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListProgramManagementAccountsSortName, required: true, location_name: "sortBy"))
    ListProgramManagementAccountsSortBase.struct_class = Types::ListProgramManagementAccountsSortBase

    ListRelationshipsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    ListRelationshipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRelationshipsRequestMaxResultsInteger, location_name: "maxResults"))
    ListRelationshipsRequest.add_member(:associated_account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "associatedAccountIds"))
    ListRelationshipsRequest.add_member(:association_types, Shapes::ShapeRef.new(shape: AssociationTypeList, location_name: "associationTypes"))
    ListRelationshipsRequest.add_member(:display_names, Shapes::ShapeRef.new(shape: RelationshipDisplayNameList, location_name: "displayNames"))
    ListRelationshipsRequest.add_member(:program_management_account_identifiers, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifierList, location_name: "programManagementAccountIdentifiers"))
    ListRelationshipsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: ListRelationshipsSortBase, location_name: "sort"))
    ListRelationshipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRelationshipsRequest.struct_class = Types::ListRelationshipsRequest

    ListRelationshipsResponse.add_member(:items, Shapes::ShapeRef.new(shape: RelationshipSummaries, location_name: "items"))
    ListRelationshipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRelationshipsResponse.struct_class = Types::ListRelationshipsResponse

    ListRelationshipsSortBase.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "sortOrder"))
    ListRelationshipsSortBase.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListRelationshipsSortName, required: true, location_name: "sortBy"))
    ListRelationshipsSortBase.struct_class = Types::ListRelationshipsSortBase

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedServicesAttestationDetails.add_member(:legal_entity_name, Shapes::ShapeRef.new(shape: ChannelContractLegalEntityName, required: true, location_name: "legalEntityName"))
    ManagedServicesAttestationDetails.add_member(:relationship_identifier, Shapes::ShapeRef.new(shape: RelationshipIdentifier, required: true, location_name: "relationshipIdentifier"))
    ManagedServicesAttestationDetails.add_member(:program_management_account_identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "programManagementAccountIdentifier"))
    ManagedServicesAttestationDetails.add_member(:member_account_ids, Shapes::ShapeRef.new(shape: MemberAccountIdList, location_name: "memberAccountIds"))
    ManagedServicesAttestationDetails.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "endDate"))
    ManagedServicesAttestationDetails.add_member(:supported_services, Shapes::ShapeRef.new(shape: ManagedServicesSupportedServiceList, required: true, location_name: "supportedServices"))
    ManagedServicesAttestationDetails.add_member(:signatory_name, Shapes::ShapeRef.new(shape: ChannelContractSignatoryName, required: true, location_name: "signatoryName"))
    ManagedServicesAttestationDetails.add_member(:signatory_email, Shapes::ShapeRef.new(shape: ChannelContractSignatoryEmail, required: true, location_name: "signatoryEmail"))
    ManagedServicesAttestationDetails.add_member(:legal_entity_address, Shapes::ShapeRef.new(shape: Address, location_name: "legalEntityAddress"))
    ManagedServicesAttestationDetails.struct_class = Types::ManagedServicesAttestationDetails

    ManagedServicesAttestationPayload.add_member(:legal_entity_name, Shapes::ShapeRef.new(shape: ChannelContractLegalEntityName, required: true, location_name: "legalEntityName"))
    ManagedServicesAttestationPayload.add_member(:relationship_identifier, Shapes::ShapeRef.new(shape: RelationshipIdentifier, required: true, location_name: "relationshipIdentifier"))
    ManagedServicesAttestationPayload.add_member(:program_management_account_identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "programManagementAccountIdentifier"))
    ManagedServicesAttestationPayload.add_member(:member_account_ids, Shapes::ShapeRef.new(shape: MemberAccountIdList, location_name: "memberAccountIds"))
    ManagedServicesAttestationPayload.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "endDate"))
    ManagedServicesAttestationPayload.add_member(:supported_services, Shapes::ShapeRef.new(shape: ManagedServicesSupportedServiceList, required: true, location_name: "supportedServices"))
    ManagedServicesAttestationPayload.add_member(:legal_entity_address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "legalEntityAddress"))
    ManagedServicesAttestationPayload.add_member(:signatory_name, Shapes::ShapeRef.new(shape: ChannelContractSignatoryName, required: true, location_name: "signatoryName"))
    ManagedServicesAttestationPayload.add_member(:signatory_email, Shapes::ShapeRef.new(shape: ChannelContractSignatoryEmail, required: true, location_name: "signatoryEmail"))
    ManagedServicesAttestationPayload.struct_class = Types::ManagedServicesAttestationPayload

    ManagedServicesAttestationSummaryDetails.add_member(:legal_entity_name, Shapes::ShapeRef.new(shape: ChannelContractLegalEntityName, required: true, location_name: "legalEntityName"))
    ManagedServicesAttestationSummaryDetails.add_member(:relationship_identifier, Shapes::ShapeRef.new(shape: RelationshipIdentifier, required: true, location_name: "relationshipIdentifier"))
    ManagedServicesAttestationSummaryDetails.add_member(:program_management_account_identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "programManagementAccountIdentifier"))
    ManagedServicesAttestationSummaryDetails.add_member(:member_account_ids, Shapes::ShapeRef.new(shape: MemberAccountIdList, location_name: "memberAccountIds"))
    ManagedServicesAttestationSummaryDetails.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "endDate"))
    ManagedServicesAttestationSummaryDetails.add_member(:supported_services, Shapes::ShapeRef.new(shape: ManagedServicesSupportedServiceList, required: true, location_name: "supportedServices"))
    ManagedServicesAttestationSummaryDetails.struct_class = Types::ManagedServicesAttestationSummaryDetails

    ManagedServicesAttestationTypeFilters.add_member(:relationship_identifiers, Shapes::ShapeRef.new(shape: RelationshipIdentifierFilterList, location_name: "relationshipIdentifiers"))
    ManagedServicesAttestationTypeFilters.add_member(:legal_entity_names, Shapes::ShapeRef.new(shape: ChannelContractLegalEntityNameFilterList, location_name: "legalEntityNames"))
    ManagedServicesAttestationTypeFilters.struct_class = Types::ManagedServicesAttestationTypeFilters

    ManagedServicesAttestationTypeSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "sortOrder"))
    ManagedServicesAttestationTypeSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: ManagedServicesAttestationTypeSortName, required: true, location_name: "sortBy"))
    ManagedServicesAttestationTypeSort.struct_class = Types::ManagedServicesAttestationTypeSort

    ManagedServicesSupportedServiceList.member = Shapes::ShapeRef.new(shape: ManagedServicesSupportedService)

    MemberAccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    PartnerLedSupport.add_member(:coverage, Shapes::ShapeRef.new(shape: Coverage, required: true, location_name: "coverage"))
    PartnerLedSupport.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, location_name: "provider"))
    PartnerLedSupport.add_member(:tam_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "tamLocation"))
    PartnerLedSupport.struct_class = Types::PartnerLedSupport

    ProgramList.member = Shapes::ShapeRef.new(shape: Program)

    ProgramManagementAccountDisplayNameList.member = Shapes::ShapeRef.new(shape: ProgramManagementAccountDisplayName)

    ProgramManagementAccountHandshakeDetail.add_member(:program, Shapes::ShapeRef.new(shape: Program, location_name: "program"))
    ProgramManagementAccountHandshakeDetail.struct_class = Types::ProgramManagementAccountHandshakeDetail

    ProgramManagementAccountIdentifierList.member = Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier)

    ProgramManagementAccountStatusList.member = Shapes::ShapeRef.new(shape: ProgramManagementAccountStatus)

    ProgramManagementAccountSummaries.member = Shapes::ShapeRef.new(shape: ProgramManagementAccountSummary)

    ProgramManagementAccountSummary.add_member(:id, Shapes::ShapeRef.new(shape: ProgramManagementAccountId, location_name: "id"))
    ProgramManagementAccountSummary.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    ProgramManagementAccountSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog"))
    ProgramManagementAccountSummary.add_member(:program, Shapes::ShapeRef.new(shape: Program, location_name: "program"))
    ProgramManagementAccountSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ProgramManagementAccountDisplayName, location_name: "displayName"))
    ProgramManagementAccountSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    ProgramManagementAccountSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    ProgramManagementAccountSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    ProgramManagementAccountSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    ProgramManagementAccountSummary.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "startDate"))
    ProgramManagementAccountSummary.add_member(:status, Shapes::ShapeRef.new(shape: ProgramManagementAccountStatus, location_name: "status"))
    ProgramManagementAccountSummary.add_member(:type, Shapes::ShapeRef.new(shape: ProgramManagementAccountType, location_name: "type"))
    ProgramManagementAccountSummary.struct_class = Types::ProgramManagementAccountSummary

    ProgramManagementAccountTypeFilters.add_member(:programs, Shapes::ShapeRef.new(shape: ProgramList, location_name: "programs"))
    ProgramManagementAccountTypeFilters.struct_class = Types::ProgramManagementAccountTypeFilters

    ProgramManagementAccountTypeSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "sortOrder"))
    ProgramManagementAccountTypeSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: ProgramManagementAccountTypeSortName, required: true, location_name: "sortBy"))
    ProgramManagementAccountTypeSort.struct_class = Types::ProgramManagementAccountTypeSort

    RejectChannelHandshakeDetail.add_member(:id, Shapes::ShapeRef.new(shape: ChannelHandshakeId, location_name: "id"))
    RejectChannelHandshakeDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    RejectChannelHandshakeDetail.add_member(:status, Shapes::ShapeRef.new(shape: HandshakeStatus, location_name: "status"))
    RejectChannelHandshakeDetail.struct_class = Types::RejectChannelHandshakeDetail

    RejectChannelHandshakeRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    RejectChannelHandshakeRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ChannelHandshakeIdentifier, required: true, location_name: "identifier"))
    RejectChannelHandshakeRequest.struct_class = Types::RejectChannelHandshakeRequest

    RejectChannelHandshakeResponse.add_member(:channel_handshake_detail, Shapes::ShapeRef.new(shape: RejectChannelHandshakeDetail, location_name: "channelHandshakeDetail"))
    RejectChannelHandshakeResponse.struct_class = Types::RejectChannelHandshakeResponse

    RelationshipDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    RelationshipDetail.add_member(:id, Shapes::ShapeRef.new(shape: RelationshipId, location_name: "id"))
    RelationshipDetail.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    RelationshipDetail.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog"))
    RelationshipDetail.add_member(:association_type, Shapes::ShapeRef.new(shape: AssociationType, location_name: "associationType"))
    RelationshipDetail.add_member(:program_management_account_id, Shapes::ShapeRef.new(shape: ProgramManagementAccountId, location_name: "programManagementAccountId"))
    RelationshipDetail.add_member(:associated_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "associatedAccountId"))
    RelationshipDetail.add_member(:display_name, Shapes::ShapeRef.new(shape: RelationshipDisplayName, location_name: "displayName"))
    RelationshipDetail.add_member(:resale_account_model, Shapes::ShapeRef.new(shape: ResaleAccountModel, location_name: "resaleAccountModel"))
    RelationshipDetail.add_member(:sector, Shapes::ShapeRef.new(shape: Sector, location_name: "sector"))
    RelationshipDetail.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "accountScope"))
    RelationshipDetail.add_member(:channel_contract_id, Shapes::ShapeRef.new(shape: ChannelContractId, location_name: "channelContractId"))
    RelationshipDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    RelationshipDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    RelationshipDetail.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "startDate"))
    RelationshipDetail.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "endDate"))
    RelationshipDetail.struct_class = Types::RelationshipDetail

    RelationshipDisplayNameList.member = Shapes::ShapeRef.new(shape: RelationshipDisplayName)

    RelationshipIdentifierFilterList.member = Shapes::ShapeRef.new(shape: RelationshipIdentifier)

    RelationshipSummaries.member = Shapes::ShapeRef.new(shape: RelationshipSummary)

    RelationshipSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    RelationshipSummary.add_member(:id, Shapes::ShapeRef.new(shape: RelationshipId, location_name: "id"))
    RelationshipSummary.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    RelationshipSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog"))
    RelationshipSummary.add_member(:association_type, Shapes::ShapeRef.new(shape: AssociationType, location_name: "associationType"))
    RelationshipSummary.add_member(:program_management_account_id, Shapes::ShapeRef.new(shape: ProgramManagementAccountId, location_name: "programManagementAccountId"))
    RelationshipSummary.add_member(:associated_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "associatedAccountId"))
    RelationshipSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: RelationshipDisplayName, location_name: "displayName"))
    RelationshipSummary.add_member(:sector, Shapes::ShapeRef.new(shape: Sector, location_name: "sector"))
    RelationshipSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    RelationshipSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    RelationshipSummary.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "startDate"))
    RelationshipSummary.struct_class = Types::RelationshipSummary

    ResoldEnterprise.add_member(:coverage, Shapes::ShapeRef.new(shape: Coverage, required: true, location_name: "coverage"))
    ResoldEnterprise.add_member(:tam_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "tamLocation"))
    ResoldEnterprise.add_member(:charge_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "chargeAccountId"))
    ResoldEnterprise.struct_class = Types::ResoldEnterprise

    ResoldUnifiedOperations.add_member(:coverage, Shapes::ShapeRef.new(shape: Coverage, required: true, location_name: "coverage"))
    ResoldUnifiedOperations.add_member(:tam_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "tamLocation"))
    ResoldUnifiedOperations.add_member(:charge_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "chargeAccountId"))
    ResoldUnifiedOperations.struct_class = Types::ResoldUnifiedOperations

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RevokeServicePeriodHandshakeDetail.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    RevokeServicePeriodHandshakeDetail.add_member(:service_period_type, Shapes::ShapeRef.new(shape: ServicePeriodType, location_name: "servicePeriodType"))
    RevokeServicePeriodHandshakeDetail.add_member(:minimum_notice_days, Shapes::ShapeRef.new(shape: MinimumNoticeDays, location_name: "minimumNoticeDays"))
    RevokeServicePeriodHandshakeDetail.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "startDate"))
    RevokeServicePeriodHandshakeDetail.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "endDate"))
    RevokeServicePeriodHandshakeDetail.struct_class = Types::RevokeServicePeriodHandshakeDetail

    RevokeServicePeriodPayload.add_member(:program_management_account_identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "programManagementAccountIdentifier"))
    RevokeServicePeriodPayload.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    RevokeServicePeriodPayload.struct_class = Types::RevokeServicePeriodPayload

    RevokeServicePeriodTypeFilters.add_member(:service_period_types, Shapes::ShapeRef.new(shape: ServicePeriodTypeList, location_name: "servicePeriodTypes"))
    RevokeServicePeriodTypeFilters.struct_class = Types::RevokeServicePeriodTypeFilters

    RevokeServicePeriodTypeSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "sortOrder"))
    RevokeServicePeriodTypeSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: RevokeServicePeriodTypeSortName, required: true, location_name: "sortBy"))
    RevokeServicePeriodTypeSort.struct_class = Types::RevokeServicePeriodTypeSort

    ServicePeriodTypeList.member = Shapes::ShapeRef.new(shape: ServicePeriodType)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartServicePeriodHandshakeDetail.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    StartServicePeriodHandshakeDetail.add_member(:service_period_type, Shapes::ShapeRef.new(shape: ServicePeriodType, location_name: "servicePeriodType"))
    StartServicePeriodHandshakeDetail.add_member(:minimum_notice_days, Shapes::ShapeRef.new(shape: MinimumNoticeDays, location_name: "minimumNoticeDays"))
    StartServicePeriodHandshakeDetail.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "startDate"))
    StartServicePeriodHandshakeDetail.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "endDate"))
    StartServicePeriodHandshakeDetail.struct_class = Types::StartServicePeriodHandshakeDetail

    StartServicePeriodPayload.add_member(:program_management_account_identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "programManagementAccountIdentifier"))
    StartServicePeriodPayload.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    StartServicePeriodPayload.add_member(:service_period_type, Shapes::ShapeRef.new(shape: ServicePeriodType, required: true, location_name: "servicePeriodType"))
    StartServicePeriodPayload.add_member(:minimum_notice_days, Shapes::ShapeRef.new(shape: MinimumNoticeDays, location_name: "minimumNoticeDays"))
    StartServicePeriodPayload.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "endDate"))
    StartServicePeriodPayload.struct_class = Types::StartServicePeriodPayload

    StartServicePeriodTypeFilters.add_member(:service_period_types, Shapes::ShapeRef.new(shape: ServicePeriodTypeList, location_name: "servicePeriodTypes"))
    StartServicePeriodTypeFilters.struct_class = Types::StartServicePeriodTypeFilters

    StartServicePeriodTypeSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "sortOrder"))
    StartServicePeriodTypeSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: StartServicePeriodTypeSortName, required: true, location_name: "sortBy"))
    StartServicePeriodTypeSort.struct_class = Types::StartServicePeriodTypeSort

    SupportPlan.add_member(:resold_enterprise, Shapes::ShapeRef.new(shape: ResoldEnterprise, location_name: "resoldEnterprise"))
    SupportPlan.add_member(:partner_led_support, Shapes::ShapeRef.new(shape: PartnerLedSupport, location_name: "partnerLedSupport"))
    SupportPlan.add_member(:resold_unified_operations, Shapes::ShapeRef.new(shape: ResoldUnifiedOperations, location_name: "resoldUnifiedOperations"))
    SupportPlan.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SupportPlan.add_member_subclass(:resold_enterprise, Types::SupportPlan::ResoldEnterprise)
    SupportPlan.add_member_subclass(:partner_led_support, Types::SupportPlan::PartnerLedSupport)
    SupportPlan.add_member_subclass(:resold_unified_operations, Types::SupportPlan::ResoldUnifiedOperations)
    SupportPlan.add_member_subclass(:unknown, Types::SupportPlan::Unknown)
    SupportPlan.struct_class = Types::SupportPlan

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateProgramManagementAccountDetail.add_member(:id, Shapes::ShapeRef.new(shape: ProgramManagementAccountId, location_name: "id"))
    UpdateProgramManagementAccountDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    UpdateProgramManagementAccountDetail.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    UpdateProgramManagementAccountDetail.add_member(:display_name, Shapes::ShapeRef.new(shape: ProgramManagementAccountDisplayName, location_name: "displayName"))
    UpdateProgramManagementAccountDetail.struct_class = Types::UpdateProgramManagementAccountDetail

    UpdateProgramManagementAccountRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    UpdateProgramManagementAccountRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "identifier"))
    UpdateProgramManagementAccountRequest.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    UpdateProgramManagementAccountRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ProgramManagementAccountDisplayName, location_name: "displayName"))
    UpdateProgramManagementAccountRequest.struct_class = Types::UpdateProgramManagementAccountRequest

    UpdateProgramManagementAccountResponse.add_member(:program_management_account_detail, Shapes::ShapeRef.new(shape: UpdateProgramManagementAccountDetail, location_name: "programManagementAccountDetail"))
    UpdateProgramManagementAccountResponse.struct_class = Types::UpdateProgramManagementAccountResponse

    UpdateRelationshipDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    UpdateRelationshipDetail.add_member(:id, Shapes::ShapeRef.new(shape: RelationshipId, location_name: "id"))
    UpdateRelationshipDetail.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    UpdateRelationshipDetail.add_member(:display_name, Shapes::ShapeRef.new(shape: RelationshipDisplayName, location_name: "displayName"))
    UpdateRelationshipDetail.struct_class = Types::UpdateRelationshipDetail

    UpdateRelationshipRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "catalog"))
    UpdateRelationshipRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RelationshipIdentifier, required: true, location_name: "identifier"))
    UpdateRelationshipRequest.add_member(:program_management_account_identifier, Shapes::ShapeRef.new(shape: ProgramManagementAccountIdentifier, required: true, location_name: "programManagementAccountIdentifier"))
    UpdateRelationshipRequest.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, location_name: "revision"))
    UpdateRelationshipRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: RelationshipDisplayName, location_name: "displayName"))
    UpdateRelationshipRequest.add_member(:requested_support_plan, Shapes::ShapeRef.new(shape: SupportPlan, location_name: "requestedSupportPlan"))
    UpdateRelationshipRequest.struct_class = Types::UpdateRelationshipRequest

    UpdateRelationshipResponse.add_member(:relationship_detail, Shapes::ShapeRef.new(shape: UpdateRelationshipDetail, location_name: "relationshipDetail"))
    UpdateRelationshipResponse.struct_class = Types::UpdateRelationshipResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-03-18"

      api.metadata = {
        "apiVersion" => "2024-03-18",
        "auth" => ["aws.auth#sigv4a", "aws.auth#sigv4"],
        "endpointPrefix" => "partnercentral-channel",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Partner Central Channel API",
        "serviceId" => "PartnerCentral Channel",
        "signatureVersion" => "v4",
        "signingName" => "partnercentral-channel",
        "targetPrefix" => "PartnerCentralChannel",
        "uid" => "partnercentral-channel-2024-03-18",
      }

      api.add_operation(:accept_channel_handshake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptChannelHandshake"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptChannelHandshakeRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptChannelHandshakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:cancel_channel_contract, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelChannelContract"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelChannelContractRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelChannelContractResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:cancel_channel_handshake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelChannelHandshake"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelChannelHandshakeRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelChannelHandshakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_channel_contract, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelContract"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelContractRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelContractResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_channel_handshake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelHandshake"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelHandshakeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelHandshakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_program_management_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProgramManagementAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProgramManagementAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProgramManagementAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_relationship, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRelationship"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRelationshipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRelationshipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_program_management_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProgramManagementAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProgramManagementAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProgramManagementAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_relationship, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRelationship"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRelationshipRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRelationshipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_channel_contract, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannelContract"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetChannelContractRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelContractResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_relationship, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelationship"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelationshipRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelationshipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_channel_contracts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelContracts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListChannelContractsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelContractsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_channel_handshakes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelHandshakes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListChannelHandshakesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelHandshakesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_program_management_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProgramManagementAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProgramManagementAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProgramManagementAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_relationships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRelationships"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRelationshipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRelationshipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:reject_channel_handshake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectChannelHandshake"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectChannelHandshakeRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectChannelHandshakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_program_management_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProgramManagementAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProgramManagementAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProgramManagementAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_relationship, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRelationship"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRelationshipRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRelationshipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
