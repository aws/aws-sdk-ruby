# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MailManager
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptAction = Shapes::StringShape.new(name: 'AcceptAction')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionFailurePolicy = Shapes::StringShape.new(name: 'ActionFailurePolicy')
    AddHeaderAction = Shapes::StructureShape.new(name: 'AddHeaderAction')
    AddonInstance = Shapes::StructureShape.new(name: 'AddonInstance')
    AddonInstanceArn = Shapes::StringShape.new(name: 'AddonInstanceArn')
    AddonInstanceId = Shapes::StringShape.new(name: 'AddonInstanceId')
    AddonInstances = Shapes::ListShape.new(name: 'AddonInstances')
    AddonName = Shapes::StringShape.new(name: 'AddonName')
    AddonSubscription = Shapes::StructureShape.new(name: 'AddonSubscription')
    AddonSubscriptionArn = Shapes::StringShape.new(name: 'AddonSubscriptionArn')
    AddonSubscriptionId = Shapes::StringShape.new(name: 'AddonSubscriptionId')
    AddonSubscriptions = Shapes::ListShape.new(name: 'AddonSubscriptions')
    Address = Shapes::StringShape.new(name: 'Address')
    AddressFilter = Shapes::StructureShape.new(name: 'AddressFilter')
    AddressList = Shapes::StructureShape.new(name: 'AddressList')
    AddressListArn = Shapes::StringShape.new(name: 'AddressListArn')
    AddressListId = Shapes::StringShape.new(name: 'AddressListId')
    AddressListName = Shapes::StringShape.new(name: 'AddressListName')
    AddressLists = Shapes::ListShape.new(name: 'AddressLists')
    AddressPageSize = Shapes::IntegerShape.new(name: 'AddressPageSize')
    AddressPrefix = Shapes::StringShape.new(name: 'AddressPrefix')
    Analysis = Shapes::StructureShape.new(name: 'Analysis')
    AnalyzerArn = Shapes::StringShape.new(name: 'AnalyzerArn')
    Archive = Shapes::StructureShape.new(name: 'Archive')
    ArchiveAction = Shapes::StructureShape.new(name: 'ArchiveAction')
    ArchiveArn = Shapes::StringShape.new(name: 'ArchiveArn')
    ArchiveBooleanEmailAttribute = Shapes::StringShape.new(name: 'ArchiveBooleanEmailAttribute')
    ArchiveBooleanExpression = Shapes::StructureShape.new(name: 'ArchiveBooleanExpression')
    ArchiveBooleanOperator = Shapes::StringShape.new(name: 'ArchiveBooleanOperator')
    ArchiveBooleanToEvaluate = Shapes::UnionShape.new(name: 'ArchiveBooleanToEvaluate')
    ArchiveFilterCondition = Shapes::UnionShape.new(name: 'ArchiveFilterCondition')
    ArchiveFilterConditions = Shapes::ListShape.new(name: 'ArchiveFilterConditions')
    ArchiveFilters = Shapes::StructureShape.new(name: 'ArchiveFilters')
    ArchiveId = Shapes::StringShape.new(name: 'ArchiveId')
    ArchiveIdString = Shapes::StringShape.new(name: 'ArchiveIdString')
    ArchiveNameString = Shapes::StringShape.new(name: 'ArchiveNameString')
    ArchiveRetention = Shapes::UnionShape.new(name: 'ArchiveRetention')
    ArchiveState = Shapes::StringShape.new(name: 'ArchiveState')
    ArchiveStringEmailAttribute = Shapes::StringShape.new(name: 'ArchiveStringEmailAttribute')
    ArchiveStringExpression = Shapes::StructureShape.new(name: 'ArchiveStringExpression')
    ArchiveStringOperator = Shapes::StringShape.new(name: 'ArchiveStringOperator')
    ArchiveStringToEvaluate = Shapes::UnionShape.new(name: 'ArchiveStringToEvaluate')
    ArchivedMessageId = Shapes::StringShape.new(name: 'ArchivedMessageId')
    ArchivesList = Shapes::ListShape.new(name: 'ArchivesList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAddonInstanceRequest = Shapes::StructureShape.new(name: 'CreateAddonInstanceRequest')
    CreateAddonInstanceResponse = Shapes::StructureShape.new(name: 'CreateAddonInstanceResponse')
    CreateAddonSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateAddonSubscriptionRequest')
    CreateAddonSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateAddonSubscriptionResponse')
    CreateAddressListImportJobRequest = Shapes::StructureShape.new(name: 'CreateAddressListImportJobRequest')
    CreateAddressListImportJobResponse = Shapes::StructureShape.new(name: 'CreateAddressListImportJobResponse')
    CreateAddressListRequest = Shapes::StructureShape.new(name: 'CreateAddressListRequest')
    CreateAddressListResponse = Shapes::StructureShape.new(name: 'CreateAddressListResponse')
    CreateArchiveRequest = Shapes::StructureShape.new(name: 'CreateArchiveRequest')
    CreateArchiveResponse = Shapes::StructureShape.new(name: 'CreateArchiveResponse')
    CreateIngressPointRequest = Shapes::StructureShape.new(name: 'CreateIngressPointRequest')
    CreateIngressPointResponse = Shapes::StructureShape.new(name: 'CreateIngressPointResponse')
    CreateRelayRequest = Shapes::StructureShape.new(name: 'CreateRelayRequest')
    CreateRelayResponse = Shapes::StructureShape.new(name: 'CreateRelayResponse')
    CreateRuleSetRequest = Shapes::StructureShape.new(name: 'CreateRuleSetRequest')
    CreateRuleSetResponse = Shapes::StructureShape.new(name: 'CreateRuleSetResponse')
    CreateTrafficPolicyRequest = Shapes::StructureShape.new(name: 'CreateTrafficPolicyRequest')
    CreateTrafficPolicyResponse = Shapes::StructureShape.new(name: 'CreateTrafficPolicyResponse')
    DeleteAddonInstanceRequest = Shapes::StructureShape.new(name: 'DeleteAddonInstanceRequest')
    DeleteAddonInstanceResponse = Shapes::StructureShape.new(name: 'DeleteAddonInstanceResponse')
    DeleteAddonSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteAddonSubscriptionRequest')
    DeleteAddonSubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteAddonSubscriptionResponse')
    DeleteAddressListRequest = Shapes::StructureShape.new(name: 'DeleteAddressListRequest')
    DeleteAddressListResponse = Shapes::StructureShape.new(name: 'DeleteAddressListResponse')
    DeleteArchiveRequest = Shapes::StructureShape.new(name: 'DeleteArchiveRequest')
    DeleteArchiveResponse = Shapes::StructureShape.new(name: 'DeleteArchiveResponse')
    DeleteIngressPointRequest = Shapes::StructureShape.new(name: 'DeleteIngressPointRequest')
    DeleteIngressPointResponse = Shapes::StructureShape.new(name: 'DeleteIngressPointResponse')
    DeleteRelayRequest = Shapes::StructureShape.new(name: 'DeleteRelayRequest')
    DeleteRelayResponse = Shapes::StructureShape.new(name: 'DeleteRelayResponse')
    DeleteRuleSetRequest = Shapes::StructureShape.new(name: 'DeleteRuleSetRequest')
    DeleteRuleSetResponse = Shapes::StructureShape.new(name: 'DeleteRuleSetResponse')
    DeleteTrafficPolicyRequest = Shapes::StructureShape.new(name: 'DeleteTrafficPolicyRequest')
    DeleteTrafficPolicyResponse = Shapes::StructureShape.new(name: 'DeleteTrafficPolicyResponse')
    DeliverToMailboxAction = Shapes::StructureShape.new(name: 'DeliverToMailboxAction')
    DeliverToQBusinessAction = Shapes::StructureShape.new(name: 'DeliverToQBusinessAction')
    DeregisterMemberFromAddressListRequest = Shapes::StructureShape.new(name: 'DeregisterMemberFromAddressListRequest')
    DeregisterMemberFromAddressListResponse = Shapes::StructureShape.new(name: 'DeregisterMemberFromAddressListResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    DropAction = Shapes::StructureShape.new(name: 'DropAction')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailReceivedHeadersList = Shapes::ListShape.new(name: 'EmailReceivedHeadersList')
    Envelope = Shapes::StructureShape.new(name: 'Envelope')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExportDestinationConfiguration = Shapes::UnionShape.new(name: 'ExportDestinationConfiguration')
    ExportId = Shapes::StringShape.new(name: 'ExportId')
    ExportMaxResults = Shapes::IntegerShape.new(name: 'ExportMaxResults')
    ExportState = Shapes::StringShape.new(name: 'ExportState')
    ExportStatus = Shapes::StructureShape.new(name: 'ExportStatus')
    ExportSummary = Shapes::StructureShape.new(name: 'ExportSummary')
    ExportSummaryList = Shapes::ListShape.new(name: 'ExportSummaryList')
    GetAddonInstanceRequest = Shapes::StructureShape.new(name: 'GetAddonInstanceRequest')
    GetAddonInstanceResponse = Shapes::StructureShape.new(name: 'GetAddonInstanceResponse')
    GetAddonSubscriptionRequest = Shapes::StructureShape.new(name: 'GetAddonSubscriptionRequest')
    GetAddonSubscriptionResponse = Shapes::StructureShape.new(name: 'GetAddonSubscriptionResponse')
    GetAddressListImportJobRequest = Shapes::StructureShape.new(name: 'GetAddressListImportJobRequest')
    GetAddressListImportJobResponse = Shapes::StructureShape.new(name: 'GetAddressListImportJobResponse')
    GetAddressListRequest = Shapes::StructureShape.new(name: 'GetAddressListRequest')
    GetAddressListResponse = Shapes::StructureShape.new(name: 'GetAddressListResponse')
    GetArchiveExportRequest = Shapes::StructureShape.new(name: 'GetArchiveExportRequest')
    GetArchiveExportResponse = Shapes::StructureShape.new(name: 'GetArchiveExportResponse')
    GetArchiveMessageContentRequest = Shapes::StructureShape.new(name: 'GetArchiveMessageContentRequest')
    GetArchiveMessageContentResponse = Shapes::StructureShape.new(name: 'GetArchiveMessageContentResponse')
    GetArchiveMessageRequest = Shapes::StructureShape.new(name: 'GetArchiveMessageRequest')
    GetArchiveMessageResponse = Shapes::StructureShape.new(name: 'GetArchiveMessageResponse')
    GetArchiveRequest = Shapes::StructureShape.new(name: 'GetArchiveRequest')
    GetArchiveResponse = Shapes::StructureShape.new(name: 'GetArchiveResponse')
    GetArchiveSearchRequest = Shapes::StructureShape.new(name: 'GetArchiveSearchRequest')
    GetArchiveSearchResponse = Shapes::StructureShape.new(name: 'GetArchiveSearchResponse')
    GetArchiveSearchResultsRequest = Shapes::StructureShape.new(name: 'GetArchiveSearchResultsRequest')
    GetArchiveSearchResultsResponse = Shapes::StructureShape.new(name: 'GetArchiveSearchResultsResponse')
    GetIngressPointRequest = Shapes::StructureShape.new(name: 'GetIngressPointRequest')
    GetIngressPointResponse = Shapes::StructureShape.new(name: 'GetIngressPointResponse')
    GetMemberOfAddressListRequest = Shapes::StructureShape.new(name: 'GetMemberOfAddressListRequest')
    GetMemberOfAddressListResponse = Shapes::StructureShape.new(name: 'GetMemberOfAddressListResponse')
    GetRelayRequest = Shapes::StructureShape.new(name: 'GetRelayRequest')
    GetRelayResponse = Shapes::StructureShape.new(name: 'GetRelayResponse')
    GetRuleSetRequest = Shapes::StructureShape.new(name: 'GetRuleSetRequest')
    GetRuleSetResponse = Shapes::StructureShape.new(name: 'GetRuleSetResponse')
    GetTrafficPolicyRequest = Shapes::StructureShape.new(name: 'GetTrafficPolicyRequest')
    GetTrafficPolicyResponse = Shapes::StructureShape.new(name: 'GetTrafficPolicyResponse')
    HeaderName = Shapes::StringShape.new(name: 'HeaderName')
    HeaderValue = Shapes::StringShape.new(name: 'HeaderValue')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdOrArn = Shapes::StringShape.new(name: 'IdOrArn')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    ImportDataFormat = Shapes::StructureShape.new(name: 'ImportDataFormat')
    ImportDataType = Shapes::StringShape.new(name: 'ImportDataType')
    ImportJob = Shapes::StructureShape.new(name: 'ImportJob')
    ImportJobStatus = Shapes::StringShape.new(name: 'ImportJobStatus')
    ImportJobs = Shapes::ListShape.new(name: 'ImportJobs')
    IngressAddressListArnList = Shapes::ListShape.new(name: 'IngressAddressListArnList')
    IngressAddressListEmailAttribute = Shapes::StringShape.new(name: 'IngressAddressListEmailAttribute')
    IngressAnalysis = Shapes::StructureShape.new(name: 'IngressAnalysis')
    IngressBooleanExpression = Shapes::StructureShape.new(name: 'IngressBooleanExpression')
    IngressBooleanOperator = Shapes::StringShape.new(name: 'IngressBooleanOperator')
    IngressBooleanToEvaluate = Shapes::UnionShape.new(name: 'IngressBooleanToEvaluate')
    IngressIpOperator = Shapes::StringShape.new(name: 'IngressIpOperator')
    IngressIpToEvaluate = Shapes::UnionShape.new(name: 'IngressIpToEvaluate')
    IngressIpv4Attribute = Shapes::StringShape.new(name: 'IngressIpv4Attribute')
    IngressIpv4Expression = Shapes::StructureShape.new(name: 'IngressIpv4Expression')
    IngressIsInAddressList = Shapes::StructureShape.new(name: 'IngressIsInAddressList')
    IngressPoint = Shapes::StructureShape.new(name: 'IngressPoint')
    IngressPointARecord = Shapes::StringShape.new(name: 'IngressPointARecord')
    IngressPointArn = Shapes::StringShape.new(name: 'IngressPointArn')
    IngressPointAuthConfiguration = Shapes::StructureShape.new(name: 'IngressPointAuthConfiguration')
    IngressPointConfiguration = Shapes::UnionShape.new(name: 'IngressPointConfiguration')
    IngressPointId = Shapes::StringShape.new(name: 'IngressPointId')
    IngressPointName = Shapes::StringShape.new(name: 'IngressPointName')
    IngressPointPasswordConfiguration = Shapes::StructureShape.new(name: 'IngressPointPasswordConfiguration')
    IngressPointStatus = Shapes::StringShape.new(name: 'IngressPointStatus')
    IngressPointStatusToUpdate = Shapes::StringShape.new(name: 'IngressPointStatusToUpdate')
    IngressPointType = Shapes::StringShape.new(name: 'IngressPointType')
    IngressPointsList = Shapes::ListShape.new(name: 'IngressPointsList')
    IngressStringEmailAttribute = Shapes::StringShape.new(name: 'IngressStringEmailAttribute')
    IngressStringExpression = Shapes::StructureShape.new(name: 'IngressStringExpression')
    IngressStringOperator = Shapes::StringShape.new(name: 'IngressStringOperator')
    IngressStringToEvaluate = Shapes::UnionShape.new(name: 'IngressStringToEvaluate')
    IngressTlsAttribute = Shapes::StringShape.new(name: 'IngressTlsAttribute')
    IngressTlsProtocolAttribute = Shapes::StringShape.new(name: 'IngressTlsProtocolAttribute')
    IngressTlsProtocolExpression = Shapes::StructureShape.new(name: 'IngressTlsProtocolExpression')
    IngressTlsProtocolOperator = Shapes::StringShape.new(name: 'IngressTlsProtocolOperator')
    IngressTlsProtocolToEvaluate = Shapes::UnionShape.new(name: 'IngressTlsProtocolToEvaluate')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    Ipv4Cidr = Shapes::StringShape.new(name: 'Ipv4Cidr')
    Ipv4Cidrs = Shapes::ListShape.new(name: 'Ipv4Cidrs')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobItemsCount = Shapes::IntegerShape.new(name: 'JobItemsCount')
    JobName = Shapes::StringShape.new(name: 'JobName')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListAddonInstancesRequest = Shapes::StructureShape.new(name: 'ListAddonInstancesRequest')
    ListAddonInstancesResponse = Shapes::StructureShape.new(name: 'ListAddonInstancesResponse')
    ListAddonSubscriptionsRequest = Shapes::StructureShape.new(name: 'ListAddonSubscriptionsRequest')
    ListAddonSubscriptionsResponse = Shapes::StructureShape.new(name: 'ListAddonSubscriptionsResponse')
    ListAddressListImportJobsRequest = Shapes::StructureShape.new(name: 'ListAddressListImportJobsRequest')
    ListAddressListImportJobsResponse = Shapes::StructureShape.new(name: 'ListAddressListImportJobsResponse')
    ListAddressListsRequest = Shapes::StructureShape.new(name: 'ListAddressListsRequest')
    ListAddressListsResponse = Shapes::StructureShape.new(name: 'ListAddressListsResponse')
    ListArchiveExportsRequest = Shapes::StructureShape.new(name: 'ListArchiveExportsRequest')
    ListArchiveExportsResponse = Shapes::StructureShape.new(name: 'ListArchiveExportsResponse')
    ListArchiveSearchesRequest = Shapes::StructureShape.new(name: 'ListArchiveSearchesRequest')
    ListArchiveSearchesResponse = Shapes::StructureShape.new(name: 'ListArchiveSearchesResponse')
    ListArchivesRequest = Shapes::StructureShape.new(name: 'ListArchivesRequest')
    ListArchivesResponse = Shapes::StructureShape.new(name: 'ListArchivesResponse')
    ListIngressPointsRequest = Shapes::StructureShape.new(name: 'ListIngressPointsRequest')
    ListIngressPointsResponse = Shapes::StructureShape.new(name: 'ListIngressPointsResponse')
    ListMembersOfAddressListRequest = Shapes::StructureShape.new(name: 'ListMembersOfAddressListRequest')
    ListMembersOfAddressListResponse = Shapes::StructureShape.new(name: 'ListMembersOfAddressListResponse')
    ListRelaysRequest = Shapes::StructureShape.new(name: 'ListRelaysRequest')
    ListRelaysResponse = Shapes::StructureShape.new(name: 'ListRelaysResponse')
    ListRuleSetsRequest = Shapes::StructureShape.new(name: 'ListRuleSetsRequest')
    ListRuleSetsResponse = Shapes::StructureShape.new(name: 'ListRuleSetsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTrafficPoliciesRequest = Shapes::StructureShape.new(name: 'ListTrafficPoliciesRequest')
    ListTrafficPoliciesResponse = Shapes::StructureShape.new(name: 'ListTrafficPoliciesResponse')
    MailFrom = Shapes::StringShape.new(name: 'MailFrom')
    MaxMessageSizeBytes = Shapes::IntegerShape.new(name: 'MaxMessageSizeBytes')
    MessageBody = Shapes::StructureShape.new(name: 'MessageBody')
    Metadata = Shapes::StructureShape.new(name: 'Metadata')
    MimeHeaderAttribute = Shapes::StringShape.new(name: 'MimeHeaderAttribute')
    NameOrArn = Shapes::StringShape.new(name: 'NameOrArn')
    NoAuthentication = Shapes::StructureShape.new(name: 'NoAuthentication')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PolicyCondition = Shapes::UnionShape.new(name: 'PolicyCondition')
    PolicyConditions = Shapes::ListShape.new(name: 'PolicyConditions')
    PolicyStatement = Shapes::StructureShape.new(name: 'PolicyStatement')
    PolicyStatementList = Shapes::ListShape.new(name: 'PolicyStatementList')
    PreSignedUrl = Shapes::StringShape.new(name: 'PreSignedUrl')
    QBusinessApplicationId = Shapes::StringShape.new(name: 'QBusinessApplicationId')
    QBusinessIndexId = Shapes::StringShape.new(name: 'QBusinessIndexId')
    Recipients = Shapes::ListShape.new(name: 'Recipients')
    RegisterMemberToAddressListRequest = Shapes::StructureShape.new(name: 'RegisterMemberToAddressListRequest')
    RegisterMemberToAddressListResponse = Shapes::StructureShape.new(name: 'RegisterMemberToAddressListResponse')
    Relay = Shapes::StructureShape.new(name: 'Relay')
    RelayAction = Shapes::StructureShape.new(name: 'RelayAction')
    RelayArn = Shapes::StringShape.new(name: 'RelayArn')
    RelayAuthentication = Shapes::UnionShape.new(name: 'RelayAuthentication')
    RelayId = Shapes::StringShape.new(name: 'RelayId')
    RelayName = Shapes::StringShape.new(name: 'RelayName')
    RelayServerName = Shapes::StringShape.new(name: 'RelayServerName')
    RelayServerPort = Shapes::IntegerShape.new(name: 'RelayServerPort')
    Relays = Shapes::ListShape.new(name: 'Relays')
    ReplaceRecipientAction = Shapes::StructureShape.new(name: 'ReplaceRecipientAction')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultField = Shapes::StringShape.new(name: 'ResultField')
    RetentionPeriod = Shapes::StringShape.new(name: 'RetentionPeriod')
    Row = Shapes::StructureShape.new(name: 'Row')
    RowsList = Shapes::ListShape.new(name: 'RowsList')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleAction = Shapes::UnionShape.new(name: 'RuleAction')
    RuleActions = Shapes::ListShape.new(name: 'RuleActions')
    RuleAddressListArnList = Shapes::ListShape.new(name: 'RuleAddressListArnList')
    RuleAddressListEmailAttribute = Shapes::StringShape.new(name: 'RuleAddressListEmailAttribute')
    RuleBooleanEmailAttribute = Shapes::StringShape.new(name: 'RuleBooleanEmailAttribute')
    RuleBooleanExpression = Shapes::StructureShape.new(name: 'RuleBooleanExpression')
    RuleBooleanOperator = Shapes::StringShape.new(name: 'RuleBooleanOperator')
    RuleBooleanToEvaluate = Shapes::UnionShape.new(name: 'RuleBooleanToEvaluate')
    RuleCondition = Shapes::UnionShape.new(name: 'RuleCondition')
    RuleConditions = Shapes::ListShape.new(name: 'RuleConditions')
    RuleDmarcExpression = Shapes::StructureShape.new(name: 'RuleDmarcExpression')
    RuleDmarcOperator = Shapes::StringShape.new(name: 'RuleDmarcOperator')
    RuleDmarcPolicy = Shapes::StringShape.new(name: 'RuleDmarcPolicy')
    RuleDmarcValueList = Shapes::ListShape.new(name: 'RuleDmarcValueList')
    RuleIpEmailAttribute = Shapes::StringShape.new(name: 'RuleIpEmailAttribute')
    RuleIpExpression = Shapes::StructureShape.new(name: 'RuleIpExpression')
    RuleIpOperator = Shapes::StringShape.new(name: 'RuleIpOperator')
    RuleIpStringValue = Shapes::StringShape.new(name: 'RuleIpStringValue')
    RuleIpToEvaluate = Shapes::UnionShape.new(name: 'RuleIpToEvaluate')
    RuleIpValueList = Shapes::ListShape.new(name: 'RuleIpValueList')
    RuleIsInAddressList = Shapes::StructureShape.new(name: 'RuleIsInAddressList')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RuleNumberEmailAttribute = Shapes::StringShape.new(name: 'RuleNumberEmailAttribute')
    RuleNumberExpression = Shapes::StructureShape.new(name: 'RuleNumberExpression')
    RuleNumberOperator = Shapes::StringShape.new(name: 'RuleNumberOperator')
    RuleNumberToEvaluate = Shapes::UnionShape.new(name: 'RuleNumberToEvaluate')
    RuleSet = Shapes::StructureShape.new(name: 'RuleSet')
    RuleSetArn = Shapes::StringShape.new(name: 'RuleSetArn')
    RuleSetId = Shapes::StringShape.new(name: 'RuleSetId')
    RuleSetName = Shapes::StringShape.new(name: 'RuleSetName')
    RuleSets = Shapes::ListShape.new(name: 'RuleSets')
    RuleStringEmailAttribute = Shapes::StringShape.new(name: 'RuleStringEmailAttribute')
    RuleStringExpression = Shapes::StructureShape.new(name: 'RuleStringExpression')
    RuleStringList = Shapes::ListShape.new(name: 'RuleStringList')
    RuleStringOperator = Shapes::StringShape.new(name: 'RuleStringOperator')
    RuleStringToEvaluate = Shapes::UnionShape.new(name: 'RuleStringToEvaluate')
    RuleStringValue = Shapes::StringShape.new(name: 'RuleStringValue')
    RuleVerdict = Shapes::StringShape.new(name: 'RuleVerdict')
    RuleVerdictAttribute = Shapes::StringShape.new(name: 'RuleVerdictAttribute')
    RuleVerdictExpression = Shapes::StructureShape.new(name: 'RuleVerdictExpression')
    RuleVerdictOperator = Shapes::StringShape.new(name: 'RuleVerdictOperator')
    RuleVerdictToEvaluate = Shapes::UnionShape.new(name: 'RuleVerdictToEvaluate')
    RuleVerdictValueList = Shapes::ListShape.new(name: 'RuleVerdictValueList')
    Rules = Shapes::ListShape.new(name: 'Rules')
    S3Action = Shapes::StructureShape.new(name: 'S3Action')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3ExportDestinationConfiguration = Shapes::StructureShape.new(name: 'S3ExportDestinationConfiguration')
    S3Location = Shapes::StringShape.new(name: 'S3Location')
    S3Prefix = Shapes::StringShape.new(name: 'S3Prefix')
    S3PresignedURL = Shapes::StringShape.new(name: 'S3PresignedURL')
    SavedAddress = Shapes::StructureShape.new(name: 'SavedAddress')
    SavedAddresses = Shapes::ListShape.new(name: 'SavedAddresses')
    SearchId = Shapes::StringShape.new(name: 'SearchId')
    SearchMaxResults = Shapes::IntegerShape.new(name: 'SearchMaxResults')
    SearchState = Shapes::StringShape.new(name: 'SearchState')
    SearchStatus = Shapes::StructureShape.new(name: 'SearchStatus')
    SearchSummary = Shapes::StructureShape.new(name: 'SearchSummary')
    SearchSummaryList = Shapes::ListShape.new(name: 'SearchSummaryList')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SendAction = Shapes::StructureShape.new(name: 'SendAction')
    SenderIpAddress = Shapes::StringShape.new(name: 'SenderIpAddress')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SmtpPassword = Shapes::StringShape.new(name: 'SmtpPassword')
    StartAddressListImportJobRequest = Shapes::StructureShape.new(name: 'StartAddressListImportJobRequest')
    StartAddressListImportJobResponse = Shapes::StructureShape.new(name: 'StartAddressListImportJobResponse')
    StartArchiveExportRequest = Shapes::StructureShape.new(name: 'StartArchiveExportRequest')
    StartArchiveExportResponse = Shapes::StructureShape.new(name: 'StartArchiveExportResponse')
    StartArchiveSearchRequest = Shapes::StructureShape.new(name: 'StartArchiveSearchRequest')
    StartArchiveSearchResponse = Shapes::StructureShape.new(name: 'StartArchiveSearchResponse')
    StopAddressListImportJobRequest = Shapes::StructureShape.new(name: 'StopAddressListImportJobRequest')
    StopAddressListImportJobResponse = Shapes::StructureShape.new(name: 'StopAddressListImportJobResponse')
    StopArchiveExportRequest = Shapes::StructureShape.new(name: 'StopArchiveExportRequest')
    StopArchiveExportResponse = Shapes::StructureShape.new(name: 'StopArchiveExportResponse')
    StopArchiveSearchRequest = Shapes::StructureShape.new(name: 'StopArchiveSearchRequest')
    StopArchiveSearchResponse = Shapes::StructureShape.new(name: 'StopArchiveSearchResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringValue = Shapes::StringShape.new(name: 'StringValue')
    StringValueList = Shapes::ListShape.new(name: 'StringValueList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrafficPolicy = Shapes::StructureShape.new(name: 'TrafficPolicy')
    TrafficPolicyArn = Shapes::StringShape.new(name: 'TrafficPolicyArn')
    TrafficPolicyId = Shapes::StringShape.new(name: 'TrafficPolicyId')
    TrafficPolicyList = Shapes::ListShape.new(name: 'TrafficPolicyList')
    TrafficPolicyName = Shapes::StringShape.new(name: 'TrafficPolicyName')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateArchiveRequest = Shapes::StructureShape.new(name: 'UpdateArchiveRequest')
    UpdateArchiveResponse = Shapes::StructureShape.new(name: 'UpdateArchiveResponse')
    UpdateIngressPointRequest = Shapes::StructureShape.new(name: 'UpdateIngressPointRequest')
    UpdateIngressPointResponse = Shapes::StructureShape.new(name: 'UpdateIngressPointResponse')
    UpdateRelayRequest = Shapes::StructureShape.new(name: 'UpdateRelayRequest')
    UpdateRelayResponse = Shapes::StructureShape.new(name: 'UpdateRelayResponse')
    UpdateRuleSetRequest = Shapes::StructureShape.new(name: 'UpdateRuleSetRequest')
    UpdateRuleSetResponse = Shapes::StructureShape.new(name: 'UpdateRuleSetResponse')
    UpdateTrafficPolicyRequest = Shapes::StructureShape.new(name: 'UpdateTrafficPolicyRequest')
    UpdateTrafficPolicyResponse = Shapes::StructureShape.new(name: 'UpdateTrafficPolicyResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddHeaderAction.add_member(:header_name, Shapes::ShapeRef.new(shape: HeaderName, required: true, location_name: "HeaderName"))
    AddHeaderAction.add_member(:header_value, Shapes::ShapeRef.new(shape: HeaderValue, required: true, location_name: "HeaderValue"))
    AddHeaderAction.struct_class = Types::AddHeaderAction

    AddonInstance.add_member(:addon_instance_arn, Shapes::ShapeRef.new(shape: AddonInstanceArn, location_name: "AddonInstanceArn"))
    AddonInstance.add_member(:addon_instance_id, Shapes::ShapeRef.new(shape: AddonInstanceId, location_name: "AddonInstanceId"))
    AddonInstance.add_member(:addon_name, Shapes::ShapeRef.new(shape: AddonName, location_name: "AddonName"))
    AddonInstance.add_member(:addon_subscription_id, Shapes::ShapeRef.new(shape: AddonSubscriptionId, location_name: "AddonSubscriptionId"))
    AddonInstance.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    AddonInstance.struct_class = Types::AddonInstance

    AddonInstances.member = Shapes::ShapeRef.new(shape: AddonInstance)

    AddonSubscription.add_member(:addon_name, Shapes::ShapeRef.new(shape: AddonName, location_name: "AddonName"))
    AddonSubscription.add_member(:addon_subscription_arn, Shapes::ShapeRef.new(shape: AddonSubscriptionArn, location_name: "AddonSubscriptionArn"))
    AddonSubscription.add_member(:addon_subscription_id, Shapes::ShapeRef.new(shape: AddonSubscriptionId, location_name: "AddonSubscriptionId"))
    AddonSubscription.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    AddonSubscription.struct_class = Types::AddonSubscription

    AddonSubscriptions.member = Shapes::ShapeRef.new(shape: AddonSubscription)

    AddressFilter.add_member(:address_prefix, Shapes::ShapeRef.new(shape: AddressPrefix, location_name: "AddressPrefix"))
    AddressFilter.struct_class = Types::AddressFilter

    AddressList.add_member(:address_list_arn, Shapes::ShapeRef.new(shape: AddressListArn, required: true, location_name: "AddressListArn"))
    AddressList.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    AddressList.add_member(:address_list_name, Shapes::ShapeRef.new(shape: AddressListName, required: true, location_name: "AddressListName"))
    AddressList.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    AddressList.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdatedTimestamp"))
    AddressList.struct_class = Types::AddressList

    AddressLists.member = Shapes::ShapeRef.new(shape: AddressList)

    Analysis.add_member(:analyzer, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "Analyzer"))
    Analysis.add_member(:result_field, Shapes::ShapeRef.new(shape: ResultField, required: true, location_name: "ResultField"))
    Analysis.struct_class = Types::Analysis

    Archive.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveIdString, required: true, location_name: "ArchiveId"))
    Archive.add_member(:archive_name, Shapes::ShapeRef.new(shape: ArchiveNameString, location_name: "ArchiveName"))
    Archive.add_member(:archive_state, Shapes::ShapeRef.new(shape: ArchiveState, location_name: "ArchiveState"))
    Archive.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    Archive.struct_class = Types::Archive

    ArchiveAction.add_member(:action_failure_policy, Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: "ActionFailurePolicy"))
    ArchiveAction.add_member(:target_archive, Shapes::ShapeRef.new(shape: NameOrArn, required: true, location_name: "TargetArchive"))
    ArchiveAction.struct_class = Types::ArchiveAction

    ArchiveBooleanExpression.add_member(:evaluate, Shapes::ShapeRef.new(shape: ArchiveBooleanToEvaluate, required: true, location_name: "Evaluate"))
    ArchiveBooleanExpression.add_member(:operator, Shapes::ShapeRef.new(shape: ArchiveBooleanOperator, required: true, location_name: "Operator"))
    ArchiveBooleanExpression.struct_class = Types::ArchiveBooleanExpression

    ArchiveBooleanToEvaluate.add_member(:attribute, Shapes::ShapeRef.new(shape: ArchiveBooleanEmailAttribute, location_name: "Attribute"))
    ArchiveBooleanToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ArchiveBooleanToEvaluate.add_member_subclass(:attribute, Types::ArchiveBooleanToEvaluate::Attribute)
    ArchiveBooleanToEvaluate.add_member_subclass(:unknown, Types::ArchiveBooleanToEvaluate::Unknown)
    ArchiveBooleanToEvaluate.struct_class = Types::ArchiveBooleanToEvaluate

    ArchiveFilterCondition.add_member(:boolean_expression, Shapes::ShapeRef.new(shape: ArchiveBooleanExpression, location_name: "BooleanExpression"))
    ArchiveFilterCondition.add_member(:string_expression, Shapes::ShapeRef.new(shape: ArchiveStringExpression, location_name: "StringExpression"))
    ArchiveFilterCondition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ArchiveFilterCondition.add_member_subclass(:boolean_expression, Types::ArchiveFilterCondition::BooleanExpression)
    ArchiveFilterCondition.add_member_subclass(:string_expression, Types::ArchiveFilterCondition::StringExpression)
    ArchiveFilterCondition.add_member_subclass(:unknown, Types::ArchiveFilterCondition::Unknown)
    ArchiveFilterCondition.struct_class = Types::ArchiveFilterCondition

    ArchiveFilterConditions.member = Shapes::ShapeRef.new(shape: ArchiveFilterCondition)

    ArchiveFilters.add_member(:include, Shapes::ShapeRef.new(shape: ArchiveFilterConditions, location_name: "Include"))
    ArchiveFilters.add_member(:unless, Shapes::ShapeRef.new(shape: ArchiveFilterConditions, location_name: "Unless"))
    ArchiveFilters.struct_class = Types::ArchiveFilters

    ArchiveRetention.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    ArchiveRetention.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ArchiveRetention.add_member_subclass(:retention_period, Types::ArchiveRetention::RetentionPeriod)
    ArchiveRetention.add_member_subclass(:unknown, Types::ArchiveRetention::Unknown)
    ArchiveRetention.struct_class = Types::ArchiveRetention

    ArchiveStringExpression.add_member(:evaluate, Shapes::ShapeRef.new(shape: ArchiveStringToEvaluate, required: true, location_name: "Evaluate"))
    ArchiveStringExpression.add_member(:operator, Shapes::ShapeRef.new(shape: ArchiveStringOperator, required: true, location_name: "Operator"))
    ArchiveStringExpression.add_member(:values, Shapes::ShapeRef.new(shape: StringValueList, required: true, location_name: "Values"))
    ArchiveStringExpression.struct_class = Types::ArchiveStringExpression

    ArchiveStringToEvaluate.add_member(:attribute, Shapes::ShapeRef.new(shape: ArchiveStringEmailAttribute, location_name: "Attribute"))
    ArchiveStringToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ArchiveStringToEvaluate.add_member_subclass(:attribute, Types::ArchiveStringToEvaluate::Attribute)
    ArchiveStringToEvaluate.add_member_subclass(:unknown, Types::ArchiveStringToEvaluate::Unknown)
    ArchiveStringToEvaluate.struct_class = Types::ArchiveStringToEvaluate

    ArchivesList.member = Shapes::ShapeRef.new(shape: Archive)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAddonInstanceRequest.add_member(:addon_subscription_id, Shapes::ShapeRef.new(shape: AddonSubscriptionId, required: true, location_name: "AddonSubscriptionId"))
    CreateAddonInstanceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateAddonInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAddonInstanceRequest.struct_class = Types::CreateAddonInstanceRequest

    CreateAddonInstanceResponse.add_member(:addon_instance_id, Shapes::ShapeRef.new(shape: AddonInstanceId, required: true, location_name: "AddonInstanceId"))
    CreateAddonInstanceResponse.struct_class = Types::CreateAddonInstanceResponse

    CreateAddonSubscriptionRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: AddonName, required: true, location_name: "AddonName"))
    CreateAddonSubscriptionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateAddonSubscriptionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAddonSubscriptionRequest.struct_class = Types::CreateAddonSubscriptionRequest

    CreateAddonSubscriptionResponse.add_member(:addon_subscription_id, Shapes::ShapeRef.new(shape: AddonSubscriptionId, required: true, location_name: "AddonSubscriptionId"))
    CreateAddonSubscriptionResponse.struct_class = Types::CreateAddonSubscriptionResponse

    CreateAddressListImportJobRequest.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    CreateAddressListImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateAddressListImportJobRequest.add_member(:import_data_format, Shapes::ShapeRef.new(shape: ImportDataFormat, required: true, location_name: "ImportDataFormat"))
    CreateAddressListImportJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    CreateAddressListImportJobRequest.struct_class = Types::CreateAddressListImportJobRequest

    CreateAddressListImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    CreateAddressListImportJobResponse.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: PreSignedUrl, required: true, location_name: "PreSignedUrl"))
    CreateAddressListImportJobResponse.struct_class = Types::CreateAddressListImportJobResponse

    CreateAddressListRequest.add_member(:address_list_name, Shapes::ShapeRef.new(shape: AddressListName, required: true, location_name: "AddressListName"))
    CreateAddressListRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateAddressListRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAddressListRequest.struct_class = Types::CreateAddressListRequest

    CreateAddressListResponse.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    CreateAddressListResponse.struct_class = Types::CreateAddressListResponse

    CreateArchiveRequest.add_member(:archive_name, Shapes::ShapeRef.new(shape: ArchiveNameString, required: true, location_name: "ArchiveName"))
    CreateArchiveRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateArchiveRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    CreateArchiveRequest.add_member(:retention, Shapes::ShapeRef.new(shape: ArchiveRetention, location_name: "Retention"))
    CreateArchiveRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateArchiveRequest.struct_class = Types::CreateArchiveRequest

    CreateArchiveResponse.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveIdString, required: true, location_name: "ArchiveId"))
    CreateArchiveResponse.struct_class = Types::CreateArchiveResponse

    CreateIngressPointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateIngressPointRequest.add_member(:ingress_point_configuration, Shapes::ShapeRef.new(shape: IngressPointConfiguration, location_name: "IngressPointConfiguration"))
    CreateIngressPointRequest.add_member(:ingress_point_name, Shapes::ShapeRef.new(shape: IngressPointName, required: true, location_name: "IngressPointName"))
    CreateIngressPointRequest.add_member(:rule_set_id, Shapes::ShapeRef.new(shape: RuleSetId, required: true, location_name: "RuleSetId"))
    CreateIngressPointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateIngressPointRequest.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyId"))
    CreateIngressPointRequest.add_member(:type, Shapes::ShapeRef.new(shape: IngressPointType, required: true, location_name: "Type"))
    CreateIngressPointRequest.struct_class = Types::CreateIngressPointRequest

    CreateIngressPointResponse.add_member(:ingress_point_id, Shapes::ShapeRef.new(shape: IngressPointId, required: true, location_name: "IngressPointId"))
    CreateIngressPointResponse.struct_class = Types::CreateIngressPointResponse

    CreateRelayRequest.add_member(:authentication, Shapes::ShapeRef.new(shape: RelayAuthentication, required: true, location_name: "Authentication"))
    CreateRelayRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateRelayRequest.add_member(:relay_name, Shapes::ShapeRef.new(shape: RelayName, required: true, location_name: "RelayName"))
    CreateRelayRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: RelayServerName, required: true, location_name: "ServerName"))
    CreateRelayRequest.add_member(:server_port, Shapes::ShapeRef.new(shape: RelayServerPort, required: true, location_name: "ServerPort"))
    CreateRelayRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRelayRequest.struct_class = Types::CreateRelayRequest

    CreateRelayResponse.add_member(:relay_id, Shapes::ShapeRef.new(shape: RelayId, required: true, location_name: "RelayId"))
    CreateRelayResponse.struct_class = Types::CreateRelayResponse

    CreateRuleSetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateRuleSetRequest.add_member(:rule_set_name, Shapes::ShapeRef.new(shape: RuleSetName, required: true, location_name: "RuleSetName"))
    CreateRuleSetRequest.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, required: true, location_name: "Rules"))
    CreateRuleSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRuleSetRequest.struct_class = Types::CreateRuleSetRequest

    CreateRuleSetResponse.add_member(:rule_set_id, Shapes::ShapeRef.new(shape: RuleSetId, required: true, location_name: "RuleSetId"))
    CreateRuleSetResponse.struct_class = Types::CreateRuleSetResponse

    CreateTrafficPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateTrafficPolicyRequest.add_member(:default_action, Shapes::ShapeRef.new(shape: AcceptAction, required: true, location_name: "DefaultAction"))
    CreateTrafficPolicyRequest.add_member(:max_message_size_bytes, Shapes::ShapeRef.new(shape: MaxMessageSizeBytes, location_name: "MaxMessageSizeBytes"))
    CreateTrafficPolicyRequest.add_member(:policy_statements, Shapes::ShapeRef.new(shape: PolicyStatementList, required: true, location_name: "PolicyStatements"))
    CreateTrafficPolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTrafficPolicyRequest.add_member(:traffic_policy_name, Shapes::ShapeRef.new(shape: TrafficPolicyName, required: true, location_name: "TrafficPolicyName"))
    CreateTrafficPolicyRequest.struct_class = Types::CreateTrafficPolicyRequest

    CreateTrafficPolicyResponse.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyId"))
    CreateTrafficPolicyResponse.struct_class = Types::CreateTrafficPolicyResponse

    DeleteAddonInstanceRequest.add_member(:addon_instance_id, Shapes::ShapeRef.new(shape: AddonInstanceId, required: true, location_name: "AddonInstanceId"))
    DeleteAddonInstanceRequest.struct_class = Types::DeleteAddonInstanceRequest

    DeleteAddonInstanceResponse.struct_class = Types::DeleteAddonInstanceResponse

    DeleteAddonSubscriptionRequest.add_member(:addon_subscription_id, Shapes::ShapeRef.new(shape: AddonSubscriptionId, required: true, location_name: "AddonSubscriptionId"))
    DeleteAddonSubscriptionRequest.struct_class = Types::DeleteAddonSubscriptionRequest

    DeleteAddonSubscriptionResponse.struct_class = Types::DeleteAddonSubscriptionResponse

    DeleteAddressListRequest.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    DeleteAddressListRequest.struct_class = Types::DeleteAddressListRequest

    DeleteAddressListResponse.struct_class = Types::DeleteAddressListResponse

    DeleteArchiveRequest.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveIdString, required: true, location_name: "ArchiveId"))
    DeleteArchiveRequest.struct_class = Types::DeleteArchiveRequest

    DeleteArchiveResponse.struct_class = Types::DeleteArchiveResponse

    DeleteIngressPointRequest.add_member(:ingress_point_id, Shapes::ShapeRef.new(shape: IngressPointId, required: true, location_name: "IngressPointId"))
    DeleteIngressPointRequest.struct_class = Types::DeleteIngressPointRequest

    DeleteIngressPointResponse.struct_class = Types::DeleteIngressPointResponse

    DeleteRelayRequest.add_member(:relay_id, Shapes::ShapeRef.new(shape: RelayId, required: true, location_name: "RelayId"))
    DeleteRelayRequest.struct_class = Types::DeleteRelayRequest

    DeleteRelayResponse.struct_class = Types::DeleteRelayResponse

    DeleteRuleSetRequest.add_member(:rule_set_id, Shapes::ShapeRef.new(shape: RuleSetId, required: true, location_name: "RuleSetId"))
    DeleteRuleSetRequest.struct_class = Types::DeleteRuleSetRequest

    DeleteRuleSetResponse.struct_class = Types::DeleteRuleSetResponse

    DeleteTrafficPolicyRequest.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyId"))
    DeleteTrafficPolicyRequest.struct_class = Types::DeleteTrafficPolicyRequest

    DeleteTrafficPolicyResponse.struct_class = Types::DeleteTrafficPolicyResponse

    DeliverToMailboxAction.add_member(:action_failure_policy, Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: "ActionFailurePolicy"))
    DeliverToMailboxAction.add_member(:mailbox_arn, Shapes::ShapeRef.new(shape: NameOrArn, required: true, location_name: "MailboxArn"))
    DeliverToMailboxAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "RoleArn"))
    DeliverToMailboxAction.struct_class = Types::DeliverToMailboxAction

    DeliverToQBusinessAction.add_member(:action_failure_policy, Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: "ActionFailurePolicy"))
    DeliverToQBusinessAction.add_member(:application_id, Shapes::ShapeRef.new(shape: QBusinessApplicationId, required: true, location_name: "ApplicationId"))
    DeliverToQBusinessAction.add_member(:index_id, Shapes::ShapeRef.new(shape: QBusinessIndexId, required: true, location_name: "IndexId"))
    DeliverToQBusinessAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "RoleArn"))
    DeliverToQBusinessAction.struct_class = Types::DeliverToQBusinessAction

    DeregisterMemberFromAddressListRequest.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "Address"))
    DeregisterMemberFromAddressListRequest.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    DeregisterMemberFromAddressListRequest.struct_class = Types::DeregisterMemberFromAddressListRequest

    DeregisterMemberFromAddressListResponse.struct_class = Types::DeregisterMemberFromAddressListResponse

    DropAction.struct_class = Types::DropAction

    EmailReceivedHeadersList.member = Shapes::ShapeRef.new(shape: String)

    Envelope.add_member(:from, Shapes::ShapeRef.new(shape: String, location_name: "From"))
    Envelope.add_member(:helo, Shapes::ShapeRef.new(shape: String, location_name: "Helo"))
    Envelope.add_member(:to, Shapes::ShapeRef.new(shape: StringList, location_name: "To"))
    Envelope.struct_class = Types::Envelope

    ExportDestinationConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3ExportDestinationConfiguration, location_name: "S3"))
    ExportDestinationConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExportDestinationConfiguration.add_member_subclass(:s3, Types::ExportDestinationConfiguration::S3)
    ExportDestinationConfiguration.add_member_subclass(:unknown, Types::ExportDestinationConfiguration::Unknown)
    ExportDestinationConfiguration.struct_class = Types::ExportDestinationConfiguration

    ExportStatus.add_member(:completion_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletionTimestamp"))
    ExportStatus.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    ExportStatus.add_member(:state, Shapes::ShapeRef.new(shape: ExportState, location_name: "State"))
    ExportStatus.add_member(:submission_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmissionTimestamp"))
    ExportStatus.struct_class = Types::ExportStatus

    ExportSummary.add_member(:export_id, Shapes::ShapeRef.new(shape: ExportId, location_name: "ExportId"))
    ExportSummary.add_member(:status, Shapes::ShapeRef.new(shape: ExportStatus, location_name: "Status"))
    ExportSummary.struct_class = Types::ExportSummary

    ExportSummaryList.member = Shapes::ShapeRef.new(shape: ExportSummary)

    GetAddonInstanceRequest.add_member(:addon_instance_id, Shapes::ShapeRef.new(shape: AddonInstanceId, required: true, location_name: "AddonInstanceId"))
    GetAddonInstanceRequest.struct_class = Types::GetAddonInstanceRequest

    GetAddonInstanceResponse.add_member(:addon_instance_arn, Shapes::ShapeRef.new(shape: AddonInstanceArn, location_name: "AddonInstanceArn"))
    GetAddonInstanceResponse.add_member(:addon_name, Shapes::ShapeRef.new(shape: AddonName, location_name: "AddonName"))
    GetAddonInstanceResponse.add_member(:addon_subscription_id, Shapes::ShapeRef.new(shape: AddonSubscriptionId, location_name: "AddonSubscriptionId"))
    GetAddonInstanceResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetAddonInstanceResponse.struct_class = Types::GetAddonInstanceResponse

    GetAddonSubscriptionRequest.add_member(:addon_subscription_id, Shapes::ShapeRef.new(shape: AddonSubscriptionId, required: true, location_name: "AddonSubscriptionId"))
    GetAddonSubscriptionRequest.struct_class = Types::GetAddonSubscriptionRequest

    GetAddonSubscriptionResponse.add_member(:addon_name, Shapes::ShapeRef.new(shape: AddonName, location_name: "AddonName"))
    GetAddonSubscriptionResponse.add_member(:addon_subscription_arn, Shapes::ShapeRef.new(shape: AddonSubscriptionArn, location_name: "AddonSubscriptionArn"))
    GetAddonSubscriptionResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetAddonSubscriptionResponse.struct_class = Types::GetAddonSubscriptionResponse

    GetAddressListImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetAddressListImportJobRequest.struct_class = Types::GetAddressListImportJobRequest

    GetAddressListImportJobResponse.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    GetAddressListImportJobResponse.add_member(:completed_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedTimestamp"))
    GetAddressListImportJobResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    GetAddressListImportJobResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Error"))
    GetAddressListImportJobResponse.add_member(:failed_items_count, Shapes::ShapeRef.new(shape: JobItemsCount, location_name: "FailedItemsCount"))
    GetAddressListImportJobResponse.add_member(:import_data_format, Shapes::ShapeRef.new(shape: ImportDataFormat, required: true, location_name: "ImportDataFormat"))
    GetAddressListImportJobResponse.add_member(:imported_items_count, Shapes::ShapeRef.new(shape: JobItemsCount, location_name: "ImportedItemsCount"))
    GetAddressListImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetAddressListImportJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    GetAddressListImportJobResponse.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: PreSignedUrl, required: true, location_name: "PreSignedUrl"))
    GetAddressListImportJobResponse.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTimestamp"))
    GetAddressListImportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ImportJobStatus, required: true, location_name: "Status"))
    GetAddressListImportJobResponse.struct_class = Types::GetAddressListImportJobResponse

    GetAddressListRequest.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    GetAddressListRequest.struct_class = Types::GetAddressListRequest

    GetAddressListResponse.add_member(:address_list_arn, Shapes::ShapeRef.new(shape: AddressListArn, required: true, location_name: "AddressListArn"))
    GetAddressListResponse.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    GetAddressListResponse.add_member(:address_list_name, Shapes::ShapeRef.new(shape: AddressListName, required: true, location_name: "AddressListName"))
    GetAddressListResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    GetAddressListResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdatedTimestamp"))
    GetAddressListResponse.struct_class = Types::GetAddressListResponse

    GetArchiveExportRequest.add_member(:export_id, Shapes::ShapeRef.new(shape: ExportId, required: true, location_name: "ExportId"))
    GetArchiveExportRequest.struct_class = Types::GetArchiveExportRequest

    GetArchiveExportResponse.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveId, location_name: "ArchiveId"))
    GetArchiveExportResponse.add_member(:export_destination_configuration, Shapes::ShapeRef.new(shape: ExportDestinationConfiguration, location_name: "ExportDestinationConfiguration"))
    GetArchiveExportResponse.add_member(:filters, Shapes::ShapeRef.new(shape: ArchiveFilters, location_name: "Filters"))
    GetArchiveExportResponse.add_member(:from_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "FromTimestamp"))
    GetArchiveExportResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: ExportMaxResults, location_name: "MaxResults"))
    GetArchiveExportResponse.add_member(:status, Shapes::ShapeRef.new(shape: ExportStatus, location_name: "Status"))
    GetArchiveExportResponse.add_member(:to_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ToTimestamp"))
    GetArchiveExportResponse.struct_class = Types::GetArchiveExportResponse

    GetArchiveMessageContentRequest.add_member(:archived_message_id, Shapes::ShapeRef.new(shape: ArchivedMessageId, required: true, location_name: "ArchivedMessageId"))
    GetArchiveMessageContentRequest.struct_class = Types::GetArchiveMessageContentRequest

    GetArchiveMessageContentResponse.add_member(:body, Shapes::ShapeRef.new(shape: MessageBody, location_name: "Body"))
    GetArchiveMessageContentResponse.struct_class = Types::GetArchiveMessageContentResponse

    GetArchiveMessageRequest.add_member(:archived_message_id, Shapes::ShapeRef.new(shape: ArchivedMessageId, required: true, location_name: "ArchivedMessageId"))
    GetArchiveMessageRequest.struct_class = Types::GetArchiveMessageRequest

    GetArchiveMessageResponse.add_member(:envelope, Shapes::ShapeRef.new(shape: Envelope, location_name: "Envelope"))
    GetArchiveMessageResponse.add_member(:message_download_link, Shapes::ShapeRef.new(shape: S3PresignedURL, location_name: "MessageDownloadLink"))
    GetArchiveMessageResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    GetArchiveMessageResponse.struct_class = Types::GetArchiveMessageResponse

    GetArchiveRequest.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveIdString, required: true, location_name: "ArchiveId"))
    GetArchiveRequest.struct_class = Types::GetArchiveRequest

    GetArchiveResponse.add_member(:archive_arn, Shapes::ShapeRef.new(shape: ArchiveArn, required: true, location_name: "ArchiveArn"))
    GetArchiveResponse.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveIdString, required: true, location_name: "ArchiveId"))
    GetArchiveResponse.add_member(:archive_name, Shapes::ShapeRef.new(shape: ArchiveNameString, required: true, location_name: "ArchiveName"))
    GetArchiveResponse.add_member(:archive_state, Shapes::ShapeRef.new(shape: ArchiveState, required: true, location_name: "ArchiveState"))
    GetArchiveResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetArchiveResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    GetArchiveResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    GetArchiveResponse.add_member(:retention, Shapes::ShapeRef.new(shape: ArchiveRetention, required: true, location_name: "Retention"))
    GetArchiveResponse.struct_class = Types::GetArchiveResponse

    GetArchiveSearchRequest.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, required: true, location_name: "SearchId"))
    GetArchiveSearchRequest.struct_class = Types::GetArchiveSearchRequest

    GetArchiveSearchResponse.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveId, location_name: "ArchiveId"))
    GetArchiveSearchResponse.add_member(:filters, Shapes::ShapeRef.new(shape: ArchiveFilters, location_name: "Filters"))
    GetArchiveSearchResponse.add_member(:from_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "FromTimestamp"))
    GetArchiveSearchResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchMaxResults, location_name: "MaxResults"))
    GetArchiveSearchResponse.add_member(:status, Shapes::ShapeRef.new(shape: SearchStatus, location_name: "Status"))
    GetArchiveSearchResponse.add_member(:to_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ToTimestamp"))
    GetArchiveSearchResponse.struct_class = Types::GetArchiveSearchResponse

    GetArchiveSearchResultsRequest.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, required: true, location_name: "SearchId"))
    GetArchiveSearchResultsRequest.struct_class = Types::GetArchiveSearchResultsRequest

    GetArchiveSearchResultsResponse.add_member(:rows, Shapes::ShapeRef.new(shape: RowsList, location_name: "Rows"))
    GetArchiveSearchResultsResponse.struct_class = Types::GetArchiveSearchResultsResponse

    GetIngressPointRequest.add_member(:ingress_point_id, Shapes::ShapeRef.new(shape: IngressPointId, required: true, location_name: "IngressPointId"))
    GetIngressPointRequest.struct_class = Types::GetIngressPointRequest

    GetIngressPointResponse.add_member(:a_record, Shapes::ShapeRef.new(shape: IngressPointARecord, location_name: "ARecord"))
    GetIngressPointResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetIngressPointResponse.add_member(:ingress_point_arn, Shapes::ShapeRef.new(shape: IngressPointArn, location_name: "IngressPointArn"))
    GetIngressPointResponse.add_member(:ingress_point_auth_configuration, Shapes::ShapeRef.new(shape: IngressPointAuthConfiguration, location_name: "IngressPointAuthConfiguration"))
    GetIngressPointResponse.add_member(:ingress_point_id, Shapes::ShapeRef.new(shape: IngressPointId, required: true, location_name: "IngressPointId"))
    GetIngressPointResponse.add_member(:ingress_point_name, Shapes::ShapeRef.new(shape: IngressPointName, required: true, location_name: "IngressPointName"))
    GetIngressPointResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    GetIngressPointResponse.add_member(:rule_set_id, Shapes::ShapeRef.new(shape: RuleSetId, location_name: "RuleSetId"))
    GetIngressPointResponse.add_member(:status, Shapes::ShapeRef.new(shape: IngressPointStatus, location_name: "Status"))
    GetIngressPointResponse.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: "TrafficPolicyId"))
    GetIngressPointResponse.add_member(:type, Shapes::ShapeRef.new(shape: IngressPointType, location_name: "Type"))
    GetIngressPointResponse.struct_class = Types::GetIngressPointResponse

    GetMemberOfAddressListRequest.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "Address"))
    GetMemberOfAddressListRequest.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    GetMemberOfAddressListRequest.struct_class = Types::GetMemberOfAddressListRequest

    GetMemberOfAddressListResponse.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "Address"))
    GetMemberOfAddressListResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    GetMemberOfAddressListResponse.struct_class = Types::GetMemberOfAddressListResponse

    GetRelayRequest.add_member(:relay_id, Shapes::ShapeRef.new(shape: RelayId, required: true, location_name: "RelayId"))
    GetRelayRequest.struct_class = Types::GetRelayRequest

    GetRelayResponse.add_member(:authentication, Shapes::ShapeRef.new(shape: RelayAuthentication, location_name: "Authentication"))
    GetRelayResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetRelayResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimestamp"))
    GetRelayResponse.add_member(:relay_arn, Shapes::ShapeRef.new(shape: RelayArn, location_name: "RelayArn"))
    GetRelayResponse.add_member(:relay_id, Shapes::ShapeRef.new(shape: RelayId, required: true, location_name: "RelayId"))
    GetRelayResponse.add_member(:relay_name, Shapes::ShapeRef.new(shape: RelayName, location_name: "RelayName"))
    GetRelayResponse.add_member(:server_name, Shapes::ShapeRef.new(shape: RelayServerName, location_name: "ServerName"))
    GetRelayResponse.add_member(:server_port, Shapes::ShapeRef.new(shape: RelayServerPort, location_name: "ServerPort"))
    GetRelayResponse.struct_class = Types::GetRelayResponse

    GetRuleSetRequest.add_member(:rule_set_id, Shapes::ShapeRef.new(shape: RuleSetId, required: true, location_name: "RuleSetId"))
    GetRuleSetRequest.struct_class = Types::GetRuleSetRequest

    GetRuleSetResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedDate"))
    GetRuleSetResponse.add_member(:last_modification_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModificationDate"))
    GetRuleSetResponse.add_member(:rule_set_arn, Shapes::ShapeRef.new(shape: RuleSetArn, required: true, location_name: "RuleSetArn"))
    GetRuleSetResponse.add_member(:rule_set_id, Shapes::ShapeRef.new(shape: RuleSetId, required: true, location_name: "RuleSetId"))
    GetRuleSetResponse.add_member(:rule_set_name, Shapes::ShapeRef.new(shape: RuleSetName, required: true, location_name: "RuleSetName"))
    GetRuleSetResponse.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, required: true, location_name: "Rules"))
    GetRuleSetResponse.struct_class = Types::GetRuleSetResponse

    GetTrafficPolicyRequest.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyId"))
    GetTrafficPolicyRequest.struct_class = Types::GetTrafficPolicyRequest

    GetTrafficPolicyResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetTrafficPolicyResponse.add_member(:default_action, Shapes::ShapeRef.new(shape: AcceptAction, location_name: "DefaultAction"))
    GetTrafficPolicyResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    GetTrafficPolicyResponse.add_member(:max_message_size_bytes, Shapes::ShapeRef.new(shape: MaxMessageSizeBytes, location_name: "MaxMessageSizeBytes"))
    GetTrafficPolicyResponse.add_member(:policy_statements, Shapes::ShapeRef.new(shape: PolicyStatementList, location_name: "PolicyStatements"))
    GetTrafficPolicyResponse.add_member(:traffic_policy_arn, Shapes::ShapeRef.new(shape: TrafficPolicyArn, location_name: "TrafficPolicyArn"))
    GetTrafficPolicyResponse.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyId"))
    GetTrafficPolicyResponse.add_member(:traffic_policy_name, Shapes::ShapeRef.new(shape: TrafficPolicyName, required: true, location_name: "TrafficPolicyName"))
    GetTrafficPolicyResponse.struct_class = Types::GetTrafficPolicyResponse

    ImportDataFormat.add_member(:import_data_type, Shapes::ShapeRef.new(shape: ImportDataType, required: true, location_name: "ImportDataType"))
    ImportDataFormat.struct_class = Types::ImportDataFormat

    ImportJob.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    ImportJob.add_member(:completed_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedTimestamp"))
    ImportJob.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    ImportJob.add_member(:error, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Error"))
    ImportJob.add_member(:failed_items_count, Shapes::ShapeRef.new(shape: JobItemsCount, location_name: "FailedItemsCount"))
    ImportJob.add_member(:import_data_format, Shapes::ShapeRef.new(shape: ImportDataFormat, required: true, location_name: "ImportDataFormat"))
    ImportJob.add_member(:imported_items_count, Shapes::ShapeRef.new(shape: JobItemsCount, location_name: "ImportedItemsCount"))
    ImportJob.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    ImportJob.add_member(:name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "Name"))
    ImportJob.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: PreSignedUrl, required: true, location_name: "PreSignedUrl"))
    ImportJob.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTimestamp"))
    ImportJob.add_member(:status, Shapes::ShapeRef.new(shape: ImportJobStatus, required: true, location_name: "Status"))
    ImportJob.struct_class = Types::ImportJob

    ImportJobs.member = Shapes::ShapeRef.new(shape: ImportJob)

    IngressAddressListArnList.member = Shapes::ShapeRef.new(shape: AddressListArn)

    IngressAnalysis.add_member(:analyzer, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "Analyzer"))
    IngressAnalysis.add_member(:result_field, Shapes::ShapeRef.new(shape: ResultField, required: true, location_name: "ResultField"))
    IngressAnalysis.struct_class = Types::IngressAnalysis

    IngressBooleanExpression.add_member(:evaluate, Shapes::ShapeRef.new(shape: IngressBooleanToEvaluate, required: true, location_name: "Evaluate"))
    IngressBooleanExpression.add_member(:operator, Shapes::ShapeRef.new(shape: IngressBooleanOperator, required: true, location_name: "Operator"))
    IngressBooleanExpression.struct_class = Types::IngressBooleanExpression

    IngressBooleanToEvaluate.add_member(:analysis, Shapes::ShapeRef.new(shape: IngressAnalysis, location_name: "Analysis"))
    IngressBooleanToEvaluate.add_member(:is_in_address_list, Shapes::ShapeRef.new(shape: IngressIsInAddressList, location_name: "IsInAddressList"))
    IngressBooleanToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IngressBooleanToEvaluate.add_member_subclass(:analysis, Types::IngressBooleanToEvaluate::Analysis)
    IngressBooleanToEvaluate.add_member_subclass(:is_in_address_list, Types::IngressBooleanToEvaluate::IsInAddressList)
    IngressBooleanToEvaluate.add_member_subclass(:unknown, Types::IngressBooleanToEvaluate::Unknown)
    IngressBooleanToEvaluate.struct_class = Types::IngressBooleanToEvaluate

    IngressIpToEvaluate.add_member(:attribute, Shapes::ShapeRef.new(shape: IngressIpv4Attribute, location_name: "Attribute"))
    IngressIpToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IngressIpToEvaluate.add_member_subclass(:attribute, Types::IngressIpToEvaluate::Attribute)
    IngressIpToEvaluate.add_member_subclass(:unknown, Types::IngressIpToEvaluate::Unknown)
    IngressIpToEvaluate.struct_class = Types::IngressIpToEvaluate

    IngressIpv4Expression.add_member(:evaluate, Shapes::ShapeRef.new(shape: IngressIpToEvaluate, required: true, location_name: "Evaluate"))
    IngressIpv4Expression.add_member(:operator, Shapes::ShapeRef.new(shape: IngressIpOperator, required: true, location_name: "Operator"))
    IngressIpv4Expression.add_member(:values, Shapes::ShapeRef.new(shape: Ipv4Cidrs, required: true, location_name: "Values"))
    IngressIpv4Expression.struct_class = Types::IngressIpv4Expression

    IngressIsInAddressList.add_member(:address_lists, Shapes::ShapeRef.new(shape: IngressAddressListArnList, required: true, location_name: "AddressLists"))
    IngressIsInAddressList.add_member(:attribute, Shapes::ShapeRef.new(shape: IngressAddressListEmailAttribute, required: true, location_name: "Attribute"))
    IngressIsInAddressList.struct_class = Types::IngressIsInAddressList

    IngressPoint.add_member(:a_record, Shapes::ShapeRef.new(shape: IngressPointARecord, location_name: "ARecord"))
    IngressPoint.add_member(:ingress_point_id, Shapes::ShapeRef.new(shape: IngressPointId, required: true, location_name: "IngressPointId"))
    IngressPoint.add_member(:ingress_point_name, Shapes::ShapeRef.new(shape: IngressPointName, required: true, location_name: "IngressPointName"))
    IngressPoint.add_member(:status, Shapes::ShapeRef.new(shape: IngressPointStatus, required: true, location_name: "Status"))
    IngressPoint.add_member(:type, Shapes::ShapeRef.new(shape: IngressPointType, required: true, location_name: "Type"))
    IngressPoint.struct_class = Types::IngressPoint

    IngressPointAuthConfiguration.add_member(:ingress_point_password_configuration, Shapes::ShapeRef.new(shape: IngressPointPasswordConfiguration, location_name: "IngressPointPasswordConfiguration"))
    IngressPointAuthConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    IngressPointAuthConfiguration.struct_class = Types::IngressPointAuthConfiguration

    IngressPointConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    IngressPointConfiguration.add_member(:smtp_password, Shapes::ShapeRef.new(shape: SmtpPassword, location_name: "SmtpPassword"))
    IngressPointConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IngressPointConfiguration.add_member_subclass(:secret_arn, Types::IngressPointConfiguration::SecretArn)
    IngressPointConfiguration.add_member_subclass(:smtp_password, Types::IngressPointConfiguration::SmtpPassword)
    IngressPointConfiguration.add_member_subclass(:unknown, Types::IngressPointConfiguration::Unknown)
    IngressPointConfiguration.struct_class = Types::IngressPointConfiguration

    IngressPointPasswordConfiguration.add_member(:previous_smtp_password_expiry_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "PreviousSmtpPasswordExpiryTimestamp"))
    IngressPointPasswordConfiguration.add_member(:previous_smtp_password_version, Shapes::ShapeRef.new(shape: String, location_name: "PreviousSmtpPasswordVersion"))
    IngressPointPasswordConfiguration.add_member(:smtp_password_version, Shapes::ShapeRef.new(shape: String, location_name: "SmtpPasswordVersion"))
    IngressPointPasswordConfiguration.struct_class = Types::IngressPointPasswordConfiguration

    IngressPointsList.member = Shapes::ShapeRef.new(shape: IngressPoint)

    IngressStringExpression.add_member(:evaluate, Shapes::ShapeRef.new(shape: IngressStringToEvaluate, required: true, location_name: "Evaluate"))
    IngressStringExpression.add_member(:operator, Shapes::ShapeRef.new(shape: IngressStringOperator, required: true, location_name: "Operator"))
    IngressStringExpression.add_member(:values, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "Values"))
    IngressStringExpression.struct_class = Types::IngressStringExpression

    IngressStringToEvaluate.add_member(:attribute, Shapes::ShapeRef.new(shape: IngressStringEmailAttribute, location_name: "Attribute"))
    IngressStringToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IngressStringToEvaluate.add_member_subclass(:attribute, Types::IngressStringToEvaluate::Attribute)
    IngressStringToEvaluate.add_member_subclass(:unknown, Types::IngressStringToEvaluate::Unknown)
    IngressStringToEvaluate.struct_class = Types::IngressStringToEvaluate

    IngressTlsProtocolExpression.add_member(:evaluate, Shapes::ShapeRef.new(shape: IngressTlsProtocolToEvaluate, required: true, location_name: "Evaluate"))
    IngressTlsProtocolExpression.add_member(:operator, Shapes::ShapeRef.new(shape: IngressTlsProtocolOperator, required: true, location_name: "Operator"))
    IngressTlsProtocolExpression.add_member(:value, Shapes::ShapeRef.new(shape: IngressTlsProtocolAttribute, required: true, location_name: "Value"))
    IngressTlsProtocolExpression.struct_class = Types::IngressTlsProtocolExpression

    IngressTlsProtocolToEvaluate.add_member(:attribute, Shapes::ShapeRef.new(shape: IngressTlsAttribute, location_name: "Attribute"))
    IngressTlsProtocolToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IngressTlsProtocolToEvaluate.add_member_subclass(:attribute, Types::IngressTlsProtocolToEvaluate::Attribute)
    IngressTlsProtocolToEvaluate.add_member_subclass(:unknown, Types::IngressTlsProtocolToEvaluate::Unknown)
    IngressTlsProtocolToEvaluate.struct_class = Types::IngressTlsProtocolToEvaluate

    Ipv4Cidrs.member = Shapes::ShapeRef.new(shape: Ipv4Cidr)

    ListAddonInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAddonInstancesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListAddonInstancesRequest.struct_class = Types::ListAddonInstancesRequest

    ListAddonInstancesResponse.add_member(:addon_instances, Shapes::ShapeRef.new(shape: AddonInstances, location_name: "AddonInstances"))
    ListAddonInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAddonInstancesResponse.struct_class = Types::ListAddonInstancesResponse

    ListAddonSubscriptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAddonSubscriptionsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListAddonSubscriptionsRequest.struct_class = Types::ListAddonSubscriptionsRequest

    ListAddonSubscriptionsResponse.add_member(:addon_subscriptions, Shapes::ShapeRef.new(shape: AddonSubscriptions, location_name: "AddonSubscriptions"))
    ListAddonSubscriptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAddonSubscriptionsResponse.struct_class = Types::ListAddonSubscriptionsResponse

    ListAddressListImportJobsRequest.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    ListAddressListImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAddressListImportJobsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListAddressListImportJobsRequest.struct_class = Types::ListAddressListImportJobsRequest

    ListAddressListImportJobsResponse.add_member(:import_jobs, Shapes::ShapeRef.new(shape: ImportJobs, required: true, location_name: "ImportJobs"))
    ListAddressListImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAddressListImportJobsResponse.struct_class = Types::ListAddressListImportJobsResponse

    ListAddressListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAddressListsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListAddressListsRequest.struct_class = Types::ListAddressListsRequest

    ListAddressListsResponse.add_member(:address_lists, Shapes::ShapeRef.new(shape: AddressLists, required: true, location_name: "AddressLists"))
    ListAddressListsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAddressListsResponse.struct_class = Types::ListAddressListsResponse

    ListArchiveExportsRequest.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveId, required: true, location_name: "ArchiveId"))
    ListArchiveExportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListArchiveExportsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListArchiveExportsRequest.struct_class = Types::ListArchiveExportsRequest

    ListArchiveExportsResponse.add_member(:exports, Shapes::ShapeRef.new(shape: ExportSummaryList, location_name: "Exports"))
    ListArchiveExportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListArchiveExportsResponse.struct_class = Types::ListArchiveExportsResponse

    ListArchiveSearchesRequest.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveId, required: true, location_name: "ArchiveId"))
    ListArchiveSearchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListArchiveSearchesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListArchiveSearchesRequest.struct_class = Types::ListArchiveSearchesRequest

    ListArchiveSearchesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListArchiveSearchesResponse.add_member(:searches, Shapes::ShapeRef.new(shape: SearchSummaryList, location_name: "Searches"))
    ListArchiveSearchesResponse.struct_class = Types::ListArchiveSearchesResponse

    ListArchivesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListArchivesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListArchivesRequest.struct_class = Types::ListArchivesRequest

    ListArchivesResponse.add_member(:archives, Shapes::ShapeRef.new(shape: ArchivesList, required: true, location_name: "Archives"))
    ListArchivesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListArchivesResponse.struct_class = Types::ListArchivesResponse

    ListIngressPointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListIngressPointsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListIngressPointsRequest.struct_class = Types::ListIngressPointsRequest

    ListIngressPointsResponse.add_member(:ingress_points, Shapes::ShapeRef.new(shape: IngressPointsList, location_name: "IngressPoints"))
    ListIngressPointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListIngressPointsResponse.struct_class = Types::ListIngressPointsResponse

    ListMembersOfAddressListRequest.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    ListMembersOfAddressListRequest.add_member(:filter, Shapes::ShapeRef.new(shape: AddressFilter, location_name: "Filter"))
    ListMembersOfAddressListRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMembersOfAddressListRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: AddressPageSize, location_name: "PageSize"))
    ListMembersOfAddressListRequest.struct_class = Types::ListMembersOfAddressListRequest

    ListMembersOfAddressListResponse.add_member(:addresses, Shapes::ShapeRef.new(shape: SavedAddresses, required: true, location_name: "Addresses"))
    ListMembersOfAddressListResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMembersOfAddressListResponse.struct_class = Types::ListMembersOfAddressListResponse

    ListRelaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRelaysRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: Integer, location_name: "PageSize"))
    ListRelaysRequest.struct_class = Types::ListRelaysRequest

    ListRelaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRelaysResponse.add_member(:relays, Shapes::ShapeRef.new(shape: Relays, required: true, location_name: "Relays"))
    ListRelaysResponse.struct_class = Types::ListRelaysResponse

    ListRuleSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRuleSetsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListRuleSetsRequest.struct_class = Types::ListRuleSetsRequest

    ListRuleSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRuleSetsResponse.add_member(:rule_sets, Shapes::ShapeRef.new(shape: RuleSets, required: true, location_name: "RuleSets"))
    ListRuleSetsResponse.struct_class = Types::ListRuleSetsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTrafficPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTrafficPoliciesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    ListTrafficPoliciesRequest.struct_class = Types::ListTrafficPoliciesRequest

    ListTrafficPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTrafficPoliciesResponse.add_member(:traffic_policies, Shapes::ShapeRef.new(shape: TrafficPolicyList, location_name: "TrafficPolicies"))
    ListTrafficPoliciesResponse.struct_class = Types::ListTrafficPoliciesResponse

    MessageBody.add_member(:html, Shapes::ShapeRef.new(shape: String, location_name: "Html"))
    MessageBody.add_member(:message_malformed, Shapes::ShapeRef.new(shape: Boolean, location_name: "MessageMalformed"))
    MessageBody.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    MessageBody.struct_class = Types::MessageBody

    Metadata.add_member(:ingress_point_id, Shapes::ShapeRef.new(shape: IngressPointId, location_name: "IngressPointId"))
    Metadata.add_member(:rule_set_id, Shapes::ShapeRef.new(shape: RuleSetId, location_name: "RuleSetId"))
    Metadata.add_member(:sender_hostname, Shapes::ShapeRef.new(shape: String, location_name: "SenderHostname"))
    Metadata.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: SenderIpAddress, location_name: "SenderIpAddress"))
    Metadata.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    Metadata.add_member(:tls_cipher_suite, Shapes::ShapeRef.new(shape: String, location_name: "TlsCipherSuite"))
    Metadata.add_member(:tls_protocol, Shapes::ShapeRef.new(shape: String, location_name: "TlsProtocol"))
    Metadata.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: "TrafficPolicyId"))
    Metadata.struct_class = Types::Metadata

    NoAuthentication.struct_class = Types::NoAuthentication

    PolicyCondition.add_member(:boolean_expression, Shapes::ShapeRef.new(shape: IngressBooleanExpression, location_name: "BooleanExpression"))
    PolicyCondition.add_member(:ip_expression, Shapes::ShapeRef.new(shape: IngressIpv4Expression, location_name: "IpExpression"))
    PolicyCondition.add_member(:string_expression, Shapes::ShapeRef.new(shape: IngressStringExpression, location_name: "StringExpression"))
    PolicyCondition.add_member(:tls_expression, Shapes::ShapeRef.new(shape: IngressTlsProtocolExpression, location_name: "TlsExpression"))
    PolicyCondition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PolicyCondition.add_member_subclass(:boolean_expression, Types::PolicyCondition::BooleanExpression)
    PolicyCondition.add_member_subclass(:ip_expression, Types::PolicyCondition::IpExpression)
    PolicyCondition.add_member_subclass(:string_expression, Types::PolicyCondition::StringExpression)
    PolicyCondition.add_member_subclass(:tls_expression, Types::PolicyCondition::TlsExpression)
    PolicyCondition.add_member_subclass(:unknown, Types::PolicyCondition::Unknown)
    PolicyCondition.struct_class = Types::PolicyCondition

    PolicyConditions.member = Shapes::ShapeRef.new(shape: PolicyCondition)

    PolicyStatement.add_member(:action, Shapes::ShapeRef.new(shape: AcceptAction, required: true, location_name: "Action"))
    PolicyStatement.add_member(:conditions, Shapes::ShapeRef.new(shape: PolicyConditions, required: true, location_name: "Conditions"))
    PolicyStatement.struct_class = Types::PolicyStatement

    PolicyStatementList.member = Shapes::ShapeRef.new(shape: PolicyStatement)

    Recipients.member = Shapes::ShapeRef.new(shape: EmailAddress)

    RegisterMemberToAddressListRequest.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "Address"))
    RegisterMemberToAddressListRequest.add_member(:address_list_id, Shapes::ShapeRef.new(shape: AddressListId, required: true, location_name: "AddressListId"))
    RegisterMemberToAddressListRequest.struct_class = Types::RegisterMemberToAddressListRequest

    RegisterMemberToAddressListResponse.struct_class = Types::RegisterMemberToAddressListResponse

    Relay.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimestamp"))
    Relay.add_member(:relay_id, Shapes::ShapeRef.new(shape: RelayId, location_name: "RelayId"))
    Relay.add_member(:relay_name, Shapes::ShapeRef.new(shape: RelayName, location_name: "RelayName"))
    Relay.struct_class = Types::Relay

    RelayAction.add_member(:action_failure_policy, Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: "ActionFailurePolicy"))
    RelayAction.add_member(:mail_from, Shapes::ShapeRef.new(shape: MailFrom, location_name: "MailFrom"))
    RelayAction.add_member(:relay, Shapes::ShapeRef.new(shape: IdOrArn, required: true, location_name: "Relay"))
    RelayAction.struct_class = Types::RelayAction

    RelayAuthentication.add_member(:no_authentication, Shapes::ShapeRef.new(shape: NoAuthentication, location_name: "NoAuthentication"))
    RelayAuthentication.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    RelayAuthentication.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RelayAuthentication.add_member_subclass(:no_authentication, Types::RelayAuthentication::NoAuthentication)
    RelayAuthentication.add_member_subclass(:secret_arn, Types::RelayAuthentication::SecretArn)
    RelayAuthentication.add_member_subclass(:unknown, Types::RelayAuthentication::Unknown)
    RelayAuthentication.struct_class = Types::RelayAuthentication

    Relays.member = Shapes::ShapeRef.new(shape: Relay)

    ReplaceRecipientAction.add_member(:replace_with, Shapes::ShapeRef.new(shape: Recipients, location_name: "ReplaceWith"))
    ReplaceRecipientAction.struct_class = Types::ReplaceRecipientAction

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Row.add_member(:archived_message_id, Shapes::ShapeRef.new(shape: ArchivedMessageId, location_name: "ArchivedMessageId"))
    Row.add_member(:cc, Shapes::ShapeRef.new(shape: String, location_name: "Cc"))
    Row.add_member(:date, Shapes::ShapeRef.new(shape: String, location_name: "Date"))
    Row.add_member(:envelope, Shapes::ShapeRef.new(shape: Envelope, location_name: "Envelope"))
    Row.add_member(:from, Shapes::ShapeRef.new(shape: String, location_name: "From"))
    Row.add_member(:has_attachments, Shapes::ShapeRef.new(shape: Boolean, location_name: "HasAttachments"))
    Row.add_member(:in_reply_to, Shapes::ShapeRef.new(shape: String, location_name: "InReplyTo"))
    Row.add_member(:ingress_point_id, Shapes::ShapeRef.new(shape: IngressPointId, location_name: "IngressPointId"))
    Row.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageId"))
    Row.add_member(:received_headers, Shapes::ShapeRef.new(shape: EmailReceivedHeadersList, location_name: "ReceivedHeaders"))
    Row.add_member(:received_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReceivedTimestamp"))
    Row.add_member(:sender_hostname, Shapes::ShapeRef.new(shape: String, location_name: "SenderHostname"))
    Row.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: SenderIpAddress, location_name: "SenderIpAddress"))
    Row.add_member(:subject, Shapes::ShapeRef.new(shape: String, location_name: "Subject"))
    Row.add_member(:to, Shapes::ShapeRef.new(shape: String, location_name: "To"))
    Row.add_member(:x_mailer, Shapes::ShapeRef.new(shape: String, location_name: "XMailer"))
    Row.add_member(:x_original_mailer, Shapes::ShapeRef.new(shape: String, location_name: "XOriginalMailer"))
    Row.add_member(:x_priority, Shapes::ShapeRef.new(shape: String, location_name: "XPriority"))
    Row.struct_class = Types::Row

    RowsList.member = Shapes::ShapeRef.new(shape: Row)

    Rule.add_member(:actions, Shapes::ShapeRef.new(shape: RuleActions, required: true, location_name: "Actions"))
    Rule.add_member(:conditions, Shapes::ShapeRef.new(shape: RuleConditions, location_name: "Conditions"))
    Rule.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "Name"))
    Rule.add_member(:unless, Shapes::ShapeRef.new(shape: RuleConditions, location_name: "Unless"))
    Rule.struct_class = Types::Rule

    RuleAction.add_member(:add_header, Shapes::ShapeRef.new(shape: AddHeaderAction, location_name: "AddHeader"))
    RuleAction.add_member(:archive, Shapes::ShapeRef.new(shape: ArchiveAction, location_name: "Archive"))
    RuleAction.add_member(:deliver_to_mailbox, Shapes::ShapeRef.new(shape: DeliverToMailboxAction, location_name: "DeliverToMailbox"))
    RuleAction.add_member(:deliver_to_q_business, Shapes::ShapeRef.new(shape: DeliverToQBusinessAction, location_name: "DeliverToQBusiness"))
    RuleAction.add_member(:drop, Shapes::ShapeRef.new(shape: DropAction, location_name: "Drop"))
    RuleAction.add_member(:relay, Shapes::ShapeRef.new(shape: RelayAction, location_name: "Relay"))
    RuleAction.add_member(:replace_recipient, Shapes::ShapeRef.new(shape: ReplaceRecipientAction, location_name: "ReplaceRecipient"))
    RuleAction.add_member(:send, Shapes::ShapeRef.new(shape: SendAction, location_name: "Send"))
    RuleAction.add_member(:write_to_s3, Shapes::ShapeRef.new(shape: S3Action, location_name: "WriteToS3"))
    RuleAction.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RuleAction.add_member_subclass(:add_header, Types::RuleAction::AddHeader)
    RuleAction.add_member_subclass(:archive, Types::RuleAction::Archive)
    RuleAction.add_member_subclass(:deliver_to_mailbox, Types::RuleAction::DeliverToMailbox)
    RuleAction.add_member_subclass(:deliver_to_q_business, Types::RuleAction::DeliverToQBusiness)
    RuleAction.add_member_subclass(:drop, Types::RuleAction::Drop)
    RuleAction.add_member_subclass(:relay, Types::RuleAction::Relay)
    RuleAction.add_member_subclass(:replace_recipient, Types::RuleAction::ReplaceRecipient)
    RuleAction.add_member_subclass(:send, Types::RuleAction::Send)
    RuleAction.add_member_subclass(:write_to_s3, Types::RuleAction::WriteToS3)
    RuleAction.add_member_subclass(:unknown, Types::RuleAction::Unknown)
    RuleAction.struct_class = Types::RuleAction

    RuleActions.member = Shapes::ShapeRef.new(shape: RuleAction)

    RuleAddressListArnList.member = Shapes::ShapeRef.new(shape: AddressListArn)

    RuleBooleanExpression.add_member(:evaluate, Shapes::ShapeRef.new(shape: RuleBooleanToEvaluate, required: true, location_name: "Evaluate"))
    RuleBooleanExpression.add_member(:operator, Shapes::ShapeRef.new(shape: RuleBooleanOperator, required: true, location_name: "Operator"))
    RuleBooleanExpression.struct_class = Types::RuleBooleanExpression

    RuleBooleanToEvaluate.add_member(:attribute, Shapes::ShapeRef.new(shape: RuleBooleanEmailAttribute, location_name: "Attribute"))
    RuleBooleanToEvaluate.add_member(:is_in_address_list, Shapes::ShapeRef.new(shape: RuleIsInAddressList, location_name: "IsInAddressList"))
    RuleBooleanToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RuleBooleanToEvaluate.add_member_subclass(:attribute, Types::RuleBooleanToEvaluate::Attribute)
    RuleBooleanToEvaluate.add_member_subclass(:is_in_address_list, Types::RuleBooleanToEvaluate::IsInAddressList)
    RuleBooleanToEvaluate.add_member_subclass(:unknown, Types::RuleBooleanToEvaluate::Unknown)
    RuleBooleanToEvaluate.struct_class = Types::RuleBooleanToEvaluate

    RuleCondition.add_member(:boolean_expression, Shapes::ShapeRef.new(shape: RuleBooleanExpression, location_name: "BooleanExpression"))
    RuleCondition.add_member(:dmarc_expression, Shapes::ShapeRef.new(shape: RuleDmarcExpression, location_name: "DmarcExpression"))
    RuleCondition.add_member(:ip_expression, Shapes::ShapeRef.new(shape: RuleIpExpression, location_name: "IpExpression"))
    RuleCondition.add_member(:number_expression, Shapes::ShapeRef.new(shape: RuleNumberExpression, location_name: "NumberExpression"))
    RuleCondition.add_member(:string_expression, Shapes::ShapeRef.new(shape: RuleStringExpression, location_name: "StringExpression"))
    RuleCondition.add_member(:verdict_expression, Shapes::ShapeRef.new(shape: RuleVerdictExpression, location_name: "VerdictExpression"))
    RuleCondition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RuleCondition.add_member_subclass(:boolean_expression, Types::RuleCondition::BooleanExpression)
    RuleCondition.add_member_subclass(:dmarc_expression, Types::RuleCondition::DmarcExpression)
    RuleCondition.add_member_subclass(:ip_expression, Types::RuleCondition::IpExpression)
    RuleCondition.add_member_subclass(:number_expression, Types::RuleCondition::NumberExpression)
    RuleCondition.add_member_subclass(:string_expression, Types::RuleCondition::StringExpression)
    RuleCondition.add_member_subclass(:verdict_expression, Types::RuleCondition::VerdictExpression)
    RuleCondition.add_member_subclass(:unknown, Types::RuleCondition::Unknown)
    RuleCondition.struct_class = Types::RuleCondition

    RuleConditions.member = Shapes::ShapeRef.new(shape: RuleCondition)

    RuleDmarcExpression.add_member(:operator, Shapes::ShapeRef.new(shape: RuleDmarcOperator, required: true, location_name: "Operator"))
    RuleDmarcExpression.add_member(:values, Shapes::ShapeRef.new(shape: RuleDmarcValueList, required: true, location_name: "Values"))
    RuleDmarcExpression.struct_class = Types::RuleDmarcExpression

    RuleDmarcValueList.member = Shapes::ShapeRef.new(shape: RuleDmarcPolicy)

    RuleIpExpression.add_member(:evaluate, Shapes::ShapeRef.new(shape: RuleIpToEvaluate, required: true, location_name: "Evaluate"))
    RuleIpExpression.add_member(:operator, Shapes::ShapeRef.new(shape: RuleIpOperator, required: true, location_name: "Operator"))
    RuleIpExpression.add_member(:values, Shapes::ShapeRef.new(shape: RuleIpValueList, required: true, location_name: "Values"))
    RuleIpExpression.struct_class = Types::RuleIpExpression

    RuleIpToEvaluate.add_member(:attribute, Shapes::ShapeRef.new(shape: RuleIpEmailAttribute, location_name: "Attribute"))
    RuleIpToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RuleIpToEvaluate.add_member_subclass(:attribute, Types::RuleIpToEvaluate::Attribute)
    RuleIpToEvaluate.add_member_subclass(:unknown, Types::RuleIpToEvaluate::Unknown)
    RuleIpToEvaluate.struct_class = Types::RuleIpToEvaluate

    RuleIpValueList.member = Shapes::ShapeRef.new(shape: RuleIpStringValue)

    RuleIsInAddressList.add_member(:address_lists, Shapes::ShapeRef.new(shape: RuleAddressListArnList, required: true, location_name: "AddressLists"))
    RuleIsInAddressList.add_member(:attribute, Shapes::ShapeRef.new(shape: RuleAddressListEmailAttribute, required: true, location_name: "Attribute"))
    RuleIsInAddressList.struct_class = Types::RuleIsInAddressList

    RuleNumberExpression.add_member(:evaluate, Shapes::ShapeRef.new(shape: RuleNumberToEvaluate, required: true, location_name: "Evaluate"))
    RuleNumberExpression.add_member(:operator, Shapes::ShapeRef.new(shape: RuleNumberOperator, required: true, location_name: "Operator"))
    RuleNumberExpression.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Value"))
    RuleNumberExpression.struct_class = Types::RuleNumberExpression

    RuleNumberToEvaluate.add_member(:attribute, Shapes::ShapeRef.new(shape: RuleNumberEmailAttribute, location_name: "Attribute"))
    RuleNumberToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RuleNumberToEvaluate.add_member_subclass(:attribute, Types::RuleNumberToEvaluate::Attribute)
    RuleNumberToEvaluate.add_member_subclass(:unknown, Types::RuleNumberToEvaluate::Unknown)
    RuleNumberToEvaluate.struct_class = Types::RuleNumberToEvaluate

    RuleSet.add_member(:last_modification_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModificationDate"))
    RuleSet.add_member(:rule_set_id, Shapes::ShapeRef.new(shape: RuleSetId, location_name: "RuleSetId"))
    RuleSet.add_member(:rule_set_name, Shapes::ShapeRef.new(shape: RuleSetName, location_name: "RuleSetName"))
    RuleSet.struct_class = Types::RuleSet

    RuleSets.member = Shapes::ShapeRef.new(shape: RuleSet)

    RuleStringExpression.add_member(:evaluate, Shapes::ShapeRef.new(shape: RuleStringToEvaluate, required: true, location_name: "Evaluate"))
    RuleStringExpression.add_member(:operator, Shapes::ShapeRef.new(shape: RuleStringOperator, required: true, location_name: "Operator"))
    RuleStringExpression.add_member(:values, Shapes::ShapeRef.new(shape: RuleStringList, required: true, location_name: "Values"))
    RuleStringExpression.struct_class = Types::RuleStringExpression

    RuleStringList.member = Shapes::ShapeRef.new(shape: RuleStringValue)

    RuleStringToEvaluate.add_member(:attribute, Shapes::ShapeRef.new(shape: RuleStringEmailAttribute, location_name: "Attribute"))
    RuleStringToEvaluate.add_member(:mime_header_attribute, Shapes::ShapeRef.new(shape: MimeHeaderAttribute, location_name: "MimeHeaderAttribute"))
    RuleStringToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RuleStringToEvaluate.add_member_subclass(:attribute, Types::RuleStringToEvaluate::Attribute)
    RuleStringToEvaluate.add_member_subclass(:mime_header_attribute, Types::RuleStringToEvaluate::MimeHeaderAttribute)
    RuleStringToEvaluate.add_member_subclass(:unknown, Types::RuleStringToEvaluate::Unknown)
    RuleStringToEvaluate.struct_class = Types::RuleStringToEvaluate

    RuleVerdictExpression.add_member(:evaluate, Shapes::ShapeRef.new(shape: RuleVerdictToEvaluate, required: true, location_name: "Evaluate"))
    RuleVerdictExpression.add_member(:operator, Shapes::ShapeRef.new(shape: RuleVerdictOperator, required: true, location_name: "Operator"))
    RuleVerdictExpression.add_member(:values, Shapes::ShapeRef.new(shape: RuleVerdictValueList, required: true, location_name: "Values"))
    RuleVerdictExpression.struct_class = Types::RuleVerdictExpression

    RuleVerdictToEvaluate.add_member(:analysis, Shapes::ShapeRef.new(shape: Analysis, location_name: "Analysis"))
    RuleVerdictToEvaluate.add_member(:attribute, Shapes::ShapeRef.new(shape: RuleVerdictAttribute, location_name: "Attribute"))
    RuleVerdictToEvaluate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RuleVerdictToEvaluate.add_member_subclass(:analysis, Types::RuleVerdictToEvaluate::Analysis)
    RuleVerdictToEvaluate.add_member_subclass(:attribute, Types::RuleVerdictToEvaluate::Attribute)
    RuleVerdictToEvaluate.add_member_subclass(:unknown, Types::RuleVerdictToEvaluate::Unknown)
    RuleVerdictToEvaluate.struct_class = Types::RuleVerdictToEvaluate

    RuleVerdictValueList.member = Shapes::ShapeRef.new(shape: RuleVerdict)

    Rules.member = Shapes::ShapeRef.new(shape: Rule)

    S3Action.add_member(:action_failure_policy, Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: "ActionFailurePolicy"))
    S3Action.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "RoleArn"))
    S3Action.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "S3Bucket"))
    S3Action.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: S3Prefix, location_name: "S3Prefix"))
    S3Action.add_member(:s3_sse_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "S3SseKmsKeyId"))
    S3Action.struct_class = Types::S3Action

    S3ExportDestinationConfiguration.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "S3Location"))
    S3ExportDestinationConfiguration.struct_class = Types::S3ExportDestinationConfiguration

    SavedAddress.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "Address"))
    SavedAddress.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    SavedAddress.struct_class = Types::SavedAddress

    SavedAddresses.member = Shapes::ShapeRef.new(shape: SavedAddress)

    SearchStatus.add_member(:completion_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletionTimestamp"))
    SearchStatus.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    SearchStatus.add_member(:state, Shapes::ShapeRef.new(shape: SearchState, location_name: "State"))
    SearchStatus.add_member(:submission_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmissionTimestamp"))
    SearchStatus.struct_class = Types::SearchStatus

    SearchSummary.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, location_name: "SearchId"))
    SearchSummary.add_member(:status, Shapes::ShapeRef.new(shape: SearchStatus, location_name: "Status"))
    SearchSummary.struct_class = Types::SearchSummary

    SearchSummaryList.member = Shapes::ShapeRef.new(shape: SearchSummary)

    SendAction.add_member(:action_failure_policy, Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: "ActionFailurePolicy"))
    SendAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "RoleArn"))
    SendAction.struct_class = Types::SendAction

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartAddressListImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StartAddressListImportJobRequest.struct_class = Types::StartAddressListImportJobRequest

    StartAddressListImportJobResponse.struct_class = Types::StartAddressListImportJobResponse

    StartArchiveExportRequest.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveId, required: true, location_name: "ArchiveId"))
    StartArchiveExportRequest.add_member(:export_destination_configuration, Shapes::ShapeRef.new(shape: ExportDestinationConfiguration, required: true, location_name: "ExportDestinationConfiguration"))
    StartArchiveExportRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ArchiveFilters, location_name: "Filters"))
    StartArchiveExportRequest.add_member(:from_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "FromTimestamp"))
    StartArchiveExportRequest.add_member(:include_metadata, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeMetadata"))
    StartArchiveExportRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ExportMaxResults, location_name: "MaxResults"))
    StartArchiveExportRequest.add_member(:to_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ToTimestamp"))
    StartArchiveExportRequest.struct_class = Types::StartArchiveExportRequest

    StartArchiveExportResponse.add_member(:export_id, Shapes::ShapeRef.new(shape: ExportId, location_name: "ExportId"))
    StartArchiveExportResponse.struct_class = Types::StartArchiveExportResponse

    StartArchiveSearchRequest.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveId, required: true, location_name: "ArchiveId"))
    StartArchiveSearchRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ArchiveFilters, location_name: "Filters"))
    StartArchiveSearchRequest.add_member(:from_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "FromTimestamp"))
    StartArchiveSearchRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchMaxResults, required: true, location_name: "MaxResults"))
    StartArchiveSearchRequest.add_member(:to_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ToTimestamp"))
    StartArchiveSearchRequest.struct_class = Types::StartArchiveSearchRequest

    StartArchiveSearchResponse.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, location_name: "SearchId"))
    StartArchiveSearchResponse.struct_class = Types::StartArchiveSearchResponse

    StopAddressListImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    StopAddressListImportJobRequest.struct_class = Types::StopAddressListImportJobRequest

    StopAddressListImportJobResponse.struct_class = Types::StopAddressListImportJobResponse

    StopArchiveExportRequest.add_member(:export_id, Shapes::ShapeRef.new(shape: ExportId, required: true, location_name: "ExportId"))
    StopArchiveExportRequest.struct_class = Types::StopArchiveExportRequest

    StopArchiveExportResponse.struct_class = Types::StopArchiveExportResponse

    StopArchiveSearchRequest.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, required: true, location_name: "SearchId"))
    StopArchiveSearchRequest.struct_class = Types::StopArchiveSearchRequest

    StopArchiveSearchResponse.struct_class = Types::StopArchiveSearchResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    StringValueList.member = Shapes::ShapeRef.new(shape: StringValue)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TrafficPolicy.add_member(:default_action, Shapes::ShapeRef.new(shape: AcceptAction, required: true, location_name: "DefaultAction"))
    TrafficPolicy.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyId"))
    TrafficPolicy.add_member(:traffic_policy_name, Shapes::ShapeRef.new(shape: TrafficPolicyName, required: true, location_name: "TrafficPolicyName"))
    TrafficPolicy.struct_class = Types::TrafficPolicy

    TrafficPolicyList.member = Shapes::ShapeRef.new(shape: TrafficPolicy)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateArchiveRequest.add_member(:archive_id, Shapes::ShapeRef.new(shape: ArchiveIdString, required: true, location_name: "ArchiveId"))
    UpdateArchiveRequest.add_member(:archive_name, Shapes::ShapeRef.new(shape: ArchiveNameString, location_name: "ArchiveName"))
    UpdateArchiveRequest.add_member(:retention, Shapes::ShapeRef.new(shape: ArchiveRetention, location_name: "Retention"))
    UpdateArchiveRequest.struct_class = Types::UpdateArchiveRequest

    UpdateArchiveResponse.struct_class = Types::UpdateArchiveResponse

    UpdateIngressPointRequest.add_member(:ingress_point_configuration, Shapes::ShapeRef.new(shape: IngressPointConfiguration, location_name: "IngressPointConfiguration"))
    UpdateIngressPointRequest.add_member(:ingress_point_id, Shapes::ShapeRef.new(shape: IngressPointId, required: true, location_name: "IngressPointId"))
    UpdateIngressPointRequest.add_member(:ingress_point_name, Shapes::ShapeRef.new(shape: IngressPointName, location_name: "IngressPointName"))
    UpdateIngressPointRequest.add_member(:rule_set_id, Shapes::ShapeRef.new(shape: RuleSetId, location_name: "RuleSetId"))
    UpdateIngressPointRequest.add_member(:status_to_update, Shapes::ShapeRef.new(shape: IngressPointStatusToUpdate, location_name: "StatusToUpdate"))
    UpdateIngressPointRequest.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: "TrafficPolicyId"))
    UpdateIngressPointRequest.struct_class = Types::UpdateIngressPointRequest

    UpdateIngressPointResponse.struct_class = Types::UpdateIngressPointResponse

    UpdateRelayRequest.add_member(:authentication, Shapes::ShapeRef.new(shape: RelayAuthentication, location_name: "Authentication"))
    UpdateRelayRequest.add_member(:relay_id, Shapes::ShapeRef.new(shape: RelayId, required: true, location_name: "RelayId"))
    UpdateRelayRequest.add_member(:relay_name, Shapes::ShapeRef.new(shape: RelayName, location_name: "RelayName"))
    UpdateRelayRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: RelayServerName, location_name: "ServerName"))
    UpdateRelayRequest.add_member(:server_port, Shapes::ShapeRef.new(shape: RelayServerPort, location_name: "ServerPort"))
    UpdateRelayRequest.struct_class = Types::UpdateRelayRequest

    UpdateRelayResponse.struct_class = Types::UpdateRelayResponse

    UpdateRuleSetRequest.add_member(:rule_set_id, Shapes::ShapeRef.new(shape: RuleSetId, required: true, location_name: "RuleSetId"))
    UpdateRuleSetRequest.add_member(:rule_set_name, Shapes::ShapeRef.new(shape: RuleSetName, location_name: "RuleSetName"))
    UpdateRuleSetRequest.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    UpdateRuleSetRequest.struct_class = Types::UpdateRuleSetRequest

    UpdateRuleSetResponse.struct_class = Types::UpdateRuleSetResponse

    UpdateTrafficPolicyRequest.add_member(:default_action, Shapes::ShapeRef.new(shape: AcceptAction, location_name: "DefaultAction"))
    UpdateTrafficPolicyRequest.add_member(:max_message_size_bytes, Shapes::ShapeRef.new(shape: MaxMessageSizeBytes, location_name: "MaxMessageSizeBytes"))
    UpdateTrafficPolicyRequest.add_member(:policy_statements, Shapes::ShapeRef.new(shape: PolicyStatementList, location_name: "PolicyStatements"))
    UpdateTrafficPolicyRequest.add_member(:traffic_policy_id, Shapes::ShapeRef.new(shape: TrafficPolicyId, required: true, location_name: "TrafficPolicyId"))
    UpdateTrafficPolicyRequest.add_member(:traffic_policy_name, Shapes::ShapeRef.new(shape: TrafficPolicyName, location_name: "TrafficPolicyName"))
    UpdateTrafficPolicyRequest.struct_class = Types::UpdateTrafficPolicyRequest

    UpdateTrafficPolicyResponse.struct_class = Types::UpdateTrafficPolicyResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-10-17"

      api.metadata = {
        "apiVersion" => "2023-10-17",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "mail-manager",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "MailManager",
        "serviceId" => "MailManager",
        "signatureVersion" => "v4",
        "signingName" => "ses",
        "targetPrefix" => "MailManagerSvc",
        "uid" => "mailmanager-2023-10-17",
      }

      api.add_operation(:create_addon_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAddonInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAddonInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAddonInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_addon_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAddonSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAddonSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAddonSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_address_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAddressList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAddressListRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAddressListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_address_list_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAddressListImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAddressListImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAddressListImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_archive, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateArchive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateArchiveRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateArchiveResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_ingress_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIngressPoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIngressPointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIngressPointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_relay, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRelay"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRelayRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRelayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_rule_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuleSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_traffic_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrafficPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTrafficPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrafficPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_addon_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAddonInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAddonInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAddonInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_addon_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAddonSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAddonSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAddonSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_address_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAddressList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAddressListRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAddressListResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_archive, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteArchive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteArchiveRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteArchiveResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_ingress_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIngressPoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIngressPointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIngressPointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_relay, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRelay"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRelayRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRelayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_rule_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuleSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_traffic_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrafficPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrafficPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrafficPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:deregister_member_from_address_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterMemberFromAddressList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterMemberFromAddressListRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterMemberFromAddressListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_addon_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAddonInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAddonInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAddonInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_addon_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAddonSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAddonSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAddonSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_address_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAddressList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAddressListRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAddressListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_address_list_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAddressListImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAddressListImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAddressListImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_archive, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArchive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetArchiveRequest)
        o.output = Shapes::ShapeRef.new(shape: GetArchiveResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_archive_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArchiveExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetArchiveExportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetArchiveExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_archive_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArchiveMessage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetArchiveMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetArchiveMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_archive_message_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArchiveMessageContent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetArchiveMessageContentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetArchiveMessageContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_archive_search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArchiveSearch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetArchiveSearchRequest)
        o.output = Shapes::ShapeRef.new(shape: GetArchiveSearchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_archive_search_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArchiveSearchResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetArchiveSearchResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetArchiveSearchResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_ingress_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIngressPoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIngressPointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIngressPointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_member_of_address_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMemberOfAddressList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMemberOfAddressListRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMemberOfAddressListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_relay, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRelay"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRelayRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRelayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_rule_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRuleSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRuleSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuleSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_traffic_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrafficPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTrafficPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrafficPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_addon_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAddonInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAddonInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAddonInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_addon_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAddonSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAddonSubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAddonSubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_address_list_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAddressListImportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAddressListImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAddressListImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_address_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAddressLists"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAddressListsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAddressListsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_archive_exports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListArchiveExports"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListArchiveExportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListArchiveExportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_archive_searches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListArchiveSearches"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListArchiveSearchesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListArchiveSearchesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_archives, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListArchives"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListArchivesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListArchivesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ingress_points, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIngressPoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIngressPointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIngressPointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_members_of_address_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMembersOfAddressList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMembersOfAddressListRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMembersOfAddressListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_relays, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRelays"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRelaysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRelaysResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rule_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRuleSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuleSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_traffic_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrafficPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTrafficPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrafficPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:register_member_to_address_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterMemberToAddressList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterMemberToAddressListRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterMemberToAddressListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_address_list_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAddressListImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAddressListImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAddressListImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_archive_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartArchiveExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartArchiveExportRequest)
        o.output = Shapes::ShapeRef.new(shape: StartArchiveExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_archive_search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartArchiveSearch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartArchiveSearchRequest)
        o.output = Shapes::ShapeRef.new(shape: StartArchiveSearchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_address_list_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAddressListImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopAddressListImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopAddressListImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_archive_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopArchiveExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopArchiveExportRequest)
        o.output = Shapes::ShapeRef.new(shape: StopArchiveExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_archive_search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopArchiveSearch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopArchiveSearchRequest)
        o.output = Shapes::ShapeRef.new(shape: StopArchiveSearchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_archive, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateArchive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateArchiveRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateArchiveResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_ingress_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIngressPoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateIngressPointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIngressPointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_relay, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRelay"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRelayRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRelayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_rule_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuleSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuleSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_traffic_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrafficPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrafficPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTrafficPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
