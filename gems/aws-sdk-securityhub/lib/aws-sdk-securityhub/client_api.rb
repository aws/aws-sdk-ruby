# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityHub
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptInvitationRequest = Shapes::StructureShape.new(name: 'AcceptInvitationRequest')
    AcceptInvitationResponse = Shapes::StructureShape.new(name: 'AcceptInvitationResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountDetails = Shapes::StructureShape.new(name: 'AccountDetails')
    AccountDetailsList = Shapes::ListShape.new(name: 'AccountDetailsList')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AwsEc2InstanceDetails = Shapes::StructureShape.new(name: 'AwsEc2InstanceDetails')
    AwsIamAccessKeyDetails = Shapes::StructureShape.new(name: 'AwsIamAccessKeyDetails')
    AwsIamAccessKeyStatus = Shapes::StringShape.new(name: 'AwsIamAccessKeyStatus')
    AwsS3BucketDetails = Shapes::StructureShape.new(name: 'AwsS3BucketDetails')
    AwsSecurityFinding = Shapes::StructureShape.new(name: 'AwsSecurityFinding')
    AwsSecurityFindingFilters = Shapes::StructureShape.new(name: 'AwsSecurityFindingFilters')
    AwsSecurityFindingList = Shapes::ListShape.new(name: 'AwsSecurityFindingList')
    BatchDisableStandardsRequest = Shapes::StructureShape.new(name: 'BatchDisableStandardsRequest')
    BatchDisableStandardsResponse = Shapes::StructureShape.new(name: 'BatchDisableStandardsResponse')
    BatchEnableStandardsRequest = Shapes::StructureShape.new(name: 'BatchEnableStandardsRequest')
    BatchEnableStandardsResponse = Shapes::StructureShape.new(name: 'BatchEnableStandardsResponse')
    BatchImportFindingsRequest = Shapes::StructureShape.new(name: 'BatchImportFindingsRequest')
    BatchImportFindingsResponse = Shapes::StructureShape.new(name: 'BatchImportFindingsResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Compliance = Shapes::StructureShape.new(name: 'Compliance')
    ComplianceStatus = Shapes::StringShape.new(name: 'ComplianceStatus')
    ContainerDetails = Shapes::StructureShape.new(name: 'ContainerDetails')
    CreateInsightRequest = Shapes::StructureShape.new(name: 'CreateInsightRequest')
    CreateInsightResponse = Shapes::StructureShape.new(name: 'CreateInsightResponse')
    CreateMembersRequest = Shapes::StructureShape.new(name: 'CreateMembersRequest')
    CreateMembersResponse = Shapes::StructureShape.new(name: 'CreateMembersResponse')
    DateFilter = Shapes::StructureShape.new(name: 'DateFilter')
    DateFilterList = Shapes::ListShape.new(name: 'DateFilterList')
    DateRange = Shapes::StructureShape.new(name: 'DateRange')
    DateRangeUnit = Shapes::StringShape.new(name: 'DateRangeUnit')
    DeclineInvitationsRequest = Shapes::StructureShape.new(name: 'DeclineInvitationsRequest')
    DeclineInvitationsResponse = Shapes::StructureShape.new(name: 'DeclineInvitationsResponse')
    DeleteInsightRequest = Shapes::StructureShape.new(name: 'DeleteInsightRequest')
    DeleteInsightResponse = Shapes::StructureShape.new(name: 'DeleteInsightResponse')
    DeleteInvitationsRequest = Shapes::StructureShape.new(name: 'DeleteInvitationsRequest')
    DeleteInvitationsResponse = Shapes::StructureShape.new(name: 'DeleteInvitationsResponse')
    DeleteMembersRequest = Shapes::StructureShape.new(name: 'DeleteMembersRequest')
    DeleteMembersResponse = Shapes::StructureShape.new(name: 'DeleteMembersResponse')
    DisableImportFindingsForProductRequest = Shapes::StructureShape.new(name: 'DisableImportFindingsForProductRequest')
    DisableImportFindingsForProductResponse = Shapes::StructureShape.new(name: 'DisableImportFindingsForProductResponse')
    DisableSecurityHubRequest = Shapes::StructureShape.new(name: 'DisableSecurityHubRequest')
    DisableSecurityHubResponse = Shapes::StructureShape.new(name: 'DisableSecurityHubResponse')
    DisassociateFromMasterAccountRequest = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountRequest')
    DisassociateFromMasterAccountResponse = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountResponse')
    DisassociateMembersRequest = Shapes::StructureShape.new(name: 'DisassociateMembersRequest')
    DisassociateMembersResponse = Shapes::StructureShape.new(name: 'DisassociateMembersResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    EnableImportFindingsForProductRequest = Shapes::StructureShape.new(name: 'EnableImportFindingsForProductRequest')
    EnableImportFindingsForProductResponse = Shapes::StructureShape.new(name: 'EnableImportFindingsForProductResponse')
    EnableSecurityHubRequest = Shapes::StructureShape.new(name: 'EnableSecurityHubRequest')
    EnableSecurityHubResponse = Shapes::StructureShape.new(name: 'EnableSecurityHubResponse')
    FieldMap = Shapes::MapShape.new(name: 'FieldMap')
    GetEnabledStandardsRequest = Shapes::StructureShape.new(name: 'GetEnabledStandardsRequest')
    GetEnabledStandardsResponse = Shapes::StructureShape.new(name: 'GetEnabledStandardsResponse')
    GetFindingsRequest = Shapes::StructureShape.new(name: 'GetFindingsRequest')
    GetFindingsResponse = Shapes::StructureShape.new(name: 'GetFindingsResponse')
    GetInsightResultsRequest = Shapes::StructureShape.new(name: 'GetInsightResultsRequest')
    GetInsightResultsResponse = Shapes::StructureShape.new(name: 'GetInsightResultsResponse')
    GetInsightsRequest = Shapes::StructureShape.new(name: 'GetInsightsRequest')
    GetInsightsResponse = Shapes::StructureShape.new(name: 'GetInsightsResponse')
    GetInvitationsCountRequest = Shapes::StructureShape.new(name: 'GetInvitationsCountRequest')
    GetInvitationsCountResponse = Shapes::StructureShape.new(name: 'GetInvitationsCountResponse')
    GetMasterAccountRequest = Shapes::StructureShape.new(name: 'GetMasterAccountRequest')
    GetMasterAccountResponse = Shapes::StructureShape.new(name: 'GetMasterAccountResponse')
    GetMembersRequest = Shapes::StructureShape.new(name: 'GetMembersRequest')
    GetMembersResponse = Shapes::StructureShape.new(name: 'GetMembersResponse')
    ImportFindingsError = Shapes::StructureShape.new(name: 'ImportFindingsError')
    ImportFindingsErrorList = Shapes::ListShape.new(name: 'ImportFindingsErrorList')
    Insight = Shapes::StructureShape.new(name: 'Insight')
    InsightList = Shapes::ListShape.new(name: 'InsightList')
    InsightResultValue = Shapes::StructureShape.new(name: 'InsightResultValue')
    InsightResultValueList = Shapes::ListShape.new(name: 'InsightResultValueList')
    InsightResults = Shapes::StructureShape.new(name: 'InsightResults')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidAccessException = Shapes::StructureShape.new(name: 'InvalidAccessException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    Invitation = Shapes::StructureShape.new(name: 'Invitation')
    InvitationList = Shapes::ListShape.new(name: 'InvitationList')
    InviteMembersRequest = Shapes::StructureShape.new(name: 'InviteMembersRequest')
    InviteMembersResponse = Shapes::StructureShape.new(name: 'InviteMembersResponse')
    IpFilter = Shapes::StructureShape.new(name: 'IpFilter')
    IpFilterList = Shapes::ListShape.new(name: 'IpFilterList')
    KeywordFilter = Shapes::StructureShape.new(name: 'KeywordFilter')
    KeywordFilterList = Shapes::ListShape.new(name: 'KeywordFilterList')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListEnabledProductsForImportRequest = Shapes::StructureShape.new(name: 'ListEnabledProductsForImportRequest')
    ListEnabledProductsForImportResponse = Shapes::StructureShape.new(name: 'ListEnabledProductsForImportResponse')
    ListInvitationsRequest = Shapes::StructureShape.new(name: 'ListInvitationsRequest')
    ListInvitationsResponse = Shapes::StructureShape.new(name: 'ListInvitationsResponse')
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
    Malware = Shapes::StructureShape.new(name: 'Malware')
    MalwareList = Shapes::ListShape.new(name: 'MalwareList')
    MalwareState = Shapes::StringShape.new(name: 'MalwareState')
    MalwareType = Shapes::StringShape.new(name: 'MalwareType')
    MapFilter = Shapes::StructureShape.new(name: 'MapFilter')
    MapFilterComparison = Shapes::StringShape.new(name: 'MapFilterComparison')
    MapFilterList = Shapes::ListShape.new(name: 'MapFilterList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Member = Shapes::StructureShape.new(name: 'Member')
    MemberList = Shapes::ListShape.new(name: 'MemberList')
    Network = Shapes::StructureShape.new(name: 'Network')
    NetworkDirection = Shapes::StringShape.new(name: 'NetworkDirection')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    Note = Shapes::StructureShape.new(name: 'Note')
    NoteUpdate = Shapes::StructureShape.new(name: 'NoteUpdate')
    NumberFilter = Shapes::StructureShape.new(name: 'NumberFilter')
    NumberFilterList = Shapes::ListShape.new(name: 'NumberFilterList')
    Partition = Shapes::StringShape.new(name: 'Partition')
    ProcessDetails = Shapes::StructureShape.new(name: 'ProcessDetails')
    ProductSubscriptionArnList = Shapes::ListShape.new(name: 'ProductSubscriptionArnList')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecordState = Shapes::StringShape.new(name: 'RecordState')
    RelatedFinding = Shapes::StructureShape.new(name: 'RelatedFinding')
    RelatedFindingList = Shapes::ListShape.new(name: 'RelatedFindingList')
    Remediation = Shapes::StructureShape.new(name: 'Remediation')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceDetails = Shapes::StructureShape.new(name: 'ResourceDetails')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Result = Shapes::StructureShape.new(name: 'Result')
    ResultList = Shapes::ListShape.new(name: 'ResultList')
    Severity = Shapes::StructureShape.new(name: 'Severity')
    SortCriteria = Shapes::ListShape.new(name: 'SortCriteria')
    SortCriterion = Shapes::StructureShape.new(name: 'SortCriterion')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StandardsInputParameterMap = Shapes::MapShape.new(name: 'StandardsInputParameterMap')
    StandardsStatus = Shapes::StringShape.new(name: 'StandardsStatus')
    StandardsSubscription = Shapes::StructureShape.new(name: 'StandardsSubscription')
    StandardsSubscriptionArns = Shapes::ListShape.new(name: 'StandardsSubscriptionArns')
    StandardsSubscriptionRequest = Shapes::StructureShape.new(name: 'StandardsSubscriptionRequest')
    StandardsSubscriptionRequests = Shapes::ListShape.new(name: 'StandardsSubscriptionRequests')
    StandardsSubscriptions = Shapes::ListShape.new(name: 'StandardsSubscriptions')
    StringFilter = Shapes::StructureShape.new(name: 'StringFilter')
    StringFilterComparison = Shapes::StringShape.new(name: 'StringFilterComparison')
    StringFilterList = Shapes::ListShape.new(name: 'StringFilterList')
    StringList = Shapes::ListShape.new(name: 'StringList')
    ThreatIntelIndicator = Shapes::StructureShape.new(name: 'ThreatIntelIndicator')
    ThreatIntelIndicatorCategory = Shapes::StringShape.new(name: 'ThreatIntelIndicatorCategory')
    ThreatIntelIndicatorList = Shapes::ListShape.new(name: 'ThreatIntelIndicatorList')
    ThreatIntelIndicatorType = Shapes::StringShape.new(name: 'ThreatIntelIndicatorType')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TypeList = Shapes::ListShape.new(name: 'TypeList')
    UpdateFindingsRequest = Shapes::StructureShape.new(name: 'UpdateFindingsRequest')
    UpdateFindingsResponse = Shapes::StructureShape.new(name: 'UpdateFindingsResponse')
    UpdateInsightRequest = Shapes::StructureShape.new(name: 'UpdateInsightRequest')
    UpdateInsightResponse = Shapes::StructureShape.new(name: 'UpdateInsightResponse')
    VerificationState = Shapes::StringShape.new(name: 'VerificationState')
    WorkflowState = Shapes::StringShape.new(name: 'WorkflowState')

    AcceptInvitationRequest.add_member(:master_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterId"))
    AcceptInvitationRequest.add_member(:invitation_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InvitationId"))
    AcceptInvitationRequest.struct_class = Types::AcceptInvitationRequest

    AcceptInvitationResponse.struct_class = Types::AcceptInvitationResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountDetails.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AccountDetails.add_member(:email, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Email"))
    AccountDetails.struct_class = Types::AccountDetails

    AccountDetailsList.member = Shapes::ShapeRef.new(shape: AccountDetails)

    AccountIdList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ArnList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    AwsEc2InstanceDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AwsEc2InstanceDetails.add_member(:image_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageId"))
    AwsEc2InstanceDetails.add_member(:ip_v4_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "IpV4Addresses"))
    AwsEc2InstanceDetails.add_member(:ip_v6_addresses, Shapes::ShapeRef.new(shape: StringList, location_name: "IpV6Addresses"))
    AwsEc2InstanceDetails.add_member(:key_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "KeyName"))
    AwsEc2InstanceDetails.add_member(:iam_instance_profile_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "IamInstanceProfileArn"))
    AwsEc2InstanceDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VpcId"))
    AwsEc2InstanceDetails.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SubnetId"))
    AwsEc2InstanceDetails.add_member(:launched_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchedAt"))
    AwsEc2InstanceDetails.struct_class = Types::AwsEc2InstanceDetails

    AwsIamAccessKeyDetails.add_member(:user_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserName"))
    AwsIamAccessKeyDetails.add_member(:status, Shapes::ShapeRef.new(shape: AwsIamAccessKeyStatus, location_name: "Status"))
    AwsIamAccessKeyDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedAt"))
    AwsIamAccessKeyDetails.struct_class = Types::AwsIamAccessKeyDetails

    AwsS3BucketDetails.add_member(:owner_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerId"))
    AwsS3BucketDetails.add_member(:owner_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OwnerName"))
    AwsS3BucketDetails.struct_class = Types::AwsS3BucketDetails

    AwsSecurityFinding.add_member(:schema_version, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "SchemaVersion"))
    AwsSecurityFinding.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    AwsSecurityFinding.add_member(:product_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ProductArn"))
    AwsSecurityFinding.add_member(:generator_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GeneratorId"))
    AwsSecurityFinding.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "AwsAccountId"))
    AwsSecurityFinding.add_member(:types, Shapes::ShapeRef.new(shape: TypeList, required: true, location_name: "Types"))
    AwsSecurityFinding.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "FirstObservedAt"))
    AwsSecurityFinding.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastObservedAt"))
    AwsSecurityFinding.add_member(:created_at, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "CreatedAt"))
    AwsSecurityFinding.add_member(:updated_at, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UpdatedAt"))
    AwsSecurityFinding.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, required: true, location_name: "Severity"))
    AwsSecurityFinding.add_member(:confidence, Shapes::ShapeRef.new(shape: Integer, location_name: "Confidence"))
    AwsSecurityFinding.add_member(:criticality, Shapes::ShapeRef.new(shape: Integer, location_name: "Criticality"))
    AwsSecurityFinding.add_member(:title, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Title"))
    AwsSecurityFinding.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Description"))
    AwsSecurityFinding.add_member(:remediation, Shapes::ShapeRef.new(shape: Remediation, location_name: "Remediation"))
    AwsSecurityFinding.add_member(:source_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceUrl"))
    AwsSecurityFinding.add_member(:product_fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "ProductFields"))
    AwsSecurityFinding.add_member(:user_defined_fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "UserDefinedFields"))
    AwsSecurityFinding.add_member(:malware, Shapes::ShapeRef.new(shape: MalwareList, location_name: "Malware"))
    AwsSecurityFinding.add_member(:network, Shapes::ShapeRef.new(shape: Network, location_name: "Network"))
    AwsSecurityFinding.add_member(:process, Shapes::ShapeRef.new(shape: ProcessDetails, location_name: "Process"))
    AwsSecurityFinding.add_member(:threat_intel_indicators, Shapes::ShapeRef.new(shape: ThreatIntelIndicatorList, location_name: "ThreatIntelIndicators"))
    AwsSecurityFinding.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "Resources"))
    AwsSecurityFinding.add_member(:compliance, Shapes::ShapeRef.new(shape: Compliance, location_name: "Compliance"))
    AwsSecurityFinding.add_member(:verification_state, Shapes::ShapeRef.new(shape: VerificationState, location_name: "VerificationState"))
    AwsSecurityFinding.add_member(:workflow_state, Shapes::ShapeRef.new(shape: WorkflowState, location_name: "WorkflowState"))
    AwsSecurityFinding.add_member(:record_state, Shapes::ShapeRef.new(shape: RecordState, location_name: "RecordState"))
    AwsSecurityFinding.add_member(:related_findings, Shapes::ShapeRef.new(shape: RelatedFindingList, location_name: "RelatedFindings"))
    AwsSecurityFinding.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "Note"))
    AwsSecurityFinding.struct_class = Types::AwsSecurityFinding

    AwsSecurityFindingFilters.add_member(:product_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProductArn"))
    AwsSecurityFindingFilters.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "AwsAccountId"))
    AwsSecurityFindingFilters.add_member(:id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Id"))
    AwsSecurityFindingFilters.add_member(:generator_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "GeneratorId"))
    AwsSecurityFindingFilters.add_member(:type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Type"))
    AwsSecurityFindingFilters.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "FirstObservedAt"))
    AwsSecurityFindingFilters.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "LastObservedAt"))
    AwsSecurityFindingFilters.add_member(:created_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "CreatedAt"))
    AwsSecurityFindingFilters.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "UpdatedAt"))
    AwsSecurityFindingFilters.add_member(:severity_product, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "SeverityProduct"))
    AwsSecurityFindingFilters.add_member(:severity_normalized, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "SeverityNormalized"))
    AwsSecurityFindingFilters.add_member(:severity_label, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "SeverityLabel"))
    AwsSecurityFindingFilters.add_member(:confidence, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "Confidence"))
    AwsSecurityFindingFilters.add_member(:criticality, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "Criticality"))
    AwsSecurityFindingFilters.add_member(:title, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Title"))
    AwsSecurityFindingFilters.add_member(:description, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "Description"))
    AwsSecurityFindingFilters.add_member(:recommendation_text, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RecommendationText"))
    AwsSecurityFindingFilters.add_member(:source_url, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "SourceUrl"))
    AwsSecurityFindingFilters.add_member(:product_fields, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "ProductFields"))
    AwsSecurityFindingFilters.add_member(:product_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProductName"))
    AwsSecurityFindingFilters.add_member(:company_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "CompanyName"))
    AwsSecurityFindingFilters.add_member(:user_defined_fields, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "UserDefinedFields"))
    AwsSecurityFindingFilters.add_member(:malware_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "MalwareName"))
    AwsSecurityFindingFilters.add_member(:malware_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "MalwareType"))
    AwsSecurityFindingFilters.add_member(:malware_path, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "MalwarePath"))
    AwsSecurityFindingFilters.add_member(:malware_state, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "MalwareState"))
    AwsSecurityFindingFilters.add_member(:network_direction, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NetworkDirection"))
    AwsSecurityFindingFilters.add_member(:network_protocol, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NetworkProtocol"))
    AwsSecurityFindingFilters.add_member(:network_source_ip_v4, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "NetworkSourceIpV4"))
    AwsSecurityFindingFilters.add_member(:network_source_ip_v6, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "NetworkSourceIpV6"))
    AwsSecurityFindingFilters.add_member(:network_source_port, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "NetworkSourcePort"))
    AwsSecurityFindingFilters.add_member(:network_source_domain, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NetworkSourceDomain"))
    AwsSecurityFindingFilters.add_member(:network_source_mac, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NetworkSourceMac"))
    AwsSecurityFindingFilters.add_member(:network_destination_ip_v4, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "NetworkDestinationIpV4"))
    AwsSecurityFindingFilters.add_member(:network_destination_ip_v6, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "NetworkDestinationIpV6"))
    AwsSecurityFindingFilters.add_member(:network_destination_port, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "NetworkDestinationPort"))
    AwsSecurityFindingFilters.add_member(:network_destination_domain, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NetworkDestinationDomain"))
    AwsSecurityFindingFilters.add_member(:process_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProcessName"))
    AwsSecurityFindingFilters.add_member(:process_path, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ProcessPath"))
    AwsSecurityFindingFilters.add_member(:process_pid, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "ProcessPid"))
    AwsSecurityFindingFilters.add_member(:process_parent_pid, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "ProcessParentPid"))
    AwsSecurityFindingFilters.add_member(:process_launched_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ProcessLaunchedAt"))
    AwsSecurityFindingFilters.add_member(:process_terminated_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ProcessTerminatedAt"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ThreatIntelIndicatorType"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_value, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ThreatIntelIndicatorValue"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_category, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ThreatIntelIndicatorCategory"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_last_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ThreatIntelIndicatorLastObservedAt"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_source, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ThreatIntelIndicatorSource"))
    AwsSecurityFindingFilters.add_member(:threat_intel_indicator_source_url, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ThreatIntelIndicatorSourceUrl"))
    AwsSecurityFindingFilters.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceType"))
    AwsSecurityFindingFilters.add_member(:resource_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceId"))
    AwsSecurityFindingFilters.add_member(:resource_partition, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourcePartition"))
    AwsSecurityFindingFilters.add_member(:resource_region, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceRegion"))
    AwsSecurityFindingFilters.add_member(:resource_tags, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "ResourceTags"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceType"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_image_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceImageId"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_ip_v4_addresses, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "ResourceAwsEc2InstanceIpV4Addresses"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_ip_v6_addresses, Shapes::ShapeRef.new(shape: IpFilterList, location_name: "ResourceAwsEc2InstanceIpV6Addresses"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_key_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceKeyName"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_iam_instance_profile_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceIamInstanceProfileArn"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_vpc_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceVpcId"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_subnet_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsEc2InstanceSubnetId"))
    AwsSecurityFindingFilters.add_member(:resource_aws_ec2_instance_launched_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ResourceAwsEc2InstanceLaunchedAt"))
    AwsSecurityFindingFilters.add_member(:resource_aws_s3_bucket_owner_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsS3BucketOwnerId"))
    AwsSecurityFindingFilters.add_member(:resource_aws_s3_bucket_owner_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsS3BucketOwnerName"))
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_access_key_user_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsIamAccessKeyUserName"))
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_access_key_status, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceAwsIamAccessKeyStatus"))
    AwsSecurityFindingFilters.add_member(:resource_aws_iam_access_key_created_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ResourceAwsIamAccessKeyCreatedAt"))
    AwsSecurityFindingFilters.add_member(:resource_container_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceContainerName"))
    AwsSecurityFindingFilters.add_member(:resource_container_image_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceContainerImageId"))
    AwsSecurityFindingFilters.add_member(:resource_container_image_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ResourceContainerImageName"))
    AwsSecurityFindingFilters.add_member(:resource_container_launched_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ResourceContainerLaunchedAt"))
    AwsSecurityFindingFilters.add_member(:resource_details_other, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "ResourceDetailsOther"))
    AwsSecurityFindingFilters.add_member(:compliance_status, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ComplianceStatus"))
    AwsSecurityFindingFilters.add_member(:verification_state, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "VerificationState"))
    AwsSecurityFindingFilters.add_member(:workflow_state, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "WorkflowState"))
    AwsSecurityFindingFilters.add_member(:record_state, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RecordState"))
    AwsSecurityFindingFilters.add_member(:related_findings_product_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RelatedFindingsProductArn"))
    AwsSecurityFindingFilters.add_member(:related_findings_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "RelatedFindingsId"))
    AwsSecurityFindingFilters.add_member(:note_text, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NoteText"))
    AwsSecurityFindingFilters.add_member(:note_updated_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "NoteUpdatedAt"))
    AwsSecurityFindingFilters.add_member(:note_updated_by, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "NoteUpdatedBy"))
    AwsSecurityFindingFilters.add_member(:keyword, Shapes::ShapeRef.new(shape: KeywordFilterList, location_name: "Keyword"))
    AwsSecurityFindingFilters.struct_class = Types::AwsSecurityFindingFilters

    AwsSecurityFindingList.member = Shapes::ShapeRef.new(shape: AwsSecurityFinding)

    BatchDisableStandardsRequest.add_member(:standards_subscription_arns, Shapes::ShapeRef.new(shape: StandardsSubscriptionArns, required: true, location_name: "StandardsSubscriptionArns"))
    BatchDisableStandardsRequest.struct_class = Types::BatchDisableStandardsRequest

    BatchDisableStandardsResponse.add_member(:standards_subscriptions, Shapes::ShapeRef.new(shape: StandardsSubscriptions, location_name: "StandardsSubscriptions"))
    BatchDisableStandardsResponse.struct_class = Types::BatchDisableStandardsResponse

    BatchEnableStandardsRequest.add_member(:standards_subscription_requests, Shapes::ShapeRef.new(shape: StandardsSubscriptionRequests, required: true, location_name: "StandardsSubscriptionRequests"))
    BatchEnableStandardsRequest.struct_class = Types::BatchEnableStandardsRequest

    BatchEnableStandardsResponse.add_member(:standards_subscriptions, Shapes::ShapeRef.new(shape: StandardsSubscriptions, location_name: "StandardsSubscriptions"))
    BatchEnableStandardsResponse.struct_class = Types::BatchEnableStandardsResponse

    BatchImportFindingsRequest.add_member(:findings, Shapes::ShapeRef.new(shape: AwsSecurityFindingList, required: true, location_name: "Findings"))
    BatchImportFindingsRequest.struct_class = Types::BatchImportFindingsRequest

    BatchImportFindingsResponse.add_member(:failed_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "FailedCount"))
    BatchImportFindingsResponse.add_member(:success_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SuccessCount"))
    BatchImportFindingsResponse.add_member(:failed_findings, Shapes::ShapeRef.new(shape: ImportFindingsErrorList, location_name: "FailedFindings"))
    BatchImportFindingsResponse.struct_class = Types::BatchImportFindingsResponse

    Compliance.add_member(:status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "Status"))
    Compliance.struct_class = Types::Compliance

    ContainerDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    ContainerDetails.add_member(:image_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageId"))
    ContainerDetails.add_member(:image_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageName"))
    ContainerDetails.add_member(:launched_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchedAt"))
    ContainerDetails.struct_class = Types::ContainerDetails

    CreateInsightRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    CreateInsightRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, required: true, location_name: "Filters"))
    CreateInsightRequest.add_member(:group_by_attribute, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GroupByAttribute"))
    CreateInsightRequest.struct_class = Types::CreateInsightRequest

    CreateInsightResponse.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InsightArn"))
    CreateInsightResponse.struct_class = Types::CreateInsightResponse

    CreateMembersRequest.add_member(:account_details, Shapes::ShapeRef.new(shape: AccountDetailsList, location_name: "AccountDetails"))
    CreateMembersRequest.struct_class = Types::CreateMembersRequest

    CreateMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    CreateMembersResponse.struct_class = Types::CreateMembersResponse

    DateFilter.add_member(:start, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Start"))
    DateFilter.add_member(:end, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "End"))
    DateFilter.add_member(:date_range, Shapes::ShapeRef.new(shape: DateRange, location_name: "DateRange"))
    DateFilter.struct_class = Types::DateFilter

    DateFilterList.member = Shapes::ShapeRef.new(shape: DateFilter)

    DateRange.add_member(:value, Shapes::ShapeRef.new(shape: Integer, location_name: "Value"))
    DateRange.add_member(:unit, Shapes::ShapeRef.new(shape: DateRangeUnit, location_name: "Unit"))
    DateRange.struct_class = Types::DateRange

    DeclineInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DeclineInvitationsRequest.struct_class = Types::DeclineInvitationsRequest

    DeclineInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    DeclineInvitationsResponse.struct_class = Types::DeclineInvitationsResponse

    DeleteInsightRequest.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "InsightArn"))
    DeleteInsightRequest.struct_class = Types::DeleteInsightRequest

    DeleteInsightResponse.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InsightArn"))
    DeleteInsightResponse.struct_class = Types::DeleteInsightResponse

    DeleteInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DeleteInvitationsRequest.struct_class = Types::DeleteInvitationsRequest

    DeleteInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    DeleteInvitationsResponse.struct_class = Types::DeleteInvitationsResponse

    DeleteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DeleteMembersRequest.struct_class = Types::DeleteMembersRequest

    DeleteMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    DeleteMembersResponse.struct_class = Types::DeleteMembersResponse

    DisableImportFindingsForProductRequest.add_member(:product_subscription_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "ProductSubscriptionArn"))
    DisableImportFindingsForProductRequest.struct_class = Types::DisableImportFindingsForProductRequest

    DisableImportFindingsForProductResponse.struct_class = Types::DisableImportFindingsForProductResponse

    DisableSecurityHubRequest.struct_class = Types::DisableSecurityHubRequest

    DisableSecurityHubResponse.struct_class = Types::DisableSecurityHubResponse

    DisassociateFromMasterAccountRequest.struct_class = Types::DisassociateFromMasterAccountRequest

    DisassociateFromMasterAccountResponse.struct_class = Types::DisassociateFromMasterAccountResponse

    DisassociateMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DisassociateMembersRequest.struct_class = Types::DisassociateMembersRequest

    DisassociateMembersResponse.struct_class = Types::DisassociateMembersResponse

    EnableImportFindingsForProductRequest.add_member(:product_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ProductArn"))
    EnableImportFindingsForProductRequest.struct_class = Types::EnableImportFindingsForProductRequest

    EnableImportFindingsForProductResponse.add_member(:product_subscription_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProductSubscriptionArn"))
    EnableImportFindingsForProductResponse.struct_class = Types::EnableImportFindingsForProductResponse

    EnableSecurityHubRequest.struct_class = Types::EnableSecurityHubRequest

    EnableSecurityHubResponse.struct_class = Types::EnableSecurityHubResponse

    FieldMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    FieldMap.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    GetEnabledStandardsRequest.add_member(:standards_subscription_arns, Shapes::ShapeRef.new(shape: StandardsSubscriptionArns, location_name: "StandardsSubscriptionArns"))
    GetEnabledStandardsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEnabledStandardsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetEnabledStandardsRequest.struct_class = Types::GetEnabledStandardsRequest

    GetEnabledStandardsResponse.add_member(:standards_subscriptions, Shapes::ShapeRef.new(shape: StandardsSubscriptions, location_name: "StandardsSubscriptions"))
    GetEnabledStandardsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetEnabledStandardsResponse.struct_class = Types::GetEnabledStandardsResponse

    GetFindingsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, location_name: "Filters"))
    GetFindingsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "SortCriteria"))
    GetFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetFindingsRequest.struct_class = Types::GetFindingsRequest

    GetFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: AwsSecurityFindingList, required: true, location_name: "Findings"))
    GetFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetFindingsResponse.struct_class = Types::GetFindingsResponse

    GetInsightResultsRequest.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "InsightArn"))
    GetInsightResultsRequest.struct_class = Types::GetInsightResultsRequest

    GetInsightResultsResponse.add_member(:insight_results, Shapes::ShapeRef.new(shape: InsightResults, required: true, location_name: "InsightResults"))
    GetInsightResultsResponse.struct_class = Types::GetInsightResultsResponse

    GetInsightsRequest.add_member(:insight_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "InsightArns"))
    GetInsightsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInsightsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetInsightsRequest.struct_class = Types::GetInsightsRequest

    GetInsightsResponse.add_member(:insights, Shapes::ShapeRef.new(shape: InsightList, required: true, location_name: "Insights"))
    GetInsightsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInsightsResponse.struct_class = Types::GetInsightsResponse

    GetInvitationsCountRequest.struct_class = Types::GetInvitationsCountRequest

    GetInvitationsCountResponse.add_member(:invitations_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InvitationsCount"))
    GetInvitationsCountResponse.struct_class = Types::GetInvitationsCountResponse

    GetMasterAccountRequest.struct_class = Types::GetMasterAccountRequest

    GetMasterAccountResponse.add_member(:master, Shapes::ShapeRef.new(shape: Invitation, location_name: "Master"))
    GetMasterAccountResponse.struct_class = Types::GetMasterAccountResponse

    GetMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    GetMembersRequest.struct_class = Types::GetMembersRequest

    GetMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: MemberList, location_name: "Members"))
    GetMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    GetMembersResponse.struct_class = Types::GetMembersResponse

    ImportFindingsError.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    ImportFindingsError.add_member(:error_code, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ErrorCode"))
    ImportFindingsError.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ErrorMessage"))
    ImportFindingsError.struct_class = Types::ImportFindingsError

    ImportFindingsErrorList.member = Shapes::ShapeRef.new(shape: ImportFindingsError)

    Insight.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InsightArn"))
    Insight.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    Insight.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, required: true, location_name: "Filters"))
    Insight.add_member(:group_by_attribute, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GroupByAttribute"))
    Insight.struct_class = Types::Insight

    InsightList.member = Shapes::ShapeRef.new(shape: Insight)

    InsightResultValue.add_member(:group_by_attribute_value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GroupByAttributeValue"))
    InsightResultValue.add_member(:count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Count"))
    InsightResultValue.struct_class = Types::InsightResultValue

    InsightResultValueList.member = Shapes::ShapeRef.new(shape: InsightResultValue)

    InsightResults.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "InsightArn"))
    InsightResults.add_member(:group_by_attribute, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "GroupByAttribute"))
    InsightResults.add_member(:result_values, Shapes::ShapeRef.new(shape: InsightResultValueList, required: true, location_name: "ResultValues"))
    InsightResults.struct_class = Types::InsightResults

    InternalException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InternalException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    InternalException.struct_class = Types::InternalException

    InvalidAccessException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InvalidAccessException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    InvalidAccessException.struct_class = Types::InvalidAccessException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InvalidInputException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    InvalidInputException.struct_class = Types::InvalidInputException

    Invitation.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Invitation.add_member(:invitation_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InvitationId"))
    Invitation.add_member(:invited_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InvitedAt"))
    Invitation.add_member(:member_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberStatus"))
    Invitation.struct_class = Types::Invitation

    InvitationList.member = Shapes::ShapeRef.new(shape: Invitation)

    InviteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    InviteMembersRequest.struct_class = Types::InviteMembersRequest

    InviteMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: ResultList, location_name: "UnprocessedAccounts"))
    InviteMembersResponse.struct_class = Types::InviteMembersResponse

    IpFilter.add_member(:cidr, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Cidr"))
    IpFilter.struct_class = Types::IpFilter

    IpFilterList.member = Shapes::ShapeRef.new(shape: IpFilter)

    KeywordFilter.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    KeywordFilter.struct_class = Types::KeywordFilter

    KeywordFilterList.member = Shapes::ShapeRef.new(shape: KeywordFilter)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    LimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListEnabledProductsForImportRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListEnabledProductsForImportRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListEnabledProductsForImportRequest.struct_class = Types::ListEnabledProductsForImportRequest

    ListEnabledProductsForImportResponse.add_member(:product_subscriptions, Shapes::ShapeRef.new(shape: ProductSubscriptionArnList, location_name: "ProductSubscriptions"))
    ListEnabledProductsForImportResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEnabledProductsForImportResponse.struct_class = Types::ListEnabledProductsForImportResponse

    ListInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListInvitationsRequest.struct_class = Types::ListInvitationsRequest

    ListInvitationsResponse.add_member(:invitations, Shapes::ShapeRef.new(shape: InvitationList, location_name: "Invitations"))
    ListInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListInvitationsResponse.struct_class = Types::ListInvitationsResponse

    ListMembersRequest.add_member(:only_associated, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "OnlyAssociated"))
    ListMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListMembersRequest.struct_class = Types::ListMembersRequest

    ListMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: MemberList, location_name: "Members"))
    ListMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListMembersResponse.struct_class = Types::ListMembersResponse

    Malware.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    Malware.add_member(:type, Shapes::ShapeRef.new(shape: MalwareType, location_name: "Type"))
    Malware.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    Malware.add_member(:state, Shapes::ShapeRef.new(shape: MalwareState, location_name: "State"))
    Malware.struct_class = Types::Malware

    MalwareList.member = Shapes::ShapeRef.new(shape: Malware)

    MapFilter.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Key"))
    MapFilter.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    MapFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: MapFilterComparison, location_name: "Comparison"))
    MapFilter.struct_class = Types::MapFilter

    MapFilterList.member = Shapes::ShapeRef.new(shape: MapFilter)

    Member.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Member.add_member(:email, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Email"))
    Member.add_member(:master_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MasterId"))
    Member.add_member(:member_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberStatus"))
    Member.add_member(:invited_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InvitedAt"))
    Member.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Member.struct_class = Types::Member

    MemberList.member = Shapes::ShapeRef.new(shape: Member)

    Network.add_member(:direction, Shapes::ShapeRef.new(shape: NetworkDirection, location_name: "Direction"))
    Network.add_member(:protocol, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Protocol"))
    Network.add_member(:source_ip_v4, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceIpV4"))
    Network.add_member(:source_ip_v6, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceIpV6"))
    Network.add_member(:source_port, Shapes::ShapeRef.new(shape: Integer, location_name: "SourcePort"))
    Network.add_member(:source_domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceDomain"))
    Network.add_member(:source_mac, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceMac"))
    Network.add_member(:destination_ip_v4, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationIpV4"))
    Network.add_member(:destination_ip_v6, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationIpV6"))
    Network.add_member(:destination_port, Shapes::ShapeRef.new(shape: Integer, location_name: "DestinationPort"))
    Network.add_member(:destination_domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationDomain"))
    Network.struct_class = Types::Network

    Note.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Text"))
    Note.add_member(:updated_by, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UpdatedBy"))
    Note.add_member(:updated_at, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UpdatedAt"))
    Note.struct_class = Types::Note

    NoteUpdate.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Text"))
    NoteUpdate.add_member(:updated_by, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UpdatedBy"))
    NoteUpdate.struct_class = Types::NoteUpdate

    NumberFilter.add_member(:gte, Shapes::ShapeRef.new(shape: Double, location_name: "Gte"))
    NumberFilter.add_member(:lte, Shapes::ShapeRef.new(shape: Double, location_name: "Lte"))
    NumberFilter.add_member(:eq, Shapes::ShapeRef.new(shape: Double, location_name: "Eq"))
    NumberFilter.struct_class = Types::NumberFilter

    NumberFilterList.member = Shapes::ShapeRef.new(shape: NumberFilter)

    ProcessDetails.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    ProcessDetails.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    ProcessDetails.add_member(:pid, Shapes::ShapeRef.new(shape: Integer, location_name: "Pid"))
    ProcessDetails.add_member(:parent_pid, Shapes::ShapeRef.new(shape: Integer, location_name: "ParentPid"))
    ProcessDetails.add_member(:launched_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LaunchedAt"))
    ProcessDetails.add_member(:terminated_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TerminatedAt"))
    ProcessDetails.struct_class = Types::ProcessDetails

    ProductSubscriptionArnList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    Recommendation.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Text"))
    Recommendation.add_member(:url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Url"))
    Recommendation.struct_class = Types::Recommendation

    RelatedFinding.add_member(:product_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ProductArn"))
    RelatedFinding.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    RelatedFinding.struct_class = Types::RelatedFinding

    RelatedFindingList.member = Shapes::ShapeRef.new(shape: RelatedFinding)

    Remediation.add_member(:recommendation, Shapes::ShapeRef.new(shape: Recommendation, location_name: "Recommendation"))
    Remediation.struct_class = Types::Remediation

    Resource.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Type"))
    Resource.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Id"))
    Resource.add_member(:partition, Shapes::ShapeRef.new(shape: Partition, location_name: "Partition"))
    Resource.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Region"))
    Resource.add_member(:tags, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Tags"))
    Resource.add_member(:details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "Details"))
    Resource.struct_class = Types::Resource

    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ResourceConflictException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceDetails.add_member(:aws_ec2_instance, Shapes::ShapeRef.new(shape: AwsEc2InstanceDetails, location_name: "AwsEc2Instance"))
    ResourceDetails.add_member(:aws_s3_bucket, Shapes::ShapeRef.new(shape: AwsS3BucketDetails, location_name: "AwsS3Bucket"))
    ResourceDetails.add_member(:aws_iam_access_key, Shapes::ShapeRef.new(shape: AwsIamAccessKeyDetails, location_name: "AwsIamAccessKey"))
    ResourceDetails.add_member(:container, Shapes::ShapeRef.new(shape: ContainerDetails, location_name: "Container"))
    ResourceDetails.add_member(:other, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Other"))
    ResourceDetails.struct_class = Types::ResourceDetails

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Code"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Result.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Result.add_member(:processing_result, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ProcessingResult"))
    Result.struct_class = Types::Result

    ResultList.member = Shapes::ShapeRef.new(shape: Result)

    Severity.add_member(:product, Shapes::ShapeRef.new(shape: Double, location_name: "Product"))
    Severity.add_member(:normalized, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Normalized"))
    Severity.struct_class = Types::Severity

    SortCriteria.member = Shapes::ShapeRef.new(shape: SortCriterion)

    SortCriterion.add_member(:field, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Field"))
    SortCriterion.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    SortCriterion.struct_class = Types::SortCriterion

    StandardsInputParameterMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    StandardsInputParameterMap.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    StandardsSubscription.add_member(:standards_subscription_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsSubscriptionArn"))
    StandardsSubscription.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsArn"))
    StandardsSubscription.add_member(:standards_input, Shapes::ShapeRef.new(shape: StandardsInputParameterMap, required: true, location_name: "StandardsInput"))
    StandardsSubscription.add_member(:standards_status, Shapes::ShapeRef.new(shape: StandardsStatus, required: true, location_name: "StandardsStatus"))
    StandardsSubscription.struct_class = Types::StandardsSubscription

    StandardsSubscriptionArns.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    StandardsSubscriptionRequest.add_member(:standards_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "StandardsArn"))
    StandardsSubscriptionRequest.add_member(:standards_input, Shapes::ShapeRef.new(shape: StandardsInputParameterMap, location_name: "StandardsInput"))
    StandardsSubscriptionRequest.struct_class = Types::StandardsSubscriptionRequest

    StandardsSubscriptionRequests.member = Shapes::ShapeRef.new(shape: StandardsSubscriptionRequest)

    StandardsSubscriptions.member = Shapes::ShapeRef.new(shape: StandardsSubscription)

    StringFilter.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    StringFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: StringFilterComparison, location_name: "Comparison"))
    StringFilter.struct_class = Types::StringFilter

    StringFilterList.member = Shapes::ShapeRef.new(shape: StringFilter)

    StringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ThreatIntelIndicator.add_member(:type, Shapes::ShapeRef.new(shape: ThreatIntelIndicatorType, location_name: "Type"))
    ThreatIntelIndicator.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    ThreatIntelIndicator.add_member(:category, Shapes::ShapeRef.new(shape: ThreatIntelIndicatorCategory, location_name: "Category"))
    ThreatIntelIndicator.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "LastObservedAt"))
    ThreatIntelIndicator.add_member(:source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Source"))
    ThreatIntelIndicator.add_member(:source_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SourceUrl"))
    ThreatIntelIndicator.struct_class = Types::ThreatIntelIndicator

    ThreatIntelIndicatorList.member = Shapes::ShapeRef.new(shape: ThreatIntelIndicator)

    TypeList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    UpdateFindingsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, required: true, location_name: "Filters"))
    UpdateFindingsRequest.add_member(:note, Shapes::ShapeRef.new(shape: NoteUpdate, location_name: "Note"))
    UpdateFindingsRequest.add_member(:record_state, Shapes::ShapeRef.new(shape: RecordState, location_name: "RecordState"))
    UpdateFindingsRequest.struct_class = Types::UpdateFindingsRequest

    UpdateFindingsResponse.struct_class = Types::UpdateFindingsResponse

    UpdateInsightRequest.add_member(:insight_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "InsightArn"))
    UpdateInsightRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    UpdateInsightRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AwsSecurityFindingFilters, location_name: "Filters"))
    UpdateInsightRequest.add_member(:group_by_attribute, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupByAttribute"))
    UpdateInsightRequest.struct_class = Types::UpdateInsightRequest

    UpdateInsightResponse.struct_class = Types::UpdateInsightResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-10-26"

      api.metadata = {
        "apiVersion" => "2018-10-26",
        "endpointPrefix" => "securityhub",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS SecurityHub",
        "serviceId" => "SecurityHub",
        "signatureVersion" => "v4",
        "signingName" => "securityhub",
        "uid" => "securityhub-2018-10-26",
      }

      api.add_operation(:accept_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/master"
        o.input = Shapes::ShapeRef.new(shape: AcceptInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
      end)

      api.add_operation(:batch_disable_standards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisableStandards"
        o.http_method = "POST"
        o.http_request_uri = "/standards/deregister"
        o.input = Shapes::ShapeRef.new(shape: BatchDisableStandardsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisableStandardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:batch_enable_standards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchEnableStandards"
        o.http_method = "POST"
        o.http_request_uri = "/standards/register"
        o.input = Shapes::ShapeRef.new(shape: BatchEnableStandardsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchEnableStandardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:batch_import_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchImportFindings"
        o.http_method = "POST"
        o.http_request_uri = "/findings/import"
        o.input = Shapes::ShapeRef.new(shape: BatchImportFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchImportFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
      end)

      api.add_operation(:create_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInsight"
        o.http_method = "POST"
        o.http_request_uri = "/insights"
        o.input = Shapes::ShapeRef.new(shape: CreateInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:create_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members"
        o.input = Shapes::ShapeRef.new(shape: CreateMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:decline_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeclineInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitations/decline"
        o.input = Shapes::ShapeRef.new(shape: DeclineInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeclineInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInsight"
        o.http_method = "DELETE"
        o.http_request_uri = "/insights/{InsightArn+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitations/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
      end)

      api.add_operation(:delete_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disable_import_findings_for_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableImportFindingsForProduct"
        o.http_method = "DELETE"
        o.http_request_uri = "/productSubscriptions/{ProductSubscriptionArn+}"
        o.input = Shapes::ShapeRef.new(shape: DisableImportFindingsForProductRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableImportFindingsForProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:disable_security_hub, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableSecurityHub"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: DisableSecurityHubRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableSecurityHubResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_from_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFromMasterAccount"
        o.http_method = "POST"
        o.http_request_uri = "/master/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:enable_import_findings_for_product, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableImportFindingsForProduct"
        o.http_method = "POST"
        o.http_request_uri = "/productSubscriptions"
        o.input = Shapes::ShapeRef.new(shape: EnableImportFindingsForProductRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableImportFindingsForProductResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:enable_security_hub, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableSecurityHub"
        o.http_method = "POST"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: EnableSecurityHubRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableSecurityHubResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_enabled_standards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnabledStandards"
        o.http_method = "POST"
        o.http_request_uri = "/standards/get"
        o.input = Shapes::ShapeRef.new(shape: GetEnabledStandardsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnabledStandardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindings"
        o.http_method = "POST"
        o.http_request_uri = "/findings"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_insight_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInsightResults"
        o.http_method = "GET"
        o.http_request_uri = "/insights/results/{InsightArn+}"
        o.input = Shapes::ShapeRef.new(shape: GetInsightResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInsightResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInsights"
        o.http_method = "POST"
        o.http_request_uri = "/insights/get"
        o.input = Shapes::ShapeRef.new(shape: GetInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInsightsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_invitations_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvitationsCount"
        o.http_method = "GET"
        o.http_request_uri = "/invitations/count"
        o.input = Shapes::ShapeRef.new(shape: GetInvitationsCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvitationsCountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMasterAccount"
        o.http_method = "GET"
        o.http_request_uri = "/master"
        o.input = Shapes::ShapeRef.new(shape: GetMasterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMasterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members/get"
        o.input = Shapes::ShapeRef.new(shape: GetMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:invite_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InviteMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members/invite"
        o.input = Shapes::ShapeRef.new(shape: InviteMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: InviteMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_enabled_products_for_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnabledProductsForImport"
        o.http_method = "GET"
        o.http_request_uri = "/productSubscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListEnabledProductsForImportRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnabledProductsForImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvitations"
        o.http_method = "GET"
        o.http_request_uri = "/invitations"
        o.input = Shapes::ShapeRef.new(shape: ListInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:list_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMembers"
        o.http_method = "GET"
        o.http_request_uri = "/members"
        o.input = Shapes::ShapeRef.new(shape: ListMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFindings"
        o.http_method = "PATCH"
        o.http_request_uri = "/findings"
        o.input = Shapes::ShapeRef.new(shape: UpdateFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInsight"
        o.http_method = "PATCH"
        o.http_request_uri = "/insights/{InsightArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAccessException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
