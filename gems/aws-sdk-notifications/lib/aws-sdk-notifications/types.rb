# frozen_string_literal: true

# This is generated code!

module Aws::Notifications
  # This module contains the types returned by client operations.
  module Types

    # <p>User does not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides detailed information about the dimensions used for aggregation.</p>
    # @!attribute summarization_dimensions
    #   <p>Properties used to summarize aggregated events.</p>
    #   @return [Array<Types::SummarizationDimensionDetail>]
    class AggregationDetail < Struct.new(
      :summarization_dimensions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Key-value collection that indicate how notifications are grouped.</p>
    # @!attribute name
    #   <p>Indicates the type of aggregation key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Indicates the value associated with the aggregation key name.</p>
    #   @return [String]
    class AggregationKey < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides additional information about the aggregation key.</p>
    # @!attribute event_count
    #   <p>Indicates the number of events associated with the aggregation key.</p>
    #   @return [Integer]
    # @!attribute aggregated_by
    #   <p>Indicates the criteria or rules by which notifications have been grouped together.</p>
    #   @return [Array<Types::AggregationKey>]
    # @!attribute aggregated_accounts
    #   <p>Indicates the Amazon Web Services accounts in the aggregation key.</p>
    #   @return [Types::SummarizationDimensionOverview]
    # @!attribute aggregated_regions
    #   <p>Indicates the Amazon Web Services Regions in the aggregation key.</p>
    #   @return [Types::SummarizationDimensionOverview]
    # @!attribute aggregated_organizational_units
    #   <p>Indicates the collection of organizational units that are involved in the aggregation key.</p>
    #   @return [Types::SummarizationDimensionOverview]
    # @!attribute additional_summarization_dimensions
    #   <p>List of additional dimensions used to group and summarize data.</p>
    #   @return [Array<Types::SummarizationDimensionOverview>]
    class AggregationSummary < Struct.new(
      :event_count,
      :aggregated_by,
      :aggregated_accounts,
      :aggregated_regions,
      :aggregated_organizational_units,
      :additional_summarization_dimensions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Channel to associate with the <code>NotificationConfiguration</code>.</p> <p>Supported ARNs include Amazon Q Developer in chat applications, the Console Mobile Application, and notifications-contacts.</p>
    #   @return [String]
    # @!attribute notification_configuration_arn
    #   <p>The ARN of the <code>NotificationConfiguration</code> to associate with the Channel.</p>
    #   @return [String]
    class AssociateChannelRequest < Struct.new(
      :arn,
      :notification_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateChannelResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_identifier
    #   <p>A unique value of an Account Contact Type to associate with the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> to associate with the Account Contact.</p>
    #   @return [String]
    class AssociateManagedNotificationAccountContactRequest < Struct.new(
      :contact_identifier,
      :managed_notification_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateManagedNotificationAccountContactResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the Channel to associate with the <code>ManagedNotificationConfiguration</code>.</p> <p>Supported ARNs include Amazon Q Developer in chat applications, the Console Mobile Application, and email (notifications-contacts).</p>
    #   @return [String]
    # @!attribute managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> to associate with the additional Channel.</p>
    #   @return [String]
    class AssociateManagedNotificationAdditionalChannelRequest < Struct.new(
      :channel_arn,
      :managed_notification_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateManagedNotificationAdditionalChannelResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organizational_unit_id
    #   <p>The unique identifier of the organizational unit to associate.</p>
    #   @return [String]
    # @!attribute notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the notification configuration to associate with the organizational unit.</p>
    #   @return [String]
    class AssociateOrganizationalUnitRequest < Struct.new(
      :organizational_unit_id,
      :notification_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateOrganizationalUnitResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID that prompted the conflict error.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code> associated with this <code>EventRule</code>.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The matched event source.</p> <p>Must match one of the valid EventBridge sources. Only Amazon Web Services service sourced events are supported. For example, <code>aws.ec2</code> and <code>aws.cloudwatch</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The event type to match.</p> <p>Must match one of the valid Amazon EventBridge event types. For example, EC2 Instance State-change Notification and Amazon CloudWatch Alarm State Change. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    # @!attribute event_pattern
    #   <p>An additional event pattern used to further filter the events this <code>EventRule</code> receives.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event patterns</a> in the <i>Amazon EventBridge User Guide.</i> </p>
    #   @return [String]
    # @!attribute regions
    #   <p>A list of Amazon Web Services Regions that send events to this <code>EventRule</code>.</p>
    #   @return [Array<String>]
    class CreateEventRuleRequest < Struct.new(
      :notification_configuration_arn,
      :source,
      :event_type,
      :event_pattern,
      :regions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute notification_configuration_arn
    #   <p>The ARN of a <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute status_summary_by_region
    #   <p>A list of an <code>EventRule</code>'s status by Region. Regions are mapped to <code>EventRuleStatusSummary</code>.</p>
    #   @return [Hash<String, Types::EventRuleStatusSummary>]
    class CreateEventRuleResponse < Struct.new(
      :arn,
      :notification_configuration_arn,
      :status_summary_by_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the <code>NotificationConfiguration</code>. Supports RFC 3986's unreserved characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute aggregation_duration
    #   <p>The aggregation preference of the <code>NotificationConfiguration</code>.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>LONG</code> </p> <ul> <li> <p>Aggregate notifications for long periods of time (12 hours).</p> </li> </ul> </li> <li> <p> <code>SHORT</code> </p> <ul> <li> <p>Aggregate notifications for short periods of time (5 minutes).</p> </li> </ul> </li> <li> <p> <code>NONE</code> </p> <ul> <li> <p>Don't aggregate notifications.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    class CreateNotificationConfigurationRequest < Struct.new(
      :name,
      :description,
      :aggregation_duration,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of this <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    class CreateNotificationConfigurationResponse < Struct.new(
      :arn,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>EventRule</code> to delete.</p>
    #   @return [String]
    class DeleteEventRuleRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteEventRuleResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code> to delete.</p>
    #   @return [String]
    class DeleteNotificationConfigurationRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteNotificationConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_hub_region
    #   <p>The <code>NotificationConfiguration</code> Region.</p>
    #   @return [String]
    class DeregisterNotificationHubRequest < Struct.new(
      :notification_hub_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_hub_region
    #   <p>The <code>NotificationConfiguration</code> Region.</p>
    #   @return [String]
    # @!attribute status_summary
    #   <p> <code>NotificationConfiguration</code> status information.</p>
    #   @return [Types::NotificationHubStatusSummary]
    class DeregisterNotificationHubResponse < Struct.new(
      :notification_hub_region,
      :status_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The key-value pair of properties for an event.</p>
    # @!attribute name
    #   <p>The name of the dimension</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the dimension.</p>
    #   @return [String]
    class Dimension < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisableNotificationsAccessForOrganizationRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisableNotificationsAccessForOrganizationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Channel to disassociate.</p>
    #   @return [String]
    # @!attribute notification_configuration_arn
    #   <p>The ARN of the <code>NotificationConfiguration</code> to disassociate.</p>
    #   @return [String]
    class DisassociateChannelRequest < Struct.new(
      :arn,
      :notification_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateChannelResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_identifier
    #   <p>The unique value of an Account Contact Type to associate with the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> to associate with the Account Contact.</p>
    #   @return [String]
    class DisassociateManagedNotificationAccountContactRequest < Struct.new(
      :contact_identifier,
      :managed_notification_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateManagedNotificationAccountContactResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the Channel to associate with the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the Managed Notification Configuration to associate with the additional Channel.</p>
    #   @return [String]
    class DisassociateManagedNotificationAdditionalChannelRequest < Struct.new(
      :channel_arn,
      :managed_notification_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateManagedNotificationAdditionalChannelResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organizational_unit_id
    #   <p>The unique identifier of the organizational unit to disassociate.</p>
    #   @return [String]
    # @!attribute notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the notification configuration to disassociate from the organizational unit.</p>
    #   @return [String]
    class DisassociateOrganizationalUnitRequest < Struct.new(
      :organizational_unit_id,
      :notification_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateOrganizationalUnitResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class EnableNotificationsAccessForOrganizationRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class EnableNotificationsAccessForOrganizationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides additional information about the current <code>EventRule</code> status.</p>
    # @!attribute status
    #   <p>The status of the <code>EventRule</code>.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ACTIVE</code> </p> <ul> <li> <p>The <code>EventRule</code> can process events.</p> </li> </ul> </li> <li> <p> <code>INACTIVE</code> </p> <ul> <li> <p>The <code>EventRule</code> may be unable to process events.</p> </li> </ul> </li> <li> <p> <code>CREATING</code> </p> <ul> <li> <p>The <code>EventRule</code> is being created.</p> <p>Only <code>GET</code> and <code>LIST</code> calls can be run.</p> </li> </ul> </li> <li> <p> <code>UPDATING</code> </p> <ul> <li> <p>The <code>EventRule</code> is being updated.</p> <p>Only <code>GET</code> and <code>LIST</code> calls can be run.</p> </li> </ul> </li> <li> <p> <code>DELETING</code> </p> <ul> <li> <p>The <code>EventRule</code> is being deleted.</p> <p>Only <code>GET</code> and <code>LIST</code> calls can be run.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute reason
    #   <p>A human-readable reason for <code>EventRuleStatus</code>.</p>
    #   @return [String]
    class EventRuleStatusSummary < Struct.new(
      :status,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a complete list of fields related to an <code>EventRule</code>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>EventRule</code>. CloudFormation stack generates this ARN and then uses this ARN to associate with the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute notification_configuration_arn
    #   <p>The ARN for the <code>NotificationConfiguration</code> associated with this <code>EventRule</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the <code>EventRule</code>.</p>
    #   @return [Time]
    # @!attribute source
    #   <p>The event source this rule should match with the EventBridge event sources. It must match with atleast one of the valid EventBridge event sources. Only Amazon Web Services service sourced events are supported. For example, <code>aws.ec2</code> and <code>aws.cloudwatch</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i> Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The event type this rule should match with the EventBridge events. It must match with atleast one of the valid EventBridge event types. For example, Amazon EC2 Instance State change Notification and Amazon CloudWatch State Change. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i> Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    # @!attribute event_pattern
    #   <p>An additional event pattern used to further filter the events this <code>EventRule</code> receives.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event patterns</a> in the <i>Amazon EventBridge User Guide.</i> </p>
    #   @return [String]
    # @!attribute regions
    #   <p>A list of Amazon Web Services Regions that send events to this <code>EventRule</code>.</p>
    #   @return [Array<String>]
    # @!attribute managed_rules
    #   <p>A list of Amazon EventBridge Managed Rule ARNs associated with this <code>EventRule</code>.</p> <note> <p>These are created by User Notifications within your account so your <code>EventRules</code> can function.</p> </note>
    #   @return [Array<String>]
    # @!attribute status_summary_by_region
    #   <p>A list of an <code>EventRule</code>'s status by Region. Regions are mapped to <code>EventRuleStatusSummary</code>.</p>
    #   @return [Hash<String, Types::EventRuleStatusSummary>]
    class EventRuleStructure < Struct.new(
      :arn,
      :notification_configuration_arn,
      :creation_time,
      :source,
      :event_type,
      :event_pattern,
      :regions,
      :managed_rules,
      :status_summary_by_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>EventRule</code> to return.</p>
    #   @return [String]
    class GetEventRuleRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute notification_configuration_arn
    #   <p>The ARN of a <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date when the <code>EventRule</code> was created.</p>
    #   @return [Time]
    # @!attribute source
    #   <p>The matched event source.</p> <p>Must match one of the valid EventBridge sources. Only Amazon Web Services service sourced events are supported. For example, <code>aws.ec2</code> and <code>aws.cloudwatch</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The event type to match.</p> <p>Must match one of the valid Amazon EventBridge event types. For example, EC2 Instance State-change Notification and Amazon CloudWatch Alarm State Change. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    # @!attribute event_pattern
    #   <p>An additional event pattern used to further filter the events this <code>EventRule</code> receives.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event patterns</a> in the <i>Amazon EventBridge User Guide.</i> </p>
    #   @return [String]
    # @!attribute regions
    #   <p>A list of Amazon Web Services Regions that send events to this <code>EventRule</code>.</p>
    #   @return [Array<String>]
    # @!attribute managed_rules
    #   <p>A list of managed rules from EventBridge that are associated with this <code>EventRule</code>.</p> <note> <p>These are created by User Notifications within your account so this <code>EventRule</code> functions.</p> </note>
    #   @return [Array<String>]
    # @!attribute status_summary_by_region
    #   <p>A list of an <code>EventRule</code>'s status by Region. Regions are mapped to <code>EventRuleStatusSummary</code>.</p>
    #   @return [Hash<String, Types::EventRuleStatusSummary>]
    class GetEventRuleResponse < Struct.new(
      :arn,
      :notification_configuration_arn,
      :creation_time,
      :source,
      :event_type,
      :event_pattern,
      :regions,
      :managed_rules,
      :status_summary_by_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationChildEvent</code> to return.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale code of the language used for the retrieved <code>ManagedNotificationChildEvent</code>. The default locale is English <code>en_US</code>.</p>
    #   @return [String]
    class GetManagedNotificationChildEventRequest < Struct.new(
      :arn,
      :locale,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> associated with the <code>ManagedNotificationChildEvent</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the <code>ManagedNotificationChildEvent</code>.</p>
    #   @return [Time]
    # @!attribute content
    #   <p>The content of the <code>ManagedNotificationChildEvent</code>.</p>
    #   @return [Types::ManagedNotificationChildEvent]
    class GetManagedNotificationChildEventResponse < Struct.new(
      :arn,
      :managed_notification_configuration_arn,
      :creation_time,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> to return.</p>
    #   @return [String]
    class GetManagedNotificationConfigurationRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the <code>ManagedNotificationConfiguration</code> resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute sub_category
    #   <p>The subCategory of the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    class GetManagedNotificationConfigurationResponse < Struct.new(
      :arn,
      :name,
      :description,
      :category,
      :sub_category,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationEvent</code> to return.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale code of the language used for the retrieved <code>ManagedNotificationEvent</code>. The default locale is English <code>(en_US)</code>.</p>
    #   @return [String]
    class GetManagedNotificationEventRequest < Struct.new(
      :arn,
      :locale,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute managed_notification_configuration_arn
    #   <p>The ARN of the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the <code>ManagedNotificationEvent</code>.</p>
    #   @return [Time]
    # @!attribute content
    #   <p>The content of the <code>ManagedNotificationEvent</code>.</p>
    #   @return [Types::ManagedNotificationEvent]
    class GetManagedNotificationEventResponse < Struct.new(
      :arn,
      :managed_notification_configuration_arn,
      :creation_time,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code> to return.</p>
    #   @return [String]
    class GetNotificationConfigurationRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the <code>NotificationConfiguration</code>.</p>
    #   @return [Time]
    # @!attribute aggregation_duration
    #   <p>The aggregation preference of the <code>NotificationConfiguration</code>.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>LONG</code> </p> <ul> <li> <p>Aggregate notifications for long periods of time (12 hours).</p> </li> </ul> </li> <li> <p> <code>SHORT</code> </p> <ul> <li> <p>Aggregate notifications for short periods of time (5 minutes).</p> </li> </ul> </li> <li> <p> <code>NONE</code> </p> <ul> <li> <p>Don't aggregate notifications.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute subtype
    #   <p>The subtype of the notification configuration returned in the response.</p>
    #   @return [String]
    class GetNotificationConfigurationResponse < Struct.new(
      :arn,
      :name,
      :description,
      :status,
      :creation_time,
      :aggregation_duration,
      :subtype,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationEvent</code> to return.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale code of the language used for the retrieved <code>NotificationEvent</code>. The default locale is English <code>en_US</code>.</p>
    #   @return [String]
    class GetNotificationEventRequest < Struct.new(
      :arn,
      :locale,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute notification_configuration_arn
    #   <p>The ARN of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the <code>NotificationEvent</code>.</p>
    #   @return [Time]
    # @!attribute content
    #   <p>The content of the <code>NotificationEvent</code>.</p>
    #   @return [Types::NotificationEventSchema]
    class GetNotificationEventResponse < Struct.new(
      :arn,
      :notification_configuration_arn,
      :creation_time,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetNotificationsAccessForOrganizationRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notifications_access_for_organization
    #   <p>The <code>AccessStatus</code> of Service Trust Enablement for User Notifications to Amazon Web Services Organizations.</p>
    #   @return [Types::NotificationsAccessForOrganization]
    class GetNotificationsAccessForOrganizationResponse < Struct.new(
      :notifications_access_for_organization,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Unexpected error during processing of request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned in this call. The default value is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous ListNotificationEvents call. <code>NextToken</code> uses Base64 encoding.</p>
    #   @return [String]
    class ListChannelsRequest < Struct.new(
      :notification_configuration_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its value in another request to retrieve more entries.</p>
    #   @return [String]
    # @!attribute channels
    #   <p>A list of Channels.</p>
    #   @return [Array<String>]
    class ListChannelsResponse < Struct.new(
      :next_token,
      :channels,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned in this call. The default value is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous <code>ListEventRules</code> call. Next token uses Base64 encoding.</p>
    #   @return [String]
    class ListEventRulesRequest < Struct.new(
      :notification_configuration_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its value in another request to retrieve more entries.</p>
    #   @return [String]
    # @!attribute event_rules
    #   <p>A list of <code>EventRules</code>.</p>
    #   @return [Array<Types::EventRuleStructure>]
    class ListEventRulesResponse < Struct.new(
      :next_token,
      :event_rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code> to match.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous <code>ListManagedNotificationChannelAssociations</code> call.</p>
    #   @return [String]
    class ListManagedNotificationChannelAssociationsRequest < Struct.new(
      :managed_notification_configuration_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its value in another request to retrieve more entries.</p>
    #   @return [String]
    # @!attribute channel_associations
    #   <p>A list that contains the following information about a channel association.</p>
    #   @return [Array<Types::ManagedNotificationChannelAssociationSummary>]
    class ListManagedNotificationChannelAssociationsResponse < Struct.new(
      :next_token,
      :channel_associations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute aggregate_managed_notification_event_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationEvent</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The earliest time of events to return from this call.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Latest time of events to return from this call.</p>
    #   @return [Time]
    # @!attribute locale
    #   <p>The locale code of the language used for the retrieved <code>NotificationEvent</code>. The default locale is English.<code>en_US</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    #   @return [Integer]
    # @!attribute related_account
    #   <p>The Amazon Web Services account ID associated with the Managed Notification Child Events.</p>
    #   @return [String]
    # @!attribute organizational_unit_id
    #   <p>The identifier of the Amazon Web Services Organizations organizational unit (OU) associated with the Managed Notification Child Events.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous ListManagedNotificationChannelAssociations call. Next token uses Base64 encoding.</p>
    #   @return [String]
    class ListManagedNotificationChildEventsRequest < Struct.new(
      :aggregate_managed_notification_event_arn,
      :start_time,
      :end_time,
      :locale,
      :max_results,
      :related_account,
      :organizational_unit_id,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its value in another request to retrieve more entries.</p>
    #   @return [String]
    # @!attribute managed_notification_child_events
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its value in another request to retrieve more entries.</p>
    #   @return [Array<Types::ManagedNotificationChildEventOverview>]
    class ListManagedNotificationChildEventsResponse < Struct.new(
      :next_token,
      :managed_notification_child_events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_identifier
    #   <p>The identifier or ARN of the notification channel to filter configurations by.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous ListManagedNotificationChannelAssociations call. Next token uses Base64 encoding.</p>
    #   @return [String]
    class ListManagedNotificationConfigurationsRequest < Struct.new(
      :channel_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its value in another request to retrieve more entries.</p>
    #   @return [String]
    # @!attribute managed_notification_configurations
    #   <p>A list of Managed Notification Configurations matching the request criteria.</p>
    #   @return [Array<Types::ManagedNotificationConfigurationStructure>]
    class ListManagedNotificationConfigurationsResponse < Struct.new(
      :next_token,
      :managed_notification_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The earliest time of events to return from this call.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Latest time of events to return from this call.</p>
    #   @return [Time]
    # @!attribute locale
    #   <p>The locale code of the language used for the retrieved NotificationEvent. The default locale is English (en_US).</p>
    #   @return [String]
    # @!attribute source
    #   <p>The Amazon Web Services service the event originates from. For example aws.cloudwatch.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous <code>ListManagedNotificationChannelAssociations</code> call. Next token uses Base64 encoding.</p>
    #   @return [String]
    # @!attribute organizational_unit_id
    #   <p>The Organizational Unit Id that an Amazon Web Services account belongs to.</p>
    #   @return [String]
    # @!attribute related_account
    #   <p>The Amazon Web Services account ID associated with the Managed Notification Events.</p>
    #   @return [String]
    class ListManagedNotificationEventsRequest < Struct.new(
      :start_time,
      :end_time,
      :locale,
      :source,
      :max_results,
      :next_token,
      :organizational_unit_id,
      :related_account,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its value in another request to retrieve more entries.</p>
    #   @return [String]
    # @!attribute managed_notification_events
    #   <p>A list of Managed Notification Events matching the request criteria.</p>
    #   @return [Array<Types::ManagedNotificationEventOverview>]
    class ListManagedNotificationEventsResponse < Struct.new(
      :next_token,
      :managed_notification_events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the notification configuration used to filter the member accounts.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid values are 1-100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. Use the value returned in the previous response.</p>
    #   @return [String]
    # @!attribute member_account
    #   <p>The member account identifier used to filter the results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status used to filter the member accounts.</p>
    #   @return [String]
    # @!attribute organizational_unit_id
    #   <p>The organizational unit ID used to filter the member accounts.</p>
    #   @return [String]
    class ListMemberAccountsRequest < Struct.new(
      :notification_configuration_arn,
      :max_results,
      :next_token,
      :member_account,
      :status,
      :organizational_unit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute member_accounts
    #   <p>The list of member accounts that match the specified criteria.</p>
    #   @return [Array<Types::MemberAccount>]
    # @!attribute next_token
    #   <p>The token to use for the next page of results.</p>
    #   @return [String]
    class ListMemberAccountsResponse < Struct.new(
      :member_accounts,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_rule_source
    #   <p>The matched event source.</p> <p>Must match one of the valid EventBridge sources. Only Amazon Web Services service sourced events are supported. For example, <code>aws.ec2</code> and <code>aws.cloudwatch</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the Channel to match.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The <code>NotificationConfiguration</code> status to match.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ACTIVE</code> </p> <ul> <li> <p>All <code>EventRules</code> are <code>ACTIVE</code> and any call can be run.</p> </li> </ul> </li> <li> <p> <code>PARTIALLY_ACTIVE</code> </p> <ul> <li> <p>Some <code>EventRules</code> are <code>ACTIVE</code> and some are <code>INACTIVE</code>. Any call can be run.</p> </li> <li> <p>Any call can be run.</p> </li> </ul> </li> <li> <p> <code>INACTIVE</code> </p> <ul> <li> <p>All <code>EventRules</code> are <code>INACTIVE</code> and any call can be run.</p> </li> </ul> </li> <li> <p> <code>DELETING</code> </p> <ul> <li> <p>This <code>NotificationConfiguration</code> is being deleted.</p> </li> <li> <p>Only <code>GET</code> and <code>LIST</code> calls can be run.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute subtype
    #   <p>The subtype used to filter the notification configurations in the request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous <code>ListEventRules</code> call. Next token uses Base64 encoding.</p>
    #   @return [String]
    class ListNotificationConfigurationsRequest < Struct.new(
      :event_rule_source,
      :channel_arn,
      :status,
      :subtype,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its value in another request to retrieve more entries.</p>
    #   @return [String]
    # @!attribute notification_configurations
    #   <p>The <code>NotificationConfigurations</code> in the account.</p>
    #   @return [Array<Types::NotificationConfigurationStructure>]
    class ListNotificationConfigurationsResponse < Struct.new(
      :next_token,
      :notification_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The earliest time of events to return from this call.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Latest time of events to return from this call.</p>
    #   @return [Time]
    # @!attribute locale
    #   <p>The locale code of the language used for the retrieved <code>NotificationEvent</code>. The default locale is English <code>(en_US)</code>.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The matched event source.</p> <p>Must match one of the valid EventBridge sources. Only Amazon Web Services service sourced events are supported. For example, <code>aws.ec2</code> and <code>aws.cloudwatch</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    # @!attribute include_child_events
    #   <p>Include aggregated child events in the result.</p>
    #   @return [Boolean]
    # @!attribute aggregate_notification_event_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>aggregatedNotificationEventArn</code> to match.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned in this call. Defaults to 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The start token for paginated calls. Retrieved from the response of a previous <code>ListEventRules</code> call. Next token uses Base64 encoding.</p>
    #   @return [String]
    # @!attribute organizational_unit_id
    #   <p>The unique identifier of the organizational unit used to filter notification events.</p>
    #   @return [String]
    class ListNotificationEventsRequest < Struct.new(
      :start_time,
      :end_time,
      :locale,
      :source,
      :include_child_events,
      :aggregate_notification_event_arn,
      :max_results,
      :next_token,
      :organizational_unit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its value in another request to retrieve more entries.</p>
    #   @return [String]
    # @!attribute notification_events
    #   <p>The list of notification events.</p>
    #   @return [Array<Types::NotificationEventOverview>]
    class ListNotificationEventsResponse < Struct.new(
      :next_token,
      :notification_events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of records to list in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token. Set to null to start listing notification hubs from the start.</p>
    #   @return [String]
    class ListNotificationHubsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_hubs
    #   <p>The <code>NotificationHubs</code> in the account.</p>
    #   @return [Array<Types::NotificationHubOverview>]
    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its value in another request to retrieve more entries.</p>
    #   @return [String]
    class ListNotificationHubsResponse < Struct.new(
      :notification_hubs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the notification configuration used to filter the organizational units.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of organizational units to return in a single call. Valid values are 1-100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. Use the value returned in the previous response.</p>
    #   @return [String]
    class ListOrganizationalUnitsRequest < Struct.new(
      :notification_configuration_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organizational_units
    #   <p>The list of organizational units that match the specified criteria.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use for the next page of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListOrganizationalUnitsResponse < Struct.new(
      :organizational_units,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) to use to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags for the specified ARN.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of channel associations for a managed notification configuration.</p>
    # @!attribute channel_identifier
    #   <p>The unique identifier for the notification channel.</p>
    #   @return [String]
    # @!attribute channel_type
    #   <p>The type of notification channel used for message delivery.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ACCOUNT_CONTACT</code> </p> <ul> <li> <p>Delivers notifications to Account Managed contacts through the User Notification Service.</p> </li> </ul> </li> <li> <p> <code>MOBILE</code> </p> <ul> <li> <p>Delivers notifications through the Amazon Web Services Console Mobile Application to mobile devices.</p> </li> </ul> </li> <li> <p> <code>CHATBOT</code> </p> <ul> <li> <p>Delivers notifications through Amazon Q Developer in chat applications to collaboration platforms (Slack, Chime).</p> </li> </ul> </li> <li> <p> <code>EMAIL</code> </p> <ul> <li> <p>Delivers notifications to email addresses.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute override_option
    #   <p>Controls whether users can modify channel associations for a notification configuration.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ENABLED</code> </p> <ul> <li> <p>Users can associate or disassociate channels with the notification configuration.</p> </li> </ul> </li> <li> <p> <code>DISABLED</code> </p> <ul> <li> <p>Users cannot associate or disassociate channels with the notification configuration.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    class ManagedNotificationChannelAssociationSummary < Struct.new(
      :channel_identifier,
      :channel_type,
      :override_option,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A ManagedNotificationChildEvent is a notification-focused representation of an event. They contain semantic information used to create aggregated or non-aggregated end-user notifications.</p>
    # @!attribute schema_version
    #   <p>The schema version of the Managed Notification Child Event.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for a Managed Notification Child Event.</p>
    #   @return [String]
    # @!attribute message_components
    #   <p>Describes the components of a notification message.</p>
    #   @return [Types::MessageComponents]
    # @!attribute source_event_detail_url
    #   <p>The source event URL.</p>
    #   @return [String]
    # @!attribute source_event_detail_url_display_text
    #   <p>The detailed URL for the source event.</p>
    #   @return [String]
    # @!attribute notification_type
    #   <p>The type of event causing the notification.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ALERT</code> </p> <ul> <li> <p>A notification about an event where something was triggered, initiated, reopened, deployed, or a threshold was breached.</p> </li> </ul> </li> <li> <p> <code>WARNING</code> </p> <ul> <li> <p>A notification about an event where an issue is about to arise. For example, something is approaching a threshold.</p> </li> </ul> </li> <li> <p> <code>ANNOUNCEMENT</code> </p> <ul> <li> <p>A notification about an important event. For example, a step in a workflow or escalation path or that a workflow was updated.</p> </li> </ul> </li> <li> <p> <code>INFORMATIONAL</code> </p> <ul> <li> <p>A notification about informational messages. For example, recommendations, service announcements, or reminders.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute event_status
    #   <p>The assesed nature of the event.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>HEALTHY</code> </p> <ul> <li> <p>All <code>EventRules</code> are <code>ACTIVE</code>.</p> </li> </ul> </li> <li> <p> <code>UNHEALTHY</code> </p> <ul> <li> <p>Some <code>EventRules</code> are <code>ACTIVE</code> and some are <code>INACTIVE</code>.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute aggregate_managed_notification_event_arn
    #   <p>The Amazon Resource Name (ARN) of the ManagedNotificationEvent that is associated with this Managed Notification Child Event.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The notification event start time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the event.</p>
    #   @return [Time]
    # @!attribute text_parts
    #   <p>A list of text values.</p>
    #   @return [Hash<String, Types::TextPartValue>]
    # @!attribute organizational_unit_id
    #   <p>The Organizational Unit Id that an Amazon Web Services account belongs to.</p>
    #   @return [String]
    # @!attribute aggregation_detail
    #   <p>Provides detailed information about the dimensions used for event summarization and aggregation.</p>
    #   @return [Types::AggregationDetail]
    class ManagedNotificationChildEvent < Struct.new(
      :schema_version,
      :id,
      :message_components,
      :source_event_detail_url,
      :source_event_detail_url_display_text,
      :notification_type,
      :event_status,
      :aggregate_managed_notification_event_arn,
      :start_time,
      :end_time,
      :text_parts,
      :organizational_unit_id,
      :aggregation_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an overview and metadata for a <code>ManagedNotificationChildEvent</code>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationChildEvent</code>.</p>
    #   @return [String]
    # @!attribute managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute related_account
    #   <p>The account that related to the <code>ManagedNotificationChildEvent</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the <code>ManagedNotificationChildEvent</code>.</p>
    #   @return [Time]
    # @!attribute child_event
    #   <p>The content of the <code>ManagedNotificationChildEvent</code>.</p>
    #   @return [Types::ManagedNotificationChildEventSummary]
    # @!attribute aggregate_managed_notification_event_arn
    #   <p>The Amazon Resource Name (ARN) of the ManagedNotificationEvent that is associated with this <code>ManagedNotificationChildEvent</code>.</p>
    #   @return [String]
    # @!attribute organizational_unit_id
    #   <p>The Organizational Unit Id that an AWS account belongs to.</p>
    #   @return [String]
    class ManagedNotificationChildEventOverview < Struct.new(
      :arn,
      :managed_notification_configuration_arn,
      :related_account,
      :creation_time,
      :child_event,
      :aggregate_managed_notification_event_arn,
      :organizational_unit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a short summary and metadata for a <code>ManagedNotificationChildEvent</code>.</p>
    # @!attribute schema_version
    #   <p>The schema version of the <code>ManagedNotificationChildEvent</code>.</p>
    #   @return [String]
    # @!attribute source_event_metadata
    #   <p>Contains all event metadata present identically across all <code>NotificationEvents</code>. All fields are present in Source Events via Eventbridge.</p>
    #   @return [Types::ManagedSourceEventMetadataSummary]
    # @!attribute message_components
    #   <p>Contains the headline message component.</p>
    #   @return [Types::MessageComponentsSummary]
    # @!attribute aggregation_detail
    #   <p>Provides detailed information about the dimensions used for event summarization and aggregation.</p>
    #   @return [Types::AggregationDetail]
    # @!attribute event_status
    #   <p>The perceived nature of the event.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>HEALTHY</code> </p> <ul> <li> <p>All EventRules are <code>ACTIVE</code> and any call can be run.</p> </li> </ul> </li> <li> <p> <code>UNHEALTHY</code> </p> <ul> <li> <p>Some EventRules are <code>ACTIVE</code> and some are <code>INACTIVE</code>. Any call can be run.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute notification_type
    #   <p>The Type of the event causing this notification.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ALERT</code> </p> <ul> <li> <p>A notification about an event where something was triggered, initiated, reopened, deployed, or a threshold was breached.</p> </li> </ul> </li> <li> <p> <code>WARNING</code> </p> <ul> <li> <p>A notification about an event where an issue is about to arise. For example, something is approaching a threshold.</p> </li> </ul> </li> <li> <p> <code>ANNOUNCEMENT</code> </p> <ul> <li> <p>A notification about an important event. For example, a step in a workflow or escalation path or that a workflow was updated.</p> </li> </ul> </li> <li> <p> <code>INFORMATIONAL</code> </p> <ul> <li> <p>A notification about informational messages. For example, recommendations, service announcements, or reminders.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    class ManagedNotificationChildEventSummary < Struct.new(
      :schema_version,
      :source_event_metadata,
      :message_components,
      :aggregation_detail,
      :event_status,
      :notification_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the basic structure and properties of a <code>ManagedNotificationConfiguration</code>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    class ManagedNotificationConfigurationStructure < Struct.new(
      :arn,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A notification-focused representation of an event. They contain semantic information used by AccountContacts or Additional Channels to create end-user notifications.</p>
    # @!attribute schema_version
    #   <p>Version of the <code>ManagedNotificationEvent</code> schema.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Unique identifier for a <code>ManagedNotificationEvent</code>.</p>
    #   @return [String]
    # @!attribute message_components
    #   <p>Describes the components of a notification message.</p>
    #   @return [Types::MessageComponents]
    # @!attribute source_event_detail_url
    #   <p>URL defined by Source Service to be used by notification consumers to get additional information about event.</p>
    #   @return [String]
    # @!attribute source_event_detail_url_display_text
    #   <p>Text that needs to be hyperlinked with the sourceEventDetailUrl. For example, the description of the sourceEventDetailUrl.</p>
    #   @return [String]
    # @!attribute notification_type
    #   <p>The nature of the event causing this notification.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ALERT</code> </p> <ul> <li> <p>A notification about an event where something was triggered, initiated, reopened, deployed, or a threshold was breached.</p> </li> </ul> </li> <li> <p> <code>WARNING</code> </p> <ul> <li> <p>A notification about an event where an issue is about to arise. For example, something is approaching a threshold.</p> </li> </ul> </li> <li> <p> <code>ANNOUNCEMENT</code> </p> <ul> <li> <p>A notification about an important event. For example, a step in a workflow or escalation path or that a workflow was updated.</p> </li> </ul> </li> <li> <p> <code>INFORMATIONAL</code> </p> <ul> <li> <p>A notification about informational messages. For example, recommendations, service announcements, or reminders.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute event_status
    #   <p>The status of an event.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>HEALTHY</code> </p> <ul> <li> <p>All EventRules are <code>ACTIVE</code> and any call can be run.</p> </li> </ul> </li> <li> <p> <code>UNHEALTHY</code> </p> <ul> <li> <p>Some EventRules are <code>ACTIVE</code> and some are <code>INACTIVE</code>. Any call can be run.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute aggregation_event_type
    #   <p>The notifications aggregation type.</p>
    #   @return [String]
    # @!attribute aggregation_summary
    #   <p>Provides additional information about the aggregation key.</p>
    #   @return [Types::AggregationSummary]
    # @!attribute start_time
    #   <p>The earliest time of events to return from this call.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the notification event.</p>
    #   @return [Time]
    # @!attribute text_parts
    #   <p>A list of text values.</p>
    #   @return [Hash<String, Types::TextPartValue>]
    # @!attribute organizational_unit_id
    #   <p>The Organizational Unit Id that an Amazon Web Services account belongs to.</p>
    #   @return [String]
    class ManagedNotificationEvent < Struct.new(
      :schema_version,
      :id,
      :message_components,
      :source_event_detail_url,
      :source_event_detail_url_display_text,
      :notification_type,
      :event_status,
      :aggregation_event_type,
      :aggregation_summary,
      :start_time,
      :end_time,
      :text_parts,
      :organizational_unit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an overview and metadata for a ManagedNotificationEvent.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the ManagedNotificationEvent.</p>
    #   @return [String]
    # @!attribute managed_notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>ManagedNotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute related_account
    #   <p>The account that related to the <code>ManagedNotificationEvent</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the <code>ManagedNotificationEvent</code>.</p>
    #   @return [Time]
    # @!attribute notification_event
    #   <p/>
    #   @return [Types::ManagedNotificationEventSummary]
    # @!attribute aggregation_event_type
    #   <p>The notifications aggregation type.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>AGGREGATE</code> </p> <ul> <li> <p>The notification event is an aggregate notification. Aggregate notifications summarize grouped events over a specified time period.</p> </li> </ul> </li> <li> <p> <code>CHILD</code> </p> <ul> <li> <p>Some <code>EventRules</code> are <code>ACTIVE</code> and some are <code>INACTIVE</code>. Any call can be run.</p> </li> </ul> </li> <li> <p> <code>NONE</code> </p> <ul> <li> <p>The notification isn't aggregated.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute organizational_unit_id
    #   <p>The Organizational Unit Id that an Amazon Web Services account belongs to.</p>
    #   @return [String]
    # @!attribute aggregation_summary
    #   <p>Provides additional information about the aggregation key.</p>
    #   @return [Types::AggregationSummary]
    # @!attribute aggregated_notification_regions
    #   <p>The list of the regions where the aggregated notifications in this <code>NotificationEvent</code> originated.</p>
    #   @return [Array<String>]
    class ManagedNotificationEventOverview < Struct.new(
      :arn,
      :managed_notification_configuration_arn,
      :related_account,
      :creation_time,
      :notification_event,
      :aggregation_event_type,
      :organizational_unit_id,
      :aggregation_summary,
      :aggregated_notification_regions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A short summary of a <code>ManagedNotificationEvent</code>. This is only used when listing managed notification events.</p>
    # @!attribute schema_version
    #   <p>The schema version of the <code>ManagedNotificationEvent</code>.</p>
    #   @return [String]
    # @!attribute source_event_metadata
    #   <p>Contains metadata about the event that caused the <code>ManagedNotificationEvent</code>.</p>
    #   @return [Types::ManagedSourceEventMetadataSummary]
    # @!attribute message_components
    #   <p>Contains the headline message component.</p>
    #   @return [Types::MessageComponentsSummary]
    # @!attribute event_status
    #   <p>The managed notification event status.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>HEALTHY</code> </p> <ul> <li> <p>All <code>EventRules</code> are <code>ACTIVE</code>.</p> </li> </ul> </li> <li> <p> <code>UNHEALTHY</code> </p> <ul> <li> <p>Some <code>EventRules</code> are <code>ACTIVE</code> and some are <code>INACTIVE</code>.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute notification_type
    #   <p>The Type of event causing the notification.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ALERT</code> </p> <ul> <li> <p>A notification about an event where something was triggered, initiated, reopened, deployed, or a threshold was breached.</p> </li> </ul> </li> <li> <p> <code>WARNING</code> </p> <ul> <li> <p>A notification about an event where an issue is about to arise. For example, something is approaching a threshold.</p> </li> </ul> </li> <li> <p> <code>ANNOUNCEMENT</code> </p> <ul> <li> <p>A notification about an important event. For example, a step in a workflow or escalation path or that a workflow was updated.</p> </li> </ul> </li> <li> <p> <code>INFORMATIONAL</code> </p> <ul> <li> <p>A notification about informational messages. For example, recommendations, service announcements, or reminders.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    class ManagedNotificationEventSummary < Struct.new(
      :schema_version,
      :source_event_metadata,
      :message_components,
      :event_status,
      :notification_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A short summary and metadata for a managed notification event.</p>
    # @!attribute event_origin_region
    #   <p>The Region where the notification originated.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source service of the notification.</p> <p>Must match one of the valid EventBridge sources. Only Amazon Web Services service sourced events are supported. For example, <code>aws.ec2</code> and <code>aws.cloudwatch</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The event Type of the notification.</p>
    #   @return [String]
    class ManagedSourceEventMetadataSummary < Struct.new(
      :event_origin_region,
      :source,
      :event_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a media element.</p>
    # @!attribute media_id
    #   <p>The unique ID for the media.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of media.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the media.</p>
    #   @return [String]
    # @!attribute caption
    #   <p>The caption of the media.</p>
    #   @return [String]
    class MediaElement < Struct.new(
      :media_id,
      :type,
      :url,
      :caption,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a member account.</p>
    # @!attribute notification_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the notification configuration associated with the member account.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The AWS account ID of the member account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the member account.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the member account.</p>
    #   @return [String]
    # @!attribute organizational_unit_id
    #   <p>The unique identifier of the organizational unit containing the member account.</p>
    #   @return [String]
    class MemberAccount < Struct.new(
      :notification_configuration_arn,
      :account_id,
      :status,
      :status_reason,
      :organizational_unit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the components of a notification message.</p>
    # @!attribute headline
    #   <p>A sentence long summary. For example, titles or an email subject line.</p>
    #   @return [String]
    # @!attribute paragraph_summary
    #   <p>A paragraph long or multiple sentence summary. For example, Amazon Q Developer in chat applications notifications.</p>
    #   @return [String]
    # @!attribute complete_description
    #   <p>A complete summary with all possible relevant information.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>A list of properties in key-value pairs. Pairs are shown in order of importance from most important to least important. Channels may limit the number of dimensions shown to the notification viewer.</p> <note> <p>Included dimensions, keys, and values are subject to change.</p> </note>
    #   @return [Array<Types::Dimension>]
    class MessageComponents < Struct.new(
      :headline,
      :paragraph_summary,
      :complete_description,
      :dimensions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the headline message component.</p>
    # @!attribute headline
    #   <p>A sentence long summary. For example, titles or an email subject line.</p>
    #   @return [String]
    class MessageComponentsSummary < Struct.new(
      :headline,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the complete list of fields for a NotificationConfiguration.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the <code>NotificationConfiguration</code> resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>NotificationConfiguration</code>. Supports RFC 3986's unreserved characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the <code>NotificationConfiguration</code>.</p>
    #   @return [Time]
    # @!attribute aggregation_duration
    #   <p>The aggregation preference of the <code>NotificationConfiguration</code>.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>LONG</code> </p> <ul> <li> <p>Aggregate notifications for long periods of time (12 hours).</p> </li> </ul> </li> <li> <p> <code>SHORT</code> </p> <ul> <li> <p>Aggregate notifications for short periods of time (5 minutes).</p> </li> </ul> </li> <li> <p> <code>NONE</code> </p> <ul> <li> <p>Don't aggregate notifications.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute subtype
    #   <p>The subtype of the notification configuration.</p>
    #   @return [String]
    class NotificationConfigurationStructure < Struct.new(
      :arn,
      :name,
      :description,
      :status,
      :creation_time,
      :aggregation_duration,
      :subtype,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a short summary of a <code>NotificationEvent</code>. This is only used when listing notification events.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute notification_configuration_arn
    #   <p>The ARN of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute related_account
    #   <p>The account name containing the <code>NotificationHub</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the <code>NotificationEvent</code>.</p>
    #   @return [Time]
    # @!attribute notification_event
    #   <p>Refers to a <code>NotificationEventSummary</code> object.</p> <p>Similar in structure to <code>content</code> in the <code>GetNotificationEvent</code> response.</p>
    #   @return [Types::NotificationEventSummary]
    # @!attribute aggregation_event_type
    #   <p>The <code>NotificationConfiguration</code>'s aggregation type.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>AGGREGATE</code> </p> <ul> <li> <p>The notification event is an aggregate notification. Aggregate notifications summarize grouped events over a specified time period.</p> </li> </ul> </li> <li> <p> <code>CHILD</code> </p> <ul> <li> <p>Some <code>EventRules</code> are <code>ACTIVE</code> and some are <code>INACTIVE</code>. Any call can be run.</p> </li> </ul> </li> <li> <p> <code>NONE</code> </p> <ul> <li> <p>The notification isn't aggregated.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute aggregate_notification_event_arn
    #   <p>The ARN of the <code>aggregatedNotificationEventArn</code> to match.</p>
    #   @return [String]
    # @!attribute aggregation_summary
    #   <p>Provides an aggregated summary data for notification events.</p>
    #   @return [Types::AggregationSummary]
    # @!attribute organizational_unit_id
    #   <p>The unique identifier of the organizational unit in the notification event overview.</p>
    #   @return [String]
    class NotificationEventOverview < Struct.new(
      :arn,
      :notification_configuration_arn,
      :related_account,
      :creation_time,
      :notification_event,
      :aggregation_event_type,
      :aggregate_notification_event_arn,
      :aggregation_summary,
      :organizational_unit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>NotificationEvent</code> is a notification-focused representation of an event. They contain semantic information used by Channels to create end-user notifications.</p>
    # @!attribute schema_version
    #   <p>The schema version of the Notification Event.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for a <code>NotificationEvent</code>.</p>
    #   @return [String]
    # @!attribute source_event_metadata
    #   <p>The source event metadata.</p>
    #   @return [Types::SourceEventMetadata]
    # @!attribute message_components
    #   <p>Describes the components of a notification message.</p>
    #   @return [Types::MessageComponents]
    # @!attribute source_event_detail_url
    #   <p>The source event URL.</p>
    #   @return [String]
    # @!attribute source_event_detail_url_display_text
    #   <p>The detailed URL for the source event.</p>
    #   @return [String]
    # @!attribute notification_type
    #   <p>The type of event causing the notification.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ALERT</code> </p> <ul> <li> <p>A notification about an event where something was triggered, initiated, reopened, deployed, or a threshold was breached.</p> </li> </ul> </li> <li> <p> <code>WARNING</code> </p> <ul> <li> <p>A notification about an event where an issue is about to arise. For example, something is approaching a threshold.</p> </li> </ul> </li> <li> <p> <code>ANNOUNCEMENT</code> </p> <ul> <li> <p>A notification about an important event. For example, a step in a workflow or escalation path or that a workflow was updated.</p> </li> </ul> </li> <li> <p> <code>INFORMATIONAL</code> </p> <ul> <li> <p>A notification about informational messages. For example, recommendations, service announcements, or reminders.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute event_status
    #   <p>The assessed nature of the event.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>HEALTHY</code> </p> <ul> <li> <p>All <code>EventRules</code> are <code>ACTIVE</code> and any call can be run.</p> </li> </ul> </li> <li> <p> <code>UNHEALTHY</code> </p> <ul> <li> <p>Some <code>EventRules</code> are <code>ACTIVE</code> and some are <code>INACTIVE</code>. Any call can be run.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute aggregation_event_type
    #   <p>The aggregation type of the <code>NotificationConfiguration</code>.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>AGGREGATE</code> </p> <ul> <li> <p>The notification event is an aggregate notification. Aggregate notifications summarize grouped events over a specified time period.</p> </li> </ul> </li> <li> <p> <code>CHILD</code> </p> <ul> <li> <p>Some <code>EventRules</code> are <code>ACTIVE</code> and some are <code>INACTIVE</code>. Any call can be run.</p> </li> </ul> </li> <li> <p> <code>NONE</code> </p> <ul> <li> <p>The notification isn't aggregated.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute aggregate_notification_event_arn
    #   <p>If the value of <code>aggregationEventType</code> is not <code>NONE</code>, this is the Amazon Resource Event (ARN) of the parent aggregate notification.</p> <p>This is omitted if notification isn't aggregated.</p>
    #   @return [String]
    # @!attribute aggregation_summary
    #   <p>Provides additional information about how multiple notifications are grouped.</p>
    #   @return [Types::AggregationSummary]
    # @!attribute start_time
    #   <p>The notification event start time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the event.</p>
    #   @return [Time]
    # @!attribute text_parts
    #   <p>A list of text values.</p>
    #   @return [Hash<String, Types::TextPartValue>]
    # @!attribute media
    #   <p>A list of media elements.</p>
    #   @return [Array<Types::MediaElement>]
    # @!attribute organizational_unit_id
    #   <p>The unique identifier of the organizational unit associated with the notification event.</p>
    #   @return [String]
    class NotificationEventSchema < Struct.new(
      :schema_version,
      :id,
      :source_event_metadata,
      :message_components,
      :source_event_detail_url,
      :source_event_detail_url_display_text,
      :notification_type,
      :event_status,
      :aggregation_event_type,
      :aggregate_notification_event_arn,
      :aggregation_summary,
      :start_time,
      :end_time,
      :text_parts,
      :media,
      :organizational_unit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a short summary and metadata for a <code>NotificationEvent</code>.</p>
    # @!attribute schema_version
    #   <p>The schema version of the Notification Event.</p>
    #   @return [String]
    # @!attribute source_event_metadata
    #   <p>The source event metadata.</p>
    #   @return [Types::SourceEventMetadataSummary]
    # @!attribute message_components
    #   <p>The message components of a notification event.</p>
    #   @return [Types::MessageComponentsSummary]
    # @!attribute event_status
    #   <p>Provides additional information about the current status of the <code>NotificationEvent</code>.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>HEALTHY</code> </p> <ul> <li> <p>All <code>EventRules</code> are <code>ACTIVE</code>.</p> </li> </ul> </li> <li> <p> <code>UNHEALTHY</code> </p> <ul> <li> <p>Some <code>EventRules</code> are <code>ACTIVE</code> and some are <code>INACTIVE</code>.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute notification_type
    #   <p>The type of event causing the notification.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ALERT</code> </p> <ul> <li> <p>A notification about an event where something was triggered, initiated, reopened, deployed, or a threshold was breached.</p> </li> </ul> </li> <li> <p> <code>WARNING</code> </p> <ul> <li> <p>A notification about an event where an issue is about to arise. For example, something is approaching a threshold.</p> </li> </ul> </li> <li> <p> <code>ANNOUNCEMENT</code> </p> <ul> <li> <p>A notification about an important event. For example, a step in a workflow or escalation path or that a workflow was updated.</p> </li> </ul> </li> <li> <p> <code>INFORMATIONAL</code> </p> <ul> <li> <p>A notification about informational messages. For example, recommendations, service announcements, or reminders.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    class NotificationEventSummary < Struct.new(
      :schema_version,
      :source_event_metadata,
      :message_components,
      :event_status,
      :notification_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an overview of a <code>NotificationHub</code>.</p> <p>A <code>NotificationConfiguration</code> is an account-level setting used to select the Regions where you want to store, process and replicate your notifications.</p>
    # @!attribute notification_hub_region
    #   <p>The Region of the resource.</p>
    #   @return [String]
    # @!attribute status_summary
    #   <p>The status summary of the resource.</p>
    #   @return [Types::NotificationHubStatusSummary]
    # @!attribute creation_time
    #   <p>The date and time the <code>NotificationHubOverview</code> was created.</p>
    #   @return [Time]
    # @!attribute last_activation_time
    #   <p>The most recent time this <code>NotificationHub</code> had an <code>ACTIVE</code> status.</p>
    #   @return [Time]
    class NotificationHubOverview < Struct.new(
      :notification_hub_region,
      :status_summary,
      :creation_time,
      :last_activation_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides additional information about the current <code>NotificationHub</code> status.</p>
    # @!attribute status
    #   <p>Status information about the <code>NotificationHub</code>.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>ACTIVE</code> </p> <ul> <li> <p>Incoming <code>NotificationEvents</code> are replicated to this <code>NotificationHub</code>.</p> </li> </ul> </li> <li> <p> <code>REGISTERING</code> </p> <ul> <li> <p>The <code>NotificationConfiguration</code> is initializing. A <code>NotificationConfiguration</code> with this status can't be deregistered.</p> </li> </ul> </li> <li> <p> <code>DEREGISTERING</code> </p> <ul> <li> <p>The <code>NotificationConfiguration</code> is being deleted. You can't register additional <code>NotificationHubs</code> in the same Region as a <code>NotificationConfiguration</code> with this status.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute reason
    #   <p>An explanation for the current status.</p>
    #   @return [String]
    class NotificationHubStatusSummary < Struct.new(
      :status,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Orgs Service trust for User Notifications.</p>
    # @!attribute access_status
    #   <p>Access Status for the Orgs Service.</p>
    #   @return [String]
    class NotificationsAccessForOrganization < Struct.new(
      :access_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_hub_region
    #   <p>The Region of the <code>NotificationHub</code>.</p>
    #   @return [String]
    class RegisterNotificationHubRequest < Struct.new(
      :notification_hub_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_hub_region
    #   <p>The Region of the <code>NotificationHub</code>.</p>
    #   @return [String]
    # @!attribute status_summary
    #   <p>Provides additional information about the current <code>NotificationConfiguration</code> status information.</p>
    #   @return [Types::NotificationHubStatusSummary]
    # @!attribute creation_time
    #   <p>The date the resource was created.</p>
    #   @return [Time]
    # @!attribute last_activation_time
    #   <p>The date the resource was last activated.</p>
    #   @return [Time]
    class RegisterNotificationHubResponse < Struct.new(
      :notification_hub_region,
      :status_summary,
      :creation_time,
      :last_activation_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource affected by or closely linked to an event.</p>
    # @!attribute id
    #   <p>The unique identifier for the resource.</p> <p>At least one id or ARN is required.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource. At least one id or ARN is required.</p>
    #   @return [String]
    # @!attribute detail_url
    #   <p>The URL to the resource's detail page. If a detail page URL is unavailable, it is the URL to an informational page that describes the resource's type.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    #   @return [Array<String>]
    class Resource < Struct.new(
      :id,
      :arn,
      :detail_url,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request references a resource which does not exist. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that wasn't found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that exceeds the service quota.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that exceeds the service quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service quota exceeded in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code for the service quota in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_type,
      :resource_id,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the metadata for a source event.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-events-structure.html">Event structure reference</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @!attribute event_type_version
    #   <p>The version of the type of event.</p>
    #   @return [String]
    # @!attribute source_event_id
    #   <p>The source event id.</p>
    #   @return [String]
    # @!attribute event_origin_region
    #   <p>The Region the event originated from.</p>
    #   @return [String]
    # @!attribute related_account
    #   <p>The primary Amazon Web Services account of <code>SourceEvent</code>.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The Amazon Web Services service the event originates from. For example <code>aws.cloudwatch</code>.</p>
    #   @return [String]
    # @!attribute event_occurrence_time
    #   <p>The date and time the source event occurred. This is based on the Source Event.</p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of event. For example, an Amazon CloudWatch state change.</p>
    #   @return [String]
    # @!attribute related_resources
    #   <p>A list of resources related to this <code>NotificationEvent</code>.</p>
    #   @return [Array<Types::Resource>]
    class SourceEventMetadata < Struct.new(
      :event_type_version,
      :source_event_id,
      :event_origin_region,
      :related_account,
      :source,
      :event_occurrence_time,
      :event_type,
      :related_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about the event that caused the <code>NotificationEvent</code>. For other specific values, see <code>sourceEventMetadata</code>.</p>
    # @!attribute event_origin_region
    #   <p>The Region where the notification originated.</p> <p>Unavailable for aggregated notifications.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The matched event source.</p> <p>Must match one of the valid EventBridge sources. Only Amazon Web Services service sourced events are supported. For example, <code>aws.ec2</code> and <code>aws.cloudwatch</code>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The event type to match.</p> <p>Must match one of the valid Amazon EventBridge event types. For example, EC2 Instance State-change Notification and Amazon CloudWatch Alarm State Change. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level">Event delivery from Amazon Web Services services</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    class SourceEventMetadataSummary < Struct.new(
      :event_origin_region,
      :source,
      :event_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides detailed information about the dimensions used for event summarization and aggregation.</p>
    # @!attribute name
    #   <p>The name of the SummarizationDimensionDetail.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of the property used to summarize aggregated events.</p>
    #   @return [String]
    class SummarizationDimensionDetail < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides an overview of how data is summarized across different dimensions.</p>
    # @!attribute name
    #   <p>Name of the summarization dimension.</p>
    #   @return [String]
    # @!attribute count
    #   <p>Total number of occurrences for this dimension.</p>
    #   @return [Integer]
    # @!attribute sample_values
    #   <p>Indicates the sample values found within the dimension.</p>
    #   @return [Array<String>]
    class SummarizationDimensionOverview < Struct.new(
      :name,
      :count,
      :sample_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) to use to tag a resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes text information objects containing fields that determine how text part objects are composed.</p>
    # @!attribute type
    #   <p>The type of text part. Determines the usage of all other fields and whether or not they're required.</p>
    #   @return [String]
    # @!attribute display_text
    #   <p>A short single line description of the link. Must be hyper-linked with the URL itself. </p> <p>Used for text parts with the type <code>URL</code>.</p>
    #   @return [String]
    # @!attribute text_by_locale
    #   <p>A map of locales to the text in that locale.</p>
    #   @return [Hash<String, String>]
    # @!attribute url
    #   <p>The URL itself.</p>
    #   @return [String]
    class TextPartValue < Struct.new(
      :type,
      :display_text,
      :text_by_locale,
      :url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request was denied due to request throttling. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>Identifies the service being throttled.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Identifies the quota that is being throttled.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds a client should wait before retrying the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) to use to untag a resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to use to untag a resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) to use to update the <code>EventRule</code>.</p>
    #   @return [String]
    # @!attribute event_pattern
    #   <p>An additional event pattern used to further filter the events this <code>EventRule</code> receives.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event patterns</a> in the <i>Amazon EventBridge User Guide.</i> </p>
    #   @return [String]
    # @!attribute regions
    #   <p>A list of Amazon Web Services Regions that sends events to this <code>EventRule</code>.</p>
    #   @return [Array<String>]
    class UpdateEventRuleRequest < Struct.new(
      :arn,
      :event_pattern,
      :regions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) to use to update the <code>EventRule</code>.</p>
    #   @return [String]
    # @!attribute notification_configuration_arn
    #   <p>The ARN of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute status_summary_by_region
    #   <p>The status of the action by Region.</p>
    #   @return [Hash<String, Types::EventRuleStatusSummary>]
    class UpdateEventRuleResponse < Struct.new(
      :arn,
      :notification_configuration_arn,
      :status_summary_by_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) used to update the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    # @!attribute aggregation_duration
    #   <p>The aggregation preference of the <code>NotificationConfiguration</code>.</p> <ul> <li> <p>Values:</p> <ul> <li> <p> <code>LONG</code> </p> <ul> <li> <p>Aggregate notifications for long periods of time (12 hours).</p> </li> </ul> </li> <li> <p> <code>SHORT</code> </p> <ul> <li> <p>Aggregate notifications for short periods of time (5 minutes).</p> </li> </ul> </li> <li> <p> <code>NONE</code> </p> <ul> <li> <p>Don't aggregate notifications.</p> </li> </ul> </li> </ul> </li> </ul>
    #   @return [String]
    class UpdateNotificationConfigurationRequest < Struct.new(
      :arn,
      :name,
      :description,
      :aggregation_duration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN used to update the <code>NotificationConfiguration</code>.</p>
    #   @return [String]
    class UpdateNotificationConfigurationResponse < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the notification event fails validation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why your input is considered invalid.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of input fields that are invalid.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Stores information about a field passed inside a request that resulted in an exception.</p>
    # @!attribute name
    #   <p>The field name where the invalid entry was detected.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message with the reason for the validation exception error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
