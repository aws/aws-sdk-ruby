# frozen_string_literal: true

# This is generated code!

module Aws::PricingPlanManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ApprovalMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pricingplanmanager#ApprovalMode", name: "ApprovalMode")
    ApprovePaidSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#ApprovePaidSubscriptionInput", name: "ApprovePaidSubscriptionInput")
    ApprovePaidSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#ApprovePaidSubscriptionOutput", name: "ApprovePaidSubscriptionOutput")
    AssociateResourcesToSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#AssociateResourcesToSubscriptionInput", name: "AssociateResourcesToSubscriptionInput")
    AssociateResourcesToSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#AssociateResourcesToSubscriptionOutput", name: "AssociateResourcesToSubscriptionOutput")
    CancelSubscriptionChangeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#CancelSubscriptionChangeInput", name: "CancelSubscriptionChangeInput")
    CancelSubscriptionChangeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#CancelSubscriptionChangeOutput", name: "CancelSubscriptionChangeOutput")
    CancelSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#CancelSubscriptionInput", name: "CancelSubscriptionInput")
    CancelSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#CancelSubscriptionOutput", name: "CancelSubscriptionOutput")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#CreateSubscriptionInput", name: "CreateSubscriptionInput")
    CreateSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#CreateSubscriptionOutput", name: "CreateSubscriptionOutput")
    DisassociateResourcesFromSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#DisassociateResourcesFromSubscriptionInput", name: "DisassociateResourcesFromSubscriptionInput")
    DisassociateResourcesFromSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#DisassociateResourcesFromSubscriptionOutput", name: "DisassociateResourcesFromSubscriptionOutput")
    GetSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#GetSubscriptionInput", name: "GetSubscriptionInput")
    GetSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#GetSubscriptionOutput", name: "GetSubscriptionOutput")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricingplanmanager#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListSubscriptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#ListSubscriptionsInput", name: "ListSubscriptionsInput")
    ListSubscriptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#ListSubscriptionsOutput", name: "ListSubscriptionsOutput")
    ResourceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pricingplanmanager#ResourceArns", name: "ResourceArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ScheduledChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#ScheduledChange", name: "ScheduledChange")
    ScheduledChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pricingplanmanager#ScheduledChangeType", name: "ScheduledChangeType")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pricingplanmanager#Status", name: "Status")
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#Subscription", name: "Subscription")
    SubscriptionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricingplanmanager#SubscriptionArn", name: "SubscriptionArn", traits: {"aws.api#arnReference" => {"type" => "AWS::PricingPlanManager::Subscription"}, "smithy.api#length" => {"min" => 1, "max" => 2048}})
    SubscriptionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#SubscriptionSummary", name: "SubscriptionSummary")
    SubscriptionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pricingplanmanager#SubscriptionSummaryList", name: "SubscriptionSummaryList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UpdateSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#UpdateSubscriptionInput", name: "UpdateSubscriptionInput")
    UpdateSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#UpdateSubscriptionOutput", name: "UpdateSubscriptionOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricingplanmanager#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ApprovalMode.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    ApprovalMode.add_member(:immediate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMMEDIATE", traits: {"smithy.api#enumValue" => "IMMEDIATE"}))
    ApprovePaidSubscriptionInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ApprovePaidSubscriptionInput.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    ApprovePaidSubscriptionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ApprovePaidSubscriptionInput.type = Types::ApprovePaidSubscriptionInput
    ApprovePaidSubscriptionOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "subscription", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ApprovePaidSubscriptionOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eTag", traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    ApprovePaidSubscriptionOutput[:http_payload] = :subscription
    ApprovePaidSubscriptionOutput[:http_payload_member] = ApprovePaidSubscriptionOutput.member(:subscription)
    ApprovePaidSubscriptionOutput.type = Types::ApprovePaidSubscriptionOutput
    AssociateResourcesToSubscriptionInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AssociateResourcesToSubscriptionInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "resourceArns", traits: {"smithy.api#required" => {}}))
    AssociateResourcesToSubscriptionInput.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    AssociateResourcesToSubscriptionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateResourcesToSubscriptionInput.type = Types::AssociateResourcesToSubscriptionInput
    AssociateResourcesToSubscriptionOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "subscription", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    AssociateResourcesToSubscriptionOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eTag", traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    AssociateResourcesToSubscriptionOutput[:http_payload] = :subscription
    AssociateResourcesToSubscriptionOutput[:http_payload_member] = AssociateResourcesToSubscriptionOutput.member(:subscription)
    AssociateResourcesToSubscriptionOutput.type = Types::AssociateResourcesToSubscriptionOutput
    CancelSubscriptionChangeInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CancelSubscriptionChangeInput.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    CancelSubscriptionChangeInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CancelSubscriptionChangeInput.type = Types::CancelSubscriptionChangeInput
    CancelSubscriptionChangeOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "subscription", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CancelSubscriptionChangeOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eTag", traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    CancelSubscriptionChangeOutput[:http_payload] = :subscription
    CancelSubscriptionChangeOutput[:http_payload_member] = CancelSubscriptionChangeOutput.member(:subscription)
    CancelSubscriptionChangeOutput.type = Types::CancelSubscriptionChangeOutput
    CancelSubscriptionInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CancelSubscriptionInput.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    CancelSubscriptionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CancelSubscriptionInput.type = Types::CancelSubscriptionInput
    CancelSubscriptionOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "subscription", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CancelSubscriptionOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eTag", traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    CancelSubscriptionOutput[:http_payload] = :subscription
    CancelSubscriptionOutput[:http_payload_member] = CancelSubscriptionOutput.member(:subscription)
    CancelSubscriptionOutput.type = Types::CancelSubscriptionOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateSubscriptionInput.add_member(:plan_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "planFamily", traits: {"smithy.api#required" => {}}))
    CreateSubscriptionInput.add_member(:plan_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "planTier", traits: {"smithy.api#required" => {}}))
    CreateSubscriptionInput.add_member(:usage_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageLevel"))
    CreateSubscriptionInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "resourceArns", traits: {"smithy.api#required" => {}}))
    CreateSubscriptionInput.add_member(:approval_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalMode, name: "approvalMode"))
    CreateSubscriptionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSubscriptionInput.type = Types::CreateSubscriptionInput
    CreateSubscriptionOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "subscription", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateSubscriptionOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eTag", traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    CreateSubscriptionOutput[:http_payload] = :subscription
    CreateSubscriptionOutput[:http_payload_member] = CreateSubscriptionOutput.member(:subscription)
    CreateSubscriptionOutput.type = Types::CreateSubscriptionOutput
    DisassociateResourcesFromSubscriptionInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DisassociateResourcesFromSubscriptionInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "resourceArns", traits: {"smithy.api#required" => {}}))
    DisassociateResourcesFromSubscriptionInput.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DisassociateResourcesFromSubscriptionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateResourcesFromSubscriptionInput.type = Types::DisassociateResourcesFromSubscriptionInput
    DisassociateResourcesFromSubscriptionOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "subscription", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DisassociateResourcesFromSubscriptionOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eTag", traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    DisassociateResourcesFromSubscriptionOutput[:http_payload] = :subscription
    DisassociateResourcesFromSubscriptionOutput[:http_payload_member] = DisassociateResourcesFromSubscriptionOutput.member(:subscription)
    DisassociateResourcesFromSubscriptionOutput.type = Types::DisassociateResourcesFromSubscriptionOutput
    GetSubscriptionInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetSubscriptionInput.type = Types::GetSubscriptionInput
    GetSubscriptionOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "subscription", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetSubscriptionOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eTag", traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    GetSubscriptionOutput[:http_payload] = :subscription
    GetSubscriptionOutput[:http_payload_member] = GetSubscriptionOutput.member(:subscription)
    GetSubscriptionOutput.type = Types::GetSubscriptionOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListSubscriptionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSubscriptionsInput.type = Types::ListSubscriptionsInput
    ListSubscriptionsOutput.add_member(:subscription_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionSummaryList, name: "subscriptionSummaries", traits: {"smithy.api#required" => {}}))
    ListSubscriptionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSubscriptionsOutput.type = Types::ListSubscriptionsOutput
    ResourceArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScheduledChange.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledChangeType, name: "changeType", traits: {"smithy.api#required" => {}}))
    ScheduledChange.add_member(:effective_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "effectiveDate", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ScheduledChange.add_member(:plan_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "planTier"))
    ScheduledChange.add_member(:usage_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageLevel"))
    ScheduledChange.type = Types::ScheduledChange
    ScheduledChangeType.add_member(:downgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOWNGRADE", traits: {"smithy.api#enumValue" => "DOWNGRADE"}))
    ScheduledChangeType.add_member(:cancellation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLATION", traits: {"smithy.api#enumValue" => "CANCELLATION"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Status.add_member(:pending_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_APPROVAL", traits: {"smithy.api#enumValue" => "PENDING_APPROVAL"}))
    Status.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Status.add_member(:sync_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNC_IN_PROGRESS", traits: {"smithy.api#enumValue" => "SYNC_IN_PROGRESS"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Subscription.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    Subscription.add_member(:plan_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "planFamily", traits: {"smithy.api#required" => {}}))
    Subscription.add_member(:plan_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "planTier", traits: {"smithy.api#required" => {}}))
    Subscription.add_member(:usage_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageLevel"))
    Subscription.add_member(:scheduled_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledChange, name: "scheduledChange"))
    Subscription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    Subscription.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    Subscription.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "resourceArns", traits: {"smithy.api#required" => {}}))
    Subscription.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Subscription.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Subscription.type = Types::Subscription
    SubscriptionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    SubscriptionSummary.add_member(:plan_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "planFamily", traits: {"smithy.api#required" => {}}))
    SubscriptionSummary.add_member(:plan_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "planTier", traits: {"smithy.api#required" => {}}))
    SubscriptionSummary.add_member(:usage_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageLevel"))
    SubscriptionSummary.add_member(:scheduled_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledChange, name: "scheduledChange"))
    SubscriptionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    SubscriptionSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    SubscriptionSummary.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "resourceArns", traits: {"smithy.api#required" => {}}))
    SubscriptionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    SubscriptionSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    SubscriptionSummary.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eTag", traits: {"smithy.api#required" => {}}))
    SubscriptionSummary.type = Types::SubscriptionSummary
    SubscriptionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionSummary, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UpdateSubscriptionInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateSubscriptionInput.add_member(:plan_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "planTier", traits: {"smithy.api#required" => {}}))
    UpdateSubscriptionInput.add_member(:usage_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageLevel"))
    UpdateSubscriptionInput.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateSubscriptionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateSubscriptionInput.type = Types::UpdateSubscriptionInput
    UpdateSubscriptionOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "subscription", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateSubscriptionOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eTag", traits: {"smithy.api#httpHeader" => "ETag", "smithy.api#required" => {}}))
    UpdateSubscriptionOutput[:http_payload] = :subscription
    UpdateSubscriptionOutput[:http_payload_member] = UpdateSubscriptionOutput.member(:subscription)
    UpdateSubscriptionOutput.type = Types::UpdateSubscriptionOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ValidationException.type = Types::ValidationException

    AWSPricingPlanManager = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pricingplanmanager#AWSPricingPlanManager"
      service.name = "AWSPricingPlanManager"
      service.version = "2025-08-05"
      service.traits = {"aws.api#service" => {"sdkId" => "Pricing Plan Manager", "arnNamespace" => "pricingplanmanager", "cloudTrailEventSource" => "pricingplanmanager.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "pricingplanmanager"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "maxAge" => 86400}, "smithy.api#title" => "PricingPlanManager", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint URL", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => true, "documentation" => "The AWS region", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}], "results" => [{"conditions" => [], "endpoint" => {"url" => "{Endpoint}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "pricingplanmanager", "signingRegion" => "us-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"documentation" => "Route every region to the single us-east-1 endpoint, signing for us-east-1.", "conditions" => [], "endpoint" => {"url" => "https://pricingplanmanager.us-east-1.api.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "pricingplanmanager", "signingRegion" => "us-east-1"}]}, "headers" => {}}, "type" => "endpoint"}], "root" => 2, "nodeCount" => 2, "nodes" => "/////wAAAAH/////AAAAAAX14QEF9eEC"}}
      service.add_operation(:approve_paid_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricingplanmanager#ApprovePaidSubscription"
        operation.name = "ApprovePaidSubscription"
        operation.input = ApprovePaidSubscriptionInput
        operation.output = ApprovePaidSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/ApprovePaidSubscription"}}
      end)
      service.add_operation(:associate_resources_to_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricingplanmanager#AssociateResourcesToSubscription"
        operation.name = "AssociateResourcesToSubscription"
        operation.input = AssociateResourcesToSubscriptionInput
        operation.output = AssociateResourcesToSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/AssociateResourcesToSubscription"}}
      end)
      service.add_operation(:cancel_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricingplanmanager#CancelSubscription"
        operation.name = "CancelSubscription"
        operation.input = CancelSubscriptionInput
        operation.output = CancelSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/CancelSubscription"}}
      end)
      service.add_operation(:cancel_subscription_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricingplanmanager#CancelSubscriptionChange"
        operation.name = "CancelSubscriptionChange"
        operation.input = CancelSubscriptionChangeInput
        operation.output = CancelSubscriptionChangeOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/CancelSubscriptionChange"}}
      end)
      service.add_operation(:create_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricingplanmanager#CreateSubscription"
        operation.name = "CreateSubscription"
        operation.input = CreateSubscriptionInput
        operation.output = CreateSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/CreateSubscription"}}
      end)
      service.add_operation(:disassociate_resources_from_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricingplanmanager#DisassociateResourcesFromSubscription"
        operation.name = "DisassociateResourcesFromSubscription"
        operation.input = DisassociateResourcesFromSubscriptionInput
        operation.output = DisassociateResourcesFromSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/DisassociateResourcesFromSubscription"}}
      end)
      service.add_operation(:get_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricingplanmanager#GetSubscription"
        operation.name = "GetSubscription"
        operation.input = GetSubscriptionInput
        operation.output = GetSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/GetSubscription"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetSubscriptionFailure", "params" => {"arn" => "arn:aws:pricingplanmanager::123456789012:subscription/non-existent"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pricingplanmanager#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricingplanmanager#ListSubscriptions"
        operation.name = "ListSubscriptions"
        operation.input = ListSubscriptionsInput
        operation.output = ListSubscriptionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/ListSubscriptions"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListSubscriptionsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListSubscriptions.new
      end)
      service.add_operation(:update_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricingplanmanager#UpdateSubscription"
        operation.name = "UpdateSubscription"
        operation.input = UpdateSubscriptionInput
        operation.output = UpdateSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/UpdateSubscription"}}
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
