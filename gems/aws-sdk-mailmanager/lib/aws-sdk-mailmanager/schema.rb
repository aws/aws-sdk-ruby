# frozen_string_literal: true

# This is generated code!

module Aws::MailManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#AcceptAction", name: "AcceptAction")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActionFailurePolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#ActionFailurePolicy", name: "ActionFailurePolicy")
    AddHeaderAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#AddHeaderAction", name: "AddHeaderAction")
    AddonInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#AddonInstance", name: "AddonInstance")
    AddonInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#AddonInstanceArn", name: "AddonInstanceArn", traits: {"aws.api#arnReference" => {}})
    AddonInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#AddonInstanceId", name: "AddonInstanceId", traits: {"smithy.api#length" => {"min" => 4, "max" => 67}, "smithy.api#pattern" => "^ai-[a-zA-Z0-9]{1,64}$"})
    AddonInstances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#AddonInstances", name: "AddonInstances")
    AddonName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#AddonName", name: "AddonName")
    AddonSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#AddonSubscription", name: "AddonSubscription")
    AddonSubscriptionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#AddonSubscriptionArn", name: "AddonSubscriptionArn", traits: {"aws.api#arnReference" => {}})
    AddonSubscriptionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#AddonSubscriptionId", name: "AddonSubscriptionId", traits: {"smithy.api#length" => {"min" => 4, "max" => 67}, "smithy.api#pattern" => "^as-[a-zA-Z0-9]{1,64}$"})
    AddonSubscriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#AddonSubscriptions", name: "AddonSubscriptions")
    Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#Address", name: "Address", traits: {"smithy.api#length" => {"min" => 3, "max" => 320}, "smithy.api#sensitive" => {}})
    AddressFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#AddressFilter", name: "AddressFilter")
    AddressList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#AddressList", name: "AddressList")
    AddressListArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#AddressListArn", name: "AddressListArn", traits: {"aws.api#arnReference" => {"service" => "ses", "resource" => "com.amazon.pancetta.addresslist.management#AddressListResource"}})
    AddressListId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#AddressListId", name: "AddressListId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    AddressListName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#AddressListName", name: "AddressListName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    AddressLists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#AddressLists", name: "AddressLists")
    AddressPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mailmanager#AddressPageSize", name: "AddressPageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    AddressPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#AddressPrefix", name: "AddressPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#sensitive" => {}})
    Analysis = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#Analysis", name: "Analysis")
    AnalyzerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#AnalyzerArn", name: "AnalyzerArn", traits: {"aws.api#arnReference" => {}, "smithy.api#pattern" => "^[a-zA-Z0-9:_/+=,@.#-]+$"})
    Archive = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#Archive", name: "Archive")
    ArchiveAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ArchiveAction", name: "ArchiveAction")
    ArchiveArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#ArchiveArn", name: "ArchiveArn", traits: {"aws.api#arnReference" => {}})
    ArchiveBooleanEmailAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#ArchiveBooleanEmailAttribute", name: "ArchiveBooleanEmailAttribute")
    ArchiveBooleanExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ArchiveBooleanExpression", name: "ArchiveBooleanExpression")
    ArchiveBooleanOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#ArchiveBooleanOperator", name: "ArchiveBooleanOperator")
    ArchiveBooleanToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#ArchiveBooleanToEvaluate", name: "ArchiveBooleanToEvaluate")
    ArchiveFilterCondition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#ArchiveFilterCondition", name: "ArchiveFilterCondition")
    ArchiveFilterConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#ArchiveFilterConditions", name: "ArchiveFilterConditions", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ArchiveFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ArchiveFilters", name: "ArchiveFilters")
    ArchiveId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#ArchiveId", name: "ArchiveId", traits: {"smithy.api#length" => {"min" => 3, "max" => 66}, "smithy.api#pattern" => "^a-[\\w]{1,64}$"})
    ArchiveIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#ArchiveIdString", name: "ArchiveIdString", traits: {"smithy.api#length" => {"min" => 1, "max" => 66}})
    ArchiveNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#ArchiveNameString", name: "ArchiveNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*[a-zA-Z0-9]$"})
    ArchiveRetention = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#ArchiveRetention", name: "ArchiveRetention")
    ArchiveState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#ArchiveState", name: "ArchiveState")
    ArchiveStringEmailAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#ArchiveStringEmailAttribute", name: "ArchiveStringEmailAttribute")
    ArchiveStringExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ArchiveStringExpression", name: "ArchiveStringExpression")
    ArchiveStringOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#ArchiveStringOperator", name: "ArchiveStringOperator")
    ArchiveStringToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#ArchiveStringToEvaluate", name: "ArchiveStringToEvaluate")
    ArchivedMessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#ArchivedMessageId", name: "ArchivedMessageId")
    ArchivesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#ArchivesList", name: "ArchivesList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAddonInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateAddonInstanceRequest", name: "CreateAddonInstanceRequest")
    CreateAddonInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateAddonInstanceResponse", name: "CreateAddonInstanceResponse")
    CreateAddonSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateAddonSubscriptionRequest", name: "CreateAddonSubscriptionRequest")
    CreateAddonSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateAddonSubscriptionResponse", name: "CreateAddonSubscriptionResponse")
    CreateAddressListImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateAddressListImportJobRequest", name: "CreateAddressListImportJobRequest")
    CreateAddressListImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateAddressListImportJobResponse", name: "CreateAddressListImportJobResponse")
    CreateAddressListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateAddressListRequest", name: "CreateAddressListRequest")
    CreateAddressListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateAddressListResponse", name: "CreateAddressListResponse")
    CreateArchiveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateArchiveRequest", name: "CreateArchiveRequest")
    CreateArchiveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateArchiveResponse", name: "CreateArchiveResponse")
    CreateIngressPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateIngressPointRequest", name: "CreateIngressPointRequest")
    CreateIngressPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateIngressPointResponse", name: "CreateIngressPointResponse")
    CreateRelayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateRelayRequest", name: "CreateRelayRequest")
    CreateRelayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateRelayResponse", name: "CreateRelayResponse")
    CreateRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateRuleSetRequest", name: "CreateRuleSetRequest")
    CreateRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateRuleSetResponse", name: "CreateRuleSetResponse")
    CreateTrafficPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateTrafficPolicyRequest", name: "CreateTrafficPolicyRequest")
    CreateTrafficPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#CreateTrafficPolicyResponse", name: "CreateTrafficPolicyResponse")
    DeleteAddonInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteAddonInstanceRequest", name: "DeleteAddonInstanceRequest")
    DeleteAddonInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteAddonInstanceResponse", name: "DeleteAddonInstanceResponse")
    DeleteAddonSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteAddonSubscriptionRequest", name: "DeleteAddonSubscriptionRequest")
    DeleteAddonSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteAddonSubscriptionResponse", name: "DeleteAddonSubscriptionResponse")
    DeleteAddressListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteAddressListRequest", name: "DeleteAddressListRequest")
    DeleteAddressListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteAddressListResponse", name: "DeleteAddressListResponse")
    DeleteArchiveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteArchiveRequest", name: "DeleteArchiveRequest")
    DeleteArchiveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteArchiveResponse", name: "DeleteArchiveResponse")
    DeleteIngressPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteIngressPointRequest", name: "DeleteIngressPointRequest")
    DeleteIngressPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteIngressPointResponse", name: "DeleteIngressPointResponse")
    DeleteRelayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteRelayRequest", name: "DeleteRelayRequest")
    DeleteRelayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteRelayResponse", name: "DeleteRelayResponse")
    DeleteRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteRuleSetRequest", name: "DeleteRuleSetRequest")
    DeleteRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteRuleSetResponse", name: "DeleteRuleSetResponse")
    DeleteTrafficPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteTrafficPolicyRequest", name: "DeleteTrafficPolicyRequest")
    DeleteTrafficPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeleteTrafficPolicyResponse", name: "DeleteTrafficPolicyResponse")
    DeliverToMailboxAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeliverToMailboxAction", name: "DeliverToMailboxAction")
    DeliverToQBusinessAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeliverToQBusinessAction", name: "DeliverToQBusinessAction")
    DeregisterMemberFromAddressListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeregisterMemberFromAddressListRequest", name: "DeregisterMemberFromAddressListRequest")
    DeregisterMemberFromAddressListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DeregisterMemberFromAddressListResponse", name: "DeregisterMemberFromAddressListResponse")
    DropAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#DropAction", name: "DropAction")
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#EmailAddress", name: "EmailAddress", traits: {"smithy.api#length" => {"min" => 0, "max" => 254}, "smithy.api#pattern" => "^[a-zA-Z0-9._+-]+@[a-zA-Z0-9.-]+$", "smithy.api#sensitive" => {}})
    EmailReceivedHeadersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#EmailReceivedHeadersList", name: "EmailReceivedHeadersList")
    Envelope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#Envelope", name: "Envelope")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#ErrorMessage", name: "ErrorMessage")
    ExportDestinationConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#ExportDestinationConfiguration", name: "ExportDestinationConfiguration")
    ExportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#ExportId", name: "ExportId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ExportMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mailmanager#ExportMaxResults", name: "ExportMaxResults")
    ExportState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#ExportState", name: "ExportState")
    ExportStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ExportStatus", name: "ExportStatus")
    ExportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ExportSummary", name: "ExportSummary")
    ExportSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#ExportSummaryList", name: "ExportSummaryList")
    GetAddonInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetAddonInstanceRequest", name: "GetAddonInstanceRequest")
    GetAddonInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetAddonInstanceResponse", name: "GetAddonInstanceResponse")
    GetAddonSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetAddonSubscriptionRequest", name: "GetAddonSubscriptionRequest")
    GetAddonSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetAddonSubscriptionResponse", name: "GetAddonSubscriptionResponse")
    GetAddressListImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetAddressListImportJobRequest", name: "GetAddressListImportJobRequest")
    GetAddressListImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetAddressListImportJobResponse", name: "GetAddressListImportJobResponse")
    GetAddressListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetAddressListRequest", name: "GetAddressListRequest")
    GetAddressListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetAddressListResponse", name: "GetAddressListResponse")
    GetArchiveExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveExportRequest", name: "GetArchiveExportRequest")
    GetArchiveExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveExportResponse", name: "GetArchiveExportResponse")
    GetArchiveMessageContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveMessageContentRequest", name: "GetArchiveMessageContentRequest")
    GetArchiveMessageContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveMessageContentResponse", name: "GetArchiveMessageContentResponse")
    GetArchiveMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveMessageRequest", name: "GetArchiveMessageRequest")
    GetArchiveMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveMessageResponse", name: "GetArchiveMessageResponse")
    GetArchiveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveRequest", name: "GetArchiveRequest")
    GetArchiveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveResponse", name: "GetArchiveResponse")
    GetArchiveSearchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveSearchRequest", name: "GetArchiveSearchRequest")
    GetArchiveSearchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveSearchResponse", name: "GetArchiveSearchResponse")
    GetArchiveSearchResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveSearchResultsRequest", name: "GetArchiveSearchResultsRequest")
    GetArchiveSearchResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetArchiveSearchResultsResponse", name: "GetArchiveSearchResultsResponse")
    GetIngressPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetIngressPointRequest", name: "GetIngressPointRequest")
    GetIngressPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetIngressPointResponse", name: "GetIngressPointResponse")
    GetMemberOfAddressListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetMemberOfAddressListRequest", name: "GetMemberOfAddressListRequest")
    GetMemberOfAddressListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetMemberOfAddressListResponse", name: "GetMemberOfAddressListResponse")
    GetRelayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetRelayRequest", name: "GetRelayRequest")
    GetRelayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetRelayResponse", name: "GetRelayResponse")
    GetRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetRuleSetRequest", name: "GetRuleSetRequest")
    GetRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetRuleSetResponse", name: "GetRuleSetResponse")
    GetTrafficPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetTrafficPolicyRequest", name: "GetTrafficPolicyRequest")
    GetTrafficPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#GetTrafficPolicyResponse", name: "GetTrafficPolicyResponse")
    HeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#HeaderName", name: "HeaderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[xX]\\-[a-zA-Z0-9\\-]+$"})
    HeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#HeaderValue", name: "HeaderValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#IamRoleArn", name: "IamRoleArn", traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:_/+=,@.#-]+$"})
    IdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#IdOrArn", name: "IdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:_/+=,@.#-]+$"})
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ImportDataFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ImportDataFormat", name: "ImportDataFormat")
    ImportDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#ImportDataType", name: "ImportDataType")
    ImportJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ImportJob", name: "ImportJob")
    ImportJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#ImportJobStatus", name: "ImportJobStatus")
    ImportJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#ImportJobs", name: "ImportJobs")
    IngressAddressListArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#IngressAddressListArnList", name: "IngressAddressListArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#uniqueItems" => {}})
    IngressAddressListEmailAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressAddressListEmailAttribute", name: "IngressAddressListEmailAttribute")
    IngressAnalysis = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#IngressAnalysis", name: "IngressAnalysis")
    IngressBooleanExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#IngressBooleanExpression", name: "IngressBooleanExpression")
    IngressBooleanOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressBooleanOperator", name: "IngressBooleanOperator")
    IngressBooleanToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#IngressBooleanToEvaluate", name: "IngressBooleanToEvaluate")
    IngressIpOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressIpOperator", name: "IngressIpOperator")
    IngressIpToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#IngressIpToEvaluate", name: "IngressIpToEvaluate")
    IngressIpv4Attribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressIpv4Attribute", name: "IngressIpv4Attribute")
    IngressIpv4Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#IngressIpv4Expression", name: "IngressIpv4Expression")
    IngressIpv6Attribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressIpv6Attribute", name: "IngressIpv6Attribute")
    IngressIpv6Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#IngressIpv6Expression", name: "IngressIpv6Expression")
    IngressIpv6ToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#IngressIpv6ToEvaluate", name: "IngressIpv6ToEvaluate")
    IngressIsInAddressList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#IngressIsInAddressList", name: "IngressIsInAddressList")
    IngressPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#IngressPoint", name: "IngressPoint")
    IngressPointARecord = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#IngressPointARecord", name: "IngressPointARecord")
    IngressPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#IngressPointArn", name: "IngressPointArn", traits: {"aws.api#arnReference" => {}})
    IngressPointAuthConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#IngressPointAuthConfiguration", name: "IngressPointAuthConfiguration")
    IngressPointConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#IngressPointConfiguration", name: "IngressPointConfiguration")
    IngressPointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#IngressPointId", name: "IngressPointId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    IngressPointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#IngressPointName", name: "IngressPointName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-]+$"})
    IngressPointPasswordConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#IngressPointPasswordConfiguration", name: "IngressPointPasswordConfiguration")
    IngressPointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressPointStatus", name: "IngressPointStatus")
    IngressPointStatusToUpdate = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressPointStatusToUpdate", name: "IngressPointStatusToUpdate")
    IngressPointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressPointType", name: "IngressPointType")
    IngressPointsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#IngressPointsList", name: "IngressPointsList")
    IngressStringEmailAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressStringEmailAttribute", name: "IngressStringEmailAttribute")
    IngressStringExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#IngressStringExpression", name: "IngressStringExpression")
    IngressStringOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressStringOperator", name: "IngressStringOperator")
    IngressStringToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#IngressStringToEvaluate", name: "IngressStringToEvaluate")
    IngressTlsAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressTlsAttribute", name: "IngressTlsAttribute")
    IngressTlsProtocolAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressTlsProtocolAttribute", name: "IngressTlsProtocolAttribute")
    IngressTlsProtocolExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#IngressTlsProtocolExpression", name: "IngressTlsProtocolExpression")
    IngressTlsProtocolOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IngressTlsProtocolOperator", name: "IngressTlsProtocolOperator")
    IngressTlsProtocolToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#IngressTlsProtocolToEvaluate", name: "IngressTlsProtocolToEvaluate")
    IpType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#IpType", name: "IpType")
    Ipv4Cidr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#Ipv4Cidr", name: "Ipv4Cidr", traits: {"smithy.api#pattern" => "^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/([0-9]|[12][0-9]|3[0-2])$"})
    Ipv4Cidrs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#Ipv4Cidrs", name: "Ipv4Cidrs")
    Ipv6Cidr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#Ipv6Cidr", name: "Ipv6Cidr", traits: {"smithy.api#length" => {"max" => 49}, "smithy.api#pattern" => "^(([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:))\\/(12[0-8]|1[0-1][0-9]|[1-9][0-9]|[0-9])$"})
    Ipv6Cidrs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#Ipv6Cidrs", name: "Ipv6Cidrs")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    JobItemsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mailmanager#JobItemsCount", name: "JobItemsCount")
    JobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#JobName", name: "JobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):kms:[a-z0-9-]{1,20}:[0-9]{12}:(key|alias)/.+$"})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9-:/]+$"})
    ListAddonInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListAddonInstancesRequest", name: "ListAddonInstancesRequest")
    ListAddonInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListAddonInstancesResponse", name: "ListAddonInstancesResponse")
    ListAddonSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListAddonSubscriptionsRequest", name: "ListAddonSubscriptionsRequest")
    ListAddonSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListAddonSubscriptionsResponse", name: "ListAddonSubscriptionsResponse")
    ListAddressListImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListAddressListImportJobsRequest", name: "ListAddressListImportJobsRequest")
    ListAddressListImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListAddressListImportJobsResponse", name: "ListAddressListImportJobsResponse")
    ListAddressListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListAddressListsRequest", name: "ListAddressListsRequest")
    ListAddressListsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListAddressListsResponse", name: "ListAddressListsResponse")
    ListArchiveExportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListArchiveExportsRequest", name: "ListArchiveExportsRequest")
    ListArchiveExportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListArchiveExportsResponse", name: "ListArchiveExportsResponse")
    ListArchiveSearchesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListArchiveSearchesRequest", name: "ListArchiveSearchesRequest")
    ListArchiveSearchesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListArchiveSearchesResponse", name: "ListArchiveSearchesResponse")
    ListArchivesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListArchivesRequest", name: "ListArchivesRequest")
    ListArchivesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListArchivesResponse", name: "ListArchivesResponse")
    ListIngressPointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListIngressPointsRequest", name: "ListIngressPointsRequest")
    ListIngressPointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListIngressPointsResponse", name: "ListIngressPointsResponse")
    ListMembersOfAddressListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListMembersOfAddressListRequest", name: "ListMembersOfAddressListRequest")
    ListMembersOfAddressListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListMembersOfAddressListResponse", name: "ListMembersOfAddressListResponse")
    ListRelaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListRelaysRequest", name: "ListRelaysRequest")
    ListRelaysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListRelaysResponse", name: "ListRelaysResponse")
    ListRuleSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListRuleSetsRequest", name: "ListRuleSetsRequest")
    ListRuleSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListRuleSetsResponse", name: "ListRuleSetsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTrafficPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListTrafficPoliciesRequest", name: "ListTrafficPoliciesRequest")
    ListTrafficPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ListTrafficPoliciesResponse", name: "ListTrafficPoliciesResponse")
    MailFrom = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#MailFrom", name: "MailFrom")
    MaxMessageSizeBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mailmanager#MaxMessageSizeBytes", name: "MaxMessageSizeBytes", traits: {"smithy.api#range" => {"min" => 1}})
    MessageBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#MessageBody", name: "MessageBody")
    Metadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#Metadata", name: "Metadata")
    MimeHeaderAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#MimeHeaderAttribute", name: "MimeHeaderAttribute", traits: {"smithy.api#pattern" => "^X-[a-zA-Z0-9-]{1,256}$"})
    NameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#NameOrArn", name: "NameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:_/+=,@.#-]+$"})
    NetworkConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#NetworkConfiguration", name: "NetworkConfiguration")
    NoAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#NoAuthentication", name: "NoAuthentication")
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mailmanager#PageSize", name: "PageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PolicyCondition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#PolicyCondition", name: "PolicyCondition")
    PolicyConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#PolicyConditions", name: "PolicyConditions", traits: {"smithy.api#length" => {"min" => 1}})
    PolicyStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#PolicyStatement", name: "PolicyStatement")
    PolicyStatementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#PolicyStatementList", name: "PolicyStatementList")
    PreSignedUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#PreSignedUrl", name: "PreSignedUrl", traits: {"smithy.api#sensitive" => {}})
    PrivateNetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#PrivateNetworkConfiguration", name: "PrivateNetworkConfiguration")
    PublicNetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#PublicNetworkConfiguration", name: "PublicNetworkConfiguration")
    QBusinessApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#QBusinessApplicationId", name: "QBusinessApplicationId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    QBusinessIndexId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#QBusinessIndexId", name: "QBusinessIndexId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    Recipients = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#Recipients", name: "Recipients", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    RegisterMemberToAddressListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RegisterMemberToAddressListRequest", name: "RegisterMemberToAddressListRequest")
    RegisterMemberToAddressListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RegisterMemberToAddressListResponse", name: "RegisterMemberToAddressListResponse")
    Relay = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#Relay", name: "Relay")
    RelayAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RelayAction", name: "RelayAction")
    RelayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#RelayArn", name: "RelayArn", traits: {"aws.api#arnReference" => {}})
    RelayAuthentication = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#RelayAuthentication", name: "RelayAuthentication")
    RelayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#RelayId", name: "RelayId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    RelayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#RelayName", name: "RelayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    RelayServerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#RelayServerName", name: "RelayServerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\.]+$"})
    RelayServerPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mailmanager#RelayServerPort", name: "RelayServerPort", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    Relays = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#Relays", name: "Relays")
    ReplaceRecipientAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ReplaceRecipientAction", name: "ReplaceRecipientAction")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#ResultField", name: "ResultField", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(addon\\.)?[\\sa-zA-Z0-9_]+$"})
    RetentionPeriod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RetentionPeriod", name: "RetentionPeriod")
    Row = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#Row", name: "Row")
    RowsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#RowsList", name: "RowsList")
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#Rule", name: "Rule")
    RuleAction = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#RuleAction", name: "RuleAction")
    RuleActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#RuleActions", name: "RuleActions", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleAddressListArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#RuleAddressListArnList", name: "RuleAddressListArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#uniqueItems" => {}})
    RuleAddressListEmailAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleAddressListEmailAttribute", name: "RuleAddressListEmailAttribute")
    RuleBooleanEmailAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleBooleanEmailAttribute", name: "RuleBooleanEmailAttribute")
    RuleBooleanExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RuleBooleanExpression", name: "RuleBooleanExpression")
    RuleBooleanOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleBooleanOperator", name: "RuleBooleanOperator")
    RuleBooleanToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#RuleBooleanToEvaluate", name: "RuleBooleanToEvaluate")
    RuleCondition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#RuleCondition", name: "RuleCondition")
    RuleConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#RuleConditions", name: "RuleConditions", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RuleDmarcExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RuleDmarcExpression", name: "RuleDmarcExpression")
    RuleDmarcOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleDmarcOperator", name: "RuleDmarcOperator")
    RuleDmarcPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleDmarcPolicy", name: "RuleDmarcPolicy")
    RuleDmarcValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#RuleDmarcValueList", name: "RuleDmarcValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleIpEmailAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleIpEmailAttribute", name: "RuleIpEmailAttribute")
    RuleIpExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RuleIpExpression", name: "RuleIpExpression")
    RuleIpOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleIpOperator", name: "RuleIpOperator")
    RuleIpStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#RuleIpStringValue", name: "RuleIpStringValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 43}, "smithy.api#pattern" => "^(([0-9]|.|:|/)*)$"})
    RuleIpToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#RuleIpToEvaluate", name: "RuleIpToEvaluate")
    RuleIpValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#RuleIpValueList", name: "RuleIpValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleIsInAddressList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RuleIsInAddressList", name: "RuleIsInAddressList")
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    RuleNumberEmailAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleNumberEmailAttribute", name: "RuleNumberEmailAttribute")
    RuleNumberExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RuleNumberExpression", name: "RuleNumberExpression")
    RuleNumberOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleNumberOperator", name: "RuleNumberOperator")
    RuleNumberToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#RuleNumberToEvaluate", name: "RuleNumberToEvaluate")
    RuleSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RuleSet", name: "RuleSet")
    RuleSetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#RuleSetArn", name: "RuleSetArn", traits: {"aws.api#arnReference" => {}})
    RuleSetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#RuleSetId", name: "RuleSetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RuleSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#RuleSetName", name: "RuleSetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    RuleSets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#RuleSets", name: "RuleSets")
    RuleStringEmailAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleStringEmailAttribute", name: "RuleStringEmailAttribute")
    RuleStringExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RuleStringExpression", name: "RuleStringExpression")
    RuleStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#RuleStringList", name: "RuleStringList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleStringOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleStringOperator", name: "RuleStringOperator")
    RuleStringToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#RuleStringToEvaluate", name: "RuleStringToEvaluate")
    RuleStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#RuleStringValue", name: "RuleStringValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    RuleVerdict = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleVerdict", name: "RuleVerdict")
    RuleVerdictAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleVerdictAttribute", name: "RuleVerdictAttribute")
    RuleVerdictExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#RuleVerdictExpression", name: "RuleVerdictExpression")
    RuleVerdictOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#RuleVerdictOperator", name: "RuleVerdictOperator")
    RuleVerdictToEvaluate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mailmanager#RuleVerdictToEvaluate", name: "RuleVerdictToEvaluate")
    RuleVerdictValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#RuleVerdictValueList", name: "RuleVerdictValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Rules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#Rules", name: "Rules", traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    S3Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#S3Action", name: "S3Action")
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 1, "max" => 62}, "smithy.api#pattern" => "^[a-zA-Z0-9.-]+$"})
    S3ExportDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#S3ExportDestinationConfiguration", name: "S3ExportDestinationConfiguration")
    S3Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#S3Location", name: "S3Location", traits: {"smithy.api#pattern" => "^s3://[a-zA-Z0-9.-]{3,63}(/[a-zA-Z0-9!_.*'()/-]*)*$"})
    S3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#S3Prefix", name: "S3Prefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 62}, "smithy.api#pattern" => "^[a-zA-Z0-9!_.*'()/-]+$"})
    S3PresignedURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#S3PresignedURL", name: "S3PresignedURL")
    SavedAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#SavedAddress", name: "SavedAddress")
    SavedAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#SavedAddresses", name: "SavedAddresses")
    SearchId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#SearchId", name: "SearchId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    SearchMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mailmanager#SearchMaxResults", name: "SearchMaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}})
    SearchState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#SearchState", name: "SearchState")
    SearchStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#SearchStatus", name: "SearchStatus")
    SearchSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#SearchSummary", name: "SearchSummary")
    SearchSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#SearchSummaryList", name: "SearchSummaryList")
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#SecretArn", name: "SecretArn", traits: {"aws.api#arnReference" => {"type" => "AWS::SecretsManager::Secret"}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):secretsmanager:[a-z0-9-]+:\\d{12}:secret:[a-zA-Z0-9/_+=,.@-]+$"})
    SendAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#SendAction", name: "SendAction")
    SenderIpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#SenderIpAddress", name: "SenderIpAddress", traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SmtpPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#SmtpPassword", name: "SmtpPassword", traits: {"smithy.api#length" => {"min" => 8, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9!@\#$%^&*()_+\\-=\\[\\]{}|.,?]+$", "smithy.api#sensitive" => {}})
    SnsAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#SnsAction", name: "SnsAction")
    SnsNotificationEncoding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#SnsNotificationEncoding", name: "SnsNotificationEncoding")
    SnsNotificationPayloadType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mailmanager#SnsNotificationPayloadType", name: "SnsNotificationPayloadType")
    SnsTopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#SnsTopicArn", name: "SnsTopicArn", traits: {"aws.api#arnReference" => {"type" => "AWS::SNS::Topic"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):sns:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:[\\w\\-]{1,256}$"})
    StartAddressListImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StartAddressListImportJobRequest", name: "StartAddressListImportJobRequest")
    StartAddressListImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StartAddressListImportJobResponse", name: "StartAddressListImportJobResponse")
    StartArchiveExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StartArchiveExportRequest", name: "StartArchiveExportRequest")
    StartArchiveExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StartArchiveExportResponse", name: "StartArchiveExportResponse")
    StartArchiveSearchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StartArchiveSearchRequest", name: "StartArchiveSearchRequest")
    StartArchiveSearchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StartArchiveSearchResponse", name: "StartArchiveSearchResponse")
    StopAddressListImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StopAddressListImportJobRequest", name: "StopAddressListImportJobRequest")
    StopAddressListImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StopAddressListImportJobResponse", name: "StopAddressListImportJobResponse")
    StopArchiveExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StopArchiveExportRequest", name: "StopArchiveExportRequest")
    StopArchiveExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StopArchiveExportResponse", name: "StopArchiveExportResponse")
    StopArchiveSearchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StopArchiveSearchRequest", name: "StopArchiveSearchRequest")
    StopArchiveSearchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#StopArchiveSearchResponse", name: "StopArchiveSearchResponse")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#StringList", name: "StringList")
    StringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#StringValue", name: "StringValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#StringValueList", name: "StringValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9/_\\+=\\.:@\\-]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9/_\\+=\\.:@\\-]*$"})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):ses:[a-z0-9-]{1,20}:[0-9]{12}:(mailmanager-|addon-).+$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TrafficPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#TrafficPolicy", name: "TrafficPolicy")
    TrafficPolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#TrafficPolicyArn", name: "TrafficPolicyArn", traits: {"aws.api#arnReference" => {}})
    TrafficPolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#TrafficPolicyId", name: "TrafficPolicyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TrafficPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mailmanager#TrafficPolicyList", name: "TrafficPolicyList")
    TrafficPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#TrafficPolicyName", name: "TrafficPolicyName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-]+$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateArchiveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UpdateArchiveRequest", name: "UpdateArchiveRequest")
    UpdateArchiveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UpdateArchiveResponse", name: "UpdateArchiveResponse")
    UpdateIngressPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UpdateIngressPointRequest", name: "UpdateIngressPointRequest")
    UpdateIngressPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UpdateIngressPointResponse", name: "UpdateIngressPointResponse")
    UpdateRelayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UpdateRelayRequest", name: "UpdateRelayRequest")
    UpdateRelayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UpdateRelayResponse", name: "UpdateRelayResponse")
    UpdateRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UpdateRuleSetRequest", name: "UpdateRuleSetRequest")
    UpdateRuleSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UpdateRuleSetResponse", name: "UpdateRuleSetResponse")
    UpdateTrafficPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UpdateTrafficPolicyRequest", name: "UpdateTrafficPolicyRequest")
    UpdateTrafficPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#UpdateTrafficPolicyResponse", name: "UpdateTrafficPolicyResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mailmanager#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mailmanager#VpcEndpointId", name: "VpcEndpointId", traits: {"smithy.api#pattern" => "^vpce-[a-zA-Z0-9]{17}$"})

    AcceptAction.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    AcceptAction.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionFailurePolicy.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    ActionFailurePolicy.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    AddHeaderAction.add_member(:header_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderName, name: "HeaderName", traits: {"smithy.api#required" => {}}))
    AddHeaderAction.add_member(:header_value, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderValue, name: "HeaderValue", traits: {"smithy.api#required" => {}}))
    AddHeaderAction.type = Types::AddHeaderAction
    AddonInstance.add_member(:addon_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonInstanceId, name: "AddonInstanceId"))
    AddonInstance.add_member(:addon_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscriptionId, name: "AddonSubscriptionId"))
    AddonInstance.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonName, name: "AddonName"))
    AddonInstance.add_member(:addon_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonInstanceArn, name: "AddonInstanceArn"))
    AddonInstance.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    AddonInstance.type = Types::AddonInstance
    AddonInstances.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddonInstance, name: "member")
    AddonSubscription.add_member(:addon_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscriptionId, name: "AddonSubscriptionId"))
    AddonSubscription.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonName, name: "AddonName"))
    AddonSubscription.add_member(:addon_subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscriptionArn, name: "AddonSubscriptionArn"))
    AddonSubscription.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    AddonSubscription.type = Types::AddonSubscription
    AddonSubscriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscription, name: "member")
    AddressFilter.add_member(:address_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressPrefix, name: "AddressPrefix"))
    AddressFilter.type = Types::AddressFilter
    AddressList.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    AddressList.add_member(:address_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListArn, name: "AddressListArn", traits: {"smithy.api#required" => {}}))
    AddressList.add_member(:address_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListName, name: "AddressListName", traits: {"smithy.api#required" => {}}))
    AddressList.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    AddressList.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedTimestamp", traits: {"smithy.api#required" => {}}))
    AddressList.type = Types::AddressList
    AddressLists.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, name: "member")
    Analysis.add_member(:analyzer, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "Analyzer", traits: {"smithy.api#required" => {}}))
    Analysis.add_member(:result_field, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultField, name: "ResultField", traits: {"smithy.api#required" => {}}))
    Analysis.type = Types::Analysis
    Archive.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveIdString, name: "ArchiveId", traits: {"smithy.api#required" => {}}))
    Archive.add_member(:archive_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveNameString, name: "ArchiveName"))
    Archive.add_member(:archive_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveState, name: "ArchiveState"))
    Archive.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedTimestamp"))
    Archive.type = Types::Archive
    ArchiveAction.add_member(:action_failure_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionFailurePolicy, name: "ActionFailurePolicy"))
    ArchiveAction.add_member(:target_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: NameOrArn, name: "TargetArchive", traits: {"smithy.api#required" => {}}))
    ArchiveAction.type = Types::ArchiveAction
    ArchiveBooleanEmailAttribute.add_member(:has_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HAS_ATTACHMENTS", traits: {"smithy.api#enumValue" => "HAS_ATTACHMENTS"}))
    ArchiveBooleanExpression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveBooleanToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    ArchiveBooleanExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveBooleanOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    ArchiveBooleanExpression.type = Types::ArchiveBooleanExpression
    ArchiveBooleanOperator.add_member(:is_true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS_TRUE", traits: {"smithy.api#enumValue" => "IS_TRUE"}))
    ArchiveBooleanOperator.add_member(:is_false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS_FALSE", traits: {"smithy.api#enumValue" => "IS_FALSE"}))
    ArchiveBooleanToEvaluate.add_member(:attribute, Types::ArchiveBooleanToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveBooleanEmailAttribute, name: "Attribute"))
    ArchiveBooleanToEvaluate.add_member(:unknown, Types::ArchiveBooleanToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ArchiveBooleanToEvaluate.type = Types::ArchiveBooleanToEvaluate
    ArchiveFilterCondition.add_member(:string_expression, Types::ArchiveFilterCondition::StringExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveStringExpression, name: "StringExpression"))
    ArchiveFilterCondition.add_member(:boolean_expression, Types::ArchiveFilterCondition::BooleanExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveBooleanExpression, name: "BooleanExpression"))
    ArchiveFilterCondition.add_member(:unknown, Types::ArchiveFilterCondition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ArchiveFilterCondition.type = Types::ArchiveFilterCondition
    ArchiveFilterConditions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveFilterCondition, name: "member")
    ArchiveFilters.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveFilterConditions, name: "Include"))
    ArchiveFilters.add_member(:unless, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveFilterConditions, name: "Unless"))
    ArchiveFilters.type = Types::ArchiveFilters
    ArchiveRetention.add_member(:retention_period, Types::ArchiveRetention::RetentionPeriod, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "RetentionPeriod"))
    ArchiveRetention.add_member(:unknown, Types::ArchiveRetention::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ArchiveRetention.type = Types::ArchiveRetention
    ArchiveState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ArchiveState.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    ArchiveStringEmailAttribute.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TO", traits: {"smithy.api#enumValue" => "TO"}))
    ArchiveStringEmailAttribute.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FROM", traits: {"smithy.api#enumValue" => "FROM"}))
    ArchiveStringEmailAttribute.add_member(:cc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CC", traits: {"smithy.api#enumValue" => "CC"}))
    ArchiveStringEmailAttribute.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBJECT", traits: {"smithy.api#enumValue" => "SUBJECT"}))
    ArchiveStringEmailAttribute.add_member(:envelope_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENVELOPE_TO", traits: {"smithy.api#enumValue" => "ENVELOPE_TO"}))
    ArchiveStringEmailAttribute.add_member(:envelope_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENVELOPE_FROM", traits: {"smithy.api#enumValue" => "ENVELOPE_FROM"}))
    ArchiveStringExpression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveStringToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    ArchiveStringExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveStringOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    ArchiveStringExpression.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    ArchiveStringExpression.type = Types::ArchiveStringExpression
    ArchiveStringOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ArchiveStringToEvaluate.add_member(:attribute, Types::ArchiveStringToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveStringEmailAttribute, name: "Attribute"))
    ArchiveStringToEvaluate.add_member(:unknown, Types::ArchiveStringToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ArchiveStringToEvaluate.type = Types::ArchiveStringToEvaluate
    ArchivesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Archive, name: "member")
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateAddonInstanceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAddonInstanceRequest.add_member(:addon_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscriptionId, name: "AddonSubscriptionId", traits: {"smithy.api#required" => {}}))
    CreateAddonInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAddonInstanceRequest.type = Types::CreateAddonInstanceRequest
    CreateAddonInstanceResponse.add_member(:addon_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonInstanceId, name: "AddonInstanceId", traits: {"smithy.api#required" => {}}))
    CreateAddonInstanceResponse.type = Types::CreateAddonInstanceResponse
    CreateAddonSubscriptionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAddonSubscriptionRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonName, name: "AddonName", traits: {"smithy.api#required" => {}}))
    CreateAddonSubscriptionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAddonSubscriptionRequest.type = Types::CreateAddonSubscriptionRequest
    CreateAddonSubscriptionResponse.add_member(:addon_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscriptionId, name: "AddonSubscriptionId", traits: {"smithy.api#required" => {}}))
    CreateAddonSubscriptionResponse.type = Types::CreateAddonSubscriptionResponse
    CreateAddressListImportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAddressListImportJobRequest.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    CreateAddressListImportJobRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateAddressListImportJobRequest.add_member(:import_data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataFormat, name: "ImportDataFormat", traits: {"smithy.api#required" => {}}))
    CreateAddressListImportJobRequest.type = Types::CreateAddressListImportJobRequest
    CreateAddressListImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    CreateAddressListImportJobResponse.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PreSignedUrl, name: "PreSignedUrl", traits: {"smithy.api#required" => {}}))
    CreateAddressListImportJobResponse.type = Types::CreateAddressListImportJobResponse
    CreateAddressListRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAddressListRequest.add_member(:address_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListName, name: "AddressListName", traits: {"smithy.api#required" => {}}))
    CreateAddressListRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAddressListRequest.type = Types::CreateAddressListRequest
    CreateAddressListResponse.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    CreateAddressListResponse.type = Types::CreateAddressListResponse
    CreateArchiveRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateArchiveRequest.add_member(:archive_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveNameString, name: "ArchiveName", traits: {"smithy.api#required" => {}}))
    CreateArchiveRequest.add_member(:retention, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveRetention, name: "Retention"))
    CreateArchiveRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn"))
    CreateArchiveRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateArchiveRequest.type = Types::CreateArchiveRequest
    CreateArchiveResponse.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveIdString, name: "ArchiveId", traits: {"smithy.api#required" => {}}))
    CreateArchiveResponse.type = Types::CreateArchiveResponse
    CreateIngressPointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateIngressPointRequest.add_member(:ingress_point_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointName, name: "IngressPointName", traits: {"smithy.api#required" => {}}))
    CreateIngressPointRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointType, name: "Type", traits: {"smithy.api#required" => {}}))
    CreateIngressPointRequest.add_member(:rule_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetId, name: "RuleSetId", traits: {"smithy.api#required" => {}}))
    CreateIngressPointRequest.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyId, name: "TrafficPolicyId", traits: {"smithy.api#required" => {}}))
    CreateIngressPointRequest.add_member(:ingress_point_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointConfiguration, name: "IngressPointConfiguration"))
    CreateIngressPointRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "NetworkConfiguration"))
    CreateIngressPointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateIngressPointRequest.type = Types::CreateIngressPointRequest
    CreateIngressPointResponse.add_member(:ingress_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointId, name: "IngressPointId", traits: {"smithy.api#required" => {}}))
    CreateIngressPointResponse.type = Types::CreateIngressPointResponse
    CreateRelayRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRelayRequest.add_member(:relay_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayName, name: "RelayName", traits: {"smithy.api#required" => {}}))
    CreateRelayRequest.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayServerName, name: "ServerName", traits: {"smithy.api#required" => {}}))
    CreateRelayRequest.add_member(:server_port, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayServerPort, name: "ServerPort", traits: {"smithy.api#required" => {}}))
    CreateRelayRequest.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayAuthentication, name: "Authentication", traits: {"smithy.api#required" => {}}))
    CreateRelayRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRelayRequest.type = Types::CreateRelayRequest
    CreateRelayResponse.add_member(:relay_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayId, name: "RelayId", traits: {"smithy.api#required" => {}}))
    CreateRelayResponse.type = Types::CreateRelayResponse
    CreateRuleSetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRuleSetRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetName, name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    CreateRuleSetRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, name: "Rules", traits: {"smithy.api#required" => {}}))
    CreateRuleSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRuleSetRequest.type = Types::CreateRuleSetRequest
    CreateRuleSetResponse.add_member(:rule_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetId, name: "RuleSetId", traits: {"smithy.api#required" => {}}))
    CreateRuleSetResponse.type = Types::CreateRuleSetResponse
    CreateTrafficPolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTrafficPolicyRequest.add_member(:traffic_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyName, name: "TrafficPolicyName", traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyRequest.add_member(:policy_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatementList, name: "PolicyStatements", traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyRequest.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptAction, name: "DefaultAction", traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyRequest.add_member(:max_message_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxMessageSizeBytes, name: "MaxMessageSizeBytes"))
    CreateTrafficPolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTrafficPolicyRequest.type = Types::CreateTrafficPolicyRequest
    CreateTrafficPolicyResponse.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyId, name: "TrafficPolicyId", traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyResponse.type = Types::CreateTrafficPolicyResponse
    DeleteAddonInstanceRequest.add_member(:addon_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonInstanceId, name: "AddonInstanceId", traits: {"smithy.api#required" => {}}))
    DeleteAddonInstanceRequest.type = Types::DeleteAddonInstanceRequest
    DeleteAddonInstanceResponse.type = Types::DeleteAddonInstanceResponse
    DeleteAddonSubscriptionRequest.add_member(:addon_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscriptionId, name: "AddonSubscriptionId", traits: {"smithy.api#required" => {}}))
    DeleteAddonSubscriptionRequest.type = Types::DeleteAddonSubscriptionRequest
    DeleteAddonSubscriptionResponse.type = Types::DeleteAddonSubscriptionResponse
    DeleteAddressListRequest.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    DeleteAddressListRequest.type = Types::DeleteAddressListRequest
    DeleteAddressListResponse.type = Types::DeleteAddressListResponse
    DeleteArchiveRequest.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveIdString, name: "ArchiveId", traits: {"smithy.api#required" => {}}))
    DeleteArchiveRequest.type = Types::DeleteArchiveRequest
    DeleteArchiveResponse.type = Types::DeleteArchiveResponse
    DeleteIngressPointRequest.add_member(:ingress_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointId, name: "IngressPointId", traits: {"smithy.api#required" => {}}))
    DeleteIngressPointRequest.type = Types::DeleteIngressPointRequest
    DeleteIngressPointResponse.type = Types::DeleteIngressPointResponse
    DeleteRelayRequest.add_member(:relay_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayId, name: "RelayId", traits: {"smithy.api#required" => {}}))
    DeleteRelayRequest.type = Types::DeleteRelayRequest
    DeleteRelayResponse.type = Types::DeleteRelayResponse
    DeleteRuleSetRequest.add_member(:rule_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetId, name: "RuleSetId", traits: {"smithy.api#required" => {}}))
    DeleteRuleSetRequest.type = Types::DeleteRuleSetRequest
    DeleteRuleSetResponse.type = Types::DeleteRuleSetResponse
    DeleteTrafficPolicyRequest.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyId, name: "TrafficPolicyId", traits: {"smithy.api#required" => {}}))
    DeleteTrafficPolicyRequest.type = Types::DeleteTrafficPolicyRequest
    DeleteTrafficPolicyResponse.type = Types::DeleteTrafficPolicyResponse
    DeliverToMailboxAction.add_member(:action_failure_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionFailurePolicy, name: "ActionFailurePolicy"))
    DeliverToMailboxAction.add_member(:mailbox_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameOrArn, name: "MailboxArn", traits: {"smithy.api#required" => {}}))
    DeliverToMailboxAction.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    DeliverToMailboxAction.type = Types::DeliverToMailboxAction
    DeliverToQBusinessAction.add_member(:action_failure_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionFailurePolicy, name: "ActionFailurePolicy"))
    DeliverToQBusinessAction.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QBusinessApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    DeliverToQBusinessAction.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QBusinessIndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DeliverToQBusinessAction.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    DeliverToQBusinessAction.type = Types::DeliverToQBusinessAction
    DeregisterMemberFromAddressListRequest.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    DeregisterMemberFromAddressListRequest.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address", traits: {"smithy.api#required" => {}}))
    DeregisterMemberFromAddressListRequest.type = Types::DeregisterMemberFromAddressListRequest
    DeregisterMemberFromAddressListResponse.type = Types::DeregisterMemberFromAddressListResponse
    DropAction.type = Types::DropAction
    EmailReceivedHeadersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    Envelope.add_member(:helo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Helo"))
    Envelope.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "From"))
    Envelope.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "To"))
    Envelope.type = Types::Envelope
    ExportDestinationConfiguration.add_member(:s3, Types::ExportDestinationConfiguration::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExportDestinationConfiguration, name: "S3"))
    ExportDestinationConfiguration.add_member(:unknown, Types::ExportDestinationConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExportDestinationConfiguration.type = Types::ExportDestinationConfiguration
    ExportState.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    ExportState.add_member(:preprocessing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPROCESSING", traits: {"smithy.api#enumValue" => "PREPROCESSING"}))
    ExportState.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    ExportState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExportState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ExportStatus.add_member(:submission_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "SubmissionTimestamp"))
    ExportStatus.add_member(:completion_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CompletionTimestamp"))
    ExportStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportState, name: "State"))
    ExportStatus.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    ExportStatus.type = Types::ExportStatus
    ExportSummary.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportId, name: "ExportId"))
    ExportSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "Status"))
    ExportSummary.type = Types::ExportSummary
    ExportSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSummary, name: "member")
    GetAddonInstanceRequest.add_member(:addon_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonInstanceId, name: "AddonInstanceId", traits: {"smithy.api#required" => {}}))
    GetAddonInstanceRequest.type = Types::GetAddonInstanceRequest
    GetAddonInstanceResponse.add_member(:addon_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscriptionId, name: "AddonSubscriptionId"))
    GetAddonInstanceResponse.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonName, name: "AddonName"))
    GetAddonInstanceResponse.add_member(:addon_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonInstanceArn, name: "AddonInstanceArn"))
    GetAddonInstanceResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    GetAddonInstanceResponse.type = Types::GetAddonInstanceResponse
    GetAddonSubscriptionRequest.add_member(:addon_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscriptionId, name: "AddonSubscriptionId", traits: {"smithy.api#required" => {}}))
    GetAddonSubscriptionRequest.type = Types::GetAddonSubscriptionRequest
    GetAddonSubscriptionResponse.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonName, name: "AddonName"))
    GetAddonSubscriptionResponse.add_member(:addon_subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscriptionArn, name: "AddonSubscriptionArn"))
    GetAddonSubscriptionResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    GetAddonSubscriptionResponse.type = Types::GetAddonSubscriptionResponse
    GetAddressListImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetAddressListImportJobRequest.type = Types::GetAddressListImportJobRequest
    GetAddressListImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PreSignedUrl, name: "PreSignedUrl", traits: {"smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:imported_items_count, ::Smithy::Schema::Shapes::MemberShape.new(target: JobItemsCount, name: "ImportedItemsCount"))
    GetAddressListImportJobResponse.add_member(:failed_items_count, ::Smithy::Schema::Shapes::MemberShape.new(target: JobItemsCount, name: "FailedItemsCount"))
    GetAddressListImportJobResponse.add_member(:import_data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataFormat, name: "ImportDataFormat", traits: {"smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    GetAddressListImportJobResponse.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTimestamp"))
    GetAddressListImportJobResponse.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CompletedTimestamp"))
    GetAddressListImportJobResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Error"))
    GetAddressListImportJobResponse.type = Types::GetAddressListImportJobResponse
    GetAddressListRequest.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    GetAddressListRequest.type = Types::GetAddressListRequest
    GetAddressListResponse.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    GetAddressListResponse.add_member(:address_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListArn, name: "AddressListArn", traits: {"smithy.api#required" => {}}))
    GetAddressListResponse.add_member(:address_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListName, name: "AddressListName", traits: {"smithy.api#required" => {}}))
    GetAddressListResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    GetAddressListResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedTimestamp", traits: {"smithy.api#required" => {}}))
    GetAddressListResponse.type = Types::GetAddressListResponse
    GetArchiveExportRequest.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportId, name: "ExportId", traits: {"smithy.api#required" => {}}))
    GetArchiveExportRequest.type = Types::GetArchiveExportRequest
    GetArchiveExportResponse.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveId, name: "ArchiveId"))
    GetArchiveExportResponse.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveFilters, name: "Filters"))
    GetArchiveExportResponse.add_member(:from_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "FromTimestamp"))
    GetArchiveExportResponse.add_member(:to_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ToTimestamp"))
    GetArchiveExportResponse.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportMaxResults, name: "MaxResults"))
    GetArchiveExportResponse.add_member(:export_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestinationConfiguration, name: "ExportDestinationConfiguration"))
    GetArchiveExportResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "Status"))
    GetArchiveExportResponse.type = Types::GetArchiveExportResponse
    GetArchiveMessageContentRequest.add_member(:archived_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivedMessageId, name: "ArchivedMessageId", traits: {"smithy.api#required" => {}}))
    GetArchiveMessageContentRequest.type = Types::GetArchiveMessageContentRequest
    GetArchiveMessageContentResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageBody, name: "Body"))
    GetArchiveMessageContentResponse.type = Types::GetArchiveMessageContentResponse
    GetArchiveMessageRequest.add_member(:archived_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivedMessageId, name: "ArchivedMessageId", traits: {"smithy.api#required" => {}}))
    GetArchiveMessageRequest.type = Types::GetArchiveMessageRequest
    GetArchiveMessageResponse.add_member(:message_download_link, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PresignedURL, name: "MessageDownloadLink"))
    GetArchiveMessageResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    GetArchiveMessageResponse.add_member(:envelope, ::Smithy::Schema::Shapes::MemberShape.new(target: Envelope, name: "Envelope"))
    GetArchiveMessageResponse.type = Types::GetArchiveMessageResponse
    GetArchiveRequest.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveIdString, name: "ArchiveId", traits: {"smithy.api#required" => {}}))
    GetArchiveRequest.type = Types::GetArchiveRequest
    GetArchiveResponse.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveIdString, name: "ArchiveId", traits: {"smithy.api#required" => {}}))
    GetArchiveResponse.add_member(:archive_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveNameString, name: "ArchiveName", traits: {"smithy.api#required" => {}}))
    GetArchiveResponse.add_member(:archive_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveArn, name: "ArchiveArn", traits: {"smithy.api#required" => {}}))
    GetArchiveResponse.add_member(:archive_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveState, name: "ArchiveState", traits: {"smithy.api#required" => {}}))
    GetArchiveResponse.add_member(:retention, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveRetention, name: "Retention", traits: {"smithy.api#required" => {}}))
    GetArchiveResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    GetArchiveResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedTimestamp"))
    GetArchiveResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn"))
    GetArchiveResponse.type = Types::GetArchiveResponse
    GetArchiveSearchRequest.add_member(:search_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchId, name: "SearchId", traits: {"smithy.api#required" => {}}))
    GetArchiveSearchRequest.type = Types::GetArchiveSearchRequest
    GetArchiveSearchResponse.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveId, name: "ArchiveId"))
    GetArchiveSearchResponse.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveFilters, name: "Filters"))
    GetArchiveSearchResponse.add_member(:from_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "FromTimestamp"))
    GetArchiveSearchResponse.add_member(:to_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ToTimestamp"))
    GetArchiveSearchResponse.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchMaxResults, name: "MaxResults"))
    GetArchiveSearchResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchStatus, name: "Status"))
    GetArchiveSearchResponse.type = Types::GetArchiveSearchResponse
    GetArchiveSearchResultsRequest.add_member(:search_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchId, name: "SearchId", traits: {"smithy.api#required" => {}}))
    GetArchiveSearchResultsRequest.type = Types::GetArchiveSearchResultsRequest
    GetArchiveSearchResultsResponse.add_member(:rows, ::Smithy::Schema::Shapes::MemberShape.new(target: RowsList, name: "Rows"))
    GetArchiveSearchResultsResponse.type = Types::GetArchiveSearchResultsResponse
    GetIngressPointRequest.add_member(:ingress_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointId, name: "IngressPointId", traits: {"smithy.api#required" => {}}))
    GetIngressPointRequest.type = Types::GetIngressPointRequest
    GetIngressPointResponse.add_member(:ingress_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointId, name: "IngressPointId", traits: {"smithy.api#required" => {}}))
    GetIngressPointResponse.add_member(:ingress_point_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointName, name: "IngressPointName", traits: {"smithy.api#required" => {}}))
    GetIngressPointResponse.add_member(:ingress_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointArn, name: "IngressPointArn"))
    GetIngressPointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointStatus, name: "Status"))
    GetIngressPointResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointType, name: "Type"))
    GetIngressPointResponse.add_member(:a_record, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointARecord, name: "ARecord"))
    GetIngressPointResponse.add_member(:rule_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetId, name: "RuleSetId"))
    GetIngressPointResponse.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyId, name: "TrafficPolicyId"))
    GetIngressPointResponse.add_member(:ingress_point_auth_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointAuthConfiguration, name: "IngressPointAuthConfiguration"))
    GetIngressPointResponse.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "NetworkConfiguration"))
    GetIngressPointResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    GetIngressPointResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedTimestamp"))
    GetIngressPointResponse.type = Types::GetIngressPointResponse
    GetMemberOfAddressListRequest.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    GetMemberOfAddressListRequest.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address", traits: {"smithy.api#required" => {}}))
    GetMemberOfAddressListRequest.type = Types::GetMemberOfAddressListRequest
    GetMemberOfAddressListResponse.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address", traits: {"smithy.api#required" => {}}))
    GetMemberOfAddressListResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    GetMemberOfAddressListResponse.type = Types::GetMemberOfAddressListResponse
    GetRelayRequest.add_member(:relay_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayId, name: "RelayId", traits: {"smithy.api#required" => {}}))
    GetRelayRequest.type = Types::GetRelayRequest
    GetRelayResponse.add_member(:relay_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayId, name: "RelayId", traits: {"smithy.api#required" => {}}))
    GetRelayResponse.add_member(:relay_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayArn, name: "RelayArn"))
    GetRelayResponse.add_member(:relay_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayName, name: "RelayName"))
    GetRelayResponse.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayServerName, name: "ServerName"))
    GetRelayResponse.add_member(:server_port, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayServerPort, name: "ServerPort"))
    GetRelayResponse.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayAuthentication, name: "Authentication"))
    GetRelayResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    GetRelayResponse.add_member(:last_modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedTimestamp"))
    GetRelayResponse.type = Types::GetRelayResponse
    GetRuleSetRequest.add_member(:rule_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetId, name: "RuleSetId", traits: {"smithy.api#required" => {}}))
    GetRuleSetRequest.type = Types::GetRuleSetRequest
    GetRuleSetResponse.add_member(:rule_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetId, name: "RuleSetId", traits: {"smithy.api#required" => {}}))
    GetRuleSetResponse.add_member(:rule_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetArn, name: "RuleSetArn", traits: {"smithy.api#required" => {}}))
    GetRuleSetResponse.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetName, name: "RuleSetName", traits: {"smithy.api#required" => {}}))
    GetRuleSetResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedDate", traits: {"smithy.api#required" => {}}))
    GetRuleSetResponse.add_member(:last_modification_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModificationDate", traits: {"smithy.api#required" => {}}))
    GetRuleSetResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, name: "Rules", traits: {"smithy.api#required" => {}}))
    GetRuleSetResponse.type = Types::GetRuleSetResponse
    GetTrafficPolicyRequest.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyId, name: "TrafficPolicyId", traits: {"smithy.api#required" => {}}))
    GetTrafficPolicyRequest.type = Types::GetTrafficPolicyRequest
    GetTrafficPolicyResponse.add_member(:traffic_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyName, name: "TrafficPolicyName", traits: {"smithy.api#required" => {}}))
    GetTrafficPolicyResponse.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyId, name: "TrafficPolicyId", traits: {"smithy.api#required" => {}}))
    GetTrafficPolicyResponse.add_member(:traffic_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyArn, name: "TrafficPolicyArn"))
    GetTrafficPolicyResponse.add_member(:policy_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatementList, name: "PolicyStatements"))
    GetTrafficPolicyResponse.add_member(:max_message_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxMessageSizeBytes, name: "MaxMessageSizeBytes"))
    GetTrafficPolicyResponse.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptAction, name: "DefaultAction"))
    GetTrafficPolicyResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    GetTrafficPolicyResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedTimestamp"))
    GetTrafficPolicyResponse.type = Types::GetTrafficPolicyResponse
    ImportDataFormat.add_member(:import_data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataType, name: "ImportDataType", traits: {"smithy.api#required" => {}}))
    ImportDataFormat.type = Types::ImportDataFormat
    ImportDataType.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    ImportDataType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    ImportJob.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    ImportJob.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobName, name: "Name", traits: {"smithy.api#required" => {}}))
    ImportJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ImportJob.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PreSignedUrl, name: "PreSignedUrl", traits: {"smithy.api#required" => {}}))
    ImportJob.add_member(:imported_items_count, ::Smithy::Schema::Shapes::MemberShape.new(target: JobItemsCount, name: "ImportedItemsCount"))
    ImportJob.add_member(:failed_items_count, ::Smithy::Schema::Shapes::MemberShape.new(target: JobItemsCount, name: "FailedItemsCount"))
    ImportJob.add_member(:import_data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataFormat, name: "ImportDataFormat", traits: {"smithy.api#required" => {}}))
    ImportJob.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    ImportJob.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    ImportJob.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTimestamp"))
    ImportJob.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CompletedTimestamp"))
    ImportJob.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Error"))
    ImportJob.type = Types::ImportJob
    ImportJobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ImportJobStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    ImportJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ImportJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportJobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ImportJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJob, name: "member")
    IngressAddressListArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListArn, name: "member")
    IngressAddressListEmailAttribute.add_member(:recipient, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECIPIENT", traits: {"smithy.api#enumValue" => "RECIPIENT"}))
    IngressAnalysis.add_member(:analyzer, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "Analyzer", traits: {"smithy.api#required" => {}}))
    IngressAnalysis.add_member(:result_field, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultField, name: "ResultField", traits: {"smithy.api#required" => {}}))
    IngressAnalysis.type = Types::IngressAnalysis
    IngressBooleanExpression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressBooleanToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    IngressBooleanExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressBooleanOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    IngressBooleanExpression.type = Types::IngressBooleanExpression
    IngressBooleanOperator.add_member(:is_true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS_TRUE", traits: {"smithy.api#enumValue" => "IS_TRUE"}))
    IngressBooleanOperator.add_member(:is_false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS_FALSE", traits: {"smithy.api#enumValue" => "IS_FALSE"}))
    IngressBooleanToEvaluate.add_member(:analysis, Types::IngressBooleanToEvaluate::Analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressAnalysis, name: "Analysis"))
    IngressBooleanToEvaluate.add_member(:is_in_address_list, Types::IngressBooleanToEvaluate::IsInAddressList, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressIsInAddressList, name: "IsInAddressList"))
    IngressBooleanToEvaluate.add_member(:unknown, Types::IngressBooleanToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IngressBooleanToEvaluate.type = Types::IngressBooleanToEvaluate
    IngressIpOperator.add_member(:cidr_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CIDR_MATCHES", traits: {"smithy.api#enumValue" => "CIDR_MATCHES"}))
    IngressIpOperator.add_member(:not_cidr_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CIDR_MATCHES", traits: {"smithy.api#enumValue" => "NOT_CIDR_MATCHES"}))
    IngressIpToEvaluate.add_member(:attribute, Types::IngressIpToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressIpv4Attribute, name: "Attribute"))
    IngressIpToEvaluate.add_member(:unknown, Types::IngressIpToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IngressIpToEvaluate.type = Types::IngressIpToEvaluate
    IngressIpv4Attribute.add_member(:sender_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENDER_IP", traits: {"smithy.api#enumValue" => "SENDER_IP"}))
    IngressIpv4Expression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressIpToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    IngressIpv4Expression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressIpOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    IngressIpv4Expression.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Cidrs, name: "Values", traits: {"smithy.api#required" => {}}))
    IngressIpv4Expression.type = Types::IngressIpv4Expression
    IngressIpv6Attribute.add_member(:sender_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENDER_IPV6", traits: {"smithy.api#enumValue" => "SENDER_IPV6"}))
    IngressIpv6Expression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressIpv6ToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    IngressIpv6Expression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressIpOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    IngressIpv6Expression.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Cidrs, name: "Values", traits: {"smithy.api#required" => {}}))
    IngressIpv6Expression.type = Types::IngressIpv6Expression
    IngressIpv6ToEvaluate.add_member(:attribute, Types::IngressIpv6ToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressIpv6Attribute, name: "Attribute"))
    IngressIpv6ToEvaluate.add_member(:unknown, Types::IngressIpv6ToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IngressIpv6ToEvaluate.type = Types::IngressIpv6ToEvaluate
    IngressIsInAddressList.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressAddressListEmailAttribute, name: "Attribute", traits: {"smithy.api#required" => {}}))
    IngressIsInAddressList.add_member(:address_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressAddressListArnList, name: "AddressLists", traits: {"smithy.api#required" => {}}))
    IngressIsInAddressList.type = Types::IngressIsInAddressList
    IngressPoint.add_member(:ingress_point_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointName, name: "IngressPointName", traits: {"smithy.api#required" => {}}))
    IngressPoint.add_member(:ingress_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointId, name: "IngressPointId", traits: {"smithy.api#required" => {}}))
    IngressPoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    IngressPoint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointType, name: "Type", traits: {"smithy.api#required" => {}}))
    IngressPoint.add_member(:a_record, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointARecord, name: "ARecord"))
    IngressPoint.type = Types::IngressPoint
    IngressPointAuthConfiguration.add_member(:ingress_point_password_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointPasswordConfiguration, name: "IngressPointPasswordConfiguration"))
    IngressPointAuthConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    IngressPointAuthConfiguration.type = Types::IngressPointAuthConfiguration
    IngressPointConfiguration.add_member(:smtp_password, Types::IngressPointConfiguration::SmtpPassword, ::Smithy::Schema::Shapes::MemberShape.new(target: SmtpPassword, name: "SmtpPassword"))
    IngressPointConfiguration.add_member(:secret_arn, Types::IngressPointConfiguration::SecretArn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    IngressPointConfiguration.add_member(:unknown, Types::IngressPointConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IngressPointConfiguration.type = Types::IngressPointConfiguration
    IngressPointPasswordConfiguration.add_member(:smtp_password_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SmtpPasswordVersion"))
    IngressPointPasswordConfiguration.add_member(:previous_smtp_password_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PreviousSmtpPasswordVersion"))
    IngressPointPasswordConfiguration.add_member(:previous_smtp_password_expiry_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "PreviousSmtpPasswordExpiryTimestamp"))
    IngressPointPasswordConfiguration.type = Types::IngressPointPasswordConfiguration
    IngressPointStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    IngressPointStatus.add_member(:deprovisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPROVISIONING", traits: {"smithy.api#enumValue" => "DEPROVISIONING"}))
    IngressPointStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    IngressPointStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IngressPointStatus.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    IngressPointStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IngressPointStatusToUpdate.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IngressPointStatusToUpdate.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    IngressPointType.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    IngressPointType.add_member(:auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTH", traits: {"smithy.api#enumValue" => "AUTH"}))
    IngressPointsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPoint, name: "member")
    IngressStringEmailAttribute.add_member(:recipient, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECIPIENT", traits: {"smithy.api#enumValue" => "RECIPIENT"}))
    IngressStringExpression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressStringToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    IngressStringExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressStringOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    IngressStringExpression.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Values", traits: {"smithy.api#required" => {}}))
    IngressStringExpression.type = Types::IngressStringExpression
    IngressStringOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    IngressStringOperator.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    IngressStringOperator.add_member(:starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTS_WITH", traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    IngressStringOperator.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    IngressStringOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    IngressStringToEvaluate.add_member(:attribute, Types::IngressStringToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressStringEmailAttribute, name: "Attribute"))
    IngressStringToEvaluate.add_member(:analysis, Types::IngressStringToEvaluate::Analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressAnalysis, name: "Analysis"))
    IngressStringToEvaluate.add_member(:unknown, Types::IngressStringToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IngressStringToEvaluate.type = Types::IngressStringToEvaluate
    IngressTlsAttribute.add_member(:tls_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS_PROTOCOL", traits: {"smithy.api#enumValue" => "TLS_PROTOCOL"}))
    IngressTlsProtocolAttribute.add_member(:tls1_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS1_2", traits: {"smithy.api#enumValue" => "TLS1_2"}))
    IngressTlsProtocolAttribute.add_member(:tls1_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS1_3", traits: {"smithy.api#enumValue" => "TLS1_3"}))
    IngressTlsProtocolExpression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressTlsProtocolToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    IngressTlsProtocolExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressTlsProtocolOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    IngressTlsProtocolExpression.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressTlsProtocolAttribute, name: "Value", traits: {"smithy.api#required" => {}}))
    IngressTlsProtocolExpression.type = Types::IngressTlsProtocolExpression
    IngressTlsProtocolOperator.add_member(:minimum_tls_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMUM_TLS_VERSION", traits: {"smithy.api#enumValue" => "MINIMUM_TLS_VERSION"}))
    IngressTlsProtocolOperator.add_member(:is, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS", traits: {"smithy.api#enumValue" => "IS"}))
    IngressTlsProtocolToEvaluate.add_member(:attribute, Types::IngressTlsProtocolToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressTlsAttribute, name: "Attribute"))
    IngressTlsProtocolToEvaluate.add_member(:unknown, Types::IngressTlsProtocolToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IngressTlsProtocolToEvaluate.type = Types::IngressTlsProtocolToEvaluate
    IpType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IpType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    Ipv4Cidrs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Cidr, name: "member")
    Ipv6Cidrs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Cidr, name: "member")
    ListAddonInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAddonInstancesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    ListAddonInstancesRequest.type = Types::ListAddonInstancesRequest
    ListAddonInstancesResponse.add_member(:addon_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonInstances, name: "AddonInstances"))
    ListAddonInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAddonInstancesResponse.type = Types::ListAddonInstancesResponse
    ListAddonSubscriptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAddonSubscriptionsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    ListAddonSubscriptionsRequest.type = Types::ListAddonSubscriptionsRequest
    ListAddonSubscriptionsResponse.add_member(:addon_subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonSubscriptions, name: "AddonSubscriptions"))
    ListAddonSubscriptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAddonSubscriptionsResponse.type = Types::ListAddonSubscriptionsResponse
    ListAddressListImportJobsRequest.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    ListAddressListImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAddressListImportJobsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    ListAddressListImportJobsRequest.type = Types::ListAddressListImportJobsRequest
    ListAddressListImportJobsResponse.add_member(:import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobs, name: "ImportJobs", traits: {"smithy.api#required" => {}}))
    ListAddressListImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAddressListImportJobsResponse.type = Types::ListAddressListImportJobsResponse
    ListAddressListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAddressListsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    ListAddressListsRequest.type = Types::ListAddressListsRequest
    ListAddressListsResponse.add_member(:address_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressLists, name: "AddressLists", traits: {"smithy.api#required" => {}}))
    ListAddressListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAddressListsResponse.type = Types::ListAddressListsResponse
    ListArchiveExportsRequest.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveId, name: "ArchiveId", traits: {"smithy.api#required" => {}}))
    ListArchiveExportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListArchiveExportsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    ListArchiveExportsRequest.type = Types::ListArchiveExportsRequest
    ListArchiveExportsResponse.add_member(:exports, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSummaryList, name: "Exports"))
    ListArchiveExportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListArchiveExportsResponse.type = Types::ListArchiveExportsResponse
    ListArchiveSearchesRequest.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveId, name: "ArchiveId", traits: {"smithy.api#required" => {}}))
    ListArchiveSearchesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListArchiveSearchesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    ListArchiveSearchesRequest.type = Types::ListArchiveSearchesRequest
    ListArchiveSearchesResponse.add_member(:searches, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSummaryList, name: "Searches"))
    ListArchiveSearchesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListArchiveSearchesResponse.type = Types::ListArchiveSearchesResponse
    ListArchivesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListArchivesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    ListArchivesRequest.type = Types::ListArchivesRequest
    ListArchivesResponse.add_member(:archives, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivesList, name: "Archives", traits: {"smithy.api#required" => {}}))
    ListArchivesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListArchivesResponse.type = Types::ListArchivesResponse
    ListIngressPointsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    ListIngressPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListIngressPointsRequest.type = Types::ListIngressPointsRequest
    ListIngressPointsResponse.add_member(:ingress_points, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointsList, name: "IngressPoints"))
    ListIngressPointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListIngressPointsResponse.type = Types::ListIngressPointsResponse
    ListMembersOfAddressListRequest.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    ListMembersOfAddressListRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressFilter, name: "Filter"))
    ListMembersOfAddressListRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListMembersOfAddressListRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressPageSize, name: "PageSize"))
    ListMembersOfAddressListRequest.type = Types::ListMembersOfAddressListRequest
    ListMembersOfAddressListResponse.add_member(:addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: SavedAddresses, name: "Addresses", traits: {"smithy.api#required" => {}}))
    ListMembersOfAddressListResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListMembersOfAddressListResponse.type = Types::ListMembersOfAddressListResponse
    ListRelaysRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "PageSize"))
    ListRelaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListRelaysRequest.type = Types::ListRelaysRequest
    ListRelaysResponse.add_member(:relays, ::Smithy::Schema::Shapes::MemberShape.new(target: Relays, name: "Relays", traits: {"smithy.api#required" => {}}))
    ListRelaysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListRelaysResponse.type = Types::ListRelaysResponse
    ListRuleSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListRuleSetsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    ListRuleSetsRequest.type = Types::ListRuleSetsRequest
    ListRuleSetsResponse.add_member(:rule_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSets, name: "RuleSets", traits: {"smithy.api#required" => {}}))
    ListRuleSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListRuleSetsResponse.type = Types::ListRuleSetsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTrafficPoliciesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    ListTrafficPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListTrafficPoliciesRequest.type = Types::ListTrafficPoliciesRequest
    ListTrafficPoliciesResponse.add_member(:traffic_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyList, name: "TrafficPolicies"))
    ListTrafficPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListTrafficPoliciesResponse.type = Types::ListTrafficPoliciesResponse
    MailFrom.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    MailFrom.add_member(:preserve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    MessageBody.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Text"))
    MessageBody.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Html"))
    MessageBody.add_member(:message_malformed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MessageMalformed"))
    MessageBody.type = Types::MessageBody
    Metadata.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Timestamp"))
    Metadata.add_member(:ingress_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointId, name: "IngressPointId"))
    Metadata.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyId, name: "TrafficPolicyId"))
    Metadata.add_member(:rule_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetId, name: "RuleSetId"))
    Metadata.add_member(:sender_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderHostname"))
    Metadata.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIpAddress, name: "SenderIpAddress"))
    Metadata.add_member(:tls_cipher_suite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TlsCipherSuite"))
    Metadata.add_member(:tls_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TlsProtocol"))
    Metadata.add_member(:sending_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SendingMethod"))
    Metadata.add_member(:source_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceIdentity"))
    Metadata.add_member(:sending_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SendingPool"))
    Metadata.add_member(:configuration_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSet"))
    Metadata.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceArn"))
    Metadata.type = Types::Metadata
    NetworkConfiguration.add_member(:public_network_configuration, Types::NetworkConfiguration::PublicNetworkConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicNetworkConfiguration, name: "PublicNetworkConfiguration"))
    NetworkConfiguration.add_member(:private_network_configuration, Types::NetworkConfiguration::PrivateNetworkConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateNetworkConfiguration, name: "PrivateNetworkConfiguration"))
    NetworkConfiguration.add_member(:unknown, Types::NetworkConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NetworkConfiguration.type = Types::NetworkConfiguration
    NoAuthentication.type = Types::NoAuthentication
    PolicyCondition.add_member(:string_expression, Types::PolicyCondition::StringExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressStringExpression, name: "StringExpression"))
    PolicyCondition.add_member(:ip_expression, Types::PolicyCondition::IpExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressIpv4Expression, name: "IpExpression"))
    PolicyCondition.add_member(:ipv6_expression, Types::PolicyCondition::Ipv6Expression, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressIpv6Expression, name: "Ipv6Expression"))
    PolicyCondition.add_member(:tls_expression, Types::PolicyCondition::TlsExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressTlsProtocolExpression, name: "TlsExpression"))
    PolicyCondition.add_member(:boolean_expression, Types::PolicyCondition::BooleanExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressBooleanExpression, name: "BooleanExpression"))
    PolicyCondition.add_member(:unknown, Types::PolicyCondition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PolicyCondition.type = Types::PolicyCondition
    PolicyConditions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyCondition, name: "member")
    PolicyStatement.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyConditions, name: "Conditions", traits: {"smithy.api#required" => {}}))
    PolicyStatement.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptAction, name: "Action", traits: {"smithy.api#required" => {}}))
    PolicyStatement.type = Types::PolicyStatement
    PolicyStatementList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatement, name: "member")
    PrivateNetworkConfiguration.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "VpcEndpointId", traits: {"smithy.api#required" => {}}))
    PrivateNetworkConfiguration.type = Types::PrivateNetworkConfiguration
    PublicNetworkConfiguration.add_member(:ip_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpType, name: "IpType", traits: {"smithy.api#default" => "IPV4", "smithy.api#required" => {}}))
    PublicNetworkConfiguration.type = Types::PublicNetworkConfiguration
    Recipients.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "member")
    RegisterMemberToAddressListRequest.add_member(:address_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListId, name: "AddressListId", traits: {"smithy.api#required" => {}}))
    RegisterMemberToAddressListRequest.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address", traits: {"smithy.api#required" => {}}))
    RegisterMemberToAddressListRequest.type = Types::RegisterMemberToAddressListRequest
    RegisterMemberToAddressListResponse.type = Types::RegisterMemberToAddressListResponse
    Relay.add_member(:relay_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayId, name: "RelayId"))
    Relay.add_member(:relay_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayName, name: "RelayName"))
    Relay.add_member(:last_modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedTimestamp"))
    Relay.type = Types::Relay
    RelayAction.add_member(:action_failure_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionFailurePolicy, name: "ActionFailurePolicy"))
    RelayAction.add_member(:relay, ::Smithy::Schema::Shapes::MemberShape.new(target: IdOrArn, name: "Relay", traits: {"smithy.api#required" => {}}))
    RelayAction.add_member(:mail_from, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFrom, name: "MailFrom"))
    RelayAction.type = Types::RelayAction
    RelayAuthentication.add_member(:secret_arn, Types::RelayAuthentication::SecretArn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    RelayAuthentication.add_member(:no_authentication, Types::RelayAuthentication::NoAuthentication, ::Smithy::Schema::Shapes::MemberShape.new(target: NoAuthentication, name: "NoAuthentication"))
    RelayAuthentication.add_member(:unknown, Types::RelayAuthentication::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RelayAuthentication.type = Types::RelayAuthentication
    Relays.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Relay, name: "member")
    ReplaceRecipientAction.add_member(:replace_with, ::Smithy::Schema::Shapes::MemberShape.new(target: Recipients, name: "ReplaceWith"))
    ReplaceRecipientAction.type = Types::ReplaceRecipientAction
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetentionPeriod.add_member(:three_months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREE_MONTHS", traits: {"smithy.api#enumValue" => "THREE_MONTHS"}))
    RetentionPeriod.add_member(:six_months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIX_MONTHS", traits: {"smithy.api#enumValue" => "SIX_MONTHS"}))
    RetentionPeriod.add_member(:nine_months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NINE_MONTHS", traits: {"smithy.api#enumValue" => "NINE_MONTHS"}))
    RetentionPeriod.add_member(:one_year, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_YEAR", traits: {"smithy.api#enumValue" => "ONE_YEAR"}))
    RetentionPeriod.add_member(:eighteen_months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EIGHTEEN_MONTHS", traits: {"smithy.api#enumValue" => "EIGHTEEN_MONTHS"}))
    RetentionPeriod.add_member(:two_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TWO_YEARS", traits: {"smithy.api#enumValue" => "TWO_YEARS"}))
    RetentionPeriod.add_member(:thirty_months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THIRTY_MONTHS", traits: {"smithy.api#enumValue" => "THIRTY_MONTHS"}))
    RetentionPeriod.add_member(:three_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREE_YEARS", traits: {"smithy.api#enumValue" => "THREE_YEARS"}))
    RetentionPeriod.add_member(:four_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOUR_YEARS", traits: {"smithy.api#enumValue" => "FOUR_YEARS"}))
    RetentionPeriod.add_member(:five_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIVE_YEARS", traits: {"smithy.api#enumValue" => "FIVE_YEARS"}))
    RetentionPeriod.add_member(:six_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIX_YEARS", traits: {"smithy.api#enumValue" => "SIX_YEARS"}))
    RetentionPeriod.add_member(:seven_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEVEN_YEARS", traits: {"smithy.api#enumValue" => "SEVEN_YEARS"}))
    RetentionPeriod.add_member(:eight_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EIGHT_YEARS", traits: {"smithy.api#enumValue" => "EIGHT_YEARS"}))
    RetentionPeriod.add_member(:nine_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NINE_YEARS", traits: {"smithy.api#enumValue" => "NINE_YEARS"}))
    RetentionPeriod.add_member(:ten_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEN_YEARS", traits: {"smithy.api#enumValue" => "TEN_YEARS"}))
    RetentionPeriod.add_member(:permanent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERMANENT", traits: {"smithy.api#enumValue" => "PERMANENT"}))
    Row.add_member(:archived_message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivedMessageId, name: "ArchivedMessageId"))
    Row.add_member(:received_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ReceivedTimestamp"))
    Row.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Date"))
    Row.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "To"))
    Row.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "From"))
    Row.add_member(:cc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Cc"))
    Row.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Subject"))
    Row.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MessageId"))
    Row.add_member(:has_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "HasAttachments"))
    Row.add_member(:received_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailReceivedHeadersList, name: "ReceivedHeaders"))
    Row.add_member(:in_reply_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InReplyTo"))
    Row.add_member(:x_mailer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "XMailer"))
    Row.add_member(:x_original_mailer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "XOriginalMailer"))
    Row.add_member(:x_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "XPriority"))
    Row.add_member(:ingress_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointId, name: "IngressPointId"))
    Row.add_member(:sender_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderHostname"))
    Row.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIpAddress, name: "SenderIpAddress"))
    Row.add_member(:envelope, ::Smithy::Schema::Shapes::MemberShape.new(target: Envelope, name: "Envelope"))
    Row.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceArn"))
    Row.type = Types::Row
    RowsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Row, name: "member")
    Rule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name"))
    Rule.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConditions, name: "Conditions"))
    Rule.add_member(:unless, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConditions, name: "Unless"))
    Rule.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleActions, name: "Actions", traits: {"smithy.api#required" => {}}))
    Rule.type = Types::Rule
    RuleAction.add_member(:drop, Types::RuleAction::Drop, ::Smithy::Schema::Shapes::MemberShape.new(target: DropAction, name: "Drop"))
    RuleAction.add_member(:relay, Types::RuleAction::Relay, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayAction, name: "Relay"))
    RuleAction.add_member(:archive, Types::RuleAction::Archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveAction, name: "Archive"))
    RuleAction.add_member(:write_to_s3, Types::RuleAction::WriteToS3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Action, name: "WriteToS3"))
    RuleAction.add_member(:send, Types::RuleAction::Send, ::Smithy::Schema::Shapes::MemberShape.new(target: SendAction, name: "Send"))
    RuleAction.add_member(:add_header, Types::RuleAction::AddHeader, ::Smithy::Schema::Shapes::MemberShape.new(target: AddHeaderAction, name: "AddHeader"))
    RuleAction.add_member(:replace_recipient, Types::RuleAction::ReplaceRecipient, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplaceRecipientAction, name: "ReplaceRecipient"))
    RuleAction.add_member(:deliver_to_mailbox, Types::RuleAction::DeliverToMailbox, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverToMailboxAction, name: "DeliverToMailbox"))
    RuleAction.add_member(:deliver_to_q_business, Types::RuleAction::DeliverToQBusiness, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverToQBusinessAction, name: "DeliverToQBusiness"))
    RuleAction.add_member(:publish_to_sns, Types::RuleAction::PublishToSns, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsAction, name: "PublishToSns"))
    RuleAction.add_member(:unknown, Types::RuleAction::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuleAction.type = Types::RuleAction
    RuleActions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "member")
    RuleAddressListArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddressListArn, name: "member")
    RuleAddressListEmailAttribute.add_member(:recipient, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECIPIENT", traits: {"smithy.api#enumValue" => "RECIPIENT"}))
    RuleAddressListEmailAttribute.add_member(:mail_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAIL_FROM", traits: {"smithy.api#enumValue" => "MAIL_FROM"}))
    RuleAddressListEmailAttribute.add_member(:sender, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENDER", traits: {"smithy.api#enumValue" => "SENDER"}))
    RuleAddressListEmailAttribute.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FROM", traits: {"smithy.api#enumValue" => "FROM"}))
    RuleAddressListEmailAttribute.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TO", traits: {"smithy.api#enumValue" => "TO"}))
    RuleAddressListEmailAttribute.add_member(:cc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CC", traits: {"smithy.api#enumValue" => "CC"}))
    RuleBooleanEmailAttribute.add_member(:read_receipt_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_RECEIPT_REQUESTED", traits: {"smithy.api#enumValue" => "READ_RECEIPT_REQUESTED"}))
    RuleBooleanEmailAttribute.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS", traits: {"smithy.api#enumValue" => "TLS"}))
    RuleBooleanEmailAttribute.add_member(:tls_wrapped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS_WRAPPED", traits: {"smithy.api#enumValue" => "TLS_WRAPPED"}))
    RuleBooleanExpression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleBooleanToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    RuleBooleanExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleBooleanOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    RuleBooleanExpression.type = Types::RuleBooleanExpression
    RuleBooleanOperator.add_member(:is_true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS_TRUE", traits: {"smithy.api#enumValue" => "IS_TRUE"}))
    RuleBooleanOperator.add_member(:is_false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS_FALSE", traits: {"smithy.api#enumValue" => "IS_FALSE"}))
    RuleBooleanToEvaluate.add_member(:attribute, Types::RuleBooleanToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleBooleanEmailAttribute, name: "Attribute"))
    RuleBooleanToEvaluate.add_member(:analysis, Types::RuleBooleanToEvaluate::Analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: Analysis, name: "Analysis"))
    RuleBooleanToEvaluate.add_member(:is_in_address_list, Types::RuleBooleanToEvaluate::IsInAddressList, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIsInAddressList, name: "IsInAddressList"))
    RuleBooleanToEvaluate.add_member(:unknown, Types::RuleBooleanToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuleBooleanToEvaluate.type = Types::RuleBooleanToEvaluate
    RuleCondition.add_member(:boolean_expression, Types::RuleCondition::BooleanExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleBooleanExpression, name: "BooleanExpression"))
    RuleCondition.add_member(:string_expression, Types::RuleCondition::StringExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStringExpression, name: "StringExpression"))
    RuleCondition.add_member(:number_expression, Types::RuleCondition::NumberExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleNumberExpression, name: "NumberExpression"))
    RuleCondition.add_member(:ip_expression, Types::RuleCondition::IpExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIpExpression, name: "IpExpression"))
    RuleCondition.add_member(:verdict_expression, Types::RuleCondition::VerdictExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleVerdictExpression, name: "VerdictExpression"))
    RuleCondition.add_member(:dmarc_expression, Types::RuleCondition::DmarcExpression, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDmarcExpression, name: "DmarcExpression"))
    RuleCondition.add_member(:unknown, Types::RuleCondition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuleCondition.type = Types::RuleCondition
    RuleConditions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCondition, name: "member")
    RuleDmarcExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDmarcOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    RuleDmarcExpression.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDmarcValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    RuleDmarcExpression.type = Types::RuleDmarcExpression
    RuleDmarcOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    RuleDmarcOperator.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    RuleDmarcPolicy.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    RuleDmarcPolicy.add_member(:quarantine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUARANTINE", traits: {"smithy.api#enumValue" => "QUARANTINE"}))
    RuleDmarcPolicy.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    RuleDmarcValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDmarcPolicy, name: "member")
    RuleIpEmailAttribute.add_member(:source_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_IP", traits: {"smithy.api#enumValue" => "SOURCE_IP"}))
    RuleIpExpression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIpToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    RuleIpExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIpOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    RuleIpExpression.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIpValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    RuleIpExpression.type = Types::RuleIpExpression
    RuleIpOperator.add_member(:cidr_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CIDR_MATCHES", traits: {"smithy.api#enumValue" => "CIDR_MATCHES"}))
    RuleIpOperator.add_member(:not_cidr_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CIDR_MATCHES", traits: {"smithy.api#enumValue" => "NOT_CIDR_MATCHES"}))
    RuleIpToEvaluate.add_member(:attribute, Types::RuleIpToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIpEmailAttribute, name: "Attribute"))
    RuleIpToEvaluate.add_member(:unknown, Types::RuleIpToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuleIpToEvaluate.type = Types::RuleIpToEvaluate
    RuleIpValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIpStringValue, name: "member")
    RuleIsInAddressList.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAddressListEmailAttribute, name: "Attribute", traits: {"smithy.api#required" => {}}))
    RuleIsInAddressList.add_member(:address_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAddressListArnList, name: "AddressLists", traits: {"smithy.api#required" => {}}))
    RuleIsInAddressList.type = Types::RuleIsInAddressList
    RuleNumberEmailAttribute.add_member(:message_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MESSAGE_SIZE", traits: {"smithy.api#enumValue" => "MESSAGE_SIZE"}))
    RuleNumberExpression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleNumberToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    RuleNumberExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleNumberOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    RuleNumberExpression.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "Value", traits: {"smithy.api#required" => {}}))
    RuleNumberExpression.type = Types::RuleNumberExpression
    RuleNumberOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    RuleNumberOperator.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    RuleNumberOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    RuleNumberOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    RuleNumberOperator.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL"}))
    RuleNumberOperator.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    RuleNumberToEvaluate.add_member(:attribute, Types::RuleNumberToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleNumberEmailAttribute, name: "Attribute"))
    RuleNumberToEvaluate.add_member(:unknown, Types::RuleNumberToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuleNumberToEvaluate.type = Types::RuleNumberToEvaluate
    RuleSet.add_member(:rule_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetId, name: "RuleSetId"))
    RuleSet.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetName, name: "RuleSetName"))
    RuleSet.add_member(:last_modification_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModificationDate"))
    RuleSet.type = Types::RuleSet
    RuleSets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSet, name: "member")
    RuleStringEmailAttribute.add_member(:mail_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAIL_FROM", traits: {"smithy.api#enumValue" => "MAIL_FROM"}))
    RuleStringEmailAttribute.add_member(:helo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HELO", traits: {"smithy.api#enumValue" => "HELO"}))
    RuleStringEmailAttribute.add_member(:recipient, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECIPIENT", traits: {"smithy.api#enumValue" => "RECIPIENT"}))
    RuleStringEmailAttribute.add_member(:sender, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENDER", traits: {"smithy.api#enumValue" => "SENDER"}))
    RuleStringEmailAttribute.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FROM", traits: {"smithy.api#enumValue" => "FROM"}))
    RuleStringEmailAttribute.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBJECT", traits: {"smithy.api#enumValue" => "SUBJECT"}))
    RuleStringEmailAttribute.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TO", traits: {"smithy.api#enumValue" => "TO"}))
    RuleStringEmailAttribute.add_member(:cc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CC", traits: {"smithy.api#enumValue" => "CC"}))
    RuleStringExpression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStringToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    RuleStringExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStringOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    RuleStringExpression.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStringList, name: "Values", traits: {"smithy.api#required" => {}}))
    RuleStringExpression.type = Types::RuleStringExpression
    RuleStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStringValue, name: "member")
    RuleStringOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    RuleStringOperator.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    RuleStringOperator.add_member(:starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTS_WITH", traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    RuleStringOperator.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    RuleStringOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    RuleStringToEvaluate.add_member(:attribute, Types::RuleStringToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStringEmailAttribute, name: "Attribute"))
    RuleStringToEvaluate.add_member(:mime_header_attribute, Types::RuleStringToEvaluate::MimeHeaderAttribute, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeHeaderAttribute, name: "MimeHeaderAttribute"))
    RuleStringToEvaluate.add_member(:analysis, Types::RuleStringToEvaluate::Analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: Analysis, name: "Analysis"))
    RuleStringToEvaluate.add_member(:unknown, Types::RuleStringToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuleStringToEvaluate.type = Types::RuleStringToEvaluate
    RuleVerdict.add_member(:pass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS", traits: {"smithy.api#enumValue" => "PASS"}))
    RuleVerdict.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "FAIL"}))
    RuleVerdict.add_member(:gray, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GRAY", traits: {"smithy.api#enumValue" => "GRAY"}))
    RuleVerdict.add_member(:processing_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING_FAILED", traits: {"smithy.api#enumValue" => "PROCESSING_FAILED"}))
    RuleVerdictAttribute.add_member(:spf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPF", traits: {"smithy.api#enumValue" => "SPF"}))
    RuleVerdictAttribute.add_member(:dkim, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DKIM", traits: {"smithy.api#enumValue" => "DKIM"}))
    RuleVerdictExpression.add_member(:evaluate, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleVerdictToEvaluate, name: "Evaluate", traits: {"smithy.api#required" => {}}))
    RuleVerdictExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleVerdictOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    RuleVerdictExpression.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleVerdictValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    RuleVerdictExpression.type = Types::RuleVerdictExpression
    RuleVerdictOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    RuleVerdictOperator.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    RuleVerdictToEvaluate.add_member(:attribute, Types::RuleVerdictToEvaluate::Attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleVerdictAttribute, name: "Attribute"))
    RuleVerdictToEvaluate.add_member(:analysis, Types::RuleVerdictToEvaluate::Analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: Analysis, name: "Analysis"))
    RuleVerdictToEvaluate.add_member(:unknown, Types::RuleVerdictToEvaluate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuleVerdictToEvaluate.type = Types::RuleVerdictToEvaluate
    RuleVerdictValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleVerdict, name: "member")
    Rules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "member")
    S3Action.add_member(:action_failure_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionFailurePolicy, name: "ActionFailurePolicy"))
    S3Action.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    S3Action.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    S3Action.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "S3Prefix"))
    S3Action.add_member(:s3_sse_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "S3SseKmsKeyId"))
    S3Action.type = Types::S3Action
    S3ExportDestinationConfiguration.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "S3Location"))
    S3ExportDestinationConfiguration.type = Types::S3ExportDestinationConfiguration
    SavedAddress.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address", traits: {"smithy.api#required" => {}}))
    SavedAddress.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    SavedAddress.type = Types::SavedAddress
    SavedAddresses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SavedAddress, name: "member")
    SearchState.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    SearchState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    SearchState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    SearchState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SearchState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    SearchStatus.add_member(:submission_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "SubmissionTimestamp"))
    SearchStatus.add_member(:completion_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CompletionTimestamp"))
    SearchStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchState, name: "State"))
    SearchStatus.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    SearchStatus.type = Types::SearchStatus
    SearchSummary.add_member(:search_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchId, name: "SearchId"))
    SearchSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchStatus, name: "Status"))
    SearchSummary.type = Types::SearchSummary
    SearchSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSummary, name: "member")
    SendAction.add_member(:action_failure_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionFailurePolicy, name: "ActionFailurePolicy"))
    SendAction.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    SendAction.type = Types::SendAction
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnsAction.add_member(:action_failure_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionFailurePolicy, name: "ActionFailurePolicy"))
    SnsAction.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicArn, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    SnsAction.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    SnsAction.add_member(:encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsNotificationEncoding, name: "Encoding", traits: {"smithy.api#default" => "UTF-8"}))
    SnsAction.add_member(:payload_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsNotificationPayloadType, name: "PayloadType", traits: {"smithy.api#default" => "CONTENT"}))
    SnsAction.type = Types::SnsAction
    SnsNotificationEncoding.add_member(:utf_8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTF_8", traits: {"smithy.api#enumValue" => "UTF-8"}))
    SnsNotificationEncoding.add_member(:base64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE64", traits: {"smithy.api#enumValue" => "BASE64"}))
    SnsNotificationPayloadType.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEADERS", traits: {"smithy.api#enumValue" => "HEADERS"}))
    SnsNotificationPayloadType.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT", traits: {"smithy.api#enumValue" => "CONTENT"}))
    StartAddressListImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StartAddressListImportJobRequest.type = Types::StartAddressListImportJobRequest
    StartAddressListImportJobResponse.type = Types::StartAddressListImportJobResponse
    StartArchiveExportRequest.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveId, name: "ArchiveId", traits: {"smithy.api#required" => {}}))
    StartArchiveExportRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveFilters, name: "Filters"))
    StartArchiveExportRequest.add_member(:from_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "FromTimestamp", traits: {"smithy.api#required" => {}}))
    StartArchiveExportRequest.add_member(:to_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ToTimestamp", traits: {"smithy.api#required" => {}}))
    StartArchiveExportRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportMaxResults, name: "MaxResults"))
    StartArchiveExportRequest.add_member(:export_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestinationConfiguration, name: "ExportDestinationConfiguration", traits: {"smithy.api#required" => {}}))
    StartArchiveExportRequest.add_member(:include_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IncludeMetadata"))
    StartArchiveExportRequest.type = Types::StartArchiveExportRequest
    StartArchiveExportResponse.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportId, name: "ExportId"))
    StartArchiveExportResponse.type = Types::StartArchiveExportResponse
    StartArchiveSearchRequest.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveId, name: "ArchiveId", traits: {"smithy.api#required" => {}}))
    StartArchiveSearchRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveFilters, name: "Filters"))
    StartArchiveSearchRequest.add_member(:from_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "FromTimestamp", traits: {"smithy.api#required" => {}}))
    StartArchiveSearchRequest.add_member(:to_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ToTimestamp", traits: {"smithy.api#required" => {}}))
    StartArchiveSearchRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchMaxResults, name: "MaxResults", traits: {"smithy.api#required" => {}}))
    StartArchiveSearchRequest.type = Types::StartArchiveSearchRequest
    StartArchiveSearchResponse.add_member(:search_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchId, name: "SearchId"))
    StartArchiveSearchResponse.type = Types::StartArchiveSearchResponse
    StopAddressListImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    StopAddressListImportJobRequest.type = Types::StopAddressListImportJobRequest
    StopAddressListImportJobResponse.type = Types::StopAddressListImportJobResponse
    StopArchiveExportRequest.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportId, name: "ExportId", traits: {"smithy.api#required" => {}}))
    StopArchiveExportRequest.type = Types::StopArchiveExportRequest
    StopArchiveExportResponse.type = Types::StopArchiveExportResponse
    StopArchiveSearchRequest.add_member(:search_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchId, name: "SearchId", traits: {"smithy.api#required" => {}}))
    StopArchiveSearchRequest.type = Types::StopArchiveSearchRequest
    StopArchiveSearchResponse.type = Types::StopArchiveSearchResponse
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    StringValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue, name: "member")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TrafficPolicy.add_member(:traffic_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyName, name: "TrafficPolicyName", traits: {"smithy.api#required" => {}}))
    TrafficPolicy.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyId, name: "TrafficPolicyId", traits: {"smithy.api#required" => {}}))
    TrafficPolicy.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptAction, name: "DefaultAction", traits: {"smithy.api#required" => {}}))
    TrafficPolicy.type = Types::TrafficPolicy
    TrafficPolicyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicy, name: "member")
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateArchiveRequest.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveIdString, name: "ArchiveId", traits: {"smithy.api#required" => {}}))
    UpdateArchiveRequest.add_member(:archive_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveNameString, name: "ArchiveName"))
    UpdateArchiveRequest.add_member(:retention, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveRetention, name: "Retention"))
    UpdateArchiveRequest.type = Types::UpdateArchiveRequest
    UpdateArchiveResponse.type = Types::UpdateArchiveResponse
    UpdateIngressPointRequest.add_member(:ingress_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointId, name: "IngressPointId", traits: {"smithy.api#required" => {}}))
    UpdateIngressPointRequest.add_member(:ingress_point_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointName, name: "IngressPointName"))
    UpdateIngressPointRequest.add_member(:status_to_update, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointStatusToUpdate, name: "StatusToUpdate"))
    UpdateIngressPointRequest.add_member(:rule_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetId, name: "RuleSetId"))
    UpdateIngressPointRequest.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyId, name: "TrafficPolicyId"))
    UpdateIngressPointRequest.add_member(:ingress_point_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPointConfiguration, name: "IngressPointConfiguration"))
    UpdateIngressPointRequest.type = Types::UpdateIngressPointRequest
    UpdateIngressPointResponse.type = Types::UpdateIngressPointResponse
    UpdateRelayRequest.add_member(:relay_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayId, name: "RelayId", traits: {"smithy.api#required" => {}}))
    UpdateRelayRequest.add_member(:relay_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayName, name: "RelayName"))
    UpdateRelayRequest.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayServerName, name: "ServerName"))
    UpdateRelayRequest.add_member(:server_port, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayServerPort, name: "ServerPort"))
    UpdateRelayRequest.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayAuthentication, name: "Authentication"))
    UpdateRelayRequest.type = Types::UpdateRelayRequest
    UpdateRelayResponse.type = Types::UpdateRelayResponse
    UpdateRuleSetRequest.add_member(:rule_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetId, name: "RuleSetId", traits: {"smithy.api#required" => {}}))
    UpdateRuleSetRequest.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetName, name: "RuleSetName"))
    UpdateRuleSetRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, name: "Rules"))
    UpdateRuleSetRequest.type = Types::UpdateRuleSetRequest
    UpdateRuleSetResponse.type = Types::UpdateRuleSetResponse
    UpdateTrafficPolicyRequest.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyId, name: "TrafficPolicyId", traits: {"smithy.api#required" => {}}))
    UpdateTrafficPolicyRequest.add_member(:traffic_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficPolicyName, name: "TrafficPolicyName"))
    UpdateTrafficPolicyRequest.add_member(:policy_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatementList, name: "PolicyStatements"))
    UpdateTrafficPolicyRequest.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptAction, name: "DefaultAction"))
    UpdateTrafficPolicyRequest.add_member(:max_message_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxMessageSizeBytes, name: "MaxMessageSizeBytes"))
    UpdateTrafficPolicyRequest.type = Types::UpdateTrafficPolicyRequest
    UpdateTrafficPolicyResponse.type = Types::UpdateTrafficPolicyResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ValidationException.type = Types::ValidationException

    MailManagerSvc = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mailmanager#MailManagerSvc"
      service.name = "MailManagerSvc"
      service.version = "2023-10-17"
      service.traits = {"aws.api#service" => {"sdkId" => "MailManager", "cloudFormationName" => "SES", "endpointPrefix" => "mail-manager", "arnNamespace" => "ses"}, "aws.auth#sigv4" => {"name" => "ses"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {}, "smithy.api#externalDocumentation" => {"API Reference" => "https://w.amazon.com/bin/view/AWS/Border"}, "smithy.api#title" => "MailManager"}
      service.add_operation(:create_addon_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateAddonInstance"
        operation.name = "CreateAddonInstance"
        operation.input = CreateAddonInstanceRequest
        operation.output = CreateAddonInstanceResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_addon_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateAddonSubscription"
        operation.name = "CreateAddonSubscription"
        operation.input = CreateAddonSubscriptionRequest
        operation.output = CreateAddonSubscriptionResponse
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_address_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateAddressList"
        operation.name = "CreateAddressList"
        operation.input = CreateAddressListRequest
        operation.output = CreateAddressListResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_address_list_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateAddressListImportJob"
        operation.name = "CreateAddressListImportJob"
        operation.input = CreateAddressListImportJobRequest
        operation.output = CreateAddressListImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateArchive"
        operation.name = "CreateArchive"
        operation.input = CreateArchiveRequest
        operation.output = CreateArchiveResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ingress_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateIngressPoint"
        operation.name = "CreateIngressPoint"
        operation.input = CreateIngressPointRequest
        operation.output = CreateIngressPointResponse
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_relay, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateRelay"
        operation.name = "CreateRelay"
        operation.input = CreateRelayRequest
        operation.output = CreateRelayResponse
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateRuleSet"
        operation.name = "CreateRuleSet"
        operation.input = CreateRuleSetRequest
        operation.output = CreateRuleSetResponse
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_traffic_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#CreateTrafficPolicy"
        operation.name = "CreateTrafficPolicy"
        operation.input = CreateTrafficPolicyRequest
        operation.output = CreateTrafficPolicyResponse
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_addon_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteAddonInstance"
        operation.name = "DeleteAddonInstance"
        operation.input = DeleteAddonInstanceRequest
        operation.output = DeleteAddonInstanceResponse
        operation.errors << ConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_addon_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteAddonSubscription"
        operation.name = "DeleteAddonSubscription"
        operation.input = DeleteAddonSubscriptionRequest
        operation.output = DeleteAddonSubscriptionResponse
        operation.errors << ConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_address_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteAddressList"
        operation.name = "DeleteAddressList"
        operation.input = DeleteAddressListRequest
        operation.output = DeleteAddressListResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteArchive"
        operation.name = "DeleteArchive"
        operation.input = DeleteArchiveRequest
        operation.output = DeleteArchiveResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ingress_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteIngressPoint"
        operation.name = "DeleteIngressPoint"
        operation.input = DeleteIngressPointRequest
        operation.output = DeleteIngressPointResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_relay, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteRelay"
        operation.name = "DeleteRelay"
        operation.input = DeleteRelayRequest
        operation.output = DeleteRelayResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteRuleSet"
        operation.name = "DeleteRuleSet"
        operation.input = DeleteRuleSetRequest
        operation.output = DeleteRuleSetResponse
        operation.errors << ConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_traffic_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeleteTrafficPolicy"
        operation.name = "DeleteTrafficPolicy"
        operation.input = DeleteTrafficPolicyRequest
        operation.output = DeleteTrafficPolicyResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_member_from_address_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#DeregisterMemberFromAddressList"
        operation.name = "DeregisterMemberFromAddressList"
        operation.input = DeregisterMemberFromAddressListRequest
        operation.output = DeregisterMemberFromAddressListResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_addon_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetAddonInstance"
        operation.name = "GetAddonInstance"
        operation.input = GetAddonInstanceRequest
        operation.output = GetAddonInstanceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_addon_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetAddonSubscription"
        operation.name = "GetAddonSubscription"
        operation.input = GetAddonSubscriptionRequest
        operation.output = GetAddonSubscriptionResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_address_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetAddressList"
        operation.name = "GetAddressList"
        operation.input = GetAddressListRequest
        operation.output = GetAddressListResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_address_list_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetAddressListImportJob"
        operation.name = "GetAddressListImportJob"
        operation.input = GetAddressListImportJobRequest
        operation.output = GetAddressListImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchive"
        operation.name = "GetArchive"
        operation.input = GetArchiveRequest
        operation.output = GetArchiveResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchiveExport"
        operation.name = "GetArchiveExport"
        operation.input = GetArchiveExportRequest
        operation.output = GetArchiveExportResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_archive_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchiveMessage"
        operation.name = "GetArchiveMessage"
        operation.input = GetArchiveMessageRequest
        operation.output = GetArchiveMessageResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive_message_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchiveMessageContent"
        operation.name = "GetArchiveMessageContent"
        operation.input = GetArchiveMessageContentRequest
        operation.output = GetArchiveMessageContentResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_archive_search, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchiveSearch"
        operation.name = "GetArchiveSearch"
        operation.input = GetArchiveSearchRequest
        operation.output = GetArchiveSearchResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive_search_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetArchiveSearchResults"
        operation.name = "GetArchiveSearchResults"
        operation.input = GetArchiveSearchResultsRequest
        operation.output = GetArchiveSearchResultsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ingress_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetIngressPoint"
        operation.name = "GetIngressPoint"
        operation.input = GetIngressPointRequest
        operation.output = GetIngressPointResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_member_of_address_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetMemberOfAddressList"
        operation.name = "GetMemberOfAddressList"
        operation.input = GetMemberOfAddressListRequest
        operation.output = GetMemberOfAddressListResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_relay, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetRelay"
        operation.name = "GetRelay"
        operation.input = GetRelayRequest
        operation.output = GetRelayResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetRuleSet"
        operation.name = "GetRuleSet"
        operation.input = GetRuleSetRequest
        operation.output = GetRuleSetResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_traffic_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#GetTrafficPolicy"
        operation.name = "GetTrafficPolicy"
        operation.input = GetTrafficPolicyRequest
        operation.output = GetTrafficPolicyResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_addon_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListAddonInstances"
        operation.name = "ListAddonInstances"
        operation.input = ListAddonInstancesRequest
        operation.output = ListAddonInstancesResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAddonInstances.new
      end)
      service.add_operation(:list_addon_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListAddonSubscriptions"
        operation.name = "ListAddonSubscriptions"
        operation.input = ListAddonSubscriptionsRequest
        operation.output = ListAddonSubscriptionsResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAddonSubscriptions.new
      end)
      service.add_operation(:list_address_list_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListAddressListImportJobs"
        operation.name = "ListAddressListImportJobs"
        operation.input = ListAddressListImportJobsRequest
        operation.output = ListAddressListImportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAddressListImportJobs.new
      end)
      service.add_operation(:list_address_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListAddressLists"
        operation.name = "ListAddressLists"
        operation.input = ListAddressListsRequest
        operation.output = ListAddressListsResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAddressLists.new
      end)
      service.add_operation(:list_archive_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListArchiveExports"
        operation.name = "ListArchiveExports"
        operation.input = ListArchiveExportsRequest
        operation.output = ListArchiveExportsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListArchiveExports.new
      end)
      service.add_operation(:list_archive_searches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListArchiveSearches"
        operation.name = "ListArchiveSearches"
        operation.input = ListArchiveSearchesRequest
        operation.output = ListArchiveSearchesResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListArchiveSearches.new
      end)
      service.add_operation(:list_archives, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListArchives"
        operation.name = "ListArchives"
        operation.input = ListArchivesRequest
        operation.output = ListArchivesResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListArchives.new
      end)
      service.add_operation(:list_ingress_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListIngressPoints"
        operation.name = "ListIngressPoints"
        operation.input = ListIngressPointsRequest
        operation.output = ListIngressPointsResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIngressPoints.new
      end)
      service.add_operation(:list_members_of_address_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListMembersOfAddressList"
        operation.name = "ListMembersOfAddressList"
        operation.input = ListMembersOfAddressListRequest
        operation.output = ListMembersOfAddressListResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMembersOfAddressList.new
      end)
      service.add_operation(:list_relays, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListRelays"
        operation.name = "ListRelays"
        operation.input = ListRelaysRequest
        operation.output = ListRelaysResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRelays.new
      end)
      service.add_operation(:list_rule_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListRuleSets"
        operation.name = "ListRuleSets"
        operation.input = ListRuleSetsRequest
        operation.output = ListRuleSetsResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRuleSets.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_traffic_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#ListTrafficPolicies"
        operation.name = "ListTrafficPolicies"
        operation.input = ListTrafficPoliciesRequest
        operation.output = ListTrafficPoliciesResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTrafficPolicies.new
      end)
      service.add_operation(:register_member_to_address_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#RegisterMemberToAddressList"
        operation.name = "RegisterMemberToAddressList"
        operation.input = RegisterMemberToAddressListRequest
        operation.output = RegisterMemberToAddressListResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_address_list_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StartAddressListImportJob"
        operation.name = "StartAddressListImportJob"
        operation.input = StartAddressListImportJobRequest
        operation.output = StartAddressListImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_archive_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StartArchiveExport"
        operation.name = "StartArchiveExport"
        operation.input = StartArchiveExportRequest
        operation.output = StartArchiveExportResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_archive_search, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StartArchiveSearch"
        operation.name = "StartArchiveSearch"
        operation.input = StartArchiveSearchRequest
        operation.output = StartArchiveSearchResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:stop_address_list_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StopAddressListImportJob"
        operation.name = "StopAddressListImportJob"
        operation.input = StopAddressListImportJobRequest
        operation.output = StopAddressListImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_archive_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StopArchiveExport"
        operation.name = "StopArchiveExport"
        operation.input = StopArchiveExportRequest
        operation.output = StopArchiveExportResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:stop_archive_search, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#StopArchiveSearch"
        operation.name = "StopArchiveSearch"
        operation.input = StopArchiveSearchRequest
        operation.output = StopArchiveSearchResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UpdateArchive"
        operation.name = "UpdateArchive"
        operation.input = UpdateArchiveRequest
        operation.output = UpdateArchiveResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ingress_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UpdateIngressPoint"
        operation.name = "UpdateIngressPoint"
        operation.input = UpdateIngressPointRequest
        operation.output = UpdateIngressPointResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_relay, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UpdateRelay"
        operation.name = "UpdateRelay"
        operation.input = UpdateRelayRequest
        operation.output = UpdateRelayResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UpdateRuleSet"
        operation.name = "UpdateRuleSet"
        operation.input = UpdateRuleSetRequest
        operation.output = UpdateRuleSetResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_traffic_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mailmanager#UpdateTrafficPolicy"
        operation.name = "UpdateTrafficPolicy"
        operation.input = UpdateTrafficPolicyRequest
        operation.output = UpdateTrafficPolicyResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
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
