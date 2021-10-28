# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSMIncidents
  module Types

    # You don't have sufficient access to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action that starts at the beginning of an incident. The response
    # plan defines the action.
    #
    # @note Action is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Action is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Action corresponding to the set member.
    #
    # @!attribute [rw] ssm_automation
    #   The Systems Manager automation document to start as the runbook at
    #   the beginning of the incident.
    #   @return [Types::SsmAutomation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/Action AWS API Documentation
    #
    class Action < Struct.new(
      :ssm_automation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SsmAutomation < Action; end
      class Unknown < Action; end
    end

    # Defines the Amazon Web Services Region and KMS key to add to the
    # replication set.
    #
    # @note When making an API call, you may pass AddRegionAction
    #   data as a hash:
    #
    #       {
    #         region_name: "RegionName", # required
    #         sse_kms_key_id: "SseKmsKey",
    #       }
    #
    # @!attribute [rw] region_name
    #   The Amazon Web Services Region name to add to the replication set.
    #   @return [String]
    #
    # @!attribute [rw] sse_kms_key_id
    #   The KMS key ID to use to encrypt your replication set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/AddRegionAction AWS API Documentation
    #
    class AddRegionAction < Struct.new(
      :region_name,
      :sse_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use the AttributeValueList to filter by string or integer values.
    #
    # @note AttributeValueList is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] integer_values
    #   The list of integer values that the filter matches.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] string_values
    #   The list of string values that the filter matches.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/AttributeValueList AWS API Documentation
    #
    class AttributeValueList < Struct.new(
      :integer_values,
      :string_values,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IntegerValues < AttributeValueList; end
      class StringValues < AttributeValueList; end
      class Unknown < AttributeValueList; end
    end

    # The Systems Manager automation document process to start as the
    # runbook at the beginning of the incident.
    #
    # @note AutomationExecution is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AutomationExecution corresponding to the set member.
    #
    # @!attribute [rw] ssm_execution_arn
    #   The Amazon Resource Name (ARN) of the automation process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/AutomationExecution AWS API Documentation
    #
    class AutomationExecution < Struct.new(
      :ssm_execution_arn,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SsmExecutionArn < AutomationExecution; end
      class Unknown < AutomationExecution; end
    end

    # The Chatbot chat channel used for collaboration during an incident.
    #
    # @note ChatChannel is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ChatChannel is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ChatChannel corresponding to the set member.
    #
    # @!attribute [rw] chatbot_sns
    #   The Amazon SNS targets that Chatbot uses to notify the chat channel
    #   of updates to an incident. You can also make updates to the incident
    #   through the chat channel by using the Amazon SNS topics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] empty
    #   Used to remove the chat channel from an incident record or response
    #   plan.
    #   @return [Types::EmptyChatChannel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ChatChannel AWS API Documentation
    #
    class ChatChannel < Struct.new(
      :chatbot_sns,
      :empty,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ChatbotSns < ChatChannel; end
      class Empty < ChatChannel; end
      class Unknown < ChatChannel; end
    end

    # A conditional statement with which to compare a value, after a
    # timestamp, before a timestamp, or equal to a string or integer. If
    # multiple conditions are specified, the conditionals become an `AND`ed
    # statement. If multiple values are specified for a conditional, the
    # values are `OR`d.
    #
    # @note Condition is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] after
    #   After the specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] before
    #   Before the specified timestamp
    #   @return [Time]
    #
    # @!attribute [rw] equals
    #   The value is equal to the provided string or integer.
    #   @return [Types::AttributeValueList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :after,
      :before,
      :equals,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class After < Condition; end
      class Before < Condition; end
      class Equals < Condition; end
      class Unknown < Condition; end
    end

    # Updating or deleting a resource causes an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier of the requested resource
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type
    #   @return [String]
    #
    # @!attribute [rw] retry_after
    #   If present in the output, the operation can be retried after this
    #   time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_identifier,
      :resource_type,
      :retry_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateReplicationSetInput
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         regions: { # required
    #           "RegionName" => {
    #             sse_kms_key_id: "SseKmsKey",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The Regions that Incident Manager replicates your data to. You can
    #   have up to three Regions in your replication set.
    #   @return [Hash<String,Types::RegionMapInputValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/CreateReplicationSetInput AWS API Documentation
    #
    class CreateReplicationSetInput < Struct.new(
      :client_token,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the replication set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/CreateReplicationSetOutput AWS API Documentation
    #
    class CreateReplicationSetOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResponsePlanInput
    #   data as a hash:
    #
    #       {
    #         actions: [
    #           {
    #             ssm_automation: {
    #               document_name: "SsmAutomationDocumentNameString", # required
    #               document_version: "SsmAutomationDocumentVersionString",
    #               parameters: {
    #                 "SsmParametersKeyString" => ["SsmParameterValuesMemberString"],
    #               },
    #               role_arn: "RoleArn", # required
    #               target_account: "RESPONSE_PLAN_OWNER_ACCOUNT", # accepts RESPONSE_PLAN_OWNER_ACCOUNT, IMPACTED_ACCOUNT
    #             },
    #           },
    #         ],
    #         chat_channel: {
    #           chatbot_sns: ["SnsArn"],
    #           empty: {
    #           },
    #         },
    #         client_token: "ClientToken",
    #         display_name: "ResponsePlanDisplayName",
    #         engagements: ["SsmContactsArn"],
    #         incident_template: { # required
    #           dedupe_string: "DedupeString",
    #           impact: 1, # required
    #           notification_targets: [
    #             {
    #               sns_topic_arn: "Arn",
    #             },
    #           ],
    #           summary: "IncidentSummary",
    #           title: "IncidentTitle", # required
    #         },
    #         name: "ResponsePlanName", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] actions
    #   The actions that the response plan starts at the beginning of an
    #   incident.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] chat_channel
    #   The Chatbot chat channel used for collaboration during an incident.
    #   @return [Types::ChatChannel]
    #
    # @!attribute [rw] client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The long format of the response plan name. This field can contain
    #   spaces.
    #   @return [String]
    #
    # @!attribute [rw] engagements
    #   The contacts and escalation plans that the response plan engages
    #   during an incident.
    #   @return [Array<String>]
    #
    # @!attribute [rw] incident_template
    #   Details used to create an incident when using this response plan.
    #   @return [Types::IncidentTemplate]
    #
    # @!attribute [rw] name
    #   The short format name of the response plan. Can't include spaces.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you are adding to the response plan.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/CreateResponsePlanInput AWS API Documentation
    #
    class CreateResponsePlanInput < Struct.new(
      :actions,
      :chat_channel,
      :client_token,
      :display_name,
      :engagements,
      :incident_template,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the response plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/CreateResponsePlanOutput AWS API Documentation
    #
    class CreateResponsePlanOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTimelineEventInput
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         event_data: "EventData", # required
    #         event_time: Time.now, # required
    #         event_type: "TimelineEventType", # required
    #         incident_record_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   A token ensuring that the action is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] event_data
    #   A short description of the event as a valid JSON string. There is no
    #   other schema imposed.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The time that the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] event_type
    #   The type of the event. You can create timeline events of type
    #   `Custom Event`.
    #   @return [String]
    #
    # @!attribute [rw] incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident record to which the
    #   event will be added.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/CreateTimelineEventInput AWS API Documentation
    #
    class CreateTimelineEventInput < Struct.new(
      :client_token,
      :event_data,
      :event_time,
      :event_type,
      :incident_record_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The ID of the event for easy reference later.
    #   @return [String]
    #
    # @!attribute [rw] incident_record_arn
    #   The ARN of the incident record that you added the event to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/CreateTimelineEventOutput AWS API Documentation
    #
    class CreateTimelineEventOutput < Struct.new(
      :event_id,
      :incident_record_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIncidentRecordInput
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the incident record you are
    #   deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteIncidentRecordInput AWS API Documentation
    #
    class DeleteIncidentRecordInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteIncidentRecordOutput AWS API Documentation
    #
    class DeleteIncidentRecordOutput < Aws::EmptyStructure; end

    # Defines the information about the Amazon Web Services Region you're
    # deleting from your replication set.
    #
    # @note When making an API call, you may pass DeleteRegionAction
    #   data as a hash:
    #
    #       {
    #         region_name: "RegionName", # required
    #       }
    #
    # @!attribute [rw] region_name
    #   The name of the Amazon Web Services Region you're deleting from the
    #   replication set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteRegionAction AWS API Documentation
    #
    class DeleteRegionAction < Struct.new(
      :region_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteReplicationSetInput
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the replication set you're
    #   deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteReplicationSetInput AWS API Documentation
    #
    class DeleteReplicationSetInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteReplicationSetOutput AWS API Documentation
    #
    class DeleteReplicationSetOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteResourcePolicyInput
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the resource policy you're deleting.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you're deleting the
    #   policy from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteResourcePolicyInput AWS API Documentation
    #
    class DeleteResourcePolicyInput < Struct.new(
      :policy_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteResourcePolicyOutput AWS API Documentation
    #
    class DeleteResourcePolicyOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteResponsePlanInput
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the response plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteResponsePlanInput AWS API Documentation
    #
    class DeleteResponsePlanInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteResponsePlanOutput AWS API Documentation
    #
    class DeleteResponsePlanOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTimelineEventInput
    #   data as a hash:
    #
    #       {
    #         event_id: "UUID", # required
    #         incident_record_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] event_id
    #   The ID of the event you are updating. You can find this by using
    #   `ListTimelineEvents`.
    #   @return [String]
    #
    # @!attribute [rw] incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident that includes the
    #   timeline event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteTimelineEventInput AWS API Documentation
    #
    class DeleteTimelineEventInput < Struct.new(
      :event_id,
      :incident_record_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/DeleteTimelineEventOutput AWS API Documentation
    #
    class DeleteTimelineEventOutput < Aws::EmptyStructure; end

    # Used to remove the chat channel from an incident record or response
    # plan.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/EmptyChatChannel AWS API Documentation
    #
    class EmptyChatChannel < Aws::EmptyStructure; end

    # Details about a timeline event during an incident.
    #
    # @!attribute [rw] event_id
    #   The timeline event ID.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The time that the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] event_type
    #   The type of event. The timeline event must be `Custom Event`.
    #   @return [String]
    #
    # @!attribute [rw] event_updated_time
    #   The time that the timeline event was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident that the event
    #   happened during.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/EventSummary AWS API Documentation
    #
    class EventSummary < Struct.new(
      :event_id,
      :event_time,
      :event_type,
      :event_updated_time,
      :incident_record_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter the selection by using a condition.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         condition: { # required
    #           after: Time.now,
    #           before: Time.now,
    #           equals: {
    #             integer_values: [1],
    #             string_values: ["StringListMemberString"],
    #           },
    #         },
    #         key: "FilterKeyString", # required
    #       }
    #
    # @!attribute [rw] condition
    #   The condition accepts before or after a specified time, equal to a
    #   string, or equal to an integer.
    #   @return [Types::Condition]
    #
    # @!attribute [rw] key
    #   The key that you're filtering on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :condition,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIncidentRecordInput
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the incident record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetIncidentRecordInput AWS API Documentation
    #
    class GetIncidentRecordInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] incident_record
    #   Details the structure of the incident record.
    #   @return [Types::IncidentRecord]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetIncidentRecordOutput AWS API Documentation
    #
    class GetIncidentRecordOutput < Struct.new(
      :incident_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetReplicationSetInput
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the replication set you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetReplicationSetInput AWS API Documentation
    #
    class GetReplicationSetInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_set
    #   Details of the replication set.
    #   @return [Types::ReplicationSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetReplicationSetOutput AWS API Documentation
    #
    class GetReplicationSetOutput < Struct.new(
      :replication_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourcePoliciesInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource policies to display per page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the response plan with the
    #   attached resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetResourcePoliciesInput AWS API Documentation
    #
    class GetResourcePoliciesInput < Struct.new(
      :max_results,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] resource_policies
    #   Details about the resource policy attached to the response plan.
    #   @return [Array<Types::ResourcePolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetResourcePoliciesOutput AWS API Documentation
    #
    class GetResourcePoliciesOutput < Struct.new(
      :next_token,
      :resource_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResponsePlanInput
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the response plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetResponsePlanInput AWS API Documentation
    #
    class GetResponsePlanInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] actions
    #   The actions that this response plan takes at the beginning of the
    #   incident.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] arn
    #   The ARN of the response plan.
    #   @return [String]
    #
    # @!attribute [rw] chat_channel
    #   The Chatbot chat channel used for collaboration during an incident.
    #   @return [Types::ChatChannel]
    #
    # @!attribute [rw] display_name
    #   The long format name of the response plan. Can contain spaces.
    #   @return [String]
    #
    # @!attribute [rw] engagements
    #   The contacts and escalation plans that the response plan engages
    #   during an incident.
    #   @return [Array<String>]
    #
    # @!attribute [rw] incident_template
    #   Details used to create the incident when using this response plan.
    #   @return [Types::IncidentTemplate]
    #
    # @!attribute [rw] name
    #   The short format name of the response plan. The name can't contain
    #   spaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetResponsePlanOutput AWS API Documentation
    #
    class GetResponsePlanOutput < Struct.new(
      :actions,
      :arn,
      :chat_channel,
      :display_name,
      :engagements,
      :incident_template,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTimelineEventInput
    #   data as a hash:
    #
    #       {
    #         event_id: "UUID", # required
    #         incident_record_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] event_id
    #   The ID of the event. You can get an event's ID when you create it,
    #   or by using `ListTimelineEvents`.
    #   @return [String]
    #
    # @!attribute [rw] incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident that includes the
    #   timeline event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetTimelineEventInput AWS API Documentation
    #
    class GetTimelineEventInput < Struct.new(
      :event_id,
      :incident_record_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event
    #   Details about the timeline event.
    #   @return [Types::TimelineEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/GetTimelineEventOutput AWS API Documentation
    #
    class GetTimelineEventOutput < Struct.new(
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # The record of the incident that's created when an incident occurs.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the incident record.
    #   @return [String]
    #
    # @!attribute [rw] automation_executions
    #   The runbook, or automation document, that's run at the beginning of
    #   the incident.
    #   @return [Array<Types::AutomationExecution>]
    #
    # @!attribute [rw] chat_channel
    #   The chat channel used for collaboration during an incident.
    #   @return [Types::ChatChannel]
    #
    # @!attribute [rw] creation_time
    #   The time that Incident Manager created the incident record.
    #   @return [Time]
    #
    # @!attribute [rw] dedupe_string
    #   The string Incident Manager uses to prevent duplicate incidents from
    #   being created by the same incident in the same account.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   The impact of the incident on customers and applications.
    #   @return [Integer]
    #
    # @!attribute [rw] incident_record_source
    #   Details about the action that started the incident.
    #   @return [Types::IncidentRecordSource]
    #
    # @!attribute [rw] last_modified_by
    #   Who modified the incident most recently.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The time at which the incident was most recently modified.
    #   @return [Time]
    #
    # @!attribute [rw] notification_targets
    #   The Amazon SNS targets that are notified when updates are made to an
    #   incident.
    #   @return [Array<Types::NotificationTargetItem>]
    #
    # @!attribute [rw] resolved_time
    #   The time at which the incident was resolved. This appears as a
    #   timeline event.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the incident.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   The summary of the incident. The summary is a brief synopsis of what
    #   occurred, what's currently happening, and context of the incident.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the incident.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/IncidentRecord AWS API Documentation
    #
    class IncidentRecord < Struct.new(
      :arn,
      :automation_executions,
      :chat_channel,
      :creation_time,
      :dedupe_string,
      :impact,
      :incident_record_source,
      :last_modified_by,
      :last_modified_time,
      :notification_targets,
      :resolved_time,
      :status,
      :summary,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about what created the incident record and when it was
    # created.
    #
    # @!attribute [rw] created_by
    #   The principal that started the incident.
    #   @return [String]
    #
    # @!attribute [rw] invoked_by
    #   The principal the assumed the role specified of the `createdBy`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The resource that caused the incident to be created.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The service that started the incident. This can be manually created
    #   from Incident Manager, automatically created using an Amazon
    #   CloudWatch alarm, or Amazon EventBridge event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/IncidentRecordSource AWS API Documentation
    #
    class IncidentRecordSource < Struct.new(
      :created_by,
      :invoked_by,
      :resource_arn,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details describing an incident record.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the incident.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the incident was created.
    #   @return [Time]
    #
    # @!attribute [rw] impact
    #   Defines the impact to customers and applications.
    #   @return [Integer]
    #
    # @!attribute [rw] incident_record_source
    #   What caused Incident Manager to create the incident.
    #   @return [Types::IncidentRecordSource]
    #
    # @!attribute [rw] resolved_time
    #   The time the incident was resolved.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the incident.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the incident. This value is either provided by the
    #   response plan or overwritten on creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/IncidentRecordSummary AWS API Documentation
    #
    class IncidentRecordSummary < Struct.new(
      :arn,
      :creation_time,
      :impact,
      :incident_record_source,
      :resolved_time,
      :status,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # Basic details used in creating a response plan. The response plan is
    # then used to create an incident record.
    #
    # @note When making an API call, you may pass IncidentTemplate
    #   data as a hash:
    #
    #       {
    #         dedupe_string: "DedupeString",
    #         impact: 1, # required
    #         notification_targets: [
    #           {
    #             sns_topic_arn: "Arn",
    #           },
    #         ],
    #         summary: "IncidentSummary",
    #         title: "IncidentTitle", # required
    #       }
    #
    # @!attribute [rw] dedupe_string
    #   Used to stop Incident Manager from creating multiple incident
    #   records for the same incident.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   The impact of the incident on your customers and applications.
    #   @return [Integer]
    #
    # @!attribute [rw] notification_targets
    #   The Amazon SNS targets that are notified when updates are made to an
    #   incident.
    #   @return [Array<Types::NotificationTargetItem>]
    #
    # @!attribute [rw] summary
    #   The summary of the incident. The summary is a brief synopsis of what
    #   occurred, what's currently happening, and context.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the incident.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/IncidentTemplate AWS API Documentation
    #
    class IncidentTemplate < Struct.new(
      :dedupe_string,
      :impact,
      :notification_targets,
      :summary,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details and type of a related item.
    #
    # @note When making an API call, you may pass ItemIdentifier
    #   data as a hash:
    #
    #       {
    #         type: "ANALYSIS", # required, accepts ANALYSIS, INCIDENT, METRIC, PARENT, ATTACHMENT, OTHER
    #         value: { # required
    #           arn: "Arn",
    #           metric_definition: "MetricDefinition",
    #           url: "Url",
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The type of related item. Incident Manager supports the following
    #   types:
    #
    #   * `ANALYSIS`
    #
    #   * `INCIDENT`
    #
    #   * `METRIC`
    #
    #   * `PARENT`
    #
    #   * `ATTACHMENT`
    #
    #   * `OTHER`
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Details about the related item.
    #   @return [Types::ItemValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ItemIdentifier AWS API Documentation
    #
    class ItemIdentifier < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a related item.
    #
    # @note ItemValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ItemValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ItemValue corresponding to the set member.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the related item, if the related
    #   item is an Amazon resource.
    #   @return [String]
    #
    # @!attribute [rw] metric_definition
    #   The metric definition, if the related item is a metric in Amazon
    #   CloudWatch.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL, if the related item is a non-Amazon Web Services resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ItemValue AWS API Documentation
    #
    class ItemValue < Struct.new(
      :arn,
      :metric_definition,
      :url,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Arn < ItemValue; end
      class MetricDefinition < ItemValue; end
      class Url < ItemValue; end
      class Unknown < ItemValue; end
    end

    # @note When making an API call, you may pass ListIncidentRecordsInput
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             condition: { # required
    #               after: Time.now,
    #               before: Time.now,
    #               equals: {
    #                 integer_values: [1],
    #                 string_values: ["StringListMemberString"],
    #               },
    #             },
    #             key: "FilterKeyString", # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters the list of incident records through which you are
    #   searching. You can filter on the following keys:
    #
    #   * `creationTime`
    #
    #   * `impact`
    #
    #   * `status`
    #
    #   * `createdBy`
    #
    #   Note the following when deciding how to use Filters:
    #
    #   * If you don't specify a Filter, the response includes all incident
    #     records.
    #
    #   * If you specify more than one filter in a single request, the
    #     response returns incident records that match all filters.
    #
    #   * If you specify a filter with more than one value, the response
    #     returns incident records that match any of the values provided.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListIncidentRecordsInput AWS API Documentation
    #
    class ListIncidentRecordsInput < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] incident_record_summaries
    #   The details of each listed incident record.
    #   @return [Array<Types::IncidentRecordSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListIncidentRecordsOutput AWS API Documentation
    #
    class ListIncidentRecordsOutput < Struct.new(
      :incident_record_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRelatedItemsInput
    #   data as a hash:
    #
    #       {
    #         incident_record_arn: "Arn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident record containing the
    #   listed related items.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of related items per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListRelatedItemsInput AWS API Documentation
    #
    class ListRelatedItemsInput < Struct.new(
      :incident_record_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] related_items
    #   Details about each related item.
    #   @return [Array<Types::RelatedItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListRelatedItemsOutput AWS API Documentation
    #
    class ListRelatedItemsOutput < Struct.new(
      :next_token,
      :related_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListReplicationSetsInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListReplicationSetsInput AWS API Documentation
    #
    class ListReplicationSetsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] replication_set_arns
    #   The Amazon Resource Name (ARN) of the list replication set.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListReplicationSetsOutput AWS API Documentation
    #
    class ListReplicationSetsOutput < Struct.new(
      :next_token,
      :replication_set_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResponsePlansInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of response plans per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListResponsePlansInput AWS API Documentation
    #
    class ListResponsePlansInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] response_plan_summaries
    #   Details of each response plan.
    #   @return [Array<Types::ResponsePlanSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListResponsePlansOutput AWS API Documentation
    #
    class ListResponsePlansOutput < Struct.new(
      :next_token,
      :response_plan_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the response plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags for the response plan.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTimelineEventsInput
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             condition: { # required
    #               after: Time.now,
    #               before: Time.now,
    #               equals: {
    #                 integer_values: [1],
    #                 string_values: ["StringListMemberString"],
    #               },
    #             },
    #             key: "FilterKeyString", # required
    #           },
    #         ],
    #         incident_record_arn: "Arn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #         sort_by: "EVENT_TIME", # accepts EVENT_TIME
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       }
    #
    # @!attribute [rw] filters
    #   Filters the timeline events based on the provided conditional
    #   values. You can filter timeline events using the following keys:
    #
    #   * `eventTime`
    #
    #   * `eventType`
    #
    #   Note the following when deciding how to use Filters:
    #
    #   * If you don't specify a Filter, the response includes all timeline
    #     events.
    #
    #   * If you specify more than one filter in a single request, the
    #     response returns timeline events that match all filters.
    #
    #   * If you specify a filter with more than one value, the response
    #     returns timeline events that match any of the values provided.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident that includes the
    #   timeline event.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Sort by the specified key value pair.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Sorts the order of timeline events by the value specified in the
    #   `sortBy` field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListTimelineEventsInput AWS API Documentation
    #
    class ListTimelineEventsInput < Struct.new(
      :filters,
      :incident_record_arn,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_summaries
    #   Details about each event that occurred during the incident.
    #   @return [Array<Types::EventSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ListTimelineEventsOutput AWS API Documentation
    #
    class ListTimelineEventsOutput < Struct.new(
      :event_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SNS targets that are notified when updates are made to an
    # incident.
    #
    # @note NotificationTargetItem is a union - when making an API calls you must set exactly one of the members.
    #
    # @note NotificationTargetItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of NotificationTargetItem corresponding to the set member.
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/NotificationTargetItem AWS API Documentation
    #
    class NotificationTargetItem < Struct.new(
      :sns_topic_arn,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SnsTopicArn < NotificationTargetItem; end
      class Unknown < NotificationTargetItem; end
    end

    # @note When making an API call, you may pass PutResourcePolicyInput
    #   data as a hash:
    #
    #       {
    #         policy: "Policy", # required
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] policy
    #   Details of the resource policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the response plan you're adding
    #   the resource policy to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/PutResourcePolicyInput AWS API Documentation
    #
    class PutResourcePolicyInput < Struct.new(
      :policy,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The ID of the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/PutResourcePolicyOutput AWS API Documentation
    #
    class PutResourcePolicyOutput < Struct.new(
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Amazon Web Services Region in your replication
    # set.
    #
    # @!attribute [rw] sse_kms_key_id
    #   The ID of the KMS key used to encrypt the data in this Amazon Web
    #   Services Region.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Web Services Region in the replication set.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Information displayed about the status of the Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] status_update_date_time
    #   The most recent date and time that Incident Manager updated the
    #   Amazon Web Services Region's status.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/RegionInfo AWS API Documentation
    #
    class RegionInfo < Struct.new(
      :sse_kms_key_id,
      :status,
      :status_message,
      :status_update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The mapping between a Amazon Web Services Region and the key that's
    # used to encrypt the data.
    #
    # @note When making an API call, you may pass RegionMapInputValue
    #   data as a hash:
    #
    #       {
    #         sse_kms_key_id: "SseKmsKey",
    #       }
    #
    # @!attribute [rw] sse_kms_key_id
    #   The KMS key used to encrypt the data in your replication set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/RegionMapInputValue AWS API Documentation
    #
    class RegionMapInputValue < Struct.new(
      :sse_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resources that responders use to triage and mitigate the incident.
    #
    # @note When making an API call, you may pass RelatedItem
    #   data as a hash:
    #
    #       {
    #         identifier: { # required
    #           type: "ANALYSIS", # required, accepts ANALYSIS, INCIDENT, METRIC, PARENT, ATTACHMENT, OTHER
    #           value: { # required
    #             arn: "Arn",
    #             metric_definition: "MetricDefinition",
    #             url: "Url",
    #           },
    #         },
    #         title: "RelatedItemTitleString",
    #       }
    #
    # @!attribute [rw] identifier
    #   Details about the related item.
    #   @return [Types::ItemIdentifier]
    #
    # @!attribute [rw] title
    #   The title of the related item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/RelatedItem AWS API Documentation
    #
    class RelatedItem < Struct.new(
      :identifier,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the related item you're adding.
    #
    # @note RelatedItemsUpdate is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] item_to_add
    #   Details about the related item you're adding.
    #   @return [Types::RelatedItem]
    #
    # @!attribute [rw] item_to_remove
    #   Details about the related item you're deleting.
    #   @return [Types::ItemIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/RelatedItemsUpdate AWS API Documentation
    #
    class RelatedItemsUpdate < Struct.new(
      :item_to_add,
      :item_to_remove,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ItemToAdd < RelatedItemsUpdate; end
      class ItemToRemove < RelatedItemsUpdate; end
      class Unknown < RelatedItemsUpdate; end
    end

    # The set of Amazon Web Services Region that your Incident Manager data
    # will be replicated to and the KMS key used to encrypt the data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the replication set.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Details about who created the replication set.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the replication set was created.
    #   @return [Time]
    #
    # @!attribute [rw] deletion_protected
    #   Determines if the replication set deletion protection is enabled or
    #   not. If deletion protection is enabled, you can't delete the last
    #   Amazon Web Services Region in the replication set.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who last modified the replication set.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   When the replication set was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] region_map
    #   The map between each Amazon Web Services Region in your replication
    #   set and the KMS key that's used to encrypt the data in that Region.
    #   @return [Hash<String,Types::RegionInfo>]
    #
    # @!attribute [rw] status
    #   The status of the replication set. If the replication set is still
    #   pending, you can't use Incident Manager functionality.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ReplicationSet AWS API Documentation
    #
    class ReplicationSet < Struct.new(
      :arn,
      :created_by,
      :created_time,
      :deletion_protected,
      :last_modified_by,
      :last_modified_time,
      :region_map,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource which doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier for the requested resource
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_identifier,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource policy that allows Incident Manager to perform actions on
    # resources on your behalf.
    #
    # @!attribute [rw] policy_document
    #   The JSON blob that describes the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The ID of the resource policy.
    #   @return [String]
    #
    # @!attribute [rw] ram_resource_share_region
    #   The Amazon Web Services Region that policy allows resources to be
    #   used in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ResourcePolicy AWS API Documentation
    #
    class ResourcePolicy < Struct.new(
      :policy_document,
      :policy_id,
      :ram_resource_share_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the response plan that are used when creating an incident.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the response plan.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human readable name of the response plan. This can include
    #   spaces.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the response plan. This can't include spaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ResponsePlanSummary AWS API Documentation
    #
    class ResponsePlanSummary < Struct.new(
      :arn,
      :display_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Originating quota code
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier for the requested resource
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Originating service code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_identifier,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Systems Manager automation document that will be
    # used as a runbook during an incident.
    #
    # @note When making an API call, you may pass SsmAutomation
    #   data as a hash:
    #
    #       {
    #         document_name: "SsmAutomationDocumentNameString", # required
    #         document_version: "SsmAutomationDocumentVersionString",
    #         parameters: {
    #           "SsmParametersKeyString" => ["SsmParameterValuesMemberString"],
    #         },
    #         role_arn: "RoleArn", # required
    #         target_account: "RESPONSE_PLAN_OWNER_ACCOUNT", # accepts RESPONSE_PLAN_OWNER_ACCOUNT, IMPACTED_ACCOUNT
    #       }
    #
    # @!attribute [rw] document_name
    #   The automation document's name.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The automation document's version to use when running.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The key-value pair parameters to use when running the automation
    #   document.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that the automation
    #   document will assume when running commands.
    #   @return [String]
    #
    # @!attribute [rw] target_account
    #   The account that the automation document will be run in. This can be
    #   in either the management account or an application account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/SsmAutomation AWS API Documentation
    #
    class SsmAutomation < Struct.new(
      :document_name,
      :document_version,
      :parameters,
      :role_arn,
      :target_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartIncidentInput
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         impact: 1,
    #         related_items: [
    #           {
    #             identifier: { # required
    #               type: "ANALYSIS", # required, accepts ANALYSIS, INCIDENT, METRIC, PARENT, ATTACHMENT, OTHER
    #               value: { # required
    #                 arn: "Arn",
    #                 metric_definition: "MetricDefinition",
    #                 url: "Url",
    #               },
    #             },
    #             title: "RelatedItemTitleString",
    #           },
    #         ],
    #         response_plan_arn: "Arn", # required
    #         title: "IncidentTitle",
    #         trigger_details: {
    #           raw_data: "RawData",
    #           source: "IncidentSource", # required
    #           timestamp: Time.now, # required
    #           trigger_arn: "Arn",
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   Defines the impact to the customers. Providing an impact overwrites
    #   the impact provided by a response plan.
    #
    #   **Possible impacts:**
    #
    #   * `1` - Critical impact, this typically relates to full application
    #     failure that impacts many to all customers.
    #
    #   * `2` - High impact, partial application failure with impact to many
    #     customers.
    #
    #   * `3` - Medium impact, the application is providing reduced service
    #     to customers.
    #
    #   * `4` - Low impact, customer might aren't impacted by the problem
    #     yet.
    #
    #   * `5` - No impact, customers aren't currently impacted but urgent
    #     action is needed to avoid impact.
    #   @return [Integer]
    #
    # @!attribute [rw] related_items
    #   Add related items to the incident for other responders to use.
    #   Related items are AWS resources, external links, or files uploaded
    #   to an Amazon S3 bucket.
    #   @return [Array<Types::RelatedItem>]
    #
    # @!attribute [rw] response_plan_arn
    #   The Amazon Resource Name (ARN) of the response plan that pre-defines
    #   summary, chat channels, Amazon SNS topics, runbooks, title, and
    #   impact of the incident.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Provide a title for the incident. Providing a title overwrites the
    #   title provided by the response plan.
    #   @return [String]
    #
    # @!attribute [rw] trigger_details
    #   Details of what created the incident record in Incident Manager.
    #   @return [Types::TriggerDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/StartIncidentInput AWS API Documentation
    #
    class StartIncidentInput < Struct.new(
      :client_token,
      :impact,
      :related_items,
      :response_plan_arn,
      :title,
      :trigger_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] incident_record_arn
    #   The ARN of the newly created incident record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/StartIncidentOutput AWS API Documentation
    #
    class StartIncidentOutput < Struct.new(
      :incident_record_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the response plan you're adding
    #   the tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you are adding to the response plan.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Originating quota code
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Originating service code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A significant event that happened during the incident.
    #
    # @!attribute [rw] event_data
    #   A short description of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The ID of the timeline event.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The time that the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] event_type
    #   The type of event that occurred. Currently Incident Manager supports
    #   only the `Custom Event` type.
    #   @return [String]
    #
    # @!attribute [rw] event_updated_time
    #   The time that the timeline event was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident that the event
    #   occurred during.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/TimelineEvent AWS API Documentation
    #
    class TimelineEvent < Struct.new(
      :event_data,
      :event_id,
      :event_time,
      :event_type,
      :event_updated_time,
      :incident_record_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about what caused the incident to be created in Incident
    # Manager.
    #
    # @note When making an API call, you may pass TriggerDetails
    #   data as a hash:
    #
    #       {
    #         raw_data: "RawData",
    #         source: "IncidentSource", # required
    #         timestamp: Time.now, # required
    #         trigger_arn: "Arn",
    #       }
    #
    # @!attribute [rw] raw_data
    #   Raw data passed from either Amazon EventBridge, Amazon CloudWatch,
    #   or Incident Manager when an incident is created.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Identifies the service that sourced the event. All events sourced
    #   from within Amazon Web Services begin with "`aws.`"
    #   Customer-generated events can have any value here, as long as it
    #   doesn't begin with "`aws.`" We recommend the use of Java
    #   package-name style reverse domain-name strings.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time that the incident was detected.
    #   @return [Time]
    #
    # @!attribute [rw] trigger_arn
    #   The Amazon Resource Name (ARN) of the source that detected the
    #   incident.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/TriggerDetails AWS API Documentation
    #
    class TriggerDetails < Struct.new(
      :raw_data,
      :source,
      :timestamp,
      :trigger_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the response plan you're removing
    #   a tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The name of the tag you're removing from the response plan.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDeletionProtectionInput
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         client_token: "ClientToken",
    #         deletion_protected: false, # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the replication set you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protected
    #   Details if deletion protection is enabled or disabled in your
    #   account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateDeletionProtectionInput AWS API Documentation
    #
    class UpdateDeletionProtectionInput < Struct.new(
      :arn,
      :client_token,
      :deletion_protected)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateDeletionProtectionOutput AWS API Documentation
    #
    class UpdateDeletionProtectionOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateIncidentRecordInput
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         chat_channel: {
    #           chatbot_sns: ["SnsArn"],
    #           empty: {
    #           },
    #         },
    #         client_token: "ClientToken",
    #         impact: 1,
    #         notification_targets: [
    #           {
    #             sns_topic_arn: "Arn",
    #           },
    #         ],
    #         status: "OPEN", # accepts OPEN, RESOLVED
    #         summary: "IncidentSummary",
    #         title: "IncidentTitle",
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the incident record you are
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] chat_channel
    #   The Chatbot chat channel where responders can collaborate.
    #   @return [Types::ChatChannel]
    #
    # @!attribute [rw] client_token
    #   A token that ensures that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   Defines the impact of the incident to customers and applications.
    #   Providing an impact overwrites the impact provided by the response
    #   plan.
    #
    #   **Possible impacts:**
    #
    #   * `1` - Critical impact, full application failure that impacts many
    #     to all customers.
    #
    #   * `2` - High impact, partial application failure with impact to many
    #     customers.
    #
    #   * `3` - Medium impact, the application is providing reduced service
    #     to customers.
    #
    #   * `4` - Low impact, customer aren't impacted by the problem yet.
    #
    #   * `5` - No impact, customers aren't currently impacted but urgent
    #     action is needed to avoid impact.
    #   @return [Integer]
    #
    # @!attribute [rw] notification_targets
    #   The Amazon SNS targets that are notified when updates are made to an
    #   incident.
    #
    #   Using multiple SNS topics creates redundancy in the event that a
    #   Region is down during the incident.
    #   @return [Array<Types::NotificationTargetItem>]
    #
    # @!attribute [rw] status
    #   The status of the incident. An incident can be `Open` or `Resolved`.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   A longer description of what occurred during the incident.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A brief description of the incident.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateIncidentRecordInput AWS API Documentation
    #
    class UpdateIncidentRecordInput < Struct.new(
      :arn,
      :chat_channel,
      :client_token,
      :impact,
      :notification_targets,
      :status,
      :summary,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateIncidentRecordOutput AWS API Documentation
    #
    class UpdateIncidentRecordOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateRelatedItemsInput
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         incident_record_arn: "Arn", # required
    #         related_items_update: { # required
    #           item_to_add: {
    #             identifier: { # required
    #               type: "ANALYSIS", # required, accepts ANALYSIS, INCIDENT, METRIC, PARENT, ATTACHMENT, OTHER
    #               value: { # required
    #                 arn: "Arn",
    #                 metric_definition: "MetricDefinition",
    #                 url: "Url",
    #               },
    #             },
    #             title: "RelatedItemTitleString",
    #           },
    #           item_to_remove: {
    #             type: "ANALYSIS", # required, accepts ANALYSIS, INCIDENT, METRIC, PARENT, ATTACHMENT, OTHER
    #             value: { # required
    #               arn: "Arn",
    #               metric_definition: "MetricDefinition",
    #               url: "Url",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident record containing the
    #   related items you are updating.
    #   @return [String]
    #
    # @!attribute [rw] related_items_update
    #   Details about the item you are adding or deleting.
    #   @return [Types::RelatedItemsUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateRelatedItemsInput AWS API Documentation
    #
    class UpdateRelatedItemsInput < Struct.new(
      :client_token,
      :incident_record_arn,
      :related_items_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateRelatedItemsOutput AWS API Documentation
    #
    class UpdateRelatedItemsOutput < Aws::EmptyStructure; end

    # Details used when updating the replication set.
    #
    # @note UpdateReplicationSetAction is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] add_region_action
    #   Details about the Amazon Web Services Region that you're adding to
    #   the replication set.
    #   @return [Types::AddRegionAction]
    #
    # @!attribute [rw] delete_region_action
    #   Details about the Amazon Web Services Region that you're deleting
    #   to the replication set.
    #   @return [Types::DeleteRegionAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateReplicationSetAction AWS API Documentation
    #
    class UpdateReplicationSetAction < Struct.new(
      :add_region_action,
      :delete_region_action,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AddRegionAction < UpdateReplicationSetAction; end
      class DeleteRegionAction < UpdateReplicationSetAction; end
      class Unknown < UpdateReplicationSetAction; end
    end

    # @note When making an API call, you may pass UpdateReplicationSetInput
    #   data as a hash:
    #
    #       {
    #         actions: [ # required
    #           {
    #             add_region_action: {
    #               region_name: "RegionName", # required
    #               sse_kms_key_id: "SseKmsKey",
    #             },
    #             delete_region_action: {
    #               region_name: "RegionName", # required
    #             },
    #           },
    #         ],
    #         arn: "Arn", # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] actions
    #   An action to add or delete a Region.
    #   @return [Array<Types::UpdateReplicationSetAction>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the replication set you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateReplicationSetInput AWS API Documentation
    #
    class UpdateReplicationSetInput < Struct.new(
      :actions,
      :arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateReplicationSetOutput AWS API Documentation
    #
    class UpdateReplicationSetOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateResponsePlanInput
    #   data as a hash:
    #
    #       {
    #         actions: [
    #           {
    #             ssm_automation: {
    #               document_name: "SsmAutomationDocumentNameString", # required
    #               document_version: "SsmAutomationDocumentVersionString",
    #               parameters: {
    #                 "SsmParametersKeyString" => ["SsmParameterValuesMemberString"],
    #               },
    #               role_arn: "RoleArn", # required
    #               target_account: "RESPONSE_PLAN_OWNER_ACCOUNT", # accepts RESPONSE_PLAN_OWNER_ACCOUNT, IMPACTED_ACCOUNT
    #             },
    #           },
    #         ],
    #         arn: "Arn", # required
    #         chat_channel: {
    #           chatbot_sns: ["SnsArn"],
    #           empty: {
    #           },
    #         },
    #         client_token: "ClientToken",
    #         display_name: "ResponsePlanDisplayName",
    #         engagements: ["SsmContactsArn"],
    #         incident_template_dedupe_string: "DedupeString",
    #         incident_template_impact: 1,
    #         incident_template_notification_targets: [
    #           {
    #             sns_topic_arn: "Arn",
    #           },
    #         ],
    #         incident_template_summary: "IncidentSummary",
    #         incident_template_title: "IncidentTitle",
    #       }
    #
    # @!attribute [rw] actions
    #   The actions that this response plan takes at the beginning of an
    #   incident.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the response plan.
    #   @return [String]
    #
    # @!attribute [rw] chat_channel
    #   The Chatbot chat channel used for collaboration during an incident.
    #
    #   Use the empty structure to remove the chat channel from the response
    #   plan.
    #   @return [Types::ChatChannel]
    #
    # @!attribute [rw] client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The long format name of the response plan. The display name can't
    #   contain spaces.
    #   @return [String]
    #
    # @!attribute [rw] engagements
    #   The contacts and escalation plans that Incident Manager engages at
    #   the start of the incident.
    #   @return [Array<String>]
    #
    # @!attribute [rw] incident_template_dedupe_string
    #   The string Incident Manager uses to prevent duplicate incidents from
    #   being created by the same incident in the same account.
    #   @return [String]
    #
    # @!attribute [rw] incident_template_impact
    #   Defines the impact to the customers. Providing an impact overwrites
    #   the impact provided by a response plan.
    #
    #   **Possible impacts:**
    #
    #   * `5` - Severe impact
    #
    #   * `4` - High impact
    #
    #   * `3` - Medium impact
    #
    #   * `2` - Low impact
    #
    #   * `1` - No impact
    #   @return [Integer]
    #
    # @!attribute [rw] incident_template_notification_targets
    #   The Amazon SNS targets that are notified when updates are made to an
    #   incident.
    #   @return [Array<Types::NotificationTargetItem>]
    #
    # @!attribute [rw] incident_template_summary
    #   A brief summary of the incident. This typically contains what has
    #   happened, what's currently happening, and next steps.
    #   @return [String]
    #
    # @!attribute [rw] incident_template_title
    #   The short format name of the incident. The title can't contain
    #   spaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateResponsePlanInput AWS API Documentation
    #
    class UpdateResponsePlanInput < Struct.new(
      :actions,
      :arn,
      :chat_channel,
      :client_token,
      :display_name,
      :engagements,
      :incident_template_dedupe_string,
      :incident_template_impact,
      :incident_template_notification_targets,
      :incident_template_summary,
      :incident_template_title)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateResponsePlanOutput AWS API Documentation
    #
    class UpdateResponsePlanOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateTimelineEventInput
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         event_data: "EventData",
    #         event_id: "UUID", # required
    #         event_time: Time.now,
    #         event_type: "TimelineEventType",
    #         incident_record_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] event_data
    #   A short description of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The ID of the event you are updating. You can find this by using
    #   `ListTimelineEvents`.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The time that the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] event_type
    #   The type of the event. You can update events of type `Custom Event`.
    #   @return [String]
    #
    # @!attribute [rw] incident_record_arn
    #   The Amazon Resource Name (ARN) of the incident that includes the
    #   timeline event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateTimelineEventInput AWS API Documentation
    #
    class UpdateTimelineEventInput < Struct.new(
      :client_token,
      :event_data,
      :event_id,
      :event_time,
      :event_type,
      :incident_record_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/UpdateTimelineEventOutput AWS API Documentation
    #
    class UpdateTimelineEventOutput < Aws::EmptyStructure; end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
