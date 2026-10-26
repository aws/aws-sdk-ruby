# frozen_string_literal: true

# This is generated code!

module Aws::SupportAuthZ
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Action = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#Action", name: "Action", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-z][a-z0-9-]*:[A-Za-z0-9_.-]+$"})
    ActionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#ActionDescription", name: "ActionDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}})
    ActionSet = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.supportauthz#ActionSet", name: "ActionSet")
    ActionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supportauthz#ActionSummaries", name: "ActionSummaries", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ActionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ActionSummary", name: "ActionSummary")
    Actions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supportauthz#Actions", name: "Actions", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#Arn", name: "Arn", traits: {"aws.api#arnReference" => {"type" => "AWS::SupportAuthZ::SupportPermit"}, "smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:[a-z0-9-]+:[a-z0-9-]+:[a-z0-9-]*:[0-9]{12}:.+$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[!-~]+$"})
    Condition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.supportauthz#Condition", name: "Condition")
    Conditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supportauthz#Conditions", name: "Conditions", traits: {"smithy.api#length" => {"max" => 2}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateSupportPermitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#CreateSupportPermitInput", name: "CreateSupportPermitInput")
    CreateSupportPermitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#CreateSupportPermitOutput", name: "CreateSupportPermitOutput")
    DeleteSupportPermitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#DeleteSupportPermitInput", name: "DeleteSupportPermitInput")
    DeleteSupportPermitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#DeleteSupportPermitOutput", name: "DeleteSupportPermitOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    GetActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#GetActionInput", name: "GetActionInput")
    GetActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#GetActionOutput", name: "GetActionOutput")
    GetSupportPermitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#GetSupportPermitInput", name: "GetSupportPermitInput")
    GetSupportPermitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#GetSupportPermitOutput", name: "GetSupportPermitOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9/:_-]{1,512}$"})
    ListActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ListActionsInput", name: "ListActionsInput")
    ListActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ListActionsOutput", name: "ListActionsOutput")
    ListSupportPermitRequestsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ListSupportPermitRequestsInput", name: "ListSupportPermitRequestsInput")
    ListSupportPermitRequestsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ListSupportPermitRequestsOutput", name: "ListSupportPermitRequestsOutput")
    ListSupportPermitsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ListSupportPermitsInput", name: "ListSupportPermitsInput")
    ListSupportPermitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ListSupportPermitsOutput", name: "ListSupportPermitsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.supportauthz#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9]{1,256}$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9/+=%_-]+$"})
    Permit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#Permit", name: "Permit")
    RejectSupportPermitRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#RejectSupportPermitRequestInput", name: "RejectSupportPermitRequestInput")
    RejectSupportPermitRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#RejectSupportPermitRequestOutput", name: "RejectSupportPermitRequestOutput")
    RequestArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#RequestArn", name: "RequestArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9:/-]{1,512}$"})
    Resource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#Resource", name: "Resource", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9:/_.-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSet = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.supportauthz#ResourceSet", name: "ResourceSet")
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supportauthz#Resources", name: "Resources", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Service = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#Service", name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SigningKeyInfo = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.supportauthz#SigningKeyInfo", name: "SigningKeyInfo")
    SupportCaseDisplayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#SupportCaseDisplayId", name: "SupportCaseDisplayId", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9:/-]{1,512}$"})
    SupportPermitIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#SupportPermitIdentifier", name: "SupportPermitIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9:/-]{1,512}$"})
    SupportPermitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#SupportPermitRequest", name: "SupportPermitRequest")
    SupportPermitRequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supportauthz#SupportPermitRequestStatus", name: "SupportPermitRequestStatus")
    SupportPermitRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supportauthz#SupportPermitRequests", name: "SupportPermitRequests", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SupportPermitStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.supportauthz#SupportPermitStatus", name: "SupportPermitStatus")
    SupportPermitStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supportauthz#SupportPermitStatuses", name: "SupportPermitStatuses", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SupportPermitSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supportauthz#SupportPermitSummaries", name: "SupportPermitSummaries", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SupportPermitSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#SupportPermitSummary", name: "SupportPermitSummary")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supportauthz#TagKeyList", name: "TagKeyList")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.supportauthz#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.supportauthz#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#UntagResourceOutput", name: "UntagResourceOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.supportauthz#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.supportauthz#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionSet.add_member(:all_actions, Types::ActionSet::AllActions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allActions"))
    ActionSet.add_member(:actions, Types::ActionSet::Actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Actions, name: "actions"))
    ActionSet.add_member(:unknown, Types::ActionSet::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ActionSet.type = Types::ActionSet
    ActionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionSummary, name: "member"))
    ActionSummary.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "action", traits: {"smithy.api#required" => {}}))
    ActionSummary.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#required" => {}}))
    ActionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDescription, name: "description", traits: {"smithy.api#required" => {}}))
    ActionSummary.type = Types::ActionSummary
    Actions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "member"))
    Condition.add_member(:allow_after, Types::Condition::AllowAfter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "allowAfter"))
    Condition.add_member(:allow_before, Types::Condition::AllowBefore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "allowBefore"))
    Condition.add_member(:unknown, Types::Condition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Condition.type = Types::Condition
    Conditions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateSupportPermitInput.add_member(:permit, ::Smithy::Schema::Shapes::MemberShape.new(target: Permit, name: "permit", traits: {"smithy.api#required" => {}}))
    CreateSupportPermitInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSupportPermitInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateSupportPermitInput.add_member(:signing_key_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningKeyInfo, name: "signingKeyInfo", traits: {"smithy.api#required" => {}}))
    CreateSupportPermitInput.add_member(:support_case_display_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportCaseDisplayId, name: "supportCaseDisplayId"))
    CreateSupportPermitInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSupportPermitInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateSupportPermitInput.type = Types::CreateSupportPermitInput
    CreateSupportPermitOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSupportPermitOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSupportPermitOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateSupportPermitOutput.add_member(:permit, ::Smithy::Schema::Shapes::MemberShape.new(target: Permit, name: "permit", traits: {"smithy.api#required" => {}}))
    CreateSupportPermitOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateSupportPermitOutput.add_member(:signing_key_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningKeyInfo, name: "signingKeyInfo", traits: {"smithy.api#required" => {}}))
    CreateSupportPermitOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateSupportPermitOutput.add_member(:support_case_display_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportCaseDisplayId, name: "supportCaseDisplayId"))
    CreateSupportPermitOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateSupportPermitOutput.type = Types::CreateSupportPermitOutput
    DeleteSupportPermitInput.add_member(:support_permit_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "supportPermitIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSupportPermitInput.type = Types::DeleteSupportPermitInput
    DeleteSupportPermitOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteSupportPermitOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteSupportPermitOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DeleteSupportPermitOutput.add_member(:permit, ::Smithy::Schema::Shapes::MemberShape.new(target: Permit, name: "permit", traits: {"smithy.api#required" => {}}))
    DeleteSupportPermitOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteSupportPermitOutput.add_member(:signing_key_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningKeyInfo, name: "signingKeyInfo", traits: {"smithy.api#required" => {}}))
    DeleteSupportPermitOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DeleteSupportPermitOutput.add_member(:support_case_display_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportCaseDisplayId, name: "supportCaseDisplayId"))
    DeleteSupportPermitOutput.type = Types::DeleteSupportPermitOutput
    GetActionInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "action", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetActionInput.type = Types::GetActionInput
    GetActionOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "action", traits: {"smithy.api#required" => {}}))
    GetActionOutput.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#required" => {}}))
    GetActionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDescription, name: "description", traits: {"smithy.api#required" => {}}))
    GetActionOutput.type = Types::GetActionOutput
    GetSupportPermitInput.add_member(:support_permit_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitIdentifier, name: "supportPermitIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSupportPermitInput.type = Types::GetSupportPermitInput
    GetSupportPermitOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    GetSupportPermitOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetSupportPermitOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetSupportPermitOutput.add_member(:permit, ::Smithy::Schema::Shapes::MemberShape.new(target: Permit, name: "permit", traits: {"smithy.api#required" => {}}))
    GetSupportPermitOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetSupportPermitOutput.add_member(:signing_key_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningKeyInfo, name: "signingKeyInfo", traits: {"smithy.api#required" => {}}))
    GetSupportPermitOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetSupportPermitOutput.add_member(:support_case_display_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportCaseDisplayId, name: "supportCaseDisplayId"))
    GetSupportPermitOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetSupportPermitOutput.type = Types::GetSupportPermitOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListActionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListActionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListActionsInput.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#httpQuery" => "service", "smithy.api#required" => {}}))
    ListActionsInput.type = Types::ListActionsInput
    ListActionsOutput.add_member(:action_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionSummaries, name: "actionSummaries", traits: {"smithy.api#required" => {}}))
    ListActionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListActionsOutput.type = Types::ListActionsOutput
    ListSupportPermitRequestsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSupportPermitRequestsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSupportPermitRequestsInput.add_member(:support_case_display_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportCaseDisplayId, name: "supportCaseDisplayId", traits: {"smithy.api#httpQuery" => "supportCaseDisplayId"}))
    ListSupportPermitRequestsInput.type = Types::ListSupportPermitRequestsInput
    ListSupportPermitRequestsOutput.add_member(:support_permit_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitRequests, name: "supportPermitRequests", traits: {"smithy.api#required" => {}}))
    ListSupportPermitRequestsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSupportPermitRequestsOutput.type = Types::ListSupportPermitRequestsOutput
    ListSupportPermitsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSupportPermitsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSupportPermitsInput.add_member(:support_permit_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitStatuses, name: "supportPermitStatuses", traits: {"smithy.api#httpQuery" => "supportPermitStatuses"}))
    ListSupportPermitsInput.type = Types::ListSupportPermitsInput
    ListSupportPermitsOutput.add_member(:support_permits, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitSummaries, name: "supportPermits", traits: {"smithy.api#required" => {}}))
    ListSupportPermitsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSupportPermitsOutput.type = Types::ListSupportPermitsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Permit.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionSet, name: "actions", traits: {"smithy.api#required" => {}}))
    Permit.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSet, name: "resources", traits: {"smithy.api#required" => {}}))
    Permit.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Conditions, name: "conditions"))
    Permit.type = Types::Permit
    RejectSupportPermitRequestInput.add_member(:request_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestArn, name: "requestArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectSupportPermitRequestInput.type = Types::RejectSupportPermitRequestInput
    RejectSupportPermitRequestOutput.add_member(:request_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestArn, name: "requestArn", traits: {"smithy.api#required" => {}}))
    RejectSupportPermitRequestOutput.type = Types::RejectSupportPermitRequestOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSet.add_member(:all_resources_in_region, Types::ResourceSet::AllResourcesInRegion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allResourcesInRegion"))
    ResourceSet.add_member(:resources, Types::ResourceSet::Resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, name: "resources"))
    ResourceSet.add_member(:unknown, Types::ResourceSet::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceSet.type = Types::ResourceSet
    Resources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SigningKeyInfo.add_member(:kms_key, Types::SigningKeyInfo::KmsKey, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKey"))
    SigningKeyInfo.add_member(:unknown, Types::SigningKeyInfo::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SigningKeyInfo.type = Types::SigningKeyInfo
    SupportPermitRequest.add_member(:request_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestArn, name: "requestArn", traits: {"smithy.api#required" => {}}))
    SupportPermitRequest.add_member(:permit, ::Smithy::Schema::Shapes::MemberShape.new(target: Permit, name: "permit", traits: {"smithy.api#required" => {}}))
    SupportPermitRequest.add_member(:support_case_display_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportCaseDisplayId, name: "supportCaseDisplayId", traits: {"smithy.api#required" => {}}))
    SupportPermitRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitRequestStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SupportPermitRequest.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    SupportPermitRequest.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    SupportPermitRequest.type = Types::SupportPermitRequest
    SupportPermitRequestStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    SupportPermitRequestStatus.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    SupportPermitRequestStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    SupportPermitRequestStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    SupportPermitRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitRequest, name: "member"))
    SupportPermitStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SupportPermitStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    SupportPermitStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    SupportPermitStatuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitStatus, name: "member"))
    SupportPermitSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitSummary, name: "member"))
    SupportPermitSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    SupportPermitSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    SupportPermitSummary.add_member(:permit, ::Smithy::Schema::Shapes::MemberShape.new(target: Permit, name: "permit", traits: {"smithy.api#required" => {}}))
    SupportPermitSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPermitStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SupportPermitSummary.add_member(:signing_key_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningKeyInfo, name: "signingKeyInfo", traits: {"smithy.api#required" => {}}))
    SupportPermitSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    SupportPermitSummary.add_member(:support_case_display_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportCaseDisplayId, name: "supportCaseDisplayId"))
    SupportPermitSummary.type = Types::SupportPermitSummary
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))

    SupportAuthZ = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.supportauthz#SupportAuthZ"
      service.name = "SupportAuthZ"
      service.version = "2026-06-30"
      service.traits = {"aws.api#service" => {"arnNamespace" => "supportauthz", "sdkId" => "SupportAuthZ", "cloudTrailEventSource" => "supportauthz.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "supportauthz"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*"]}, "smithy.api#title" => "SupportAuthZ", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://supportauthz-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://supportauthz.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:create_support_permit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#CreateSupportPermit"
        operation.name = "CreateSupportPermit"
        operation.input = CreateSupportPermitInput
        operation.output = CreateSupportPermitOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/support-permits", "method" => "POST"}}
      end)
      service.add_operation(:delete_support_permit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#DeleteSupportPermit"
        operation.name = "DeleteSupportPermit"
        operation.input = DeleteSupportPermitInput
        operation.output = DeleteSupportPermitOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/support-permits/{supportPermitIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#GetAction"
        operation.name = "GetAction"
        operation.input = GetActionInput
        operation.output = GetActionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/actions/{action}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetActionFailure", "params" => {"action" => "myservice:NonExistentAction"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.supportauthz#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "ap-northeast-1"}}]}
      end)
      service.add_operation(:get_support_permit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#GetSupportPermit"
        operation.name = "GetSupportPermit"
        operation.input = GetSupportPermitInput
        operation.output = GetSupportPermitOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/support-permits/{supportPermitIdentifier}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetSupportPermitFailure", "params" => {"supportPermitIdentifier" => "non-existent-permit-id"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.supportauthz#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "ap-northeast-1"}}]}
      end)
      service.add_operation(:list_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#ListActions"
        operation.name = "ListActions"
        operation.input = ListActionsInput
        operation.output = ListActionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/actions", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListActionsSuccess", "params" => {"service" => "myservice"}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "ap-northeast-1"}}]}
        operation[:paginator] = Paginators::ListActions.new
      end)
      service.add_operation(:list_support_permit_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#ListSupportPermitRequests"
        operation.name = "ListSupportPermitRequests"
        operation.input = ListSupportPermitRequestsInput
        operation.output = ListSupportPermitRequestsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/support-permit-requests", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListSupportPermitRequestsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "ap-northeast-1"}}]}
        operation[:paginator] = Paginators::ListSupportPermitRequests.new
      end)
      service.add_operation(:list_support_permits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#ListSupportPermits"
        operation.name = "ListSupportPermits"
        operation.input = ListSupportPermitsInput
        operation.output = ListSupportPermitsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/support-permits", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListSupportPermitsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "ap-northeast-1"}}]}
        operation[:paginator] = Paginators::ListSupportPermits.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:reject_support_permit_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#RejectSupportPermitRequest"
        operation.name = "RejectSupportPermitRequest"
        operation.input = RejectSupportPermitRequestInput
        operation.output = RejectSupportPermitRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/support-permit-requests/{requestArn}/reject", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportauthz#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
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
