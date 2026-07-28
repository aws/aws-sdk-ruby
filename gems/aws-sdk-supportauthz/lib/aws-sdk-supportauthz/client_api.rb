# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SupportAuthZ
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Action = Shapes::StringShape.new(name: 'Action')
    ActionDescription = Shapes::StringShape.new(name: 'ActionDescription')
    ActionSet = Shapes::UnionShape.new(name: 'ActionSet')
    ActionSummaries = Shapes::ListShape.new(name: 'ActionSummaries')
    ActionSummary = Shapes::StructureShape.new(name: 'ActionSummary')
    Actions = Shapes::ListShape.new(name: 'Actions')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Condition = Shapes::UnionShape.new(name: 'Condition')
    Conditions = Shapes::ListShape.new(name: 'Conditions')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateSupportPermitInput = Shapes::StructureShape.new(name: 'CreateSupportPermitInput')
    CreateSupportPermitOutput = Shapes::StructureShape.new(name: 'CreateSupportPermitOutput')
    DeleteSupportPermitInput = Shapes::StructureShape.new(name: 'DeleteSupportPermitInput')
    DeleteSupportPermitOutput = Shapes::StructureShape.new(name: 'DeleteSupportPermitOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    GetActionInput = Shapes::StructureShape.new(name: 'GetActionInput')
    GetActionOutput = Shapes::StructureShape.new(name: 'GetActionOutput')
    GetSupportPermitInput = Shapes::StructureShape.new(name: 'GetSupportPermitInput')
    GetSupportPermitOutput = Shapes::StructureShape.new(name: 'GetSupportPermitOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListActionsInput = Shapes::StructureShape.new(name: 'ListActionsInput')
    ListActionsOutput = Shapes::StructureShape.new(name: 'ListActionsOutput')
    ListSupportPermitRequestsInput = Shapes::StructureShape.new(name: 'ListSupportPermitRequestsInput')
    ListSupportPermitRequestsOutput = Shapes::StructureShape.new(name: 'ListSupportPermitRequestsOutput')
    ListSupportPermitsInput = Shapes::StructureShape.new(name: 'ListSupportPermitsInput')
    ListSupportPermitsOutput = Shapes::StructureShape.new(name: 'ListSupportPermitsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Permit = Shapes::StructureShape.new(name: 'Permit')
    RejectSupportPermitRequestInput = Shapes::StructureShape.new(name: 'RejectSupportPermitRequestInput')
    RejectSupportPermitRequestOutput = Shapes::StructureShape.new(name: 'RejectSupportPermitRequestOutput')
    RequestArn = Shapes::StringShape.new(name: 'RequestArn')
    Resource = Shapes::StringShape.new(name: 'Resource')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceSet = Shapes::UnionShape.new(name: 'ResourceSet')
    Resources = Shapes::ListShape.new(name: 'Resources')
    Service = Shapes::StringShape.new(name: 'Service')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SigningKeyInfo = Shapes::UnionShape.new(name: 'SigningKeyInfo')
    String = Shapes::StringShape.new(name: 'String')
    SupportCaseDisplayId = Shapes::StringShape.new(name: 'SupportCaseDisplayId')
    SupportPermitIdentifier = Shapes::StringShape.new(name: 'SupportPermitIdentifier')
    SupportPermitRequest = Shapes::StructureShape.new(name: 'SupportPermitRequest')
    SupportPermitRequestStatus = Shapes::StringShape.new(name: 'SupportPermitRequestStatus')
    SupportPermitRequests = Shapes::ListShape.new(name: 'SupportPermitRequests')
    SupportPermitStatus = Shapes::StringShape.new(name: 'SupportPermitStatus')
    SupportPermitStatuses = Shapes::ListShape.new(name: 'SupportPermitStatuses')
    SupportPermitSummaries = Shapes::ListShape.new(name: 'SupportPermitSummaries')
    SupportPermitSummary = Shapes::StructureShape.new(name: 'SupportPermitSummary')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Unit = Shapes::StructureShape.new(name: 'Unit')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionSet.add_member(:all_actions, Shapes::ShapeRef.new(shape: Unit, location_name: "allActions"))
    ActionSet.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, location_name: "actions"))
    ActionSet.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ActionSet.add_member_subclass(:all_actions, Types::ActionSet::AllActions)
    ActionSet.add_member_subclass(:actions, Types::ActionSet::Actions)
    ActionSet.add_member_subclass(:unknown, Types::ActionSet::Unknown)
    ActionSet.struct_class = Types::ActionSet

    ActionSummaries.member = Shapes::ShapeRef.new(shape: ActionSummary)

    ActionSummary.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "action"))
    ActionSummary.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    ActionSummary.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, required: true, location_name: "description"))
    ActionSummary.struct_class = Types::ActionSummary

    Actions.member = Shapes::ShapeRef.new(shape: Action)

    Condition.add_member(:allow_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "allowAfter"))
    Condition.add_member(:allow_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "allowBefore"))
    Condition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Condition.add_member_subclass(:allow_after, Types::Condition::AllowAfter)
    Condition.add_member_subclass(:allow_before, Types::Condition::AllowBefore)
    Condition.add_member_subclass(:unknown, Types::Condition::Unknown)
    Condition.struct_class = Types::Condition

    Conditions.member = Shapes::ShapeRef.new(shape: Condition)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateSupportPermitInput.add_member(:permit, Shapes::ShapeRef.new(shape: Permit, required: true, location_name: "permit"))
    CreateSupportPermitInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateSupportPermitInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSupportPermitInput.add_member(:signing_key_info, Shapes::ShapeRef.new(shape: SigningKeyInfo, required: true, location_name: "signingKeyInfo"))
    CreateSupportPermitInput.add_member(:support_case_display_id, Shapes::ShapeRef.new(shape: SupportCaseDisplayId, location_name: "supportCaseDisplayId"))
    CreateSupportPermitInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateSupportPermitInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateSupportPermitInput.struct_class = Types::CreateSupportPermitInput

    CreateSupportPermitOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateSupportPermitOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    CreateSupportPermitOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSupportPermitOutput.add_member(:permit, Shapes::ShapeRef.new(shape: Permit, required: true, location_name: "permit"))
    CreateSupportPermitOutput.add_member(:status, Shapes::ShapeRef.new(shape: SupportPermitStatus, required: true, location_name: "status"))
    CreateSupportPermitOutput.add_member(:signing_key_info, Shapes::ShapeRef.new(shape: SigningKeyInfo, required: true, location_name: "signingKeyInfo"))
    CreateSupportPermitOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateSupportPermitOutput.add_member(:support_case_display_id, Shapes::ShapeRef.new(shape: SupportCaseDisplayId, location_name: "supportCaseDisplayId"))
    CreateSupportPermitOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateSupportPermitOutput.struct_class = Types::CreateSupportPermitOutput

    DeleteSupportPermitInput.add_member(:support_permit_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "supportPermitIdentifier"))
    DeleteSupportPermitInput.struct_class = Types::DeleteSupportPermitInput

    DeleteSupportPermitOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DeleteSupportPermitOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    DeleteSupportPermitOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DeleteSupportPermitOutput.add_member(:permit, Shapes::ShapeRef.new(shape: Permit, required: true, location_name: "permit"))
    DeleteSupportPermitOutput.add_member(:status, Shapes::ShapeRef.new(shape: SupportPermitStatus, required: true, location_name: "status"))
    DeleteSupportPermitOutput.add_member(:signing_key_info, Shapes::ShapeRef.new(shape: SigningKeyInfo, required: true, location_name: "signingKeyInfo"))
    DeleteSupportPermitOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DeleteSupportPermitOutput.add_member(:support_case_display_id, Shapes::ShapeRef.new(shape: SupportCaseDisplayId, location_name: "supportCaseDisplayId"))
    DeleteSupportPermitOutput.struct_class = Types::DeleteSupportPermitOutput

    GetActionInput.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location: "uri", location_name: "action"))
    GetActionInput.struct_class = Types::GetActionInput

    GetActionOutput.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "action"))
    GetActionOutput.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    GetActionOutput.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, required: true, location_name: "description"))
    GetActionOutput.struct_class = Types::GetActionOutput

    GetSupportPermitInput.add_member(:support_permit_identifier, Shapes::ShapeRef.new(shape: SupportPermitIdentifier, required: true, location: "uri", location_name: "supportPermitIdentifier"))
    GetSupportPermitInput.struct_class = Types::GetSupportPermitInput

    GetSupportPermitOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetSupportPermitOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    GetSupportPermitOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetSupportPermitOutput.add_member(:permit, Shapes::ShapeRef.new(shape: Permit, required: true, location_name: "permit"))
    GetSupportPermitOutput.add_member(:status, Shapes::ShapeRef.new(shape: SupportPermitStatus, required: true, location_name: "status"))
    GetSupportPermitOutput.add_member(:signing_key_info, Shapes::ShapeRef.new(shape: SigningKeyInfo, required: true, location_name: "signingKeyInfo"))
    GetSupportPermitOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetSupportPermitOutput.add_member(:support_case_display_id, Shapes::ShapeRef.new(shape: SupportCaseDisplayId, location_name: "supportCaseDisplayId"))
    GetSupportPermitOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetSupportPermitOutput.struct_class = Types::GetSupportPermitOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListActionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListActionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListActionsInput.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location: "querystring", location_name: "service"))
    ListActionsInput.struct_class = Types::ListActionsInput

    ListActionsOutput.add_member(:action_summaries, Shapes::ShapeRef.new(shape: ActionSummaries, required: true, location_name: "actionSummaries"))
    ListActionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListActionsOutput.struct_class = Types::ListActionsOutput

    ListSupportPermitRequestsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSupportPermitRequestsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSupportPermitRequestsInput.add_member(:support_case_display_id, Shapes::ShapeRef.new(shape: SupportCaseDisplayId, location: "querystring", location_name: "supportCaseDisplayId"))
    ListSupportPermitRequestsInput.struct_class = Types::ListSupportPermitRequestsInput

    ListSupportPermitRequestsOutput.add_member(:support_permit_requests, Shapes::ShapeRef.new(shape: SupportPermitRequests, required: true, location_name: "supportPermitRequests"))
    ListSupportPermitRequestsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSupportPermitRequestsOutput.struct_class = Types::ListSupportPermitRequestsOutput

    ListSupportPermitsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSupportPermitsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSupportPermitsInput.add_member(:support_permit_statuses, Shapes::ShapeRef.new(shape: SupportPermitStatuses, location: "querystring", location_name: "supportPermitStatuses"))
    ListSupportPermitsInput.struct_class = Types::ListSupportPermitsInput

    ListSupportPermitsOutput.add_member(:support_permits, Shapes::ShapeRef.new(shape: SupportPermitSummaries, required: true, location_name: "supportPermits"))
    ListSupportPermitsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSupportPermitsOutput.struct_class = Types::ListSupportPermitsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    Permit.add_member(:actions, Shapes::ShapeRef.new(shape: ActionSet, required: true, location_name: "actions"))
    Permit.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceSet, required: true, location_name: "resources"))
    Permit.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "conditions"))
    Permit.struct_class = Types::Permit

    RejectSupportPermitRequestInput.add_member(:request_arn, Shapes::ShapeRef.new(shape: RequestArn, required: true, location: "uri", location_name: "requestArn"))
    RejectSupportPermitRequestInput.struct_class = Types::RejectSupportPermitRequestInput

    RejectSupportPermitRequestOutput.add_member(:request_arn, Shapes::ShapeRef.new(shape: RequestArn, required: true, location_name: "requestArn"))
    RejectSupportPermitRequestOutput.struct_class = Types::RejectSupportPermitRequestOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceSet.add_member(:all_resources_in_region, Shapes::ShapeRef.new(shape: Unit, location_name: "allResourcesInRegion"))
    ResourceSet.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "resources"))
    ResourceSet.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceSet.add_member_subclass(:all_resources_in_region, Types::ResourceSet::AllResourcesInRegion)
    ResourceSet.add_member_subclass(:resources, Types::ResourceSet::Resources)
    ResourceSet.add_member_subclass(:unknown, Types::ResourceSet::Unknown)
    ResourceSet.struct_class = Types::ResourceSet

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SigningKeyInfo.add_member(:kms_key, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKey"))
    SigningKeyInfo.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SigningKeyInfo.add_member_subclass(:kms_key, Types::SigningKeyInfo::KmsKey)
    SigningKeyInfo.add_member_subclass(:unknown, Types::SigningKeyInfo::Unknown)
    SigningKeyInfo.struct_class = Types::SigningKeyInfo

    SupportPermitRequest.add_member(:request_arn, Shapes::ShapeRef.new(shape: RequestArn, required: true, location_name: "requestArn"))
    SupportPermitRequest.add_member(:permit, Shapes::ShapeRef.new(shape: Permit, required: true, location_name: "permit"))
    SupportPermitRequest.add_member(:support_case_display_id, Shapes::ShapeRef.new(shape: SupportCaseDisplayId, required: true, location_name: "supportCaseDisplayId"))
    SupportPermitRequest.add_member(:status, Shapes::ShapeRef.new(shape: SupportPermitRequestStatus, required: true, location_name: "status"))
    SupportPermitRequest.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    SupportPermitRequest.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    SupportPermitRequest.struct_class = Types::SupportPermitRequest

    SupportPermitRequests.member = Shapes::ShapeRef.new(shape: SupportPermitRequest)

    SupportPermitStatuses.member = Shapes::ShapeRef.new(shape: SupportPermitStatus)

    SupportPermitSummaries.member = Shapes::ShapeRef.new(shape: SupportPermitSummary)

    SupportPermitSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    SupportPermitSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    SupportPermitSummary.add_member(:permit, Shapes::ShapeRef.new(shape: Permit, required: true, location_name: "permit"))
    SupportPermitSummary.add_member(:status, Shapes::ShapeRef.new(shape: SupportPermitStatus, required: true, location_name: "status"))
    SupportPermitSummary.add_member(:signing_key_info, Shapes::ShapeRef.new(shape: SigningKeyInfo, required: true, location_name: "signingKeyInfo"))
    SupportPermitSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    SupportPermitSummary.add_member(:support_case_display_id, Shapes::ShapeRef.new(shape: SupportCaseDisplayId, location_name: "supportCaseDisplayId"))
    SupportPermitSummary.struct_class = Types::SupportPermitSummary

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Unit.struct_class = Types::Unit

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-06-30"

      api.metadata = {
        "apiVersion" => "2026-06-30",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "supportauthz",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "SupportAuthZ",
        "serviceId" => "SupportAuthZ",
        "signatureVersion" => "v4",
        "signingName" => "supportauthz",
        "uid" => "supportauthz-2026-06-30",
      }

      api.add_operation(:create_support_permit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSupportPermit"
        o.http_method = "POST"
        o.http_request_uri = "/support-permits"
        o.input = Shapes::ShapeRef.new(shape: CreateSupportPermitInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSupportPermitOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_support_permit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSupportPermit"
        o.http_method = "DELETE"
        o.http_request_uri = "/support-permits/{supportPermitIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSupportPermitInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSupportPermitOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAction"
        o.http_method = "GET"
        o.http_request_uri = "/actions/{action}"
        o.input = Shapes::ShapeRef.new(shape: GetActionInput)
        o.output = Shapes::ShapeRef.new(shape: GetActionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_support_permit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSupportPermit"
        o.http_method = "GET"
        o.http_request_uri = "/support-permits/{supportPermitIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetSupportPermitInput)
        o.output = Shapes::ShapeRef.new(shape: GetSupportPermitOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActions"
        o.http_method = "GET"
        o.http_request_uri = "/actions"
        o.input = Shapes::ShapeRef.new(shape: ListActionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListActionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_support_permit_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSupportPermitRequests"
        o.http_method = "GET"
        o.http_request_uri = "/support-permit-requests"
        o.input = Shapes::ShapeRef.new(shape: ListSupportPermitRequestsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSupportPermitRequestsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_support_permits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSupportPermits"
        o.http_method = "GET"
        o.http_request_uri = "/support-permits"
        o.input = Shapes::ShapeRef.new(shape: ListSupportPermitsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSupportPermitsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:reject_support_permit_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectSupportPermitRequest"
        o.http_method = "PUT"
        o.http_request_uri = "/support-permit-requests/{requestArn}/reject"
        o.input = Shapes::ShapeRef.new(shape: RejectSupportPermitRequestInput)
        o.output = Shapes::ShapeRef.new(shape: RejectSupportPermitRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
