# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PricingPlanManager
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ApprovalMode = Shapes::StringShape.new(name: 'ApprovalMode')
    ApprovePaidSubscriptionInput = Shapes::StructureShape.new(name: 'ApprovePaidSubscriptionInput')
    ApprovePaidSubscriptionOutput = Shapes::StructureShape.new(name: 'ApprovePaidSubscriptionOutput')
    AssociateResourcesToSubscriptionInput = Shapes::StructureShape.new(name: 'AssociateResourcesToSubscriptionInput')
    AssociateResourcesToSubscriptionOutput = Shapes::StructureShape.new(name: 'AssociateResourcesToSubscriptionOutput')
    CancelSubscriptionChangeInput = Shapes::StructureShape.new(name: 'CancelSubscriptionChangeInput')
    CancelSubscriptionChangeOutput = Shapes::StructureShape.new(name: 'CancelSubscriptionChangeOutput')
    CancelSubscriptionInput = Shapes::StructureShape.new(name: 'CancelSubscriptionInput')
    CancelSubscriptionOutput = Shapes::StructureShape.new(name: 'CancelSubscriptionOutput')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateSubscriptionInput = Shapes::StructureShape.new(name: 'CreateSubscriptionInput')
    CreateSubscriptionOutput = Shapes::StructureShape.new(name: 'CreateSubscriptionOutput')
    DisassociateResourcesFromSubscriptionInput = Shapes::StructureShape.new(name: 'DisassociateResourcesFromSubscriptionInput')
    DisassociateResourcesFromSubscriptionOutput = Shapes::StructureShape.new(name: 'DisassociateResourcesFromSubscriptionOutput')
    GetSubscriptionInput = Shapes::StructureShape.new(name: 'GetSubscriptionInput')
    GetSubscriptionOutput = Shapes::StructureShape.new(name: 'GetSubscriptionOutput')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListSubscriptionsInput = Shapes::StructureShape.new(name: 'ListSubscriptionsInput')
    ListSubscriptionsOutput = Shapes::StructureShape.new(name: 'ListSubscriptionsOutput')
    ResourceArns = Shapes::ListShape.new(name: 'ResourceArns')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ScheduledChange = Shapes::StructureShape.new(name: 'ScheduledChange')
    ScheduledChangeType = Shapes::StringShape.new(name: 'ScheduledChangeType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    Subscription = Shapes::StructureShape.new(name: 'Subscription')
    SubscriptionArn = Shapes::StringShape.new(name: 'SubscriptionArn')
    SubscriptionSummary = Shapes::StructureShape.new(name: 'SubscriptionSummary')
    SubscriptionSummaryList = Shapes::ListShape.new(name: 'SubscriptionSummaryList')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateSubscriptionInput = Shapes::StructureShape.new(name: 'UpdateSubscriptionInput')
    UpdateSubscriptionOutput = Shapes::StructureShape.new(name: 'UpdateSubscriptionOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ApprovePaidSubscriptionInput.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    ApprovePaidSubscriptionInput.add_member(:if_match, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "If-Match"))
    ApprovePaidSubscriptionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ApprovePaidSubscriptionInput.struct_class = Types::ApprovePaidSubscriptionInput

    ApprovePaidSubscriptionOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, required: true, location_name: "subscription"))
    ApprovePaidSubscriptionOutput.add_member(:e_tag, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "ETag"))
    ApprovePaidSubscriptionOutput.struct_class = Types::ApprovePaidSubscriptionOutput
    ApprovePaidSubscriptionOutput[:payload] = :subscription
    ApprovePaidSubscriptionOutput[:payload_member] = ApprovePaidSubscriptionOutput.member(:subscription)

    AssociateResourcesToSubscriptionInput.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    AssociateResourcesToSubscriptionInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "resourceArns"))
    AssociateResourcesToSubscriptionInput.add_member(:if_match, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "If-Match"))
    AssociateResourcesToSubscriptionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    AssociateResourcesToSubscriptionInput.struct_class = Types::AssociateResourcesToSubscriptionInput

    AssociateResourcesToSubscriptionOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, required: true, location_name: "subscription"))
    AssociateResourcesToSubscriptionOutput.add_member(:e_tag, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "ETag"))
    AssociateResourcesToSubscriptionOutput.struct_class = Types::AssociateResourcesToSubscriptionOutput
    AssociateResourcesToSubscriptionOutput[:payload] = :subscription
    AssociateResourcesToSubscriptionOutput[:payload_member] = AssociateResourcesToSubscriptionOutput.member(:subscription)

    CancelSubscriptionChangeInput.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    CancelSubscriptionChangeInput.add_member(:if_match, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "If-Match"))
    CancelSubscriptionChangeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CancelSubscriptionChangeInput.struct_class = Types::CancelSubscriptionChangeInput

    CancelSubscriptionChangeOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, required: true, location_name: "subscription"))
    CancelSubscriptionChangeOutput.add_member(:e_tag, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "ETag"))
    CancelSubscriptionChangeOutput.struct_class = Types::CancelSubscriptionChangeOutput
    CancelSubscriptionChangeOutput[:payload] = :subscription
    CancelSubscriptionChangeOutput[:payload_member] = CancelSubscriptionChangeOutput.member(:subscription)

    CancelSubscriptionInput.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    CancelSubscriptionInput.add_member(:if_match, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "If-Match"))
    CancelSubscriptionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CancelSubscriptionInput.struct_class = Types::CancelSubscriptionInput

    CancelSubscriptionOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, required: true, location_name: "subscription"))
    CancelSubscriptionOutput.add_member(:e_tag, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "ETag"))
    CancelSubscriptionOutput.struct_class = Types::CancelSubscriptionOutput
    CancelSubscriptionOutput[:payload] = :subscription
    CancelSubscriptionOutput[:payload_member] = CancelSubscriptionOutput.member(:subscription)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.struct_class = Types::ConflictException

    CreateSubscriptionInput.add_member(:plan_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "planFamily"))
    CreateSubscriptionInput.add_member(:plan_tier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "planTier"))
    CreateSubscriptionInput.add_member(:usage_level, Shapes::ShapeRef.new(shape: String, location_name: "usageLevel"))
    CreateSubscriptionInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "resourceArns"))
    CreateSubscriptionInput.add_member(:approval_mode, Shapes::ShapeRef.new(shape: ApprovalMode, location_name: "approvalMode"))
    CreateSubscriptionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateSubscriptionInput.struct_class = Types::CreateSubscriptionInput

    CreateSubscriptionOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, required: true, location_name: "subscription"))
    CreateSubscriptionOutput.add_member(:e_tag, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "ETag"))
    CreateSubscriptionOutput.struct_class = Types::CreateSubscriptionOutput
    CreateSubscriptionOutput[:payload] = :subscription
    CreateSubscriptionOutput[:payload_member] = CreateSubscriptionOutput.member(:subscription)

    DisassociateResourcesFromSubscriptionInput.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    DisassociateResourcesFromSubscriptionInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "resourceArns"))
    DisassociateResourcesFromSubscriptionInput.add_member(:if_match, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "If-Match"))
    DisassociateResourcesFromSubscriptionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DisassociateResourcesFromSubscriptionInput.struct_class = Types::DisassociateResourcesFromSubscriptionInput

    DisassociateResourcesFromSubscriptionOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, required: true, location_name: "subscription"))
    DisassociateResourcesFromSubscriptionOutput.add_member(:e_tag, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "ETag"))
    DisassociateResourcesFromSubscriptionOutput.struct_class = Types::DisassociateResourcesFromSubscriptionOutput
    DisassociateResourcesFromSubscriptionOutput[:payload] = :subscription
    DisassociateResourcesFromSubscriptionOutput[:payload_member] = DisassociateResourcesFromSubscriptionOutput.member(:subscription)

    GetSubscriptionInput.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    GetSubscriptionInput.struct_class = Types::GetSubscriptionInput

    GetSubscriptionOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, required: true, location_name: "subscription"))
    GetSubscriptionOutput.add_member(:e_tag, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "ETag"))
    GetSubscriptionOutput.struct_class = Types::GetSubscriptionOutput
    GetSubscriptionOutput[:payload] = :subscription
    GetSubscriptionOutput[:payload_member] = GetSubscriptionOutput.member(:subscription)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListSubscriptionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSubscriptionsInput.struct_class = Types::ListSubscriptionsInput

    ListSubscriptionsOutput.add_member(:subscription_summaries, Shapes::ShapeRef.new(shape: SubscriptionSummaryList, required: true, location_name: "subscriptionSummaries"))
    ListSubscriptionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSubscriptionsOutput.struct_class = Types::ListSubscriptionsOutput

    ResourceArns.member = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ScheduledChange.add_member(:change_type, Shapes::ShapeRef.new(shape: ScheduledChangeType, required: true, location_name: "changeType"))
    ScheduledChange.add_member(:effective_date, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "effectiveDate"))
    ScheduledChange.add_member(:plan_tier, Shapes::ShapeRef.new(shape: String, location_name: "planTier"))
    ScheduledChange.add_member(:usage_level, Shapes::ShapeRef.new(shape: String, location_name: "usageLevel"))
    ScheduledChange.struct_class = Types::ScheduledChange

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Subscription.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    Subscription.add_member(:plan_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "planFamily"))
    Subscription.add_member(:plan_tier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "planTier"))
    Subscription.add_member(:usage_level, Shapes::ShapeRef.new(shape: String, location_name: "usageLevel"))
    Subscription.add_member(:scheduled_change, Shapes::ShapeRef.new(shape: ScheduledChange, location_name: "scheduledChange"))
    Subscription.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    Subscription.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    Subscription.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "resourceArns"))
    Subscription.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    Subscription.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    Subscription.struct_class = Types::Subscription

    SubscriptionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    SubscriptionSummary.add_member(:plan_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "planFamily"))
    SubscriptionSummary.add_member(:plan_tier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "planTier"))
    SubscriptionSummary.add_member(:usage_level, Shapes::ShapeRef.new(shape: String, location_name: "usageLevel"))
    SubscriptionSummary.add_member(:scheduled_change, Shapes::ShapeRef.new(shape: ScheduledChange, location_name: "scheduledChange"))
    SubscriptionSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    SubscriptionSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    SubscriptionSummary.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "resourceArns"))
    SubscriptionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    SubscriptionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    SubscriptionSummary.add_member(:e_tag, Shapes::ShapeRef.new(shape: String, required: true, location_name: "eTag"))
    SubscriptionSummary.struct_class = Types::SubscriptionSummary

    SubscriptionSummaryList.member = Shapes::ShapeRef.new(shape: SubscriptionSummary)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateSubscriptionInput.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    UpdateSubscriptionInput.add_member(:plan_tier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "planTier"))
    UpdateSubscriptionInput.add_member(:usage_level, Shapes::ShapeRef.new(shape: String, location_name: "usageLevel"))
    UpdateSubscriptionInput.add_member(:if_match, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "If-Match"))
    UpdateSubscriptionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateSubscriptionInput.struct_class = Types::UpdateSubscriptionInput

    UpdateSubscriptionOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, required: true, location_name: "subscription"))
    UpdateSubscriptionOutput.add_member(:e_tag, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "ETag"))
    UpdateSubscriptionOutput.struct_class = Types::UpdateSubscriptionOutput
    UpdateSubscriptionOutput[:payload] = :subscription
    UpdateSubscriptionOutput[:payload_member] = UpdateSubscriptionOutput.member(:subscription)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-08-05"

      api.metadata = {
        "apiVersion" => "2025-08-05",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "pricingplanmanager",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "PricingPlanManager",
        "serviceId" => "Pricing Plan Manager",
        "signatureVersion" => "v4",
        "signingName" => "pricingplanmanager",
        "uid" => "pricing-plan-manager-2025-08-05",
      }

      api.add_operation(:approve_paid_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApprovePaidSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/v1/ApprovePaidSubscription"
        o.input = Shapes::ShapeRef.new(shape: ApprovePaidSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: ApprovePaidSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_resources_to_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateResourcesToSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/v1/AssociateResourcesToSubscription"
        o.input = Shapes::ShapeRef.new(shape: AssociateResourcesToSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateResourcesToSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:cancel_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/v1/CancelSubscription"
        o.input = Shapes::ShapeRef.new(shape: CancelSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: CancelSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:cancel_subscription_change, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSubscriptionChange"
        o.http_method = "POST"
        o.http_request_uri = "/v1/CancelSubscriptionChange"
        o.input = Shapes::ShapeRef.new(shape: CancelSubscriptionChangeInput)
        o.output = Shapes::ShapeRef.new(shape: CancelSubscriptionChangeOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/v1/CreateSubscription"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_resources_from_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateResourcesFromSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/v1/DisassociateResourcesFromSubscription"
        o.input = Shapes::ShapeRef.new(shape: DisassociateResourcesFromSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateResourcesFromSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/v1/GetSubscription"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/ListSubscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListSubscriptionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSubscriptionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/v1/UpdateSubscription"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
