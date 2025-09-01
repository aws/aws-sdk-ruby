# frozen_string_literal: true

# This is generated code!

module Aws::MailManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#AcceptAction', name: 'AcceptAction')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActionFailurePolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#ActionFailurePolicy', name: 'ActionFailurePolicy')
    AddHeaderAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#AddHeaderAction', name: 'AddHeaderAction')
    AddonInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#AddonInstance', name: 'AddonInstance')
    AddonInstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#AddonInstanceArn', name: 'AddonInstanceArn', traits: {"aws.api#arnReference" => {}})
    AddonInstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#AddonInstanceId', name: 'AddonInstanceId', traits: {"smithy.api#length" => {"min" => 4, "max" => 67}, "smithy.api#pattern" => "^ai-[a-zA-Z0-9]{1,64}$"})
    AddonInstances = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#AddonInstances', name: 'AddonInstances')
    AddonName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#AddonName', name: 'AddonName')
    AddonSubscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#AddonSubscription', name: 'AddonSubscription')
    AddonSubscriptionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#AddonSubscriptionArn', name: 'AddonSubscriptionArn', traits: {"aws.api#arnReference" => {}})
    AddonSubscriptionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#AddonSubscriptionId', name: 'AddonSubscriptionId', traits: {"smithy.api#length" => {"min" => 4, "max" => 67}, "smithy.api#pattern" => "^as-[a-zA-Z0-9]{1,64}$"})
    AddonSubscriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#AddonSubscriptions', name: 'AddonSubscriptions')
    Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#Address', name: 'Address', traits: {"smithy.api#length" => {"min" => 3, "max" => 320}, "smithy.api#sensitive" => {}})
    AddressFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#AddressFilter', name: 'AddressFilter')
    AddressList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#AddressList', name: 'AddressList')
    AddressListArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#AddressListArn', name: 'AddressListArn', traits: {"aws.api#arnReference" => {"service" => "ses", "resource" => "com.amazon.pancetta.addresslist.management#AddressListResource"}})
    AddressListId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#AddressListId', name: 'AddressListId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    AddressListName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#AddressListName', name: 'AddressListName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    AddressLists = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#AddressLists', name: 'AddressLists')
    AddressPageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mailmanager#AddressPageSize', name: 'AddressPageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    AddressPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#AddressPrefix', name: 'AddressPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#sensitive" => {}})
    Analysis = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#Analysis', name: 'Analysis')
    AnalyzerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#AnalyzerArn', name: 'AnalyzerArn', traits: {"aws.api#arnReference" => {}, "smithy.api#pattern" => "^[a-zA-Z0-9:_/+=,@.#-]+$"})
    Archive = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#Archive', name: 'Archive')
    ArchiveAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ArchiveAction', name: 'ArchiveAction')
    ArchiveArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#ArchiveArn', name: 'ArchiveArn', traits: {"aws.api#arnReference" => {}})
    ArchiveBooleanEmailAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#ArchiveBooleanEmailAttribute', name: 'ArchiveBooleanEmailAttribute')
    ArchiveBooleanExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ArchiveBooleanExpression', name: 'ArchiveBooleanExpression')
    ArchiveBooleanOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#ArchiveBooleanOperator', name: 'ArchiveBooleanOperator')
    ArchiveBooleanToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#ArchiveBooleanToEvaluate', name: 'ArchiveBooleanToEvaluate')
    ArchiveFilterCondition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#ArchiveFilterCondition', name: 'ArchiveFilterCondition')
    ArchiveFilterConditions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#ArchiveFilterConditions', name: 'ArchiveFilterConditions', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ArchiveFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ArchiveFilters', name: 'ArchiveFilters')
    ArchiveId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#ArchiveId', name: 'ArchiveId', traits: {"smithy.api#length" => {"min" => 3, "max" => 66}, "smithy.api#pattern" => "^a-[\\w]{1,64}$"})
    ArchiveIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#ArchiveIdString', name: 'ArchiveIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 66}})
    ArchiveNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#ArchiveNameString', name: 'ArchiveNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*[a-zA-Z0-9]$"})
    ArchiveRetention = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#ArchiveRetention', name: 'ArchiveRetention')
    ArchiveState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#ArchiveState', name: 'ArchiveState')
    ArchiveStringEmailAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#ArchiveStringEmailAttribute', name: 'ArchiveStringEmailAttribute')
    ArchiveStringExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ArchiveStringExpression', name: 'ArchiveStringExpression')
    ArchiveStringOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#ArchiveStringOperator', name: 'ArchiveStringOperator')
    ArchiveStringToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#ArchiveStringToEvaluate', name: 'ArchiveStringToEvaluate')
    ArchivedMessageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#ArchivedMessageId', name: 'ArchivedMessageId')
    ArchivesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#ArchivesList', name: 'ArchivesList')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAddonInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateAddonInstanceRequest', name: 'CreateAddonInstanceRequest')
    CreateAddonInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateAddonInstanceResponse', name: 'CreateAddonInstanceResponse')
    CreateAddonSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateAddonSubscriptionRequest', name: 'CreateAddonSubscriptionRequest')
    CreateAddonSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateAddonSubscriptionResponse', name: 'CreateAddonSubscriptionResponse')
    CreateAddressListImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateAddressListImportJobRequest', name: 'CreateAddressListImportJobRequest')
    CreateAddressListImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateAddressListImportJobResponse', name: 'CreateAddressListImportJobResponse')
    CreateAddressListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateAddressListRequest', name: 'CreateAddressListRequest')
    CreateAddressListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateAddressListResponse', name: 'CreateAddressListResponse')
    CreateArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateArchiveRequest', name: 'CreateArchiveRequest')
    CreateArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateArchiveResponse', name: 'CreateArchiveResponse')
    CreateIngressPointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateIngressPointRequest', name: 'CreateIngressPointRequest')
    CreateIngressPointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateIngressPointResponse', name: 'CreateIngressPointResponse')
    CreateRelayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateRelayRequest', name: 'CreateRelayRequest')
    CreateRelayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateRelayResponse', name: 'CreateRelayResponse')
    CreateRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateRuleSetRequest', name: 'CreateRuleSetRequest')
    CreateRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateRuleSetResponse', name: 'CreateRuleSetResponse')
    CreateTrafficPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateTrafficPolicyRequest', name: 'CreateTrafficPolicyRequest')
    CreateTrafficPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#CreateTrafficPolicyResponse', name: 'CreateTrafficPolicyResponse')
    DeleteAddonInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteAddonInstanceRequest', name: 'DeleteAddonInstanceRequest')
    DeleteAddonInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteAddonInstanceResponse', name: 'DeleteAddonInstanceResponse')
    DeleteAddonSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteAddonSubscriptionRequest', name: 'DeleteAddonSubscriptionRequest')
    DeleteAddonSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteAddonSubscriptionResponse', name: 'DeleteAddonSubscriptionResponse')
    DeleteAddressListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteAddressListRequest', name: 'DeleteAddressListRequest')
    DeleteAddressListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteAddressListResponse', name: 'DeleteAddressListResponse')
    DeleteArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteArchiveRequest', name: 'DeleteArchiveRequest')
    DeleteArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteArchiveResponse', name: 'DeleteArchiveResponse')
    DeleteIngressPointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteIngressPointRequest', name: 'DeleteIngressPointRequest')
    DeleteIngressPointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteIngressPointResponse', name: 'DeleteIngressPointResponse')
    DeleteRelayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteRelayRequest', name: 'DeleteRelayRequest')
    DeleteRelayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteRelayResponse', name: 'DeleteRelayResponse')
    DeleteRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteRuleSetRequest', name: 'DeleteRuleSetRequest')
    DeleteRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteRuleSetResponse', name: 'DeleteRuleSetResponse')
    DeleteTrafficPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteTrafficPolicyRequest', name: 'DeleteTrafficPolicyRequest')
    DeleteTrafficPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeleteTrafficPolicyResponse', name: 'DeleteTrafficPolicyResponse')
    DeliverToMailboxAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeliverToMailboxAction', name: 'DeliverToMailboxAction')
    DeliverToQBusinessAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeliverToQBusinessAction', name: 'DeliverToQBusinessAction')
    DeregisterMemberFromAddressListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeregisterMemberFromAddressListRequest', name: 'DeregisterMemberFromAddressListRequest')
    DeregisterMemberFromAddressListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DeregisterMemberFromAddressListResponse', name: 'DeregisterMemberFromAddressListResponse')
    DropAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#DropAction', name: 'DropAction')
    EmailAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 0, "max" => 254}, "smithy.api#pattern" => "^[a-zA-Z0-9._+-]+@[a-zA-Z0-9.-]+$", "smithy.api#sensitive" => {}})
    EmailReceivedHeadersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#EmailReceivedHeadersList', name: 'EmailReceivedHeadersList')
    Envelope = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#Envelope', name: 'Envelope')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#ErrorMessage', name: 'ErrorMessage')
    ExportDestinationConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#ExportDestinationConfiguration', name: 'ExportDestinationConfiguration')
    ExportId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#ExportId', name: 'ExportId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ExportMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mailmanager#ExportMaxResults', name: 'ExportMaxResults')
    ExportState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#ExportState', name: 'ExportState')
    ExportStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ExportStatus', name: 'ExportStatus')
    ExportSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ExportSummary', name: 'ExportSummary')
    ExportSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#ExportSummaryList', name: 'ExportSummaryList')
    GetAddonInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetAddonInstanceRequest', name: 'GetAddonInstanceRequest')
    GetAddonInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetAddonInstanceResponse', name: 'GetAddonInstanceResponse')
    GetAddonSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetAddonSubscriptionRequest', name: 'GetAddonSubscriptionRequest')
    GetAddonSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetAddonSubscriptionResponse', name: 'GetAddonSubscriptionResponse')
    GetAddressListImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetAddressListImportJobRequest', name: 'GetAddressListImportJobRequest')
    GetAddressListImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetAddressListImportJobResponse', name: 'GetAddressListImportJobResponse')
    GetAddressListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetAddressListRequest', name: 'GetAddressListRequest')
    GetAddressListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetAddressListResponse', name: 'GetAddressListResponse')
    GetArchiveExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveExportRequest', name: 'GetArchiveExportRequest')
    GetArchiveExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveExportResponse', name: 'GetArchiveExportResponse')
    GetArchiveMessageContentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveMessageContentRequest', name: 'GetArchiveMessageContentRequest')
    GetArchiveMessageContentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveMessageContentResponse', name: 'GetArchiveMessageContentResponse')
    GetArchiveMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveMessageRequest', name: 'GetArchiveMessageRequest')
    GetArchiveMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveMessageResponse', name: 'GetArchiveMessageResponse')
    GetArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveRequest', name: 'GetArchiveRequest')
    GetArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveResponse', name: 'GetArchiveResponse')
    GetArchiveSearchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveSearchRequest', name: 'GetArchiveSearchRequest')
    GetArchiveSearchResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveSearchResponse', name: 'GetArchiveSearchResponse')
    GetArchiveSearchResultsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveSearchResultsRequest', name: 'GetArchiveSearchResultsRequest')
    GetArchiveSearchResultsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetArchiveSearchResultsResponse', name: 'GetArchiveSearchResultsResponse')
    GetIngressPointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetIngressPointRequest', name: 'GetIngressPointRequest')
    GetIngressPointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetIngressPointResponse', name: 'GetIngressPointResponse')
    GetMemberOfAddressListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetMemberOfAddressListRequest', name: 'GetMemberOfAddressListRequest')
    GetMemberOfAddressListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetMemberOfAddressListResponse', name: 'GetMemberOfAddressListResponse')
    GetRelayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetRelayRequest', name: 'GetRelayRequest')
    GetRelayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetRelayResponse', name: 'GetRelayResponse')
    GetRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetRuleSetRequest', name: 'GetRuleSetRequest')
    GetRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetRuleSetResponse', name: 'GetRuleSetResponse')
    GetTrafficPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetTrafficPolicyRequest', name: 'GetTrafficPolicyRequest')
    GetTrafficPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#GetTrafficPolicyResponse', name: 'GetTrafficPolicyResponse')
    HeaderName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#HeaderName', name: 'HeaderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[xX]\\-[a-zA-Z0-9\\-]+$"})
    HeaderValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#HeaderValue', name: 'HeaderValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#IamRoleArn', name: 'IamRoleArn', traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:_/+=,@.#-]+$"})
    IdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#IdOrArn', name: 'IdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:_/+=,@.#-]+$"})
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ImportDataFormat = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ImportDataFormat', name: 'ImportDataFormat')
    ImportDataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#ImportDataType', name: 'ImportDataType')
    ImportJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ImportJob', name: 'ImportJob')
    ImportJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#ImportJobStatus', name: 'ImportJobStatus')
    ImportJobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#ImportJobs', name: 'ImportJobs')
    IngressAddressListArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#IngressAddressListArnList', name: 'IngressAddressListArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#uniqueItems" => {}})
    IngressAddressListEmailAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressAddressListEmailAttribute', name: 'IngressAddressListEmailAttribute')
    IngressAnalysis = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#IngressAnalysis', name: 'IngressAnalysis')
    IngressBooleanExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#IngressBooleanExpression', name: 'IngressBooleanExpression')
    IngressBooleanOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressBooleanOperator', name: 'IngressBooleanOperator')
    IngressBooleanToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#IngressBooleanToEvaluate', name: 'IngressBooleanToEvaluate')
    IngressIpOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressIpOperator', name: 'IngressIpOperator')
    IngressIpToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#IngressIpToEvaluate', name: 'IngressIpToEvaluate')
    IngressIpv4Attribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressIpv4Attribute', name: 'IngressIpv4Attribute')
    IngressIpv4Expression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#IngressIpv4Expression', name: 'IngressIpv4Expression')
    IngressIpv6Attribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressIpv6Attribute', name: 'IngressIpv6Attribute')
    IngressIpv6Expression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#IngressIpv6Expression', name: 'IngressIpv6Expression')
    IngressIpv6ToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#IngressIpv6ToEvaluate', name: 'IngressIpv6ToEvaluate')
    IngressIsInAddressList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#IngressIsInAddressList', name: 'IngressIsInAddressList')
    IngressPoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#IngressPoint', name: 'IngressPoint')
    IngressPointARecord = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#IngressPointARecord', name: 'IngressPointARecord')
    IngressPointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#IngressPointArn', name: 'IngressPointArn', traits: {"aws.api#arnReference" => {}})
    IngressPointAuthConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#IngressPointAuthConfiguration', name: 'IngressPointAuthConfiguration')
    IngressPointConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#IngressPointConfiguration', name: 'IngressPointConfiguration')
    IngressPointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#IngressPointId', name: 'IngressPointId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    IngressPointName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#IngressPointName', name: 'IngressPointName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-]+$"})
    IngressPointPasswordConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#IngressPointPasswordConfiguration', name: 'IngressPointPasswordConfiguration')
    IngressPointStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressPointStatus', name: 'IngressPointStatus')
    IngressPointStatusToUpdate = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressPointStatusToUpdate', name: 'IngressPointStatusToUpdate')
    IngressPointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressPointType', name: 'IngressPointType')
    IngressPointsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#IngressPointsList', name: 'IngressPointsList')
    IngressStringEmailAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressStringEmailAttribute', name: 'IngressStringEmailAttribute')
    IngressStringExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#IngressStringExpression', name: 'IngressStringExpression')
    IngressStringOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressStringOperator', name: 'IngressStringOperator')
    IngressStringToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#IngressStringToEvaluate', name: 'IngressStringToEvaluate')
    IngressTlsAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressTlsAttribute', name: 'IngressTlsAttribute')
    IngressTlsProtocolAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressTlsProtocolAttribute', name: 'IngressTlsProtocolAttribute')
    IngressTlsProtocolExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#IngressTlsProtocolExpression', name: 'IngressTlsProtocolExpression')
    IngressTlsProtocolOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IngressTlsProtocolOperator', name: 'IngressTlsProtocolOperator')
    IngressTlsProtocolToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#IngressTlsProtocolToEvaluate', name: 'IngressTlsProtocolToEvaluate')
    IpType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#IpType', name: 'IpType')
    Ipv4Cidr = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#Ipv4Cidr', name: 'Ipv4Cidr', traits: {"smithy.api#pattern" => "^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/([0-9]|[12][0-9]|3[0-2])$"})
    Ipv4Cidrs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#Ipv4Cidrs', name: 'Ipv4Cidrs')
    Ipv6Cidr = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#Ipv6Cidr', name: 'Ipv6Cidr', traits: {"smithy.api#length" => {"max" => 49}, "smithy.api#pattern" => "^(([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:))\\/(12[0-8]|1[0-1][0-9]|[1-9][0-9]|[0-9])$"})
    Ipv6Cidrs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#Ipv6Cidrs', name: 'Ipv6Cidrs')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    JobItemsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mailmanager#JobItemsCount', name: 'JobItemsCount')
    JobName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#JobName', name: 'JobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):kms:[a-z0-9-]{1,20}:[0-9]{12}:(key|alias)/.+$"})
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9-:/]+$"})
    ListAddonInstancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListAddonInstancesRequest', name: 'ListAddonInstancesRequest')
    ListAddonInstancesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListAddonInstancesResponse', name: 'ListAddonInstancesResponse')
    ListAddonSubscriptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListAddonSubscriptionsRequest', name: 'ListAddonSubscriptionsRequest')
    ListAddonSubscriptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListAddonSubscriptionsResponse', name: 'ListAddonSubscriptionsResponse')
    ListAddressListImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListAddressListImportJobsRequest', name: 'ListAddressListImportJobsRequest')
    ListAddressListImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListAddressListImportJobsResponse', name: 'ListAddressListImportJobsResponse')
    ListAddressListsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListAddressListsRequest', name: 'ListAddressListsRequest')
    ListAddressListsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListAddressListsResponse', name: 'ListAddressListsResponse')
    ListArchiveExportsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListArchiveExportsRequest', name: 'ListArchiveExportsRequest')
    ListArchiveExportsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListArchiveExportsResponse', name: 'ListArchiveExportsResponse')
    ListArchiveSearchesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListArchiveSearchesRequest', name: 'ListArchiveSearchesRequest')
    ListArchiveSearchesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListArchiveSearchesResponse', name: 'ListArchiveSearchesResponse')
    ListArchivesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListArchivesRequest', name: 'ListArchivesRequest')
    ListArchivesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListArchivesResponse', name: 'ListArchivesResponse')
    ListIngressPointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListIngressPointsRequest', name: 'ListIngressPointsRequest')
    ListIngressPointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListIngressPointsResponse', name: 'ListIngressPointsResponse')
    ListMembersOfAddressListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListMembersOfAddressListRequest', name: 'ListMembersOfAddressListRequest')
    ListMembersOfAddressListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListMembersOfAddressListResponse', name: 'ListMembersOfAddressListResponse')
    ListRelaysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListRelaysRequest', name: 'ListRelaysRequest')
    ListRelaysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListRelaysResponse', name: 'ListRelaysResponse')
    ListRuleSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListRuleSetsRequest', name: 'ListRuleSetsRequest')
    ListRuleSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListRuleSetsResponse', name: 'ListRuleSetsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTrafficPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListTrafficPoliciesRequest', name: 'ListTrafficPoliciesRequest')
    ListTrafficPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ListTrafficPoliciesResponse', name: 'ListTrafficPoliciesResponse')
    MailFrom = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#MailFrom', name: 'MailFrom')
    MaxMessageSizeBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mailmanager#MaxMessageSizeBytes', name: 'MaxMessageSizeBytes', traits: {"smithy.api#range" => {"min" => 1}})
    MessageBody = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#MessageBody', name: 'MessageBody')
    Metadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#Metadata', name: 'Metadata')
    MimeHeaderAttribute = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#MimeHeaderAttribute', name: 'MimeHeaderAttribute', traits: {"smithy.api#pattern" => "^X-[a-zA-Z0-9-]{1,256}$"})
    NameOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#NameOrArn', name: 'NameOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:_/+=,@.#-]+$"})
    NetworkConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#NetworkConfiguration', name: 'NetworkConfiguration')
    NoAuthentication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#NoAuthentication', name: 'NoAuthentication')
    PageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mailmanager#PageSize', name: 'PageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PolicyCondition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#PolicyCondition', name: 'PolicyCondition')
    PolicyConditions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#PolicyConditions', name: 'PolicyConditions', traits: {"smithy.api#length" => {"min" => 1}})
    PolicyStatement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#PolicyStatement', name: 'PolicyStatement')
    PolicyStatementList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#PolicyStatementList', name: 'PolicyStatementList')
    PreSignedUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#PreSignedUrl', name: 'PreSignedUrl', traits: {"smithy.api#sensitive" => {}})
    PrivateNetworkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#PrivateNetworkConfiguration', name: 'PrivateNetworkConfiguration')
    PublicNetworkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#PublicNetworkConfiguration', name: 'PublicNetworkConfiguration')
    QBusinessApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#QBusinessApplicationId', name: 'QBusinessApplicationId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    QBusinessIndexId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#QBusinessIndexId', name: 'QBusinessIndexId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    Recipients = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#Recipients', name: 'Recipients', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    RegisterMemberToAddressListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RegisterMemberToAddressListRequest', name: 'RegisterMemberToAddressListRequest')
    RegisterMemberToAddressListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RegisterMemberToAddressListResponse', name: 'RegisterMemberToAddressListResponse')
    Relay = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#Relay', name: 'Relay')
    RelayAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RelayAction', name: 'RelayAction')
    RelayArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#RelayArn', name: 'RelayArn', traits: {"aws.api#arnReference" => {}})
    RelayAuthentication = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#RelayAuthentication', name: 'RelayAuthentication')
    RelayId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#RelayId', name: 'RelayId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    RelayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#RelayName', name: 'RelayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    RelayServerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#RelayServerName', name: 'RelayServerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\.]+$"})
    RelayServerPort = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mailmanager#RelayServerPort', name: 'RelayServerPort', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    Relays = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#Relays', name: 'Relays')
    ReplaceRecipientAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ReplaceRecipientAction', name: 'ReplaceRecipientAction')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#ResultField', name: 'ResultField', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(addon\\.)?[\\sa-zA-Z0-9_]+$"})
    RetentionPeriod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RetentionPeriod', name: 'RetentionPeriod')
    Row = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#Row', name: 'Row')
    RowsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#RowsList', name: 'RowsList')
    Rule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#Rule', name: 'Rule')
    RuleAction = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#RuleAction', name: 'RuleAction')
    RuleActions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#RuleActions', name: 'RuleActions', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleAddressListArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#RuleAddressListArnList', name: 'RuleAddressListArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#uniqueItems" => {}})
    RuleAddressListEmailAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleAddressListEmailAttribute', name: 'RuleAddressListEmailAttribute')
    RuleBooleanEmailAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleBooleanEmailAttribute', name: 'RuleBooleanEmailAttribute')
    RuleBooleanExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RuleBooleanExpression', name: 'RuleBooleanExpression')
    RuleBooleanOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleBooleanOperator', name: 'RuleBooleanOperator')
    RuleBooleanToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#RuleBooleanToEvaluate', name: 'RuleBooleanToEvaluate')
    RuleCondition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#RuleCondition', name: 'RuleCondition')
    RuleConditions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#RuleConditions', name: 'RuleConditions', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RuleDmarcExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RuleDmarcExpression', name: 'RuleDmarcExpression')
    RuleDmarcOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleDmarcOperator', name: 'RuleDmarcOperator')
    RuleDmarcPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleDmarcPolicy', name: 'RuleDmarcPolicy')
    RuleDmarcValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#RuleDmarcValueList', name: 'RuleDmarcValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleIpEmailAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleIpEmailAttribute', name: 'RuleIpEmailAttribute')
    RuleIpExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RuleIpExpression', name: 'RuleIpExpression')
    RuleIpOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleIpOperator', name: 'RuleIpOperator')
    RuleIpStringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#RuleIpStringValue', name: 'RuleIpStringValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 43}, "smithy.api#pattern" => "^(([0-9]|.|:|/)*)$"})
    RuleIpToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#RuleIpToEvaluate', name: 'RuleIpToEvaluate')
    RuleIpValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#RuleIpValueList', name: 'RuleIpValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleIsInAddressList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RuleIsInAddressList', name: 'RuleIsInAddressList')
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    RuleNumberEmailAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleNumberEmailAttribute', name: 'RuleNumberEmailAttribute')
    RuleNumberExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RuleNumberExpression', name: 'RuleNumberExpression')
    RuleNumberOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleNumberOperator', name: 'RuleNumberOperator')
    RuleNumberToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#RuleNumberToEvaluate', name: 'RuleNumberToEvaluate')
    RuleSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RuleSet', name: 'RuleSet')
    RuleSetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#RuleSetArn', name: 'RuleSetArn', traits: {"aws.api#arnReference" => {}})
    RuleSetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#RuleSetId', name: 'RuleSetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RuleSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#RuleSetName', name: 'RuleSetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    RuleSets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#RuleSets', name: 'RuleSets')
    RuleStringEmailAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleStringEmailAttribute', name: 'RuleStringEmailAttribute')
    RuleStringExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RuleStringExpression', name: 'RuleStringExpression')
    RuleStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#RuleStringList', name: 'RuleStringList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleStringOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleStringOperator', name: 'RuleStringOperator')
    RuleStringToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#RuleStringToEvaluate', name: 'RuleStringToEvaluate')
    RuleStringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#RuleStringValue', name: 'RuleStringValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    RuleVerdict = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleVerdict', name: 'RuleVerdict')
    RuleVerdictAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleVerdictAttribute', name: 'RuleVerdictAttribute')
    RuleVerdictExpression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#RuleVerdictExpression', name: 'RuleVerdictExpression')
    RuleVerdictOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#RuleVerdictOperator', name: 'RuleVerdictOperator')
    RuleVerdictToEvaluate = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mailmanager#RuleVerdictToEvaluate', name: 'RuleVerdictToEvaluate')
    RuleVerdictValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#RuleVerdictValueList', name: 'RuleVerdictValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Rules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#Rules', name: 'Rules', traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    S3Action = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#S3Action', name: 'S3Action')
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 1, "max" => 62}, "smithy.api#pattern" => "^[a-zA-Z0-9.-]+$"})
    S3ExportDestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#S3ExportDestinationConfiguration', name: 'S3ExportDestinationConfiguration')
    S3Location = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#S3Location', name: 'S3Location', traits: {"smithy.api#pattern" => "^s3://[a-zA-Z0-9.-]{3,63}(/[a-zA-Z0-9!_.*'()/-]*)*$"})
    S3Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#S3Prefix', name: 'S3Prefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 62}, "smithy.api#pattern" => "^[a-zA-Z0-9!_.*'()/-]+$"})
    S3PresignedURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#S3PresignedURL', name: 'S3PresignedURL')
    SavedAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#SavedAddress', name: 'SavedAddress')
    SavedAddresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#SavedAddresses', name: 'SavedAddresses')
    SearchId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#SearchId', name: 'SearchId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    SearchMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mailmanager#SearchMaxResults', name: 'SearchMaxResults', traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}})
    SearchState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#SearchState', name: 'SearchState')
    SearchStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#SearchStatus', name: 'SearchStatus')
    SearchSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#SearchSummary', name: 'SearchSummary')
    SearchSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#SearchSummaryList', name: 'SearchSummaryList')
    SecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#SecretArn', name: 'SecretArn', traits: {"aws.api#arnReference" => {"type" => "AWS::SecretsManager::Secret"}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):secretsmanager:[a-z0-9-]+:\\d{12}:secret:[a-zA-Z0-9/_+=,.@-]+$"})
    SendAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#SendAction', name: 'SendAction')
    SenderIpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#SenderIpAddress', name: 'SenderIpAddress', traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SmtpPassword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#SmtpPassword', name: 'SmtpPassword', traits: {"smithy.api#length" => {"min" => 8, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9!@\#$%^&*()_+\\-=\\[\\]{}|.,?]+$", "smithy.api#sensitive" => {}})
    SnsAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#SnsAction', name: 'SnsAction')
    SnsNotificationEncoding = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#SnsNotificationEncoding', name: 'SnsNotificationEncoding')
    SnsNotificationPayloadType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mailmanager#SnsNotificationPayloadType', name: 'SnsNotificationPayloadType')
    SnsTopicArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#SnsTopicArn', name: 'SnsTopicArn', traits: {"aws.api#arnReference" => {"type" => "AWS::SNS::Topic"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):sns:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:[\\w\\-]{1,256}$"})
    StartAddressListImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StartAddressListImportJobRequest', name: 'StartAddressListImportJobRequest')
    StartAddressListImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StartAddressListImportJobResponse', name: 'StartAddressListImportJobResponse')
    StartArchiveExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StartArchiveExportRequest', name: 'StartArchiveExportRequest')
    StartArchiveExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StartArchiveExportResponse', name: 'StartArchiveExportResponse')
    StartArchiveSearchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StartArchiveSearchRequest', name: 'StartArchiveSearchRequest')
    StartArchiveSearchResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StartArchiveSearchResponse', name: 'StartArchiveSearchResponse')
    StopAddressListImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StopAddressListImportJobRequest', name: 'StopAddressListImportJobRequest')
    StopAddressListImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StopAddressListImportJobResponse', name: 'StopAddressListImportJobResponse')
    StopArchiveExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StopArchiveExportRequest', name: 'StopArchiveExportRequest')
    StopArchiveExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StopArchiveExportResponse', name: 'StopArchiveExportResponse')
    StopArchiveSearchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StopArchiveSearchRequest', name: 'StopArchiveSearchRequest')
    StopArchiveSearchResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#StopArchiveSearchResponse', name: 'StopArchiveSearchResponse')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#StringList', name: 'StringList')
    StringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#StringValue', name: 'StringValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#StringValueList', name: 'StringValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9/_\\+=\\.:@\\-]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9/_\\+=\\.:@\\-]*$"})
    TaggableResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#TaggableResourceArn', name: 'TaggableResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):ses:[a-z0-9-]{1,20}:[0-9]{12}:(mailmanager-|addon-).+$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TrafficPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#TrafficPolicy', name: 'TrafficPolicy')
    TrafficPolicyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#TrafficPolicyArn', name: 'TrafficPolicyArn', traits: {"aws.api#arnReference" => {}})
    TrafficPolicyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#TrafficPolicyId', name: 'TrafficPolicyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TrafficPolicyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mailmanager#TrafficPolicyList', name: 'TrafficPolicyList')
    TrafficPolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#TrafficPolicyName', name: 'TrafficPolicyName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-]+$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateArchiveRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UpdateArchiveRequest', name: 'UpdateArchiveRequest')
    UpdateArchiveResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UpdateArchiveResponse', name: 'UpdateArchiveResponse')
    UpdateIngressPointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UpdateIngressPointRequest', name: 'UpdateIngressPointRequest')
    UpdateIngressPointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UpdateIngressPointResponse', name: 'UpdateIngressPointResponse')
    UpdateRelayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UpdateRelayRequest', name: 'UpdateRelayRequest')
    UpdateRelayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UpdateRelayResponse', name: 'UpdateRelayResponse')
    UpdateRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UpdateRuleSetRequest', name: 'UpdateRuleSetRequest')
    UpdateRuleSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UpdateRuleSetResponse', name: 'UpdateRuleSetResponse')
    UpdateTrafficPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UpdateTrafficPolicyRequest', name: 'UpdateTrafficPolicyRequest')
    UpdateTrafficPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#UpdateTrafficPolicyResponse', name: 'UpdateTrafficPolicyResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mailmanager#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcEndpointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mailmanager#VpcEndpointId', name: 'VpcEndpointId', traits: {"smithy.api#pattern" => "^vpce-[a-zA-Z0-9]{17}$"})

    AcceptAction.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    AcceptAction.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionFailurePolicy.add_member(:continue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTINUE', traits: {"smithy.api#enumValue" => "CONTINUE"}))
    ActionFailurePolicy.add_member(:drop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DROP', traits: {"smithy.api#enumValue" => "DROP"}))
    AddHeaderAction.add_member(:header_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderName, location_name: 'HeaderName', traits: {"smithy.api#documentation" => "<p>The name of the header to add to an email. The header must be prefixed with \"X-\". Headers are added regardless of whether the header name pre-existed in the email.</p>", "smithy.api#required" => {}}))
    AddHeaderAction.add_member(:header_value, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValue, location_name: 'HeaderValue', traits: {"smithy.api#documentation" => "<p>The value of the header to add to the email.</p>", "smithy.api#required" => {}}))
    AddHeaderAction.type = Types::AddHeaderAction
    AddonInstance.add_member(:addon_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonInstanceId, location_name: 'AddonInstanceId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Add On instance.</p>"}))
    AddonInstance.add_member(:addon_subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscriptionId, location_name: 'AddonSubscriptionId', traits: {"smithy.api#documentation" => "<p>The subscription ID for the instance.</p>"}))
    AddonInstance.add_member(:addon_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonName, location_name: 'AddonName', traits: {"smithy.api#documentation" => "<p>The name of the Add On for the instance.</p>"}))
    AddonInstance.add_member(:addon_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonInstanceArn, location_name: 'AddonInstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Add On instance.</p>"}))
    AddonInstance.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the Add On instance was created.</p>"}))
    AddonInstance.type = Types::AddonInstance
    AddonInstances.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AddonInstance)
    AddonSubscription.add_member(:addon_subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscriptionId, location_name: 'AddonSubscriptionId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Add On subscription.</p>"}))
    AddonSubscription.add_member(:addon_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonName, location_name: 'AddonName', traits: {"smithy.api#documentation" => "<p>The name of the Add On.</p>"}))
    AddonSubscription.add_member(:addon_subscription_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscriptionArn, location_name: 'AddonSubscriptionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Add On subscription.</p>"}))
    AddonSubscription.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the Add On subscription was created.</p>"}))
    AddonSubscription.type = Types::AddonSubscription
    AddonSubscriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscription)
    AddressFilter.add_member(:address_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressPrefix, location_name: 'AddressPrefix', traits: {"smithy.api#documentation" => "<p>Filter to limit the results to addresses having the provided prefix.</p>"}))
    AddressFilter.type = Types::AddressFilter
    AddressList.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The identifier of the address list.</p>", "smithy.api#required" => {}}))
    AddressList.add_member(:address_list_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListArn, location_name: 'AddressListArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the address list.</p>", "smithy.api#required" => {}}))
    AddressList.add_member(:address_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListName, location_name: 'AddressListName', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the address list.</p>", "smithy.api#required" => {}}))
    AddressList.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the address list was created.</p>", "smithy.api#required" => {}}))
    AddressList.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the address list was last updated.</p>", "smithy.api#required" => {}}))
    AddressList.type = Types::AddressList
    AddressLists.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AddressList)
    Analysis.add_member(:analyzer, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'Analyzer', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an Add On.</p>", "smithy.api#required" => {}}))
    Analysis.add_member(:result_field, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultField, location_name: 'ResultField', traits: {"smithy.api#documentation" => "<p>The returned value from an Add On.</p>", "smithy.api#required" => {}}))
    Analysis.type = Types::Analysis
    Archive.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveIdString, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the archive.</p>", "smithy.api#required" => {}}))
    Archive.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveNameString, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>The unique name assigned to the archive.</p>"}))
    Archive.add_member(:archive_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'ArchiveState', traits: {"smithy.api#documentation" => "<p>The current state of the archive:</p> <ul> <li> <p> <code>ACTIVE</code> – The archive is ready and available for use. </p> </li> <li> <p> <code>PENDING_DELETION</code> – The archive has been marked for deletion and will be permanently deleted in 30 days. No further modifications can be made in this state. </p> </li> </ul>"}))
    Archive.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the archive was last updated.</p>"}))
    Archive.type = Types::Archive
    ArchiveAction.add_member(:action_failure_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: 'ActionFailurePolicy', traits: {"smithy.api#documentation" => "<p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the specified archive has been deleted.</p>"}))
    ArchiveAction.add_member(:target_archive, Smithy::Schema::Shapes::ShapeRef.new(shape: NameOrArn, location_name: 'TargetArchive', traits: {"smithy.api#documentation" => "<p>The identifier of the archive to send the email to.</p>", "smithy.api#required" => {}}))
    ArchiveAction.type = Types::ArchiveAction
    ArchiveBooleanEmailAttribute.add_member(:has_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HAS_ATTACHMENTS', traits: {"smithy.api#enumValue" => "HAS_ATTACHMENTS"}))
    ArchiveBooleanExpression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveBooleanToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The email attribute value to evaluate.</p>", "smithy.api#required" => {}}))
    ArchiveBooleanExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveBooleanOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The boolean operator to use for evaluation.</p>", "smithy.api#required" => {}}))
    ArchiveBooleanExpression.type = Types::ArchiveBooleanExpression
    ArchiveBooleanOperator.add_member(:is_true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS_TRUE', traits: {"smithy.api#enumValue" => "IS_TRUE"}))
    ArchiveBooleanOperator.add_member(:is_false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS_FALSE', traits: {"smithy.api#enumValue" => "IS_FALSE"}))
    ArchiveBooleanToEvaluate.add_member(:attribute, Types::ArchiveBooleanToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveBooleanEmailAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The name of the email attribute to evaluate.</p>"}))
    ArchiveBooleanToEvaluate.add_member(:unknown, Types::ArchiveBooleanToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ArchiveBooleanToEvaluate.type = Types::ArchiveBooleanToEvaluate
    ArchiveFilterCondition.add_member(:string_expression, Types::ArchiveFilterCondition::StringExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStringExpression, location_name: 'StringExpression', traits: {"smithy.api#documentation" => "<p>A string expression to evaluate against email attributes.</p>"}))
    ArchiveFilterCondition.add_member(:boolean_expression, Types::ArchiveFilterCondition::BooleanExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveBooleanExpression, location_name: 'BooleanExpression', traits: {"smithy.api#documentation" => "<p>A boolean expression to evaluate against email attributes.</p>"}))
    ArchiveFilterCondition.add_member(:unknown, Types::ArchiveFilterCondition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ArchiveFilterCondition.type = Types::ArchiveFilterCondition
    ArchiveFilterConditions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveFilterCondition)
    ArchiveFilters.add_member(:include, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveFilterConditions, location_name: 'Include', traits: {"smithy.api#documentation" => "<p>The filter conditions for emails to include.</p>"}))
    ArchiveFilters.add_member(:unless, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveFilterConditions, location_name: 'Unless', traits: {"smithy.api#documentation" => "<p>The filter conditions for emails to exclude.</p>"}))
    ArchiveFilters.type = Types::ArchiveFilters
    ArchiveRetention.add_member(:retention_period, Types::ArchiveRetention::RetentionPeriod, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>The enum value sets the period for retaining emails in an archive.</p>"}))
    ArchiveRetention.add_member(:unknown, Types::ArchiveRetention::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ArchiveRetention.type = Types::ArchiveRetention
    ArchiveState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ArchiveState.add_member(:pending_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DELETION', traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    ArchiveStringEmailAttribute.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TO', traits: {"smithy.api#enumValue" => "TO"}))
    ArchiveStringEmailAttribute.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FROM', traits: {"smithy.api#enumValue" => "FROM"}))
    ArchiveStringEmailAttribute.add_member(:cc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CC', traits: {"smithy.api#enumValue" => "CC"}))
    ArchiveStringEmailAttribute.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBJECT', traits: {"smithy.api#enumValue" => "SUBJECT"}))
    ArchiveStringEmailAttribute.add_member(:envelope_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENVELOPE_TO', traits: {"smithy.api#enumValue" => "ENVELOPE_TO"}))
    ArchiveStringEmailAttribute.add_member(:envelope_from, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENVELOPE_FROM', traits: {"smithy.api#enumValue" => "ENVELOPE_FROM"}))
    ArchiveStringExpression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStringToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The attribute of the email to evaluate.</p>", "smithy.api#required" => {}}))
    ArchiveStringExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStringOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The operator to use when evaluating the string values.</p>", "smithy.api#required" => {}}))
    ArchiveStringExpression.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The list of string values to evaluate the email attribute against.</p>", "smithy.api#required" => {}}))
    ArchiveStringExpression.type = Types::ArchiveStringExpression
    ArchiveStringOperator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ArchiveStringToEvaluate.add_member(:attribute, Types::ArchiveStringToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveStringEmailAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The name of the email attribute to evaluate.</p>"}))
    ArchiveStringToEvaluate.add_member(:unknown, Types::ArchiveStringToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ArchiveStringToEvaluate.type = Types::ArchiveStringToEvaluate
    ArchivesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Archive)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateAddonInstanceRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAddonInstanceRequest.add_member(:addon_subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscriptionId, location_name: 'AddonSubscriptionId', traits: {"smithy.api#documentation" => "<p>The unique ID of a previously created subscription that an Add On instance is created for. You can only have one instance per subscription.</p>", "smithy.api#required" => {}}))
    CreateAddonInstanceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for the resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateAddonInstanceRequest.type = Types::CreateAddonInstanceRequest
    CreateAddonInstanceResponse.add_member(:addon_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonInstanceId, location_name: 'AddonInstanceId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Add On instance created by this API.</p>", "smithy.api#required" => {}}))
    CreateAddonInstanceResponse.type = Types::CreateAddonInstanceResponse
    CreateAddonSubscriptionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAddonSubscriptionRequest.add_member(:addon_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonName, location_name: 'AddonName', traits: {"smithy.api#documentation" => "<p>The name of the Add On to subscribe to. You can only have one subscription for each Add On name.</p>", "smithy.api#required" => {}}))
    CreateAddonSubscriptionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for the resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateAddonSubscriptionRequest.type = Types::CreateAddonSubscriptionRequest
    CreateAddonSubscriptionResponse.add_member(:addon_subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscriptionId, location_name: 'AddonSubscriptionId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Add On subscription created by this API.</p>", "smithy.api#required" => {}}))
    CreateAddonSubscriptionResponse.type = Types::CreateAddonSubscriptionResponse
    CreateAddressListImportJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAddressListImportJobRequest.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the address list for importing addresses to.</p>", "smithy.api#required" => {}}))
    CreateAddressListImportJobRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the import job.</p>", "smithy.api#required" => {}}))
    CreateAddressListImportJobRequest.add_member(:import_data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDataFormat, location_name: 'ImportDataFormat', traits: {"smithy.api#documentation" => "<p>The format of the input for an import job.</p>", "smithy.api#required" => {}}))
    CreateAddressListImportJobRequest.type = Types::CreateAddressListImportJobRequest
    CreateAddressListImportJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the created import job.</p>", "smithy.api#required" => {}}))
    CreateAddressListImportJobResponse.add_member(:pre_signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: PreSignedUrl, location_name: 'PreSignedUrl', traits: {"smithy.api#documentation" => "<p>The pre-signed URL target for uploading the input file.</p>", "smithy.api#required" => {}}))
    CreateAddressListImportJobResponse.type = Types::CreateAddressListImportJobResponse
    CreateAddressListRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAddressListRequest.add_member(:address_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListName, location_name: 'AddressListName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the address list.</p>", "smithy.api#required" => {}}))
    CreateAddressListRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for the resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateAddressListRequest.type = Types::CreateAddressListRequest
    CreateAddressListResponse.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The identifier of the created address list.</p>", "smithy.api#required" => {}}))
    CreateAddressListResponse.type = Types::CreateAddressListResponse
    CreateArchiveRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique token Amazon SES uses to recognize retries of this request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateArchiveRequest.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveNameString, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>A unique name for the new archive.</p>", "smithy.api#required" => {}}))
    CreateArchiveRequest.add_member(:retention, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveRetention, location_name: 'Retention', traits: {"smithy.api#documentation" => "<p>The period for retaining emails in the archive before automatic deletion.</p>"}))
    CreateArchiveRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key for encrypting emails in the archive.</p>"}))
    CreateArchiveRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for the resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateArchiveRequest.type = Types::CreateArchiveRequest
    CreateArchiveResponse.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveIdString, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the newly created archive.</p>", "smithy.api#required" => {}}))
    CreateArchiveResponse.type = Types::CreateArchiveResponse
    CreateIngressPointRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateIngressPointRequest.add_member(:ingress_point_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointName, location_name: 'IngressPointName', traits: {"smithy.api#documentation" => "<p>A user friendly name for an ingress endpoint resource.</p>", "smithy.api#required" => {}}))
    CreateIngressPointRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the ingress endpoint to create.</p>", "smithy.api#required" => {}}))
    CreateIngressPointRequest.add_member(:rule_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetId, location_name: 'RuleSetId', traits: {"smithy.api#documentation" => "<p>The identifier of an existing rule set that you attach to an ingress endpoint resource.</p>", "smithy.api#required" => {}}))
    CreateIngressPointRequest.add_member(:traffic_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier of an existing traffic policy that you attach to an ingress endpoint resource.</p>", "smithy.api#required" => {}}))
    CreateIngressPointRequest.add_member(:ingress_point_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointConfiguration, location_name: 'IngressPointConfiguration', traits: {"smithy.api#documentation" => "<p>If you choose an Authenticated ingress endpoint, you must configure either an SMTP password or a secret ARN.</p>"}))
    CreateIngressPointRequest.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'NetworkConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the network configuration for the ingress point. This allows you to create an IPv4-only, Dual-Stack, or PrivateLink type of ingress point. If not specified, the default network type is IPv4-only. </p>"}))
    CreateIngressPointRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for the resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateIngressPointRequest.type = Types::CreateIngressPointRequest
    CreateIngressPointResponse.add_member(:ingress_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointId, location_name: 'IngressPointId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a previously created ingress endpoint.</p>", "smithy.api#required" => {}}))
    CreateIngressPointResponse.type = Types::CreateIngressPointResponse
    CreateRelayRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRelayRequest.add_member(:relay_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayName, location_name: 'RelayName', traits: {"smithy.api#documentation" => "<p>The unique name of the relay resource.</p>", "smithy.api#required" => {}}))
    CreateRelayRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The destination relay server address.</p>", "smithy.api#required" => {}}))
    CreateRelayRequest.add_member(:server_port, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayServerPort, location_name: 'ServerPort', traits: {"smithy.api#documentation" => "<p>The destination relay server port.</p>", "smithy.api#required" => {}}))
    CreateRelayRequest.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayAuthentication, location_name: 'Authentication', traits: {"smithy.api#documentation" => "<p>Authentication for the relay destination server—specify the secretARN where the SMTP credentials are stored.</p>", "smithy.api#required" => {}}))
    CreateRelayRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for the resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateRelayRequest.type = Types::CreateRelayRequest
    CreateRelayResponse.add_member(:relay_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayId, location_name: 'RelayId', traits: {"smithy.api#documentation" => "<p>A unique identifier of the created relay resource.</p>", "smithy.api#required" => {}}))
    CreateRelayResponse.type = Types::CreateRelayResponse
    CreateRuleSetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRuleSetRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the rule set.</p>", "smithy.api#required" => {}}))
    CreateRuleSetRequest.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>Conditional rules that are evaluated for determining actions on email.</p>", "smithy.api#required" => {}}))
    CreateRuleSetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for the resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateRuleSetRequest.type = Types::CreateRuleSetRequest
    CreateRuleSetResponse.add_member(:rule_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetId, location_name: 'RuleSetId', traits: {"smithy.api#documentation" => "<p>The identifier of the created rule set.</p>", "smithy.api#required" => {}}))
    CreateRuleSetResponse.type = Types::CreateRuleSetResponse
    CreateTrafficPolicyRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateTrafficPolicyRequest.add_member(:traffic_policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyName, location_name: 'TrafficPolicyName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the traffic policy resource.</p>", "smithy.api#required" => {}}))
    CreateTrafficPolicyRequest.add_member(:policy_statements, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatementList, location_name: 'PolicyStatements', traits: {"smithy.api#documentation" => "<p>Conditional statements for filtering email traffic.</p>", "smithy.api#required" => {}}))
    CreateTrafficPolicyRequest.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptAction, location_name: 'DefaultAction', traits: {"smithy.api#documentation" => "<p>Default action instructs the traﬃc policy to either Allow or Deny (block) messages that fall outside of (or not addressed by) the conditions of your policy statements</p>", "smithy.api#required" => {}}))
    CreateTrafficPolicyRequest.add_member(:max_message_size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxMessageSizeBytes, location_name: 'MaxMessageSizeBytes', traits: {"smithy.api#documentation" => "<p>The maximum message size in bytes of email which is allowed in by this traffic policy—anything larger will be blocked.</p>"}))
    CreateTrafficPolicyRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for the resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"}))
    CreateTrafficPolicyRequest.type = Types::CreateTrafficPolicyRequest
    CreateTrafficPolicyResponse.add_member(:traffic_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier of the traffic policy resource.</p>", "smithy.api#required" => {}}))
    CreateTrafficPolicyResponse.type = Types::CreateTrafficPolicyResponse
    DeleteAddonInstanceRequest.add_member(:addon_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonInstanceId, location_name: 'AddonInstanceId', traits: {"smithy.api#documentation" => "<p>The Add On instance ID to delete.</p>", "smithy.api#required" => {}}))
    DeleteAddonInstanceRequest.type = Types::DeleteAddonInstanceRequest
    DeleteAddonInstanceResponse.type = Types::DeleteAddonInstanceResponse
    DeleteAddonSubscriptionRequest.add_member(:addon_subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscriptionId, location_name: 'AddonSubscriptionId', traits: {"smithy.api#documentation" => "<p>The Add On subscription ID to delete.</p>", "smithy.api#required" => {}}))
    DeleteAddonSubscriptionRequest.type = Types::DeleteAddonSubscriptionRequest
    DeleteAddonSubscriptionResponse.type = Types::DeleteAddonSubscriptionResponse
    DeleteAddressListRequest.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The identifier of an existing address list resource to delete.</p>", "smithy.api#required" => {}}))
    DeleteAddressListRequest.type = Types::DeleteAddressListRequest
    DeleteAddressListResponse.type = Types::DeleteAddressListResponse
    DeleteArchiveRequest.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveIdString, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The identifier of the archive to delete.</p>", "smithy.api#required" => {}}))
    DeleteArchiveRequest.type = Types::DeleteArchiveRequest
    DeleteArchiveResponse.type = Types::DeleteArchiveResponse
    DeleteIngressPointRequest.add_member(:ingress_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointId, location_name: 'IngressPointId', traits: {"smithy.api#documentation" => "<p>The identifier of the ingress endpoint resource that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteIngressPointRequest.type = Types::DeleteIngressPointRequest
    DeleteIngressPointResponse.type = Types::DeleteIngressPointResponse
    DeleteRelayRequest.add_member(:relay_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayId, location_name: 'RelayId', traits: {"smithy.api#documentation" => "<p>The unique relay identifier.</p>", "smithy.api#required" => {}}))
    DeleteRelayRequest.type = Types::DeleteRelayRequest
    DeleteRelayResponse.type = Types::DeleteRelayResponse
    DeleteRuleSetRequest.add_member(:rule_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetId, location_name: 'RuleSetId', traits: {"smithy.api#documentation" => "<p>The identifier of an existing rule set resource to delete.</p>", "smithy.api#required" => {}}))
    DeleteRuleSetRequest.type = Types::DeleteRuleSetRequest
    DeleteRuleSetResponse.type = Types::DeleteRuleSetResponse
    DeleteTrafficPolicyRequest.add_member(:traffic_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier of the traffic policy that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteTrafficPolicyRequest.type = Types::DeleteTrafficPolicyRequest
    DeleteTrafficPolicyResponse.type = Types::DeleteTrafficPolicyResponse
    DeliverToMailboxAction.add_member(:action_failure_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: 'ActionFailurePolicy', traits: {"smithy.api#documentation" => "<p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the mailbox ARN is no longer valid.</p>"}))
    DeliverToMailboxAction.add_member(:mailbox_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NameOrArn, location_name: 'MailboxArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a WorkMail organization to deliver the email to.</p>", "smithy.api#required" => {}}))
    DeliverToMailboxAction.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role to use to execute this action. The role must have access to the workmail:DeliverToMailbox API.</p>", "smithy.api#required" => {}}))
    DeliverToMailboxAction.type = Types::DeliverToMailboxAction
    DeliverToQBusinessAction.add_member(:action_failure_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: 'ActionFailurePolicy', traits: {"smithy.api#documentation" => "<p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the specified application has been deleted or the role lacks necessary permissions to call the <code>qbusiness:BatchPutDocument</code> API.</p>"}))
    DeliverToQBusinessAction.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QBusinessApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application instance where the email content will be delivered.</p>", "smithy.api#required" => {}}))
    DeliverToQBusinessAction.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QBusinessIndexId, location_name: 'IndexId', traits: {"smithy.api#documentation" => "<p>The identifier of the knowledge base index within the Amazon Q Business application where the email content will be stored and indexed.</p>", "smithy.api#required" => {}}))
    DeliverToQBusinessAction.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Role to use while delivering to Amazon Q Business. This role must have access to the <code>qbusiness:BatchPutDocument</code> API for the given application and index.</p>", "smithy.api#required" => {}}))
    DeliverToQBusinessAction.type = Types::DeliverToQBusinessAction
    DeregisterMemberFromAddressListRequest.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the address list to remove the address from.</p>", "smithy.api#required" => {}}))
    DeregisterMemberFromAddressListRequest.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The address to be removed from the address list.</p>", "smithy.api#required" => {}}))
    DeregisterMemberFromAddressListRequest.type = Types::DeregisterMemberFromAddressListRequest
    DeregisterMemberFromAddressListResponse.type = Types::DeregisterMemberFromAddressListResponse
    DropAction.type = Types::DropAction
    EmailReceivedHeadersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Envelope.add_member(:helo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Helo', traits: {"smithy.api#documentation" => "<p>The HELO used by the host from which the email was received.</p>"}))
    Envelope.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'From', traits: {"smithy.api#documentation" => "<p>The RCPT FROM given by the host from which the email was received.</p>"}))
    Envelope.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'To', traits: {"smithy.api#documentation" => "<p>All SMTP TO entries given by the host from which the email was received.</p>"}))
    Envelope.type = Types::Envelope
    ExportDestinationConfiguration.add_member(:s3, Types::ExportDestinationConfiguration::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExportDestinationConfiguration, location_name: 'S3', traits: {"smithy.api#documentation" => "<p>Configuration for delivering to an Amazon S3 bucket.</p>"}))
    ExportDestinationConfiguration.add_member(:unknown, Types::ExportDestinationConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ExportDestinationConfiguration.type = Types::ExportDestinationConfiguration
    ExportState.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    ExportState.add_member(:preprocessing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPROCESSING', traits: {"smithy.api#enumValue" => "PREPROCESSING"}))
    ExportState.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    ExportState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExportState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportState.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ExportStatus.add_member(:submission_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'SubmissionTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the export job was submitted.</p>"}))
    ExportStatus.add_member(:completion_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CompletionTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the export job completed (if finished).</p>"}))
    ExportStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the export job.</p>"}))
    ExportStatus.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>An error message if the export job failed.</p>"}))
    ExportStatus.type = Types::ExportStatus
    ExportSummary.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportId, location_name: 'ExportId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the export job.</p>"}))
    ExportSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the export job.</p>"}))
    ExportSummary.type = Types::ExportSummary
    ExportSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSummary)
    GetAddonInstanceRequest.add_member(:addon_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonInstanceId, location_name: 'AddonInstanceId', traits: {"smithy.api#documentation" => "<p>The Add On instance ID to retrieve information for.</p>", "smithy.api#required" => {}}))
    GetAddonInstanceRequest.type = Types::GetAddonInstanceRequest
    GetAddonInstanceResponse.add_member(:addon_subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscriptionId, location_name: 'AddonSubscriptionId', traits: {"smithy.api#documentation" => "<p>The subscription ID associated to the instance.</p>"}))
    GetAddonInstanceResponse.add_member(:addon_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonName, location_name: 'AddonName', traits: {"smithy.api#documentation" => "<p>The name of the Add On provider associated to the subscription of the instance.</p>"}))
    GetAddonInstanceResponse.add_member(:addon_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonInstanceArn, location_name: 'AddonInstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Add On instance.</p>"}))
    GetAddonInstanceResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the Add On instance was created.</p>"}))
    GetAddonInstanceResponse.type = Types::GetAddonInstanceResponse
    GetAddonSubscriptionRequest.add_member(:addon_subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscriptionId, location_name: 'AddonSubscriptionId', traits: {"smithy.api#documentation" => "<p>The Add On subscription ID to retrieve information for.</p>", "smithy.api#required" => {}}))
    GetAddonSubscriptionRequest.type = Types::GetAddonSubscriptionRequest
    GetAddonSubscriptionResponse.add_member(:addon_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonName, location_name: 'AddonName', traits: {"smithy.api#documentation" => "<p>The name of the Add On for the subscription.</p>"}))
    GetAddonSubscriptionResponse.add_member(:addon_subscription_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscriptionArn, location_name: 'AddonSubscriptionArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the subscription.</p>"}))
    GetAddonSubscriptionResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the Add On subscription was created.</p>"}))
    GetAddonSubscriptionResponse.type = Types::GetAddonSubscriptionResponse
    GetAddressListImportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job that needs to be retrieved.</p>", "smithy.api#required" => {}}))
    GetAddressListImportJobRequest.type = Types::GetAddressListImportJobRequest
    GetAddressListImportJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job.</p>", "smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the import job.</p>", "smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the import job.</p>", "smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:pre_signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: PreSignedUrl, location_name: 'PreSignedUrl', traits: {"smithy.api#documentation" => "<p>The pre-signed URL target for uploading the input file.</p>", "smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:imported_items_count, Smithy::Schema::Shapes::ShapeRef.new(shape: JobItemsCount, location_name: 'ImportedItemsCount', traits: {"smithy.api#documentation" => "<p>The number of input addresses successfully imported into the address list.</p>"}))
    GetAddressListImportJobResponse.add_member(:failed_items_count, Smithy::Schema::Shapes::ShapeRef.new(shape: JobItemsCount, location_name: 'FailedItemsCount', traits: {"smithy.api#documentation" => "<p>The number of input addresses that failed to be imported into the address list.</p>"}))
    GetAddressListImportJobResponse.add_member(:import_data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDataFormat, location_name: 'ImportDataFormat', traits: {"smithy.api#documentation" => "<p>The format of the input for an import job.</p>", "smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the address list the import job was created for.</p>", "smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the import job was created.</p>", "smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:start_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the import job was started.</p>"}))
    GetAddressListImportJobResponse.add_member(:completed_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CompletedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the import job was completed.</p>"}))
    GetAddressListImportJobResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>The reason for failure of an import job.</p>"}))
    GetAddressListImportJobResponse.type = Types::GetAddressListImportJobResponse
    GetAddressListRequest.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The identifier of an existing address list resource to be retrieved.</p>", "smithy.api#required" => {}}))
    GetAddressListRequest.type = Types::GetAddressListRequest
    GetAddressListResponse.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The identifier of the address list resource.</p>", "smithy.api#required" => {}}))
    GetAddressListResponse.add_member(:address_list_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListArn, location_name: 'AddressListArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the address list resource.</p>", "smithy.api#required" => {}}))
    GetAddressListResponse.add_member(:address_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListName, location_name: 'AddressListName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the address list resource.</p>", "smithy.api#required" => {}}))
    GetAddressListResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The date of when then address list was created.</p>", "smithy.api#required" => {}}))
    GetAddressListResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The date of when the address list was last updated.</p>", "smithy.api#required" => {}}))
    GetAddressListResponse.type = Types::GetAddressListResponse
    GetArchiveExportRequest.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportId, location_name: 'ExportId', traits: {"smithy.api#documentation" => "<p>The identifier of the export job to get details for.</p>", "smithy.api#required" => {}}))
    GetArchiveExportRequest.type = Types::GetArchiveExportRequest
    GetArchiveExportResponse.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveId, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The identifier of the archive the email export was performed from.</p>"}))
    GetArchiveExportResponse.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The criteria used to filter emails included in the export.</p>"}))
    GetArchiveExportResponse.add_member(:from_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'FromTimestamp', traits: {"smithy.api#documentation" => "<p>The start of the timestamp range the exported emails cover.</p>"}))
    GetArchiveExportResponse.add_member(:to_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ToTimestamp', traits: {"smithy.api#documentation" => "<p>The end of the date range the exported emails cover.</p>"}))
    GetArchiveExportResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of email items included in the export.</p>"}))
    GetArchiveExportResponse.add_member(:export_destination_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDestinationConfiguration, location_name: 'ExportDestinationConfiguration', traits: {"smithy.api#documentation" => "<p>Where the exported emails are being delivered.</p>"}))
    GetArchiveExportResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the export job.</p>"}))
    GetArchiveExportResponse.type = Types::GetArchiveExportResponse
    GetArchiveMessageContentRequest.add_member(:archived_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchivedMessageId, location_name: 'ArchivedMessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the archived email message.</p>", "smithy.api#required" => {}}))
    GetArchiveMessageContentRequest.type = Types::GetArchiveMessageContentRequest
    GetArchiveMessageContentResponse.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The textual body content of the email message.</p>"}))
    GetArchiveMessageContentResponse.type = Types::GetArchiveMessageContentResponse
    GetArchiveMessageRequest.add_member(:archived_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchivedMessageId, location_name: 'ArchivedMessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the archived email message.</p>", "smithy.api#required" => {}}))
    GetArchiveMessageRequest.type = Types::GetArchiveMessageRequest
    GetArchiveMessageResponse.add_member(:message_download_link, Smithy::Schema::Shapes::ShapeRef.new(shape: S3PresignedURL, location_name: 'MessageDownloadLink', traits: {"smithy.api#documentation" => "<p>A pre-signed URL to temporarily download the full message content.</p>"}))
    GetArchiveMessageResponse.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>The metadata about the email.</p>"}))
    GetArchiveMessageResponse.add_member(:envelope, Smithy::Schema::Shapes::ShapeRef.new(shape: Envelope, location_name: 'Envelope', traits: {"smithy.api#documentation" => "<p>The SMTP envelope information of the email.</p>"}))
    GetArchiveMessageResponse.type = Types::GetArchiveMessageResponse
    GetArchiveRequest.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveIdString, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The identifier of the archive to retrieve.</p>", "smithy.api#required" => {}}))
    GetArchiveRequest.type = Types::GetArchiveRequest
    GetArchiveResponse.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveIdString, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the archive.</p>", "smithy.api#required" => {}}))
    GetArchiveResponse.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveNameString, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>The unique name assigned to the archive.</p>", "smithy.api#required" => {}}))
    GetArchiveResponse.add_member(:archive_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'ArchiveArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the archive.</p>", "smithy.api#required" => {}}))
    GetArchiveResponse.add_member(:archive_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveState, location_name: 'ArchiveState', traits: {"smithy.api#documentation" => "<p>The current state of the archive:</p> <ul> <li> <p> <code>ACTIVE</code> – The archive is ready and available for use. </p> </li> <li> <p> <code>PENDING_DELETION</code> – The archive has been marked for deletion and will be permanently deleted in 30 days. No further modifications can be made in this state. </p> </li> </ul>", "smithy.api#required" => {}}))
    GetArchiveResponse.add_member(:retention, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveRetention, location_name: 'Retention', traits: {"smithy.api#documentation" => "<p>The retention period for emails in this archive.</p>", "smithy.api#required" => {}}))
    GetArchiveResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the archive was created.</p>"}))
    GetArchiveResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the archive was modified.</p>"}))
    GetArchiveResponse.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the archive.</p>"}))
    GetArchiveResponse.type = Types::GetArchiveResponse
    GetArchiveSearchRequest.add_member(:search_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchId, location_name: 'SearchId', traits: {"smithy.api#documentation" => "<p>The identifier of the search job to get details for.</p>", "smithy.api#required" => {}}))
    GetArchiveSearchRequest.type = Types::GetArchiveSearchRequest
    GetArchiveSearchResponse.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveId, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The identifier of the archive the email search was performed in.</p>"}))
    GetArchiveSearchResponse.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The criteria used to filter emails included in the search.</p>"}))
    GetArchiveSearchResponse.add_member(:from_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'FromTimestamp', traits: {"smithy.api#documentation" => "<p>The start timestamp of the range the searched emails cover.</p>"}))
    GetArchiveSearchResponse.add_member(:to_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ToTimestamp', traits: {"smithy.api#documentation" => "<p>The end timestamp of the range the searched emails cover.</p>"}))
    GetArchiveSearchResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of search results to return.</p>"}))
    GetArchiveSearchResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the search job.</p>"}))
    GetArchiveSearchResponse.type = Types::GetArchiveSearchResponse
    GetArchiveSearchResultsRequest.add_member(:search_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchId, location_name: 'SearchId', traits: {"smithy.api#documentation" => "<p>The identifier of the completed search job.</p>", "smithy.api#required" => {}}))
    GetArchiveSearchResultsRequest.type = Types::GetArchiveSearchResultsRequest
    GetArchiveSearchResultsResponse.add_member(:rows, Smithy::Schema::Shapes::ShapeRef.new(shape: RowsList, location_name: 'Rows', traits: {"smithy.api#documentation" => "<p>The list of email result objects matching the search criteria.</p>"}))
    GetArchiveSearchResultsResponse.type = Types::GetArchiveSearchResultsResponse
    GetIngressPointRequest.add_member(:ingress_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointId, location_name: 'IngressPointId', traits: {"smithy.api#documentation" => "<p>The identifier of an ingress endpoint.</p>", "smithy.api#required" => {}}))
    GetIngressPointRequest.type = Types::GetIngressPointRequest
    GetIngressPointResponse.add_member(:ingress_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointId, location_name: 'IngressPointId', traits: {"smithy.api#documentation" => "<p>The identifier of an ingress endpoint resource.</p>", "smithy.api#required" => {}}))
    GetIngressPointResponse.add_member(:ingress_point_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointName, location_name: 'IngressPointName', traits: {"smithy.api#documentation" => "<p>A user friendly name for the ingress endpoint.</p>", "smithy.api#required" => {}}))
    GetIngressPointResponse.add_member(:ingress_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointArn, location_name: 'IngressPointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the ingress endpoint resource.</p>"}))
    GetIngressPointResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the ingress endpoint resource.</p>"}))
    GetIngressPointResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of ingress endpoint.</p>"}))
    GetIngressPointResponse.add_member(:a_record, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointARecord, location_name: 'ARecord', traits: {"smithy.api#documentation" => "<p> The DNS A Record that identifies your ingress endpoint. Configure your DNS Mail Exchange (MX) record with this value to route emails to Mail Manager. </p>"}))
    GetIngressPointResponse.add_member(:rule_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetId, location_name: 'RuleSetId', traits: {"smithy.api#documentation" => "<p>The identifier of a rule set resource associated with the ingress endpoint.</p>"}))
    GetIngressPointResponse.add_member(:traffic_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier of the traffic policy resource associated with the ingress endpoint.</p>"}))
    GetIngressPointResponse.add_member(:ingress_point_auth_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointAuthConfiguration, location_name: 'IngressPointAuthConfiguration', traits: {"smithy.api#documentation" => "<p>The authentication configuration of the ingress endpoint resource.</p>"}))
    GetIngressPointResponse.add_member(:network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'NetworkConfiguration', traits: {"smithy.api#documentation" => "<p>The network configuration for the ingress point.</p>"}))
    GetIngressPointResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the ingress endpoint was created.</p>"}))
    GetIngressPointResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the ingress endpoint was last updated.</p>"}))
    GetIngressPointResponse.type = Types::GetIngressPointResponse
    GetMemberOfAddressListRequest.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the address list to retrieve the address from.</p>", "smithy.api#required" => {}}))
    GetMemberOfAddressListRequest.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The address to be retrieved from the address list.</p>", "smithy.api#required" => {}}))
    GetMemberOfAddressListRequest.type = Types::GetMemberOfAddressListRequest
    GetMemberOfAddressListResponse.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The address retrieved from the address list.</p>", "smithy.api#required" => {}}))
    GetMemberOfAddressListResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the address was created.</p>", "smithy.api#required" => {}}))
    GetMemberOfAddressListResponse.type = Types::GetMemberOfAddressListResponse
    GetRelayRequest.add_member(:relay_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayId, location_name: 'RelayId', traits: {"smithy.api#documentation" => "<p>A unique relay identifier.</p>", "smithy.api#required" => {}}))
    GetRelayRequest.type = Types::GetRelayRequest
    GetRelayResponse.add_member(:relay_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayId, location_name: 'RelayId', traits: {"smithy.api#documentation" => "<p>The unique relay identifier.</p>", "smithy.api#required" => {}}))
    GetRelayResponse.add_member(:relay_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayArn, location_name: 'RelayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the relay.</p>"}))
    GetRelayResponse.add_member(:relay_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayName, location_name: 'RelayName', traits: {"smithy.api#documentation" => "<p>The unique name of the relay.</p>"}))
    GetRelayResponse.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The destination relay server address.</p>"}))
    GetRelayResponse.add_member(:server_port, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayServerPort, location_name: 'ServerPort', traits: {"smithy.api#documentation" => "<p>The destination relay server port.</p>"}))
    GetRelayResponse.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayAuthentication, location_name: 'Authentication', traits: {"smithy.api#documentation" => "<p>The authentication attribute—contains the secret ARN where the customer relay server credentials are stored. </p>"}))
    GetRelayResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the relay was created.</p>"}))
    GetRelayResponse.add_member(:last_modified_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastModifiedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when relay was last updated.</p>"}))
    GetRelayResponse.type = Types::GetRelayResponse
    GetRuleSetRequest.add_member(:rule_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetId, location_name: 'RuleSetId', traits: {"smithy.api#documentation" => "<p>The identifier of an existing rule set to be retrieved.</p>", "smithy.api#required" => {}}))
    GetRuleSetRequest.type = Types::GetRuleSetRequest
    GetRuleSetResponse.add_member(:rule_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetId, location_name: 'RuleSetId', traits: {"smithy.api#documentation" => "<p>The identifier of the rule set resource.</p>", "smithy.api#required" => {}}))
    GetRuleSetResponse.add_member(:rule_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetArn, location_name: 'RuleSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule set resource.</p>", "smithy.api#required" => {}}))
    GetRuleSetResponse.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the rule set resource.</p>", "smithy.api#required" => {}}))
    GetRuleSetResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date of when then rule set was created.</p>", "smithy.api#required" => {}}))
    GetRuleSetResponse.add_member(:last_modification_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastModificationDate', traits: {"smithy.api#documentation" => "<p>The date of when the rule set was last modified.</p>", "smithy.api#required" => {}}))
    GetRuleSetResponse.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>The rules contained in the rule set.</p>", "smithy.api#required" => {}}))
    GetRuleSetResponse.type = Types::GetRuleSetResponse
    GetTrafficPolicyRequest.add_member(:traffic_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier of the traffic policy resource.</p>", "smithy.api#required" => {}}))
    GetTrafficPolicyRequest.type = Types::GetTrafficPolicyRequest
    GetTrafficPolicyResponse.add_member(:traffic_policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyName, location_name: 'TrafficPolicyName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the traffic policy resource.</p>", "smithy.api#required" => {}}))
    GetTrafficPolicyResponse.add_member(:traffic_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier of the traffic policy resource.</p>", "smithy.api#required" => {}}))
    GetTrafficPolicyResponse.add_member(:traffic_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyArn, location_name: 'TrafficPolicyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the traffic policy resource.</p>"}))
    GetTrafficPolicyResponse.add_member(:policy_statements, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatementList, location_name: 'PolicyStatements', traits: {"smithy.api#documentation" => "<p>The list of conditions which are in the traffic policy resource.</p>"}))
    GetTrafficPolicyResponse.add_member(:max_message_size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxMessageSizeBytes, location_name: 'MaxMessageSizeBytes', traits: {"smithy.api#documentation" => "<p>The maximum message size in bytes of email which is allowed in by this traffic policy—anything larger will be blocked.</p>"}))
    GetTrafficPolicyResponse.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptAction, location_name: 'DefaultAction', traits: {"smithy.api#documentation" => "<p>The default action of the traffic policy.</p>"}))
    GetTrafficPolicyResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the traffic policy was created.</p>"}))
    GetTrafficPolicyResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the traffic policy was last updated.</p>"}))
    GetTrafficPolicyResponse.type = Types::GetTrafficPolicyResponse
    ImportDataFormat.add_member(:import_data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDataType, location_name: 'ImportDataType', traits: {"smithy.api#documentation" => "<p>The type of file that would be passed as an input for the address list import job.</p>", "smithy.api#required" => {}}))
    ImportDataFormat.type = Types::ImportDataFormat
    ImportDataType.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    ImportDataType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    ImportJob.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job.</p>", "smithy.api#required" => {}}))
    ImportJob.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the import job.</p>", "smithy.api#required" => {}}))
    ImportJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the import job.</p>", "smithy.api#required" => {}}))
    ImportJob.add_member(:pre_signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: PreSignedUrl, location_name: 'PreSignedUrl', traits: {"smithy.api#documentation" => "<p>The pre-signed URL target for uploading the input file.</p>", "smithy.api#required" => {}}))
    ImportJob.add_member(:imported_items_count, Smithy::Schema::Shapes::ShapeRef.new(shape: JobItemsCount, location_name: 'ImportedItemsCount', traits: {"smithy.api#documentation" => "<p>The number of addresses in the input that were successfully imported into the address list.</p>"}))
    ImportJob.add_member(:failed_items_count, Smithy::Schema::Shapes::ShapeRef.new(shape: JobItemsCount, location_name: 'FailedItemsCount', traits: {"smithy.api#documentation" => "<p>The number of addresses in the input that failed to get imported into address list.</p>"}))
    ImportJob.add_member(:import_data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDataFormat, location_name: 'ImportDataFormat', traits: {"smithy.api#documentation" => "<p>The format of the input for the import job.</p>", "smithy.api#required" => {}}))
    ImportJob.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the address list the import job was created for.</p>", "smithy.api#required" => {}}))
    ImportJob.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the import job was created.</p>", "smithy.api#required" => {}}))
    ImportJob.add_member(:start_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the import job was started.</p>"}))
    ImportJob.add_member(:completed_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CompletedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the import job was completed.</p>"}))
    ImportJob.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>The reason for failure of an import job.</p>"}))
    ImportJob.type = Types::ImportJob
    ImportJobStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    ImportJobStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    ImportJobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ImportJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportJobStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    ImportJobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJob)
    IngressAddressListArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListArn)
    IngressAddressListEmailAttribute.add_member(:recipient, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECIPIENT', traits: {"smithy.api#enumValue" => "RECIPIENT"}))
    IngressAnalysis.add_member(:analyzer, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'Analyzer', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an Add On.</p>", "smithy.api#required" => {}}))
    IngressAnalysis.add_member(:result_field, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultField, location_name: 'ResultField', traits: {"smithy.api#documentation" => "<p>The returned value from an Add On.</p>", "smithy.api#required" => {}}))
    IngressAnalysis.type = Types::IngressAnalysis
    IngressBooleanExpression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressBooleanToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The operand on which to perform a boolean condition operation.</p>", "smithy.api#required" => {}}))
    IngressBooleanExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressBooleanOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The matching operator for a boolean condition expression.</p>", "smithy.api#required" => {}}))
    IngressBooleanExpression.type = Types::IngressBooleanExpression
    IngressBooleanOperator.add_member(:is_true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS_TRUE', traits: {"smithy.api#enumValue" => "IS_TRUE"}))
    IngressBooleanOperator.add_member(:is_false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS_FALSE', traits: {"smithy.api#enumValue" => "IS_FALSE"}))
    IngressBooleanToEvaluate.add_member(:analysis, Types::IngressBooleanToEvaluate::Analysis, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAnalysis, location_name: 'Analysis', traits: {"smithy.api#documentation" => "<p>The structure type for a boolean condition stating the Add On ARN and its returned value.</p>"}))
    IngressBooleanToEvaluate.add_member(:is_in_address_list, Types::IngressBooleanToEvaluate::IsInAddressList, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressIsInAddressList, location_name: 'IsInAddressList', traits: {"smithy.api#documentation" => "<p>The structure type for a boolean condition that provides the address lists to evaluate incoming traffic on.</p>"}))
    IngressBooleanToEvaluate.add_member(:unknown, Types::IngressBooleanToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IngressBooleanToEvaluate.type = Types::IngressBooleanToEvaluate
    IngressIpOperator.add_member(:cidr_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CIDR_MATCHES', traits: {"smithy.api#enumValue" => "CIDR_MATCHES"}))
    IngressIpOperator.add_member(:not_cidr_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CIDR_MATCHES', traits: {"smithy.api#enumValue" => "NOT_CIDR_MATCHES"}))
    IngressIpToEvaluate.add_member(:attribute, Types::IngressIpToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressIpv4Attribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>An enum type representing the allowed attribute types for an IP condition.</p>"}))
    IngressIpToEvaluate.add_member(:unknown, Types::IngressIpToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IngressIpToEvaluate.type = Types::IngressIpToEvaluate
    IngressIpv4Attribute.add_member(:sender_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENDER_IP', traits: {"smithy.api#enumValue" => "SENDER_IP"}))
    IngressIpv4Expression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressIpToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The left hand side argument of an IP condition expression.</p>", "smithy.api#required" => {}}))
    IngressIpv4Expression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressIpOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The matching operator for an IP condition expression.</p>", "smithy.api#required" => {}}))
    IngressIpv4Expression.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Cidrs, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The right hand side argument of an IP condition expression.</p>", "smithy.api#required" => {}}))
    IngressIpv4Expression.type = Types::IngressIpv4Expression
    IngressIpv6Attribute.add_member(:sender_ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENDER_IPV6', traits: {"smithy.api#enumValue" => "SENDER_IPV6"}))
    IngressIpv6Expression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressIpv6ToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The left hand side argument of an IPv6 condition expression.</p>", "smithy.api#required" => {}}))
    IngressIpv6Expression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressIpOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The matching operator for an IPv6 condition expression.</p>", "smithy.api#required" => {}}))
    IngressIpv6Expression.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Cidrs, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The right hand side argument of an IPv6 condition expression.</p>", "smithy.api#required" => {}}))
    IngressIpv6Expression.type = Types::IngressIpv6Expression
    IngressIpv6ToEvaluate.add_member(:attribute, Types::IngressIpv6ToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressIpv6Attribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>An enum type representing the allowed attribute types for an IPv6 condition.</p>"}))
    IngressIpv6ToEvaluate.add_member(:unknown, Types::IngressIpv6ToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IngressIpv6ToEvaluate.type = Types::IngressIpv6ToEvaluate
    IngressIsInAddressList.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAddressListEmailAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The email attribute that needs to be evaluated against the address list.</p>", "smithy.api#required" => {}}))
    IngressIsInAddressList.add_member(:address_lists, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAddressListArnList, location_name: 'AddressLists', traits: {"smithy.api#documentation" => "<p>The address lists that will be used for evaluation.</p>", "smithy.api#required" => {}}))
    IngressIsInAddressList.type = Types::IngressIsInAddressList
    IngressPoint.add_member(:ingress_point_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointName, location_name: 'IngressPointName', traits: {"smithy.api#documentation" => "<p>A user friendly name for the ingress endpoint resource.</p>", "smithy.api#required" => {}}))
    IngressPoint.add_member(:ingress_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointId, location_name: 'IngressPointId', traits: {"smithy.api#documentation" => "<p>The identifier of the ingress endpoint resource.</p>", "smithy.api#required" => {}}))
    IngressPoint.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the ingress endpoint resource.</p>", "smithy.api#required" => {}}))
    IngressPoint.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of ingress endpoint resource.</p>", "smithy.api#required" => {}}))
    IngressPoint.add_member(:a_record, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointARecord, location_name: 'ARecord', traits: {"smithy.api#documentation" => "<p> The DNS A Record that identifies your ingress endpoint. Configure your DNS Mail Exchange (MX) record with this value to route emails to Mail Manager. </p>"}))
    IngressPoint.type = Types::IngressPoint
    IngressPointAuthConfiguration.add_member(:ingress_point_password_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointPasswordConfiguration, location_name: 'IngressPointPasswordConfiguration', traits: {"smithy.api#documentation" => "<p>The ingress endpoint password configuration for the ingress endpoint resource.</p>"}))
    IngressPointAuthConfiguration.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The ingress endpoint SecretsManager::Secret ARN configuration for the ingress endpoint resource.</p>"}))
    IngressPointAuthConfiguration.type = Types::IngressPointAuthConfiguration
    IngressPointConfiguration.add_member(:smtp_password, Types::IngressPointConfiguration::SmtpPassword, Smithy::Schema::Shapes::ShapeRef.new(shape: SmtpPassword, location_name: 'SmtpPassword', traits: {"smithy.api#documentation" => "<p>The password of the ingress endpoint resource.</p>"}))
    IngressPointConfiguration.add_member(:secret_arn, Types::IngressPointConfiguration::SecretArn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The SecretsManager::Secret ARN of the ingress endpoint resource.</p>"}))
    IngressPointConfiguration.add_member(:unknown, Types::IngressPointConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IngressPointConfiguration.type = Types::IngressPointConfiguration
    IngressPointPasswordConfiguration.add_member(:smtp_password_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SmtpPasswordVersion', traits: {"smithy.api#documentation" => "<p>The current password expiry timestamp of the ingress endpoint resource.</p>"}))
    IngressPointPasswordConfiguration.add_member(:previous_smtp_password_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PreviousSmtpPasswordVersion', traits: {"smithy.api#documentation" => "<p>The previous password version of the ingress endpoint resource.</p>"}))
    IngressPointPasswordConfiguration.add_member(:previous_smtp_password_expiry_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'PreviousSmtpPasswordExpiryTimestamp', traits: {"smithy.api#documentation" => "<p>The previous password expiry timestamp of the ingress endpoint resource.</p>"}))
    IngressPointPasswordConfiguration.type = Types::IngressPointPasswordConfiguration
    IngressPointStatus.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    IngressPointStatus.add_member(:deprovisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPROVISIONING', traits: {"smithy.api#enumValue" => "DEPROVISIONING"}))
    IngressPointStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    IngressPointStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IngressPointStatus.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    IngressPointStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    IngressPointStatusToUpdate.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IngressPointStatusToUpdate.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    IngressPointType.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    IngressPointType.add_member(:auth, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTH', traits: {"smithy.api#enumValue" => "AUTH"}))
    IngressPointsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPoint)
    IngressStringEmailAttribute.add_member(:recipient, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECIPIENT', traits: {"smithy.api#enumValue" => "RECIPIENT"}))
    IngressStringExpression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressStringToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The left hand side argument of a string condition expression.</p>", "smithy.api#required" => {}}))
    IngressStringExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressStringOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The matching operator for a string condition expression.</p>", "smithy.api#required" => {}}))
    IngressStringExpression.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The right hand side argument of a string condition expression.</p>", "smithy.api#required" => {}}))
    IngressStringExpression.type = Types::IngressStringExpression
    IngressStringOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    IngressStringOperator.add_member(:not_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    IngressStringOperator.add_member(:starts_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTS_WITH', traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    IngressStringOperator.add_member(:ends_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDS_WITH', traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    IngressStringOperator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    IngressStringToEvaluate.add_member(:attribute, Types::IngressStringToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressStringEmailAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The enum type representing the allowed attribute types for a string condition.</p>"}))
    IngressStringToEvaluate.add_member(:analysis, Types::IngressStringToEvaluate::Analysis, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressAnalysis, location_name: 'Analysis', traits: {"smithy.api#documentation" => "<p>The structure type for a string condition stating the Add On ARN and its returned value.</p>"}))
    IngressStringToEvaluate.add_member(:unknown, Types::IngressStringToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IngressStringToEvaluate.type = Types::IngressStringToEvaluate
    IngressTlsAttribute.add_member(:tls_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS_PROTOCOL', traits: {"smithy.api#enumValue" => "TLS_PROTOCOL"}))
    IngressTlsProtocolAttribute.add_member(:tls1_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS1_2', traits: {"smithy.api#enumValue" => "TLS1_2"}))
    IngressTlsProtocolAttribute.add_member(:tls1_3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS1_3', traits: {"smithy.api#enumValue" => "TLS1_3"}))
    IngressTlsProtocolExpression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressTlsProtocolToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The left hand side argument of a TLS condition expression.</p>", "smithy.api#required" => {}}))
    IngressTlsProtocolExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressTlsProtocolOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The matching operator for a TLS condition expression.</p>", "smithy.api#required" => {}}))
    IngressTlsProtocolExpression.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressTlsProtocolAttribute, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The right hand side argument of a TLS condition expression.</p>", "smithy.api#required" => {}}))
    IngressTlsProtocolExpression.type = Types::IngressTlsProtocolExpression
    IngressTlsProtocolOperator.add_member(:minimum_tls_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINIMUM_TLS_VERSION', traits: {"smithy.api#enumValue" => "MINIMUM_TLS_VERSION"}))
    IngressTlsProtocolOperator.add_member(:is, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS', traits: {"smithy.api#enumValue" => "IS"}))
    IngressTlsProtocolToEvaluate.add_member(:attribute, Types::IngressTlsProtocolToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressTlsAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The enum type representing the allowed attribute types for the TLS condition.</p>"}))
    IngressTlsProtocolToEvaluate.add_member(:unknown, Types::IngressTlsProtocolToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IngressTlsProtocolToEvaluate.type = Types::IngressTlsProtocolToEvaluate
    IpType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    IpType.add_member(:dual_stack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUAL_STACK', traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    Ipv4Cidrs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Cidr)
    Ipv6Cidrs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Cidr)
    ListAddonInstancesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>"}))
    ListAddonInstancesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of ingress endpoint resources that are returned per call. You can use NextToken to obtain further ingress endpoints. </p>"}))
    ListAddonInstancesRequest.type = Types::ListAddonInstancesRequest
    ListAddonInstancesResponse.add_member(:addon_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonInstances, location_name: 'AddonInstances', traits: {"smithy.api#documentation" => "<p>The list of ingress endpoints.</p>"}))
    ListAddonInstancesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListAddonInstancesResponse.type = Types::ListAddonInstancesResponse
    ListAddonSubscriptionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>"}))
    ListAddonSubscriptionsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of ingress endpoint resources that are returned per call. You can use NextToken to obtain further ingress endpoints. </p>"}))
    ListAddonSubscriptionsRequest.type = Types::ListAddonSubscriptionsRequest
    ListAddonSubscriptionsResponse.add_member(:addon_subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: AddonSubscriptions, location_name: 'AddonSubscriptions', traits: {"smithy.api#documentation" => "<p>The list of ingress endpoints.</p>"}))
    ListAddonSubscriptionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListAddonSubscriptionsResponse.type = Types::ListAddonSubscriptionsResponse
    ListAddressListImportJobsRequest.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the address list for listing import jobs.</p>", "smithy.api#required" => {}}))
    ListAddressListImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>"}))
    ListAddressListImportJobsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of import jobs that are returned per call. You can use NextToken to retrieve the next page of jobs.</p>"}))
    ListAddressListImportJobsRequest.type = Types::ListAddressListImportJobsRequest
    ListAddressListImportJobsResponse.add_member(:import_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobs, location_name: 'ImportJobs', traits: {"smithy.api#documentation" => "<p>The list of import jobs.</p>", "smithy.api#required" => {}}))
    ListAddressListImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListAddressListImportJobsResponse.type = Types::ListAddressListImportJobsResponse
    ListAddressListsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>"}))
    ListAddressListsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of address list resources that are returned per call. You can use NextToken to retrieve the next page of address lists.</p>"}))
    ListAddressListsRequest.type = Types::ListAddressListsRequest
    ListAddressListsResponse.add_member(:address_lists, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLists, location_name: 'AddressLists', traits: {"smithy.api#documentation" => "<p>The list of address lists.</p>", "smithy.api#required" => {}}))
    ListAddressListsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListAddressListsResponse.type = Types::ListAddressListsResponse
    ListArchiveExportsRequest.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveId, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The identifier of the archive.</p>", "smithy.api#required" => {}}))
    ListArchiveExportsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. </p>"}))
    ListArchiveExportsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of archive export jobs that are returned per call. You can use NextToken to obtain further pages of archives. </p>"}))
    ListArchiveExportsRequest.type = Types::ListArchiveExportsRequest
    ListArchiveExportsResponse.add_member(:exports, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSummaryList, location_name: 'Exports', traits: {"smithy.api#documentation" => "<p>The list of export job identifiers and statuses.</p>"}))
    ListArchiveExportsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, use to retrieve the next page of results.</p>"}))
    ListArchiveExportsResponse.type = Types::ListArchiveExportsResponse
    ListArchiveSearchesRequest.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveId, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The identifier of the archive.</p>", "smithy.api#required" => {}}))
    ListArchiveSearchesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. </p>"}))
    ListArchiveSearchesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of archive search jobs that are returned per call. You can use NextToken to obtain further pages of archives. </p>"}))
    ListArchiveSearchesRequest.type = Types::ListArchiveSearchesRequest
    ListArchiveSearchesResponse.add_member(:searches, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSummaryList, location_name: 'Searches', traits: {"smithy.api#documentation" => "<p>The list of search job identifiers and statuses.</p>"}))
    ListArchiveSearchesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, use to retrieve the next page of results.</p>"}))
    ListArchiveSearchesResponse.type = Types::ListArchiveSearchesResponse
    ListArchivesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. </p>"}))
    ListArchivesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of archives that are returned per call. You can use NextToken to obtain further pages of archives. </p>"}))
    ListArchivesRequest.type = Types::ListArchivesRequest
    ListArchivesResponse.add_member(:archives, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchivesList, location_name: 'Archives', traits: {"smithy.api#documentation" => "<p>The list of archive details.</p>", "smithy.api#required" => {}}))
    ListArchivesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, use to retrieve the next page of results.</p>"}))
    ListArchivesResponse.type = Types::ListArchivesResponse
    ListIngressPointsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of ingress endpoint resources that are returned per call. You can use NextToken to obtain further ingress endpoints.</p>"}))
    ListIngressPointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>"}))
    ListIngressPointsRequest.type = Types::ListIngressPointsRequest
    ListIngressPointsResponse.add_member(:ingress_points, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointsList, location_name: 'IngressPoints', traits: {"smithy.api#documentation" => "<p>The list of ingress endpoints.</p>"}))
    ListIngressPointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListIngressPointsResponse.type = Types::ListIngressPointsResponse
    ListMembersOfAddressListRequest.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the address list to list the addresses from.</p>", "smithy.api#required" => {}}))
    ListMembersOfAddressListRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filter to be used to limit the results.</p>"}))
    ListMembersOfAddressListRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>"}))
    ListMembersOfAddressListRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressPageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of address list members that are returned per call. You can use NextToken to retrieve the next page of members.</p>"}))
    ListMembersOfAddressListRequest.type = Types::ListMembersOfAddressListRequest
    ListMembersOfAddressListResponse.add_member(:addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: SavedAddresses, location_name: 'Addresses', traits: {"smithy.api#documentation" => "<p>The list of addresses.</p>", "smithy.api#required" => {}}))
    ListMembersOfAddressListResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListMembersOfAddressListResponse.type = Types::ListMembersOfAddressListResponse
    ListRelaysRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of relays to be returned in one request.</p>"}))
    ListRelaysRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>"}))
    ListRelaysRequest.type = Types::ListRelaysRequest
    ListRelaysResponse.add_member(:relays, Smithy::Schema::Shapes::ShapeRef.new(shape: Relays, location_name: 'Relays', traits: {"smithy.api#documentation" => "<p>The list of returned relays.</p>", "smithy.api#required" => {}}))
    ListRelaysResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListRelaysResponse.type = Types::ListRelaysResponse
    ListRuleSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>"}))
    ListRuleSetsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of rule set resources that are returned per call. You can use NextToken to obtain further rule sets.</p>"}))
    ListRuleSetsRequest.type = Types::ListRuleSetsRequest
    ListRuleSetsResponse.add_member(:rule_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSets, location_name: 'RuleSets', traits: {"smithy.api#documentation" => "<p>The list of rule sets.</p>", "smithy.api#required" => {}}))
    ListRuleSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListRuleSetsResponse.type = Types::ListRuleSetsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to retrieve tags from.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags used to organize, track, or control access for the resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTrafficPoliciesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of traffic policy resources that are returned per call. You can use NextToken to obtain further traffic policies.</p>"}))
    ListTrafficPoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>"}))
    ListTrafficPoliciesRequest.type = Types::ListTrafficPoliciesRequest
    ListTrafficPoliciesResponse.add_member(:traffic_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyList, location_name: 'TrafficPolicies', traits: {"smithy.api#documentation" => "<p>The list of traffic policies.</p>"}))
    ListTrafficPoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>"}))
    ListTrafficPoliciesResponse.type = Types::ListTrafficPoliciesResponse
    MailFrom.add_member(:replace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE', traits: {"smithy.api#enumValue" => "REPLACE"}))
    MailFrom.add_member(:preserve, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESERVE', traits: {"smithy.api#enumValue" => "PRESERVE"}))
    MessageBody.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The plain text body content of the message.</p>"}))
    MessageBody.add_member(:html, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Html', traits: {"smithy.api#documentation" => "<p>The HTML body content of the message.</p>"}))
    MessageBody.add_member(:message_malformed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'MessageMalformed', traits: {"smithy.api#documentation" => "<p>A flag indicating if the email was malformed.</p>"}))
    MessageBody.type = Types::MessageBody
    Metadata.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the email was received.</p>"}))
    Metadata.add_member(:ingress_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointId, location_name: 'IngressPointId', traits: {"smithy.api#documentation" => "<p>The ID of the ingress endpoint through which the email was received.</p>"}))
    Metadata.add_member(:traffic_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#documentation" => "<p>The ID of the traffic policy that was in effect when the email was received.</p>"}))
    Metadata.add_member(:rule_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetId, location_name: 'RuleSetId', traits: {"smithy.api#documentation" => "<p>The ID of the rule set that processed the email.</p>"}))
    Metadata.add_member(:sender_hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SenderHostname', traits: {"smithy.api#documentation" => "<p>The name of the host from which the email was received.</p>"}))
    Metadata.add_member(:sender_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIpAddress, location_name: 'SenderIpAddress', traits: {"smithy.api#documentation" => "<p>The IP address of the host from which the email was received.</p>"}))
    Metadata.add_member(:tls_cipher_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'TlsCipherSuite', traits: {"smithy.api#documentation" => "<p>The TLS cipher suite used to communicate with the host from which the email was received.</p>"}))
    Metadata.add_member(:tls_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'TlsProtocol', traits: {"smithy.api#documentation" => "<p>The TLS protocol used to communicate with the host from which the email was received.</p>"}))
    Metadata.add_member(:sending_method, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SendingMethod', traits: {"smithy.api#documentation" => "<p>The name of the API call used when sent through a configuration set with archiving enabled.</p>"}))
    Metadata.add_member(:source_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SourceIdentity', traits: {"smithy.api#documentation" => "<p>The identity name used to authorize the sending action when sent through a configuration set with archiving enabled.</p>"}))
    Metadata.add_member(:sending_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SendingPool', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool used when sent through a configuration set with archiving enabled.</p>"}))
    Metadata.add_member(:configuration_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSet', traits: {"smithy.api#documentation" => "<p>The name of the configuration set used when sent through a configuration set with archiving enabled.</p>"}))
    Metadata.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>Specifies the archived email source, identified by either a Rule Set's ARN with an Archive action, or a Configuration Set's Archive ARN.</p>"}))
    Metadata.type = Types::Metadata
    NetworkConfiguration.add_member(:public_network_configuration, Types::NetworkConfiguration::PublicNetworkConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicNetworkConfiguration, location_name: 'PublicNetworkConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the network configuration for the public ingress point.</p>"}))
    NetworkConfiguration.add_member(:private_network_configuration, Types::NetworkConfiguration::PrivateNetworkConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateNetworkConfiguration, location_name: 'PrivateNetworkConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the network configuration for the private ingress point.</p>"}))
    NetworkConfiguration.add_member(:unknown, Types::NetworkConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    NetworkConfiguration.type = Types::NetworkConfiguration
    NoAuthentication.type = Types::NoAuthentication
    PolicyCondition.add_member(:string_expression, Types::PolicyCondition::StringExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressStringExpression, location_name: 'StringExpression', traits: {"smithy.api#documentation" => "<p>This represents a string based condition matching on the incoming mail. It performs the string operation configured in 'Operator' and evaluates the 'Protocol' object against the 'Value'.</p>"}))
    PolicyCondition.add_member(:ip_expression, Types::PolicyCondition::IpExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressIpv4Expression, location_name: 'IpExpression', traits: {"smithy.api#documentation" => "<p>This represents an IP based condition matching on the incoming mail. It performs the operation configured in 'Operator' and evaluates the 'Protocol' object against the 'Value'.</p>"}))
    PolicyCondition.add_member(:ipv6_expression, Types::PolicyCondition::Ipv6Expression, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressIpv6Expression, location_name: 'Ipv6Expression', traits: {"smithy.api#documentation" => "<p>This represents an IPv6 based condition matching on the incoming mail. It performs the operation configured in 'Operator' and evaluates the 'Protocol' object against the 'Value'.</p>"}))
    PolicyCondition.add_member(:tls_expression, Types::PolicyCondition::TlsExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressTlsProtocolExpression, location_name: 'TlsExpression', traits: {"smithy.api#documentation" => "<p>This represents a TLS based condition matching on the incoming mail. It performs the operation configured in 'Operator' and evaluates the 'Protocol' object against the 'Value'.</p>"}))
    PolicyCondition.add_member(:boolean_expression, Types::PolicyCondition::BooleanExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressBooleanExpression, location_name: 'BooleanExpression', traits: {"smithy.api#documentation" => "<p>This represents a boolean type condition matching on the incoming mail. It performs the boolean operation configured in 'Operator' and evaluates the 'Protocol' object against the 'Value'.</p>"}))
    PolicyCondition.add_member(:unknown, Types::PolicyCondition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PolicyCondition.type = Types::PolicyCondition
    PolicyConditions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyCondition)
    PolicyStatement.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyConditions, location_name: 'Conditions', traits: {"smithy.api#documentation" => "<p>The list of conditions to apply to incoming messages for filtering email traffic.</p>", "smithy.api#required" => {}}))
    PolicyStatement.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action that informs a traffic policy resource to either allow or block the email if it matches a condition in the policy statement.</p>", "smithy.api#required" => {}}))
    PolicyStatement.type = Types::PolicyStatement
    PolicyStatementList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatement)
    PrivateNetworkConfiguration.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The identifier of the VPC endpoint to associate with this private ingress point.</p>", "smithy.api#required" => {}}))
    PrivateNetworkConfiguration.type = Types::PrivateNetworkConfiguration
    PublicNetworkConfiguration.add_member(:ip_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpType, location_name: 'IpType', traits: {"smithy.api#default" => "IPV4", "smithy.api#documentation" => "<p>The IP address type for the public ingress point. Valid values are IPV4 and DUAL_STACK.</p>", "smithy.api#required" => {}}))
    PublicNetworkConfiguration.type = Types::PublicNetworkConfiguration
    Recipients.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress)
    RegisterMemberToAddressListRequest.add_member(:address_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListId, location_name: 'AddressListId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the address list where the address should be added.</p>", "smithy.api#required" => {}}))
    RegisterMemberToAddressListRequest.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The address to be added to the address list.</p>", "smithy.api#required" => {}}))
    RegisterMemberToAddressListRequest.type = Types::RegisterMemberToAddressListRequest
    RegisterMemberToAddressListResponse.type = Types::RegisterMemberToAddressListResponse
    Relay.add_member(:relay_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayId, location_name: 'RelayId', traits: {"smithy.api#documentation" => "<p>The unique relay identifier.</p>"}))
    Relay.add_member(:relay_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayName, location_name: 'RelayName', traits: {"smithy.api#documentation" => "<p>The unique relay name.</p>"}))
    Relay.add_member(:last_modified_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastModifiedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the relay was last modified.</p>"}))
    Relay.type = Types::Relay
    RelayAction.add_member(:action_failure_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: 'ActionFailurePolicy', traits: {"smithy.api#documentation" => "<p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the specified relay has been deleted.</p>"}))
    RelayAction.add_member(:relay, Smithy::Schema::Shapes::ShapeRef.new(shape: IdOrArn, location_name: 'Relay', traits: {"smithy.api#documentation" => "<p>The identifier of the relay resource to be used when relaying an email.</p>", "smithy.api#required" => {}}))
    RelayAction.add_member(:mail_from, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFrom, location_name: 'MailFrom', traits: {"smithy.api#documentation" => "<p>This action specifies whether to preserve or replace original mail from address while relaying received emails to a destination server.</p>"}))
    RelayAction.type = Types::RelayAction
    RelayAuthentication.add_member(:secret_arn, Types::RelayAuthentication::SecretArn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The ARN of the secret created in secrets manager where the relay server's SMTP credentials are stored.</p>"}))
    RelayAuthentication.add_member(:no_authentication, Types::RelayAuthentication::NoAuthentication, Smithy::Schema::Shapes::ShapeRef.new(shape: NoAuthentication, location_name: 'NoAuthentication', traits: {"smithy.api#documentation" => "<p>Keep an empty structure if the relay destination server does not require SMTP credential authentication.</p>"}))
    RelayAuthentication.add_member(:unknown, Types::RelayAuthentication::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RelayAuthentication.type = Types::RelayAuthentication
    Relays.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Relay)
    ReplaceRecipientAction.add_member(:replace_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Recipients, location_name: 'ReplaceWith', traits: {"smithy.api#documentation" => "<p>This action specifies the replacement recipient email addresses to insert.</p>"}))
    ReplaceRecipientAction.type = Types::ReplaceRecipientAction
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetentionPeriod.add_member(:three_months, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREE_MONTHS', traits: {"smithy.api#enumValue" => "THREE_MONTHS"}))
    RetentionPeriod.add_member(:six_months, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIX_MONTHS', traits: {"smithy.api#enumValue" => "SIX_MONTHS"}))
    RetentionPeriod.add_member(:nine_months, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NINE_MONTHS', traits: {"smithy.api#enumValue" => "NINE_MONTHS"}))
    RetentionPeriod.add_member(:one_year, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_YEAR', traits: {"smithy.api#enumValue" => "ONE_YEAR"}))
    RetentionPeriod.add_member(:eighteen_months, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EIGHTEEN_MONTHS', traits: {"smithy.api#enumValue" => "EIGHTEEN_MONTHS"}))
    RetentionPeriod.add_member(:two_years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TWO_YEARS', traits: {"smithy.api#enumValue" => "TWO_YEARS"}))
    RetentionPeriod.add_member(:thirty_months, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THIRTY_MONTHS', traits: {"smithy.api#enumValue" => "THIRTY_MONTHS"}))
    RetentionPeriod.add_member(:three_years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREE_YEARS', traits: {"smithy.api#enumValue" => "THREE_YEARS"}))
    RetentionPeriod.add_member(:four_years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOUR_YEARS', traits: {"smithy.api#enumValue" => "FOUR_YEARS"}))
    RetentionPeriod.add_member(:five_years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIVE_YEARS', traits: {"smithy.api#enumValue" => "FIVE_YEARS"}))
    RetentionPeriod.add_member(:six_years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIX_YEARS', traits: {"smithy.api#enumValue" => "SIX_YEARS"}))
    RetentionPeriod.add_member(:seven_years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEVEN_YEARS', traits: {"smithy.api#enumValue" => "SEVEN_YEARS"}))
    RetentionPeriod.add_member(:eight_years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EIGHT_YEARS', traits: {"smithy.api#enumValue" => "EIGHT_YEARS"}))
    RetentionPeriod.add_member(:nine_years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NINE_YEARS', traits: {"smithy.api#enumValue" => "NINE_YEARS"}))
    RetentionPeriod.add_member(:ten_years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEN_YEARS', traits: {"smithy.api#enumValue" => "TEN_YEARS"}))
    RetentionPeriod.add_member(:permanent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERMANENT', traits: {"smithy.api#enumValue" => "PERMANENT"}))
    Row.add_member(:archived_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchivedMessageId, location_name: 'ArchivedMessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the archived message.</p>"}))
    Row.add_member(:received_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ReceivedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the email was received.</p>"}))
    Row.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Date', traits: {"smithy.api#documentation" => "<p>The date the email was sent.</p>"}))
    Row.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'To', traits: {"smithy.api#documentation" => "<p>The email addresses in the To header.</p>"}))
    Row.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'From', traits: {"smithy.api#documentation" => "<p>The email address of the sender.</p>"}))
    Row.add_member(:cc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Cc', traits: {"smithy.api#documentation" => "<p>The email addresses in the CC header.</p>"}))
    Row.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject header value of the email.</p>"}))
    Row.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique message ID of the email.</p>"}))
    Row.add_member(:has_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'HasAttachments', traits: {"smithy.api#documentation" => "<p>A flag indicating if the email has attachments.</p>"}))
    Row.add_member(:received_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailReceivedHeadersList, location_name: 'ReceivedHeaders', traits: {"smithy.api#documentation" => "<p>The received headers from the email delivery path.</p>"}))
    Row.add_member(:in_reply_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'InReplyTo', traits: {"smithy.api#documentation" => "<p>The email message ID this is a reply to.</p>"}))
    Row.add_member(:x_mailer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'XMailer', traits: {"smithy.api#documentation" => "<p>The user agent that sent the email.</p>"}))
    Row.add_member(:x_original_mailer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'XOriginalMailer', traits: {"smithy.api#documentation" => "<p>The original user agent that sent the email.</p>"}))
    Row.add_member(:x_priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'XPriority', traits: {"smithy.api#documentation" => "<p>The priority level of the email.</p>"}))
    Row.add_member(:ingress_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointId, location_name: 'IngressPointId', traits: {"smithy.api#documentation" => "<p>The ID of the ingress endpoint through which the email was received.</p>"}))
    Row.add_member(:sender_hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SenderHostname', traits: {"smithy.api#documentation" => "<p>The name of the host from which the email was received.</p>"}))
    Row.add_member(:sender_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIpAddress, location_name: 'SenderIpAddress', traits: {"smithy.api#documentation" => "<ul> <li> <p>Mail archived with Mail Manager: The IP address of the client that connects to the ingress endpoint.</p> </li> <li> <p>Mail sent through a configuration set with the archiving option enabled: The IP address of the client that makes the SendEmail API call.</p> </li> </ul>"}))
    Row.add_member(:envelope, Smithy::Schema::Shapes::ShapeRef.new(shape: Envelope, location_name: 'Envelope', traits: {"smithy.api#documentation" => "<p>The SMTP envelope information of the email.</p>"}))
    Row.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>Specifies the archived email source, identified by either a Rule Set's ARN with an Archive action, or a Configuration Set's Archive ARN.</p>"}))
    Row.type = Types::Row
    RowsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Row)
    Rule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The user-friendly name of the rule.</p>"}))
    Rule.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConditions, location_name: 'Conditions', traits: {"smithy.api#documentation" => "<p>The conditions of this rule. All conditions must match the email for the actions to be executed. An empty list of conditions means that all emails match, but are still subject to any \"unless conditions\"</p>"}))
    Rule.add_member(:unless, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConditions, location_name: 'Unless', traits: {"smithy.api#documentation" => "<p>The \"unless conditions\" of this rule. None of the conditions can match the email for the actions to be executed. If any of these conditions do match the email, then the actions are not executed.</p>"}))
    Rule.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleActions, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The list of actions to execute when the conditions match the incoming email, and none of the \"unless conditions\" match.</p>", "smithy.api#required" => {}}))
    Rule.type = Types::Rule
    RuleAction.add_member(:drop, Types::RuleAction::Drop, Smithy::Schema::Shapes::ShapeRef.new(shape: DropAction, location_name: 'Drop', traits: {"smithy.api#documentation" => "<p>This action terminates the evaluation of rules in the rule set.</p>"}))
    RuleAction.add_member(:relay, Types::RuleAction::Relay, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayAction, location_name: 'Relay', traits: {"smithy.api#documentation" => "<p>This action relays the email to another SMTP server.</p>"}))
    RuleAction.add_member(:archive, Types::RuleAction::Archive, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveAction, location_name: 'Archive', traits: {"smithy.api#documentation" => "<p>This action archives the email. This can be used to deliver an email to an archive.</p>"}))
    RuleAction.add_member(:write_to_s3, Types::RuleAction::WriteToS3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Action, location_name: 'WriteToS3', traits: {"smithy.api#documentation" => "<p>This action writes the MIME content of the email to an S3 bucket.</p>"}))
    RuleAction.add_member(:send, Types::RuleAction::Send, Smithy::Schema::Shapes::ShapeRef.new(shape: SendAction, location_name: 'Send', traits: {"smithy.api#documentation" => "<p>This action sends the email to the internet.</p>"}))
    RuleAction.add_member(:add_header, Types::RuleAction::AddHeader, Smithy::Schema::Shapes::ShapeRef.new(shape: AddHeaderAction, location_name: 'AddHeader', traits: {"smithy.api#documentation" => "<p>This action adds a header. This can be used to add arbitrary email headers.</p>"}))
    RuleAction.add_member(:replace_recipient, Types::RuleAction::ReplaceRecipient, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplaceRecipientAction, location_name: 'ReplaceRecipient', traits: {"smithy.api#documentation" => "<p>The action replaces certain or all recipients with a different set of recipients.</p>"}))
    RuleAction.add_member(:deliver_to_mailbox, Types::RuleAction::DeliverToMailbox, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverToMailboxAction, location_name: 'DeliverToMailbox', traits: {"smithy.api#documentation" => "<p>This action delivers an email to a WorkMail mailbox.</p>"}))
    RuleAction.add_member(:deliver_to_q_business, Types::RuleAction::DeliverToQBusiness, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverToQBusinessAction, location_name: 'DeliverToQBusiness', traits: {"smithy.api#documentation" => "<p>This action delivers an email to an Amazon Q Business application for ingestion into its knowledge base.</p>"}))
    RuleAction.add_member(:publish_to_sns, Types::RuleAction::PublishToSns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsAction, location_name: 'PublishToSns', traits: {"smithy.api#documentation" => "<p>This action publishes the email content to an Amazon SNS topic.</p>"}))
    RuleAction.add_member(:unknown, Types::RuleAction::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuleAction.type = Types::RuleAction
    RuleActions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction)
    RuleAddressListArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AddressListArn)
    RuleAddressListEmailAttribute.add_member(:recipient, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECIPIENT', traits: {"smithy.api#enumValue" => "RECIPIENT"}))
    RuleAddressListEmailAttribute.add_member(:mail_from, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAIL_FROM', traits: {"smithy.api#enumValue" => "MAIL_FROM"}))
    RuleAddressListEmailAttribute.add_member(:sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENDER', traits: {"smithy.api#enumValue" => "SENDER"}))
    RuleAddressListEmailAttribute.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FROM', traits: {"smithy.api#enumValue" => "FROM"}))
    RuleAddressListEmailAttribute.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TO', traits: {"smithy.api#enumValue" => "TO"}))
    RuleAddressListEmailAttribute.add_member(:cc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CC', traits: {"smithy.api#enumValue" => "CC"}))
    RuleBooleanEmailAttribute.add_member(:read_receipt_requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_RECEIPT_REQUESTED', traits: {"smithy.api#enumValue" => "READ_RECEIPT_REQUESTED"}))
    RuleBooleanEmailAttribute.add_member(:tls, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS', traits: {"smithy.api#enumValue" => "TLS"}))
    RuleBooleanEmailAttribute.add_member(:tls_wrapped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS_WRAPPED', traits: {"smithy.api#enumValue" => "TLS_WRAPPED"}))
    RuleBooleanExpression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleBooleanToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The operand on which to perform a boolean condition operation.</p>", "smithy.api#required" => {}}))
    RuleBooleanExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleBooleanOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The matching operator for a boolean condition expression.</p>", "smithy.api#required" => {}}))
    RuleBooleanExpression.type = Types::RuleBooleanExpression
    RuleBooleanOperator.add_member(:is_true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS_TRUE', traits: {"smithy.api#enumValue" => "IS_TRUE"}))
    RuleBooleanOperator.add_member(:is_false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IS_FALSE', traits: {"smithy.api#enumValue" => "IS_FALSE"}))
    RuleBooleanToEvaluate.add_member(:attribute, Types::RuleBooleanToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleBooleanEmailAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The boolean type representing the allowed attribute types for an email.</p>"}))
    RuleBooleanToEvaluate.add_member(:analysis, Types::RuleBooleanToEvaluate::Analysis, Smithy::Schema::Shapes::ShapeRef.new(shape: Analysis, location_name: 'Analysis', traits: {"smithy.api#documentation" => "<p>The Add On ARN and its returned value to evaluate in a boolean condition expression.</p>"}))
    RuleBooleanToEvaluate.add_member(:is_in_address_list, Types::RuleBooleanToEvaluate::IsInAddressList, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIsInAddressList, location_name: 'IsInAddressList', traits: {"smithy.api#documentation" => "<p>The structure representing the address lists and address list attribute that will be used in evaluation of boolean expression.</p>"}))
    RuleBooleanToEvaluate.add_member(:unknown, Types::RuleBooleanToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuleBooleanToEvaluate.type = Types::RuleBooleanToEvaluate
    RuleCondition.add_member(:boolean_expression, Types::RuleCondition::BooleanExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleBooleanExpression, location_name: 'BooleanExpression', traits: {"smithy.api#documentation" => "<p>The condition applies to a boolean expression passed in this field.</p>"}))
    RuleCondition.add_member(:string_expression, Types::RuleCondition::StringExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStringExpression, location_name: 'StringExpression', traits: {"smithy.api#documentation" => "<p>The condition applies to a string expression passed in this field.</p>"}))
    RuleCondition.add_member(:number_expression, Types::RuleCondition::NumberExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNumberExpression, location_name: 'NumberExpression', traits: {"smithy.api#documentation" => "<p>The condition applies to a number expression passed in this field.</p>"}))
    RuleCondition.add_member(:ip_expression, Types::RuleCondition::IpExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIpExpression, location_name: 'IpExpression', traits: {"smithy.api#documentation" => "<p>The condition applies to an IP address expression passed in this field.</p>"}))
    RuleCondition.add_member(:verdict_expression, Types::RuleCondition::VerdictExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleVerdictExpression, location_name: 'VerdictExpression', traits: {"smithy.api#documentation" => "<p>The condition applies to a verdict expression passed in this field.</p>"}))
    RuleCondition.add_member(:dmarc_expression, Types::RuleCondition::DmarcExpression, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDmarcExpression, location_name: 'DmarcExpression', traits: {"smithy.api#documentation" => "<p>The condition applies to a DMARC policy expression passed in this field.</p>"}))
    RuleCondition.add_member(:unknown, Types::RuleCondition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuleCondition.type = Types::RuleCondition
    RuleConditions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCondition)
    RuleDmarcExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDmarcOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The operator to apply to the DMARC policy of the incoming email.</p>", "smithy.api#required" => {}}))
    RuleDmarcExpression.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDmarcValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The values to use for the given DMARC policy operator. For the operator EQUALS, if multiple values are given, they are evaluated as an OR. That is, if any of the given values match, the condition is deemed to match. For the operator NOT_EQUALS, if multiple values are given, they are evaluated as an AND. That is, only if the email's DMARC policy is not equal to any of the given values, then the condition is deemed to match.</p>", "smithy.api#required" => {}}))
    RuleDmarcExpression.type = Types::RuleDmarcExpression
    RuleDmarcOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    RuleDmarcOperator.add_member(:not_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    RuleDmarcPolicy.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    RuleDmarcPolicy.add_member(:quarantine, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUARANTINE', traits: {"smithy.api#enumValue" => "QUARANTINE"}))
    RuleDmarcPolicy.add_member(:reject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECT', traits: {"smithy.api#enumValue" => "REJECT"}))
    RuleDmarcValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDmarcPolicy)
    RuleIpEmailAttribute.add_member(:source_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_IP', traits: {"smithy.api#enumValue" => "SOURCE_IP"}))
    RuleIpExpression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIpToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The IP address to evaluate in this condition.</p>", "smithy.api#required" => {}}))
    RuleIpExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIpOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The operator to evaluate the IP address.</p>", "smithy.api#required" => {}}))
    RuleIpExpression.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIpValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The IP CIDR blocks in format \"x.y.z.w/n\" (eg 10.0.0.0/8) to match with the email's IP address. For the operator CIDR_MATCHES, if multiple values are given, they are evaluated as an OR. That is, if the IP address is contained within any of the given CIDR ranges, the condition is deemed to match. For NOT_CIDR_MATCHES, if multiple CIDR ranges are given, the condition is deemed to match if the IP address is not contained in any of the given CIDR ranges.</p>", "smithy.api#required" => {}}))
    RuleIpExpression.type = Types::RuleIpExpression
    RuleIpOperator.add_member(:cidr_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CIDR_MATCHES', traits: {"smithy.api#enumValue" => "CIDR_MATCHES"}))
    RuleIpOperator.add_member(:not_cidr_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CIDR_MATCHES', traits: {"smithy.api#enumValue" => "NOT_CIDR_MATCHES"}))
    RuleIpToEvaluate.add_member(:attribute, Types::RuleIpToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIpEmailAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The attribute of the email to evaluate.</p>"}))
    RuleIpToEvaluate.add_member(:unknown, Types::RuleIpToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuleIpToEvaluate.type = Types::RuleIpToEvaluate
    RuleIpValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIpStringValue)
    RuleIsInAddressList.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAddressListEmailAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The email attribute that needs to be evaluated against the address list.</p>", "smithy.api#required" => {}}))
    RuleIsInAddressList.add_member(:address_lists, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAddressListArnList, location_name: 'AddressLists', traits: {"smithy.api#documentation" => "<p>The address lists that will be used for evaluation.</p>", "smithy.api#required" => {}}))
    RuleIsInAddressList.type = Types::RuleIsInAddressList
    RuleNumberEmailAttribute.add_member(:message_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_SIZE', traits: {"smithy.api#enumValue" => "MESSAGE_SIZE"}))
    RuleNumberExpression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNumberToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The number to evaluate in a numeric condition expression.</p>", "smithy.api#required" => {}}))
    RuleNumberExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNumberOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The operator for a numeric condition expression.</p>", "smithy.api#required" => {}}))
    RuleNumberExpression.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value to evaluate in a numeric condition expression.</p>", "smithy.api#required" => {}}))
    RuleNumberExpression.type = Types::RuleNumberExpression
    RuleNumberOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    RuleNumberOperator.add_member(:not_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    RuleNumberOperator.add_member(:less_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    RuleNumberOperator.add_member(:greater_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    RuleNumberOperator.add_member(:less_than_or_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_OR_EQUAL', traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL"}))
    RuleNumberOperator.add_member(:greater_than_or_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUAL', traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    RuleNumberToEvaluate.add_member(:attribute, Types::RuleNumberToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNumberEmailAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>An email attribute that is used as the number to evaluate.</p>"}))
    RuleNumberToEvaluate.add_member(:unknown, Types::RuleNumberToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuleNumberToEvaluate.type = Types::RuleNumberToEvaluate
    RuleSet.add_member(:rule_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetId, location_name: 'RuleSetId', traits: {"smithy.api#documentation" => "<p>The identifier of the rule set.</p>"}))
    RuleSet.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the rule set.</p>"}))
    RuleSet.add_member(:last_modification_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastModificationDate', traits: {"smithy.api#documentation" => "<p>The last modification date of the rule set.</p>"}))
    RuleSet.type = Types::RuleSet
    RuleSets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSet)
    RuleStringEmailAttribute.add_member(:mail_from, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAIL_FROM', traits: {"smithy.api#enumValue" => "MAIL_FROM"}))
    RuleStringEmailAttribute.add_member(:helo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HELO', traits: {"smithy.api#enumValue" => "HELO"}))
    RuleStringEmailAttribute.add_member(:recipient, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECIPIENT', traits: {"smithy.api#enumValue" => "RECIPIENT"}))
    RuleStringEmailAttribute.add_member(:sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENDER', traits: {"smithy.api#enumValue" => "SENDER"}))
    RuleStringEmailAttribute.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FROM', traits: {"smithy.api#enumValue" => "FROM"}))
    RuleStringEmailAttribute.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBJECT', traits: {"smithy.api#enumValue" => "SUBJECT"}))
    RuleStringEmailAttribute.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TO', traits: {"smithy.api#enumValue" => "TO"}))
    RuleStringEmailAttribute.add_member(:cc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CC', traits: {"smithy.api#enumValue" => "CC"}))
    RuleStringExpression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStringToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The string to evaluate in a string condition expression.</p>", "smithy.api#required" => {}}))
    RuleStringExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStringOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The matching operator for a string condition expression.</p>", "smithy.api#required" => {}}))
    RuleStringExpression.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStringList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The string(s) to be evaluated in a string condition expression. For all operators, except for NOT_EQUALS, if multiple values are given, the values are processed as an OR. That is, if any of the values match the email's string using the given operator, the condition is deemed to match. However, for NOT_EQUALS, the condition is only deemed to match if none of the given strings match the email's string.</p>", "smithy.api#required" => {}}))
    RuleStringExpression.type = Types::RuleStringExpression
    RuleStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStringValue)
    RuleStringOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    RuleStringOperator.add_member(:not_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    RuleStringOperator.add_member(:starts_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTS_WITH', traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    RuleStringOperator.add_member(:ends_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDS_WITH', traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    RuleStringOperator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    RuleStringToEvaluate.add_member(:attribute, Types::RuleStringToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStringEmailAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The email attribute to evaluate in a string condition expression.</p>"}))
    RuleStringToEvaluate.add_member(:mime_header_attribute, Types::RuleStringToEvaluate::MimeHeaderAttribute, Smithy::Schema::Shapes::ShapeRef.new(shape: MimeHeaderAttribute, location_name: 'MimeHeaderAttribute', traits: {"smithy.api#documentation" => "<p>The email MIME X-Header attribute to evaluate in a string condition expression.</p>"}))
    RuleStringToEvaluate.add_member(:analysis, Types::RuleStringToEvaluate::Analysis, Smithy::Schema::Shapes::ShapeRef.new(shape: Analysis, location_name: 'Analysis', traits: {"smithy.api#documentation" => "<p>The Add On ARN and its returned value to evaluate in a string condition expression.</p>"}))
    RuleStringToEvaluate.add_member(:unknown, Types::RuleStringToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuleStringToEvaluate.type = Types::RuleStringToEvaluate
    RuleVerdict.add_member(:pass, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASS', traits: {"smithy.api#enumValue" => "PASS"}))
    RuleVerdict.add_member(:fail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL', traits: {"smithy.api#enumValue" => "FAIL"}))
    RuleVerdict.add_member(:gray, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRAY', traits: {"smithy.api#enumValue" => "GRAY"}))
    RuleVerdict.add_member(:processing_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING_FAILED', traits: {"smithy.api#enumValue" => "PROCESSING_FAILED"}))
    RuleVerdictAttribute.add_member(:spf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPF', traits: {"smithy.api#enumValue" => "SPF"}))
    RuleVerdictAttribute.add_member(:dkim, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DKIM', traits: {"smithy.api#enumValue" => "DKIM"}))
    RuleVerdictExpression.add_member(:evaluate, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleVerdictToEvaluate, location_name: 'Evaluate', traits: {"smithy.api#documentation" => "<p>The verdict to evaluate in a verdict condition expression.</p>", "smithy.api#required" => {}}))
    RuleVerdictExpression.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleVerdictOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The matching operator for a verdict condition expression.</p>", "smithy.api#required" => {}}))
    RuleVerdictExpression.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleVerdictValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The values to match with the email's verdict using the given operator. For the EQUALS operator, if multiple values are given, the condition is deemed to match if any of the given verdicts match that of the email. For the NOT_EQUALS operator, if multiple values are given, the condition is deemed to match of none of the given verdicts match the verdict of the email.</p>", "smithy.api#required" => {}}))
    RuleVerdictExpression.type = Types::RuleVerdictExpression
    RuleVerdictOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    RuleVerdictOperator.add_member(:not_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    RuleVerdictToEvaluate.add_member(:attribute, Types::RuleVerdictToEvaluate::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleVerdictAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The email verdict attribute to evaluate in a string verdict expression.</p>"}))
    RuleVerdictToEvaluate.add_member(:analysis, Types::RuleVerdictToEvaluate::Analysis, Smithy::Schema::Shapes::ShapeRef.new(shape: Analysis, location_name: 'Analysis', traits: {"smithy.api#documentation" => "<p>The Add On ARN and its returned value to evaluate in a verdict condition expression.</p>"}))
    RuleVerdictToEvaluate.add_member(:unknown, Types::RuleVerdictToEvaluate::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuleVerdictToEvaluate.type = Types::RuleVerdictToEvaluate
    RuleVerdictValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleVerdict)
    Rules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    S3Action.add_member(:action_failure_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: 'ActionFailurePolicy', traits: {"smithy.api#documentation" => "<p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the specified the bucket has been deleted.</p>"}))
    S3Action.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Role to use while writing to S3. This role must have access to the s3:PutObject, kms:Encrypt, and kms:GenerateDataKey APIs for the given bucket.</p>", "smithy.api#required" => {}}))
    S3Action.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p>The bucket name of the S3 bucket to write to.</p>", "smithy.api#required" => {}}))
    S3Action.add_member(:s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'S3Prefix', traits: {"smithy.api#documentation" => "<p>The S3 prefix to use for the write to the s3 bucket.</p>"}))
    S3Action.add_member(:s3_sse_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'S3SseKmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS Key ID to use to encrypt the message in S3.</p>"}))
    S3Action.type = Types::S3Action
    S3ExportDestinationConfiguration.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'S3Location', traits: {"smithy.api#documentation" => "<p>The S3 location to deliver the exported email data.</p>"}))
    S3ExportDestinationConfiguration.type = Types::S3ExportDestinationConfiguration
    SavedAddress.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The email or domain that constitutes the address.</p>", "smithy.api#required" => {}}))
    SavedAddress.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the address was added to the address list.</p>", "smithy.api#required" => {}}))
    SavedAddress.type = Types::SavedAddress
    SavedAddresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SavedAddress)
    SearchState.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    SearchState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    SearchState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    SearchState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SearchState.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    SearchStatus.add_member(:submission_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'SubmissionTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the search was submitted.</p>"}))
    SearchStatus.add_member(:completion_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CompletionTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the search completed (if finished).</p>"}))
    SearchStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the search job.</p>"}))
    SearchStatus.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>An error message if the search failed.</p>"}))
    SearchStatus.type = Types::SearchStatus
    SearchSummary.add_member(:search_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchId, location_name: 'SearchId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the search job.</p>"}))
    SearchSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the search job.</p>"}))
    SearchSummary.type = Types::SearchSummary
    SearchSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSummary)
    SendAction.add_member(:action_failure_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: 'ActionFailurePolicy', traits: {"smithy.api#documentation" => "<p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the caller does not have the permissions to call the sendRawEmail API.</p>"}))
    SendAction.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role to use for this action. This role must have access to the ses:SendRawEmail API.</p>", "smithy.api#required" => {}}))
    SendAction.type = Types::SendAction
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnsAction.add_member(:action_failure_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionFailurePolicy, location_name: 'ActionFailurePolicy', traits: {"smithy.api#documentation" => "<p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, specified SNS topic has been deleted or the role lacks necessary permissions to call the <code>sns:Publish</code> API.</p>"}))
    SnsAction.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS Topic to which notification for the email received will be published.</p>", "smithy.api#required" => {}}))
    SnsAction.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Role to use while writing to Amazon SNS. This role must have access to the <code>sns:Publish</code> API for the given topic.</p>", "smithy.api#required" => {}}))
    SnsAction.add_member(:encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsNotificationEncoding, location_name: 'Encoding', traits: {"smithy.api#default" => "UTF-8", "smithy.api#documentation" => "<p>The encoding to use for the email within the Amazon SNS notification. The default value is <code>UTF-8</code>. Use <code>BASE64</code> if you need to preserve all special characters, especially when the original message uses a different encoding format.</p>"}))
    SnsAction.add_member(:payload_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsNotificationPayloadType, location_name: 'PayloadType', traits: {"smithy.api#default" => "CONTENT", "smithy.api#documentation" => "<p>The expected payload type within the Amazon SNS notification. <code>CONTENT</code> attempts to publish the full email content with 20KB of headers content. <code>HEADERS</code> extracts up to 100KB of header content to include in the notification, email content will not be included to the notification. The default value is <code>CONTENT</code>.</p>"}))
    SnsAction.type = Types::SnsAction
    SnsNotificationEncoding.add_member(:utf_8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UTF_8', traits: {"smithy.api#enumValue" => "UTF-8"}))
    SnsNotificationEncoding.add_member(:base64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASE64', traits: {"smithy.api#enumValue" => "BASE64"}))
    SnsNotificationPayloadType.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEADERS', traits: {"smithy.api#enumValue" => "HEADERS"}))
    SnsNotificationPayloadType.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTENT', traits: {"smithy.api#enumValue" => "CONTENT"}))
    StartAddressListImportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job that needs to be started.</p>", "smithy.api#required" => {}}))
    StartAddressListImportJobRequest.type = Types::StartAddressListImportJobRequest
    StartAddressListImportJobResponse.type = Types::StartAddressListImportJobResponse
    StartArchiveExportRequest.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveId, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The identifier of the archive to export emails from.</p>", "smithy.api#required" => {}}))
    StartArchiveExportRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Criteria to filter which emails are included in the export.</p>"}))
    StartArchiveExportRequest.add_member(:from_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'FromTimestamp', traits: {"smithy.api#documentation" => "<p>The start of the timestamp range to include emails from.</p>", "smithy.api#required" => {}}))
    StartArchiveExportRequest.add_member(:to_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ToTimestamp', traits: {"smithy.api#documentation" => "<p>The end of the timestamp range to include emails from.</p>", "smithy.api#required" => {}}))
    StartArchiveExportRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of email items to include in the export.</p>"}))
    StartArchiveExportRequest.add_member(:export_destination_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDestinationConfiguration, location_name: 'ExportDestinationConfiguration', traits: {"smithy.api#documentation" => "<p>Details on where to deliver the exported email data.</p>", "smithy.api#required" => {}}))
    StartArchiveExportRequest.add_member(:include_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IncludeMetadata', traits: {"smithy.api#documentation" => "<p>Whether to include message metadata as JSON files in the export.</p>"}))
    StartArchiveExportRequest.type = Types::StartArchiveExportRequest
    StartArchiveExportResponse.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportId, location_name: 'ExportId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the initiated export job.</p>"}))
    StartArchiveExportResponse.type = Types::StartArchiveExportResponse
    StartArchiveSearchRequest.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveId, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The identifier of the archive to search emails in.</p>", "smithy.api#required" => {}}))
    StartArchiveSearchRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Criteria to filter which emails are included in the search results.</p>"}))
    StartArchiveSearchRequest.add_member(:from_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'FromTimestamp', traits: {"smithy.api#documentation" => "<p>The start timestamp of the range to search emails from.</p>", "smithy.api#required" => {}}))
    StartArchiveSearchRequest.add_member(:to_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ToTimestamp', traits: {"smithy.api#documentation" => "<p>The end timestamp of the range to search emails from.</p>", "smithy.api#required" => {}}))
    StartArchiveSearchRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of search results to return.</p>", "smithy.api#required" => {}}))
    StartArchiveSearchRequest.type = Types::StartArchiveSearchRequest
    StartArchiveSearchResponse.add_member(:search_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchId, location_name: 'SearchId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the initiated search job.</p>"}))
    StartArchiveSearchResponse.type = Types::StartArchiveSearchResponse
    StopAddressListImportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the import job that needs to be stopped.</p>", "smithy.api#required" => {}}))
    StopAddressListImportJobRequest.type = Types::StopAddressListImportJobRequest
    StopAddressListImportJobResponse.type = Types::StopAddressListImportJobResponse
    StopArchiveExportRequest.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportId, location_name: 'ExportId', traits: {"smithy.api#documentation" => "<p>The identifier of the export job to stop.</p>", "smithy.api#required" => {}}))
    StopArchiveExportRequest.type = Types::StopArchiveExportRequest
    StopArchiveExportResponse.type = Types::StopArchiveExportResponse
    StopArchiveSearchRequest.add_member(:search_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchId, location_name: 'SearchId', traits: {"smithy.api#documentation" => "<p>The identifier of the search job to stop.</p>", "smithy.api#required" => {}}))
    StopArchiveSearchRequest.type = Types::StopArchiveSearchRequest
    StopArchiveSearchResponse.type = Types::StopArchiveSearchResponse
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    StringValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the key-value tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the key-value tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the resource that you want to tag. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> The tags used to organize, track, or control access for the resource. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    TrafficPolicy.add_member(:traffic_policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyName, location_name: 'TrafficPolicyName', traits: {"smithy.api#documentation" => "<p>A user-friendly name of the traffic policy resource.</p>", "smithy.api#required" => {}}))
    TrafficPolicy.add_member(:traffic_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier of the traffic policy resource.</p>", "smithy.api#required" => {}}))
    TrafficPolicy.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptAction, location_name: 'DefaultAction', traits: {"smithy.api#documentation" => "<p>Default action instructs the traﬃc policy to either Allow or Deny (block) messages that fall outside of (or not addressed by) the conditions of your policy statements</p>", "smithy.api#required" => {}}))
    TrafficPolicy.type = Types::TrafficPolicy
    TrafficPolicyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicy)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the resource that you want to untag. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p> The keys of the key-value pairs for the tag or tags you want to remove from the specified resource. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateArchiveRequest.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveIdString, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The identifier of the archive to update.</p>", "smithy.api#required" => {}}))
    UpdateArchiveRequest.add_member(:archive_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveNameString, location_name: 'ArchiveName', traits: {"smithy.api#documentation" => "<p>A new, unique name for the archive.</p>"}))
    UpdateArchiveRequest.add_member(:retention, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveRetention, location_name: 'Retention', traits: {"smithy.api#documentation" => "<p>A new retention period for emails in the archive.</p>"}))
    UpdateArchiveRequest.type = Types::UpdateArchiveRequest
    UpdateArchiveResponse.type = Types::UpdateArchiveResponse
    UpdateIngressPointRequest.add_member(:ingress_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointId, location_name: 'IngressPointId', traits: {"smithy.api#documentation" => "<p>The identifier for the ingress endpoint you want to update.</p>", "smithy.api#required" => {}}))
    UpdateIngressPointRequest.add_member(:ingress_point_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointName, location_name: 'IngressPointName', traits: {"smithy.api#documentation" => "<p>A user friendly name for the ingress endpoint resource.</p>"}))
    UpdateIngressPointRequest.add_member(:status_to_update, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointStatusToUpdate, location_name: 'StatusToUpdate', traits: {"smithy.api#documentation" => "<p>The update status of an ingress endpoint.</p>"}))
    UpdateIngressPointRequest.add_member(:rule_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetId, location_name: 'RuleSetId', traits: {"smithy.api#documentation" => "<p>The identifier of an existing rule set that you attach to an ingress endpoint resource.</p>"}))
    UpdateIngressPointRequest.add_member(:traffic_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier of an existing traffic policy that you attach to an ingress endpoint resource.</p>"}))
    UpdateIngressPointRequest.add_member(:ingress_point_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IngressPointConfiguration, location_name: 'IngressPointConfiguration', traits: {"smithy.api#documentation" => "<p>If you choose an Authenticated ingress endpoint, you must configure either an SMTP password or a secret ARN.</p>"}))
    UpdateIngressPointRequest.type = Types::UpdateIngressPointRequest
    UpdateIngressPointResponse.type = Types::UpdateIngressPointResponse
    UpdateRelayRequest.add_member(:relay_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayId, location_name: 'RelayId', traits: {"smithy.api#documentation" => "<p>The unique relay identifier.</p>", "smithy.api#required" => {}}))
    UpdateRelayRequest.add_member(:relay_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayName, location_name: 'RelayName', traits: {"smithy.api#documentation" => "<p>The name of the relay resource.</p>"}))
    UpdateRelayRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The destination relay server address.</p>"}))
    UpdateRelayRequest.add_member(:server_port, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayServerPort, location_name: 'ServerPort', traits: {"smithy.api#documentation" => "<p>The destination relay server port.</p>"}))
    UpdateRelayRequest.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayAuthentication, location_name: 'Authentication', traits: {"smithy.api#documentation" => "<p>Authentication for the relay destination server—specify the secretARN where the SMTP credentials are stored.</p>"}))
    UpdateRelayRequest.type = Types::UpdateRelayRequest
    UpdateRelayResponse.type = Types::UpdateRelayResponse
    UpdateRuleSetRequest.add_member(:rule_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetId, location_name: 'RuleSetId', traits: {"smithy.api#documentation" => "<p>The identifier of a rule set you want to update.</p>", "smithy.api#required" => {}}))
    UpdateRuleSetRequest.add_member(:rule_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSetName, location_name: 'RuleSetName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the rule set resource.</p>"}))
    UpdateRuleSetRequest.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>A new set of rules to replace the current rules of the rule set—these rules will override all the rules of the rule set.</p>"}))
    UpdateRuleSetRequest.type = Types::UpdateRuleSetRequest
    UpdateRuleSetResponse.type = Types::UpdateRuleSetResponse
    UpdateTrafficPolicyRequest.add_member(:traffic_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier of the traffic policy that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateTrafficPolicyRequest.add_member(:traffic_policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyName, location_name: 'TrafficPolicyName', traits: {"smithy.api#documentation" => "<p>A user-friendly name for the traffic policy resource.</p>"}))
    UpdateTrafficPolicyRequest.add_member(:policy_statements, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatementList, location_name: 'PolicyStatements', traits: {"smithy.api#documentation" => "<p>The list of conditions to be updated for filtering email traffic.</p>"}))
    UpdateTrafficPolicyRequest.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptAction, location_name: 'DefaultAction', traits: {"smithy.api#documentation" => "<p>Default action instructs the traﬃc policy to either Allow or Deny (block) messages that fall outside of (or not addressed by) the conditions of your policy statements</p>"}))
    UpdateTrafficPolicyRequest.add_member(:max_message_size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxMessageSizeBytes, location_name: 'MaxMessageSizeBytes', traits: {"smithy.api#documentation" => "<p>The maximum message size in bytes of email which is allowed in by this traffic policy—anything larger will be blocked.</p>"}))
    UpdateTrafficPolicyRequest.type = Types::UpdateTrafficPolicyRequest
    UpdateTrafficPolicyResponse.type = Types::UpdateTrafficPolicyResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    MailManagerSvc = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mailmanager#MailManagerSvc"
      service.name = "MailManagerSvc"
      service.version = "2023-10-17"
      service.traits = {"aws.api#service" => {"sdkId" => "MailManager", "cloudFormationName" => "SES", "endpointPrefix" => "mail-manager", "arnNamespace" => "ses"}, "aws.auth#sigv4" => {"name" => "ses"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {}, "smithy.api#externalDocumentation" => {"API Reference" => "https://w.amazon.com/bin/view/AWS/Border"}, "smithy.api#title" => "MailManager"}
      service.add_operation(:create_addon_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateAddonInstance"
        operation.name = "CreateAddonInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddonInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddonInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_addon_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateAddonSubscription"
        operation.name = "CreateAddonSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddonSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddonSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_address_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateAddressList"
        operation.name = "CreateAddressList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddressListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddressListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_address_list_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateAddressListImportJob"
        operation.name = "CreateAddressListImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddressListImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddressListImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateArchive"
        operation.name = "CreateArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateArchiveRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateArchiveResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ingress_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateIngressPoint"
        operation.name = "CreateIngressPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIngressPointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIngressPointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_relay, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateRelay"
        operation.name = "CreateRelay"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRelayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRelayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateRuleSet"
        operation.name = "CreateRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_traffic_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateTrafficPolicy"
        operation.name = "CreateTrafficPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrafficPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrafficPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_addon_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteAddonInstance"
        operation.name = "DeleteAddonInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAddonInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAddonInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_addon_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteAddonSubscription"
        operation.name = "DeleteAddonSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAddonSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAddonSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_address_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteAddressList"
        operation.name = "DeleteAddressList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAddressListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAddressListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteArchive"
        operation.name = "DeleteArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteArchiveRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteArchiveResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ingress_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteIngressPoint"
        operation.name = "DeleteIngressPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIngressPointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIngressPointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_relay, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteRelay"
        operation.name = "DeleteRelay"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRelayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRelayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteRuleSet"
        operation.name = "DeleteRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_traffic_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteTrafficPolicy"
        operation.name = "DeleteTrafficPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrafficPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrafficPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_member_from_address_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeregisterMemberFromAddressList"
        operation.name = "DeregisterMemberFromAddressList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterMemberFromAddressListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterMemberFromAddressListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_addon_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetAddonInstance"
        operation.name = "GetAddonInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAddonInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAddonInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_addon_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetAddonSubscription"
        operation.name = "GetAddonSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAddonSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAddonSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_address_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetAddressList"
        operation.name = "GetAddressList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAddressListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAddressListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_address_list_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetAddressListImportJob"
        operation.name = "GetAddressListImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAddressListImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAddressListImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchive"
        operation.name = "GetArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchiveExport"
        operation.name = "GetArchiveExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_archive_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchiveMessage"
        operation.name = "GetArchiveMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive_message_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchiveMessageContent"
        operation.name = "GetArchiveMessageContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveMessageContentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveMessageContentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_archive_search, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchiveSearch"
        operation.name = "GetArchiveSearch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveSearchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveSearchResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive_search_results, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchiveSearchResults"
        operation.name = "GetArchiveSearchResults"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveSearchResultsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveSearchResultsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ingress_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetIngressPoint"
        operation.name = "GetIngressPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIngressPointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIngressPointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_member_of_address_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetMemberOfAddressList"
        operation.name = "GetMemberOfAddressList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemberOfAddressListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemberOfAddressListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_relay, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetRelay"
        operation.name = "GetRelay"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRelayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetRuleSet"
        operation.name = "GetRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_traffic_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetTrafficPolicy"
        operation.name = "GetTrafficPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrafficPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrafficPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_addon_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListAddonInstances"
        operation.name = "ListAddonInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddonInstancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddonInstancesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAddonInstances.new
      end)
      service.add_operation(:list_addon_subscriptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListAddonSubscriptions"
        operation.name = "ListAddonSubscriptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddonSubscriptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddonSubscriptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAddonSubscriptions.new
      end)
      service.add_operation(:list_address_list_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListAddressListImportJobs"
        operation.name = "ListAddressListImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddressListImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddressListImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAddressListImportJobs.new
      end)
      service.add_operation(:list_address_lists, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListAddressLists"
        operation.name = "ListAddressLists"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddressListsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddressListsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAddressLists.new
      end)
      service.add_operation(:list_archive_exports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListArchiveExports"
        operation.name = "ListArchiveExports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchiveExportsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchiveExportsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListArchiveExports.new
      end)
      service.add_operation(:list_archive_searches, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListArchiveSearches"
        operation.name = "ListArchiveSearches"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchiveSearchesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchiveSearchesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListArchiveSearches.new
      end)
      service.add_operation(:list_archives, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListArchives"
        operation.name = "ListArchives"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchivesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchivesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListArchives.new
      end)
      service.add_operation(:list_ingress_points, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListIngressPoints"
        operation.name = "ListIngressPoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIngressPointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIngressPointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIngressPoints.new
      end)
      service.add_operation(:list_members_of_address_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListMembersOfAddressList"
        operation.name = "ListMembersOfAddressList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersOfAddressListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersOfAddressListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMembersOfAddressList.new
      end)
      service.add_operation(:list_relays, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListRelays"
        operation.name = "ListRelays"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRelaysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRelaysResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRelays.new
      end)
      service.add_operation(:list_rule_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListRuleSets"
        operation.name = "ListRuleSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRuleSets.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_traffic_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListTrafficPolicies"
        operation.name = "ListTrafficPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrafficPolicies.new
      end)
      service.add_operation(:register_member_to_address_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#RegisterMemberToAddressList"
        operation.name = "RegisterMemberToAddressList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterMemberToAddressListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterMemberToAddressListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_address_list_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StartAddressListImportJob"
        operation.name = "StartAddressListImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAddressListImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAddressListImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_archive_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StartArchiveExport"
        operation.name = "StartArchiveExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartArchiveExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartArchiveExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_archive_search, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StartArchiveSearch"
        operation.name = "StartArchiveSearch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartArchiveSearchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartArchiveSearchResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_address_list_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StopAddressListImportJob"
        operation.name = "StopAddressListImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAddressListImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAddressListImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_archive_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StopArchiveExport"
        operation.name = "StopArchiveExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopArchiveExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopArchiveExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_archive_search, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StopArchiveSearch"
        operation.name = "StopArchiveSearch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopArchiveSearchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopArchiveSearchResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UpdateArchive"
        operation.name = "UpdateArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateArchiveRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateArchiveResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ingress_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UpdateIngressPoint"
        operation.name = "UpdateIngressPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIngressPointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIngressPointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_relay, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UpdateRelay"
        operation.name = "UpdateRelay"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRelayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRelayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UpdateRuleSet"
        operation.name = "UpdateRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_traffic_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UpdateTrafficPolicy"
        operation.name = "UpdateTrafficPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrafficPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrafficPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
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
