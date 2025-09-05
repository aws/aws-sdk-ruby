# frozen_string_literal: true

# This is generated code!

module Aws::SSMIncidents
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The action that starts at the beginning of an incident. The response plan defines the
    #       action.</p>
    # @!attribute ssm_automation
    #   <p>The Systems Manager automation document to start as the runbook at the beginning of the
    #         incident.</p>
    #   @return [Types::SsmAutomation]
    class Action < Struct.new(
      :ssm_automation,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class SsmAutomation < Action; end
      class Unknown < Action; end
    end

    # <p>Defines the Amazon Web Services Region and KMS key to add to the replication
    #       set. </p>
    # @!attribute region_name
    #   <p>The Amazon Web Services Region name to add to the replication set.</p>
    #   @return [String]
    # @!attribute sse_kms_key_id
    #   <p>The KMS key ID to use to encrypt your replication set.</p>
    #   @return [String]
    class AddRegionAction < Struct.new(
      :region_name,
      :sse_kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Use the AttributeValueList to filter by string or integer values.</p>
    # @!attribute string_values
    #   <p>The list of string values that the filter matches.</p>
    #   @return [Array<String>]
    # @!attribute integer_values
    #   <p>The list of integer values that the filter matches.</p>
    #   @return [Array<Integer>]
    class AttributeValueList < Struct.new(
      :string_values,
      :integer_values,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class StringValues < AttributeValueList; end
      class IntegerValues < AttributeValueList; end
      class Unknown < AttributeValueList; end
    end

    # <p>The Systems Manager automation document process to start as the runbook at the
    #       beginning of the incident.</p>
    # @!attribute ssm_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the automation process.</p>
    #   @return [String]
    class AutomationExecution < Struct.new(
      :ssm_execution_arn,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class SsmExecutionArn < AutomationExecution; end
      class Unknown < AutomationExecution; end
    end

    # <p>Details about an error returned for a <a>BatchGetIncidentFindings</a>
    #       operation.</p>
    # @!attribute finding_id
    #   <p>The ID of a specified finding for which an error was returned for a
    #           <code>BatchGetIncidentFindings</code> operation.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The code associated with an error that was returned for a
    #           <code>BatchGetIncidentFindings</code> operation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description for an error that was returned for a <code>BatchGetIncidentFindings</code>
    #         operation.</p>
    #   @return [String]
    class BatchGetIncidentFindingsError < Struct.new(
      :finding_id,
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident for which you want to view finding
    #         details.</p>
    #   @return [String]
    # @!attribute finding_ids
    #   <p>A list of IDs of findings for which you want to view details.</p>
    #   @return [Array<String>]
    class BatchGetIncidentFindingsInput < Struct.new(
      :incident_record_arn,
      :finding_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute findings
    #   <p>Information about the requested findings.</p>
    #   @return [Array<Types::Finding>]
    # @!attribute errors
    #   <p>A list of errors encountered during the operation.</p>
    #   @return [Array<Types::BatchGetIncidentFindingsError>]
    class BatchGetIncidentFindingsOutput < Struct.new(
      :findings,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Chatbot chat channel used for collaboration during an incident.</p>
    # @!attribute empty
    #   <p>Used to remove the chat channel from an incident record or response plan.</p>
    #   @return [Types::EmptyChatChannel]
    # @!attribute chatbot_sns
    #   <p>The Amazon SNS targets that Chatbot uses to notify the chat channel of
    #         updates to an incident. You can also make updates to the incident through the chat channel by
    #         using the Amazon SNS topics. </p>
    #   @return [Array<String>]
    class ChatChannel < Struct.new(
      :empty,
      :chatbot_sns,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Empty < ChatChannel; end
      class ChatbotSns < ChatChannel; end
      class Unknown < ChatChannel; end
    end

    # <p>Information about an CloudFormation stack creation or update that occurred around
    #       the time of an incident and could be a potential cause of the incident.</p>
    # @!attribute start_time
    #   <p>The timestamp for when the CloudFormation stack creation or update began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp for when the CloudFormation stack creation or update ended. Not reported
    #         for deployments that are still in progress.</p>
    #   @return [Time]
    # @!attribute stack_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudFormation stack involved in the
    #         update.</p>
    #   @return [String]
    class CloudFormationStackUpdate < Struct.new(
      :start_time,
      :end_time,
      :stack_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a CodeDeploy deployment that occurred around the time of an
    #       incident and could be a possible cause of the incident.</p>
    # @!attribute start_time
    #   <p>The timestamp for when the CodeDeploy deployment began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp for when the CodeDeploy deployment ended. Not reported for
    #         deployments that are still in progress.</p>
    #   @return [Time]
    # @!attribute deployment_group_arn
    #   <p>The Amazon Resource Name (ARN) of the CodeDeploy deployment group associated with
    #         the deployment.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The ID of the CodeDeploy deployment.</p>
    #   @return [String]
    class CodeDeployDeployment < Struct.new(
      :start_time,
      :end_time,
      :deployment_group_arn,
      :deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A conditional statement with which to compare a value, after a timestamp, before a
    #       timestamp, or equal to a string or integer. If multiple conditions are specified, the
    #       conditionals become an <code>AND</code>ed statement. If multiple values are specified for a
    #       conditional, the values are <code>OR</code>d.</p>
    # @!attribute before
    #   <p>Before the specified timestamp</p>
    #   @return [Time]
    # @!attribute after
    #   <p>After the specified timestamp.</p>
    #   @return [Time]
    # @!attribute equals
    #   <p>The value is equal to the provided string or integer. </p>
    #   @return [Types::AttributeValueList]
    class Condition < Struct.new(
      :before,
      :after,
      :equals,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Before < Condition; end
      class After < Condition; end
      class Equals < Condition; end
      class Unknown < Condition; end
    end

    # <p>Updating or deleting a resource causes an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_identifier
    #   The identifier of the requested resource
    #   @return [String]
    # @!attribute resource_type
    #   The resource type
    #   @return [String]
    # @!attribute retry_after
    #   If present in the output, the operation can be retried after this time
    #   @return [Time]
    class ConflictException < Struct.new(
      :message,
      :resource_identifier,
      :resource_type,
      :retry_after,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute regions
    #   <p>The Regions that Incident Manager replicates your data to. You can have up to three Regions in
    #         your replication set.</p>
    #   @return [Hash<String, Types::RegionMapInputValue>]
    # @!attribute client_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #         details.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to add to the replication set.</p>
    #   @return [Hash<String, String>]
    class CreateReplicationSetOperationInput < Struct.new(
      :regions,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set. </p>
    #   @return [String]
    class CreateReplicationSetOperationOutput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified details.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The short format name of the response plan. Can't include spaces.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The long format of the response plan name. This field can contain spaces.</p>
    #   @return [String]
    # @!attribute incident_template
    #   <p>Details used to create an incident when using this response plan.</p>
    #   @return [Types::IncidentTemplate]
    # @!attribute chat_channel
    #   <p>The Chatbot chat channel used for collaboration during an incident.</p>
    #   @return [Types::ChatChannel]
    # @!attribute engagements
    #   <p>The Amazon Resource Name (ARN) for the contacts and escalation plans that the response
    #         plan engages during an incident.</p>
    #   @return [Array<String>]
    # @!attribute actions
    #   <p>The actions that the response plan starts at the beginning of an incident.</p>
    #   @return [Array<Types::Action>]
    # @!attribute tags
    #   <p>A list of tags that you are adding to the response plan.</p>
    #   @return [Hash<String, String>]
    # @!attribute integrations
    #   <p>Information about third-party services integrated into the response plan.</p>
    #   @return [Array<Types::Integration>]
    class CreateResponsePlanOperationInput < Struct.new(
      :client_token,
      :name,
      :display_name,
      :incident_template,
      :chat_channel,
      :engagements,
      :actions,
      :tags,
      :integrations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #   @return [String]
    class CreateResponsePlanOperationOutput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A token that ensures that a client calls the action only once with the specified
    #         details.</p>
    #   @return [String]
    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record that the action adds the incident
    #         to.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The timestamp for when the event occurred.</p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of event. You can create timeline events of type <code>Custom Event</code> and
    #           <code>Note</code>.</p>
    #            <p>To make a Note-type event appear on the <i>Incident notes</i> panel in the
    #         console, specify <code>eventType</code> as <code>Note</code>and enter the Amazon Resource Name
    #         (ARN) of the incident as the value for <code>eventReference</code>.</p>
    #   @return [String]
    # @!attribute event_data
    #   <p>A short description of the event.</p>
    #   @return [String]
    # @!attribute event_references
    #   <p>Adds one or more references to the <code>TimelineEvent</code>. A reference is an Amazon Web Services resource involved or associated with the incident. To specify a reference, enter
    #         its Amazon Resource Name (ARN). You can also specify a related item associated with a
    #         resource. For example, to specify an Amazon DynamoDB (DynamoDB) table as a
    #         resource, use the table's ARN. You can also specify an Amazon CloudWatch metric associated
    #         with the DynamoDB table as a related item.</p>
    #   @return [Array<Types::EventReference>]
    class CreateTimelineEventOperationInput < Struct.new(
      :client_token,
      :incident_record_arn,
      :event_time,
      :event_type,
      :event_data,
      :event_references,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The ARN of the incident record that you added the event to.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The ID of the event for easy reference later. </p>
    #   @return [String]
    class CreateTimelineEventOperationOutput < Struct.new(
      :incident_record_arn,
      :event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the incident record you are deleting.</p>
    #   @return [String]
    class DeleteIncidentRecordOperationInput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIncidentRecordOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the information about the Amazon Web Services Region you're deleting from your
    #       replication set.</p>
    # @!attribute region_name
    #   <p>The name of the Amazon Web Services Region you're deleting from the replication set.</p>
    #   @return [String]
    class DeleteRegionAction < Struct.new(
      :region_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you're deleting.</p>
    #   @return [String]
    class DeleteReplicationSetOperationInput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteReplicationSetOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you're deleting the policy from.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The ID of the resource policy you're deleting.</p>
    #   @return [String]
    class DeleteResourcePolicyOperationInput < Struct.new(
      :resource_arn,
      :policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcePolicyOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #   @return [String]
    class DeleteResponsePlanOperationInput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteResponsePlanOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline event.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The ID of the event to update. You can use <code>ListTimelineEvents</code> to find an
    #         event's ID.</p>
    #   @return [String]
    class DeleteTimelineEventOperationInput < Struct.new(
      :incident_record_arn,
      :event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTimelineEventOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The dynamic SSM parameter value.</p>
    # @!attribute variable
    #   <p>Variable dynamic parameters. A parameter value is determined when an incident is
    #         created.</p>
    #   @return [String]
    class DynamicSsmParameterValue < Struct.new(
      :variable,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Variable < DynamicSsmParameterValue; end
      class Unknown < DynamicSsmParameterValue; end
    end

    # <p>Used to remove the chat channel from an incident record or response plan.</p>
    class EmptyChatChannel < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An item referenced in a <code>TimelineEvent</code> that is involved in or somehow
    #       associated with an incident. You can specify an Amazon Resource Name (ARN) for an Amazon Web Services resource or a <code>RelatedItem</code> ID.</p>
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services resource referenced in a
    #           <code>TimelineEvent</code>.</p>
    #   @return [String]
    # @!attribute related_item_id
    #   <p>The ID of a <code>RelatedItem</code> referenced in a <code>TimelineEvent</code>.</p>
    #   @return [String]
    class EventReference < Struct.new(
      :resource,
      :related_item_id,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Resource < EventReference; end
      class RelatedItemId < EventReference; end
      class Unknown < EventReference; end
    end

    # <p>Details about a timeline event during an incident.</p>
    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that the event happened during.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The timeline event ID.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The timestamp for when the event occurred.</p>
    #   @return [Time]
    # @!attribute event_updated_time
    #   <p>The timestamp for when the timeline event was last updated.</p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of event. The timeline event must be <code>Custom Event</code> or
    #           <code>Note</code>.</p>
    #   @return [String]
    # @!attribute event_references
    #   <p>A list of references in a <code>TimelineEvent</code>.</p>
    #   @return [Array<Types::EventReference>]
    class EventSummary < Struct.new(
      :incident_record_arn,
      :event_id,
      :event_time,
      :event_updated_time,
      :event_type,
      :event_references,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filter the selection by using a condition.</p>
    # @!attribute key
    #   <p>The key that you're filtering on.</p>
    #   @return [String]
    # @!attribute condition
    #   <p>The condition accepts before or after a specified time, equal to a string, or equal to an
    #         integer.</p>
    #   @return [Types::Condition]
    class Filter < Struct.new(
      :key,
      :condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a specific CodeDeploy deployment or CloudFormation
    #       stack creation or update that occurred around the time of a reported incident. These
    #       activities can be investigated as a potential cause of the incident.</p>
    # @!attribute id
    #   <p>The ID assigned to the finding.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp for when a finding was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp for when the finding was most recently updated with additional
    #         information.</p>
    #   @return [Time]
    # @!attribute details
    #   <p>Details about the finding.</p>
    #   @return [Types::FindingDetails]
    class Finding < Struct.new(
      :id,
      :creation_time,
      :last_modified_time,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Extended textual information about the finding.</p>
    # @!attribute code_deploy_deployment
    #   <p>Information about the CodeDeploy deployment associated with the finding.</p>
    #   @return [Types::CodeDeployDeployment]
    # @!attribute cloud_formation_stack_update
    #   <p>Information about the CloudFormation stack creation or update associated with the
    #         finding.</p>
    #   @return [Types::CloudFormationStackUpdate]
    class FindingDetails < Struct.new(
      :code_deploy_deployment,
      :cloud_formation_stack_update,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CodeDeployDeployment < FindingDetails; end
      class CloudFormationStackUpdate < FindingDetails; end
      class Unknown < FindingDetails; end
    end

    # <p>Identifying information about the finding.</p>
    # @!attribute id
    #   <p>The ID of the finding.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp for when the finding was last updated.</p>
    #   @return [Time]
    class FindingSummary < Struct.new(
      :id,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the incident record.</p>
    #   @return [String]
    class GetIncidentRecordOperationInput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute incident_record
    #   <p>Details the structure of the incident record.</p>
    #   @return [Types::IncidentRecord]
    class GetIncidentRecordOperationOutput < Struct.new(
      :incident_record,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you want to retrieve.</p>
    #   @return [String]
    class GetReplicationSetOperationInput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_set
    #   <p>Details of the replication set.</p>
    #   @return [Types::ReplicationSet]
    class GetReplicationSetOperationOutput < Struct.new(
      :replication_set,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan with the attached resource policy.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resource policies to display for each page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    #   @return [String]
    class GetResourcePoliciesOperationInput < Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_policies
    #   <p>Details about the resource policy attached to the response plan.</p>
    #   @return [Array<Types::ResourcePolicy>]
    # @!attribute next_token
    #   <p>The pagination token to use when requesting the next set of items. If there are no
    #         additional items to return, the string is null.</p>
    #   @return [String]
    class GetResourcePoliciesOperationOutput < Struct.new(
      :resource_policies,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #   @return [String]
    class GetResponsePlanOperationInput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the response plan.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The short format name of the response plan. The name can't contain spaces.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The long format name of the response plan. Can contain spaces.</p>
    #   @return [String]
    # @!attribute incident_template
    #   <p>Details used to create the incident when using this response plan.</p>
    #   @return [Types::IncidentTemplate]
    # @!attribute chat_channel
    #   <p>The Chatbot chat channel used for collaboration during an incident.</p>
    #   @return [Types::ChatChannel]
    # @!attribute engagements
    #   <p>The Amazon Resource Name (ARN) for the contacts and escalation plans that the response
    #         plan engages during an incident.</p>
    #   @return [Array<String>]
    # @!attribute actions
    #   <p>The actions that this response plan takes at the beginning of the incident.</p>
    #   @return [Array<Types::Action>]
    # @!attribute integrations
    #   <p>Information about third-party services integrated into the Incident Manager response
    #         plan.</p>
    #   @return [Array<Types::Integration>]
    class GetResponsePlanOperationOutput < Struct.new(
      :arn,
      :name,
      :display_name,
      :incident_template,
      :chat_channel,
      :engagements,
      :actions,
      :integrations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline event.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The ID of the event. You can get an event's ID when you create it, or by using
    #           <code>ListTimelineEvents</code>.</p>
    #   @return [String]
    class GetTimelineEventOperationInput < Struct.new(
      :incident_record_arn,
      :event_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute event
    #   <p>Details about the timeline event.</p>
    #   @return [Types::TimelineEvent]
    class GetTimelineEventOperationOutput < Struct.new(
      :event,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The record of the incident that's created when an incident occurs.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the incident record.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the incident.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>The summary of the incident. The summary is a brief synopsis of what occurred, what's
    #         currently happening, and context of the incident.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the incident.</p>
    #   @return [String]
    # @!attribute impact
    #   <p>The impact of the incident on customers and applications.</p>
    #            <p class="title">
    #               <b>Supported impact codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1</code> - Critical</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - High</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3</code> - Medium</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>4</code> - Low</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>5</code> - No Impact</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The timestamp for when Incident Manager created the incident record.</p>
    #   @return [Time]
    # @!attribute resolved_time
    #   <p>The timestamp for when the incident was resolved. This appears as a timeline event.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp for when the incident was most recently modified.</p>
    #   @return [Time]
    # @!attribute last_modified_by
    #   <p>Who modified the incident most recently.</p>
    #   @return [String]
    # @!attribute automation_executions
    #   <p>The runbook, or automation document, that's run at the beginning of the incident.</p>
    #   @return [Array<Types::AutomationExecution>]
    # @!attribute incident_record_source
    #   <p>Details about the action that started the incident.</p>
    #   @return [Types::IncidentRecordSource]
    # @!attribute dedupe_string
    #   <p>The string Incident Manager uses to prevent duplicate incidents from being created by the same
    #         incident in the same account.</p>
    #   @return [String]
    # @!attribute chat_channel
    #   <p>The chat channel used for collaboration during an incident.</p>
    #   @return [Types::ChatChannel]
    # @!attribute notification_targets
    #   <p>The Amazon SNS targets that are notified when updates are made to an
    #         incident.</p>
    #   @return [Array<Types::NotificationTargetItem>]
    class IncidentRecord < Struct.new(
      :arn,
      :title,
      :summary,
      :status,
      :impact,
      :creation_time,
      :resolved_time,
      :last_modified_time,
      :last_modified_by,
      :automation_executions,
      :incident_record_source,
      :dedupe_string,
      :chat_channel,
      :notification_targets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about what created the incident record and when it was created.</p>
    # @!attribute created_by
    #   <p>The principal that started the incident.</p>
    #   @return [String]
    # @!attribute invoked_by
    #   <p>The service principal that assumed the role specified in <code>createdBy</code>. If no
    #         service principal assumed the role this will be left blank.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The resource that caused the incident to be created.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The service that started the incident. This can be manually created from Incident Manager,
    #         automatically created using an Amazon CloudWatch alarm, or Amazon EventBridge
    #         event.</p>
    #   @return [String]
    class IncidentRecordSource < Struct.new(
      :created_by,
      :invoked_by,
      :resource_arn,
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details describing an incident record.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the incident.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the incident. This value is either provided by the response plan or
    #         overwritten on creation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the incident.</p>
    #   @return [String]
    # @!attribute impact
    #   <p>Defines the impact to customers and applications.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The timestamp for when the incident was created.</p>
    #   @return [Time]
    # @!attribute resolved_time
    #   <p>The timestamp for when the incident was resolved.</p>
    #   @return [Time]
    # @!attribute incident_record_source
    #   <p>What caused Incident Manager to create the incident.</p>
    #   @return [Types::IncidentRecordSource]
    class IncidentRecordSummary < Struct.new(
      :arn,
      :title,
      :status,
      :impact,
      :creation_time,
      :resolved_time,
      :incident_record_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Basic details used in creating a response plan. The response plan is then used to create
    #       an incident record.</p>
    # @!attribute title
    #   <p>The title of the incident. </p>
    #   @return [String]
    # @!attribute impact
    #   <p>The impact of the incident on your customers and applications.</p>
    #            <p class="title">
    #               <b>Supported impact codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1</code> - Critical</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - High</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3</code> - Medium</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>4</code> - Low</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>5</code> - No Impact</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute summary
    #   <p>The summary of the incident. The summary is a brief synopsis of what occurred, what's
    #         currently happening, and context.</p>
    #   @return [String]
    # @!attribute dedupe_string
    #   <p>The string Incident Manager uses to prevent the same root cause from creating multiple
    #         incidents in the same account.</p>
    #            <p>A deduplication string is a term or phrase the system uses to check for duplicate
    #         incidents. If you specify a deduplication string, Incident Manager searches for open incidents that
    #         contain the same string in the <code>dedupeString</code> field when it creates the incident.
    #         If a duplicate is detected, Incident Manager deduplicates the newer incident into the existing
    #         incident.</p>
    #            <note>
    #               <p>By default, Incident Manager automatically deduplicates multiple incidents created by the
    #           same Amazon CloudWatch alarm or Amazon EventBridge event. You don't have to enter
    #           your own deduplication string to prevent duplication for these resource types.</p>
    #            </note>
    #   @return [String]
    # @!attribute notification_targets
    #   <p>The Amazon SNS targets that are notified when updates are made to an
    #         incident.</p>
    #   @return [Array<Types::NotificationTargetItem>]
    # @!attribute incident_tags
    #   <p>Tags to assign to the template. When the <code>StartIncident</code> API action is called,
    #         Incident Manager assigns the tags specified in the template to the incident.</p>
    #   @return [Hash<String, String>]
    class IncidentTemplate < Struct.new(
      :title,
      :impact,
      :summary,
      :dedupe_string,
      :notification_targets,
      :incident_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about third-party services integrated into a response plan.</p>
    # @!attribute pager_duty_configuration
    #   <p>Information about the PagerDuty service where the response plan creates an
    #         incident.</p>
    #   @return [Types::PagerDutyConfiguration]
    class Integration < Struct.new(
      :pager_duty_configuration,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class PagerDutyConfiguration < Integration; end
      class Unknown < Integration; end
    end

    # <p>The request processing has failed because of an unknown error, exception or
    #       failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details and type of a related item.</p>
    # @!attribute value
    #   <p>Details about the related item.</p>
    #   @return [Types::ItemValue]
    # @!attribute type
    #   <p>The type of related item. </p>
    #   @return [String]
    class ItemIdentifier < Struct.new(
      :value,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a related item.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the related item, if the related item is an Amazon
    #         resource.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL, if the related item is a non-Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute metric_definition
    #   <p>The metric definition, if the related item is a metric in Amazon CloudWatch.</p>
    #   @return [String]
    # @!attribute pager_duty_incident_detail
    #   <p>Details about an incident that is associated with a PagerDuty incident.</p>
    #   @return [Types::PagerDutyIncidentDetail]
    class ItemValue < Struct.new(
      :arn,
      :url,
      :metric_definition,
      :pager_duty_incident_detail,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Arn < ItemValue; end
      class Url < ItemValue; end
      class MetricDefinition < ItemValue; end
      class PagerDutyIncidentDetail < ItemValue; end
      class Unknown < ItemValue; end
    end

    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident for which you want to view associated
    #         findings.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of findings to retrieve per call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    #   @return [String]
    class ListIncidentFindingsInput < Struct.new(
      :incident_record_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute findings
    #   <p>A list of findings that represent deployments that might be the potential cause of the
    #         incident.</p>
    #   @return [Array<Types::FindingSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use when requesting the next set of items. If there are no
    #         additional items to return, the string is null.</p>
    #   @return [String]
    class ListIncidentFindingsOutput < Struct.new(
      :findings,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters the list of incident records you want to search through. You can filter on the
    #         following keys:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>creationTime</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>impact</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>createdBy</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Note the following when when you use Filters:</p>
    #            <ul>
    #               <li>
    #                  <p>If you don't specify a Filter, the response includes all incident records.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify more than one filter in a single request, the response returns incident
    #             records that match all filters.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify a filter with more than one value, the response returns incident
    #             records that match any of the values provided.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The maximum number of results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    #   @return [String]
    class ListIncidentRecordsOperationInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute incident_record_summaries
    #   <p>The details of each listed incident record.</p>
    #   @return [Array<Types::IncidentRecordSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use when requesting the next set of items. If there are no
    #         additional items to return, the string is null.</p>
    #   @return [String]
    class ListIncidentRecordsOperationOutput < Struct.new(
      :incident_record_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record containing the listed related
    #         items.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of related items per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    #   @return [String]
    class ListRelatedItemsOperationInput < Struct.new(
      :incident_record_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute related_items
    #   <p>Details about each related item.</p>
    #   @return [Array<Types::RelatedItem>]
    # @!attribute next_token
    #   <p>The pagination token to use when requesting the next set of items. If there are no
    #         additional items to return, the string is null.</p>
    #   @return [String]
    class ListRelatedItemsOperationOutput < Struct.new(
      :related_items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results per page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    #   @return [String]
    class ListReplicationSetsOperationInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_set_arns
    #   <p>The Amazon Resource Name (ARN) of the list replication set.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token to use when requesting the next set of items. If there are no
    #         additional items to return, the string is null.</p>
    #   @return [String]
    class ListReplicationSetsOperationOutput < Struct.new(
      :replication_set_arns,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of response plans per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    #   @return [String]
    class ListResponsePlansOperationInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute response_plan_summaries
    #   <p>Details of each response plan.</p>
    #   @return [Array<Types::ResponsePlanSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use when requesting the next set of items. If there are no
    #         additional items to return, the string is null.</p>
    #   @return [String]
    class ListResponsePlansOperationOutput < Struct.new(
      :response_plan_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan or incident.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags for the response plan or incident.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline event.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters the timeline events based on the provided conditional values. You can filter
    #         timeline events with the following keys:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>eventReference</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>eventTime</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>eventType</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Note the following when deciding how to use Filters:</p>
    #            <ul>
    #               <li>
    #                  <p>If you don't specify a Filter, the response includes all timeline events.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify more than one filter in a single request, the response returns timeline
    #             events that match all filters.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify a filter with more than one value, the response returns timeline events
    #             that match any of the values provided.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute sort_by
    #   <p>Sort timeline events by the specified key value pair.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Sorts the order of timeline events by the value specified in the <code>sortBy</code>
    #         field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    #   @return [String]
    class ListTimelineEventsOperationInput < Struct.new(
      :incident_record_arn,
      :filters,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_summaries
    #   <p>Details about each event that occurred during the incident.</p>
    #   @return [Array<Types::EventSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use when requesting the next set of items. If there are no
    #         additional items to return, the string is null.</p>
    #   @return [String]
    class ListTimelineEventsOperationOutput < Struct.new(
      :event_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The SNS targets that are notified when updates are made to an incident.</p>
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic.</p>
    #   @return [String]
    class NotificationTargetItem < Struct.new(
      :sns_topic_arn,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class SnsTopicArn < NotificationTargetItem; end
      class Unknown < NotificationTargetItem; end
    end

    # <p>Details about the PagerDuty configuration for a response plan.</p>
    # @!attribute name
    #   <p>The name of the PagerDuty configuration.</p>
    #   @return [String]
    # @!attribute secret_id
    #   <p>The ID of the Amazon Web Services Secrets Manager secret that stores your PagerDuty key, either a General Access REST API Key or
    #         User Token REST API Key, and other user credentials.</p>
    #   @return [String]
    # @!attribute pager_duty_incident_configuration
    #   <p>Details about the PagerDuty service associated with the configuration.</p>
    #   @return [Types::PagerDutyIncidentConfiguration]
    class PagerDutyConfiguration < Struct.new(
      :name,
      :secret_id,
      :pager_duty_incident_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the PagerDuty service where the response plan creates an incident.</p>
    # @!attribute service_id
    #   <p>The ID of the PagerDuty service that the response plan associates with an incident when it
    #         launches.</p>
    #   @return [String]
    class PagerDutyIncidentConfiguration < Struct.new(
      :service_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the PagerDuty incident associated with an incident created by an Incident Manager
    #       response plan.</p>
    # @!attribute id
    #   <p>The ID of the incident associated with the PagerDuty service for the response plan.</p>
    #   @return [String]
    # @!attribute auto_resolve
    #   <p>Indicates whether to resolve the PagerDuty incident when you resolve the associated
    #         Incident Manager incident.</p>
    #   @return [Boolean]
    # @!attribute secret_id
    #   <p>The ID of the Amazon Web Services Secrets Manager secret that stores your PagerDuty key, either a General Access REST API Key or
    #         User Token REST API Key, and other user credentials.</p>
    #   @return [String]
    class PagerDutyIncidentDetail < Struct.new(
      :id,
      :auto_resolve,
      :secret_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan to add the resource policy to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>Details of the resource policy.</p>
    #   @return [String]
    class PutResourcePolicyOperationInput < Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the resource policy.</p>
    #   @return [String]
    class PutResourcePolicyOperationOutput < Struct.new(
      :policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Amazon Web Services Region in your replication set.</p>
    # @!attribute sse_kms_key_id
    #   <p>The ID of the KMS key used to encrypt the data in this Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Amazon Web Services Region in the replication set.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Information displayed about the status of the Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute status_update_date_time
    #   <p>The timestamp for when Incident Manager updated the status of the Amazon Web Services Region.</p>
    #   @return [Time]
    class RegionInfo < Struct.new(
      :sse_kms_key_id,
      :status,
      :status_message,
      :status_update_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The mapping between a Amazon Web Services Region and the key that's used to encrypt the
    #       data.</p>
    # @!attribute sse_kms_key_id
    #   <p>The KMS key used to encrypt the data in your replication set.</p>
    #   @return [String]
    class RegionMapInputValue < Struct.new(
      :sse_kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Resources that responders use to triage and mitigate the incident.</p>
    # @!attribute identifier
    #   <p>Details about the related item.</p>
    #   @return [Types::ItemIdentifier]
    # @!attribute title
    #   <p>The title of the related item.</p>
    #   @return [String]
    # @!attribute generated_id
    #   <p>A unique ID for a <code>RelatedItem</code>.</p>
    #            <important>
    #               <p>Don't specify this parameter when you add a <code>RelatedItem</code> by using the <a>UpdateRelatedItems</a> API action.</p>
    #            </important>
    #   @return [String]
    class RelatedItem < Struct.new(
      :identifier,
      :title,
      :generated_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the related item you're adding.</p>
    # @!attribute item_to_add
    #   <p>Details about the related item you're adding.</p>
    #   @return [Types::RelatedItem]
    # @!attribute item_to_remove
    #   <p>Details about the related item you're deleting.</p>
    #   @return [Types::ItemIdentifier]
    class RelatedItemsUpdate < Struct.new(
      :item_to_add,
      :item_to_remove,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class ItemToAdd < RelatedItemsUpdate; end
      class ItemToRemove < RelatedItemsUpdate; end
      class Unknown < RelatedItemsUpdate; end
    end

    # <p>The set of Amazon Web Services Region that your Incident Manager data will be replicated to and
    #       the KMS key used to encrypt the data. </p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set.</p>
    #   @return [String]
    # @!attribute region_map
    #   <p>The map between each Amazon Web Services Region in your replication set and the KMS key that's used to encrypt the data in that Region.</p>
    #   @return [Hash<String, Types::RegionInfo>]
    # @!attribute status
    #   <p>The status of the replication set. If the replication set is still pending, you can't use
    #         Incident Manager functionality.</p>
    #   @return [String]
    # @!attribute deletion_protected
    #   <p>Determines if the replication set deletion protection is enabled or not. If deletion
    #         protection is enabled, you can't delete the last Amazon Web Services Region in the replication
    #         set. </p>
    #   @return [Boolean]
    # @!attribute created_time
    #   <p>When the replication set was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>Details about who created the replication set.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>When the replication set was last updated.</p>
    #   @return [Time]
    # @!attribute last_modified_by
    #   <p>Who last modified the replication set.</p>
    #   @return [String]
    class ReplicationSet < Struct.new(
      :arn,
      :region_map,
      :status,
      :deletion_protected,
      :created_time,
      :created_by,
      :last_modified_time,
      :last_modified_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request references a resource which doesn't exist. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_identifier
    #   The identifier for the requested resource
    #   @return [String]
    # @!attribute resource_type
    #   The resource type
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_identifier,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource policy that allows Incident Manager to perform actions on resources on your
    #       behalf.</p>
    # @!attribute policy_document
    #   <p>The JSON blob that describes the policy.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The ID of the resource policy.</p>
    #   @return [String]
    # @!attribute ram_resource_share_region
    #   <p>The Amazon Web Services Region that policy allows resources to be used in.</p>
    #   @return [String]
    class ResourcePolicy < Struct.new(
      :policy_document,
      :policy_id,
      :ram_resource_share_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the response plan that are used when creating an incident.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the response plan. This can't include spaces.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human readable name of the response plan. This can include spaces.</p>
    #   @return [String]
    class ResponsePlanSummary < Struct.new(
      :arn,
      :name,
      :display_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_identifier
    #   The identifier for the requested resource
    #   @return [String]
    # @!attribute resource_type
    #   The resource type
    #   @return [String]
    # @!attribute service_code
    #   Originating service code
    #   @return [String]
    # @!attribute quota_code
    #   Originating quota code
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_identifier,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Systems Manager automation document that will be used as a runbook
    #       during an incident.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that the automation document will assume when
    #         running commands.</p>
    #   @return [String]
    # @!attribute document_name
    #   <p>The automation document's name.</p>
    #   @return [String]
    # @!attribute document_version
    #   <p>The automation document's version to use when running.</p>
    #   @return [String]
    # @!attribute target_account
    #   <p>The account that the automation document will be run in. This can be in either the
    #         management account or an application account.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The key-value pair parameters to use when running the automation document.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute dynamic_parameters
    #   <p>The key-value pair to resolve dynamic parameter values when processing a Systems Manager Automation
    #         runbook.</p>
    #   @return [Hash<String, Types::DynamicSsmParameterValue>]
    class SsmAutomation < Struct.new(
      :role_arn,
      :document_name,
      :document_version,
      :target_account,
      :parameters,
      :dynamic_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified details.</p>
    #   @return [String]
    # @!attribute response_plan_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan that pre-defines summary, chat
    #         channels, Amazon SNS topics, runbooks, title, and impact of the incident. </p>
    #   @return [String]
    # @!attribute title
    #   <p>Provide a title for the incident. Providing a title overwrites the title provided by the
    #         response plan. </p>
    #   @return [String]
    # @!attribute impact
    #   <p>Defines the impact to the customers. Providing an impact overwrites the impact provided by
    #         a response plan.</p>
    #            <p class="title">
    #               <b>Supported impact codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1</code> - Critical</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - High</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3</code> - Medium</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>4</code> - Low</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>5</code> - No Impact</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute trigger_details
    #   <p>Details of what created the incident record in Incident Manager.</p>
    #   @return [Types::TriggerDetails]
    # @!attribute related_items
    #   <p>Add related items to the incident for other responders to use. Related items are Amazon Web Services
    #         resources, external links, or files uploaded to an Amazon S3 bucket. </p>
    #   @return [Array<Types::RelatedItem>]
    class StartIncidentOperationInput < Struct.new(
      :client_token,
      :response_plan_arn,
      :title,
      :impact,
      :trigger_details,
      :related_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute incident_record_arn
    #   <p>The ARN of the newly created incident record.</p>
    #   @return [String]
    class StartIncidentOperationOutput < Struct.new(
      :incident_record_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan you're adding the tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to add to the response plan.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   Originating service code
    #   @return [String]
    # @!attribute quota_code
    #   Originating quota code
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A significant event that happened during the incident. </p>
    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that the event occurred during.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The ID of the timeline event.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The timestamp for when the event occurred.</p>
    #   @return [Time]
    # @!attribute event_updated_time
    #   <p>The timestamp for when the timeline event was last updated.</p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of event that occurred. Currently Incident Manager supports only the <code>Custom
    #           Event</code> and <code>Note</code> types.</p>
    #   @return [String]
    # @!attribute event_data
    #   <p>A short description of the event.</p>
    #   @return [String]
    # @!attribute event_references
    #   <p>A list of references in a <code>TimelineEvent</code>.</p>
    #   @return [Array<Types::EventReference>]
    class TimelineEvent < Struct.new(
      :incident_record_arn,
      :event_id,
      :event_time,
      :event_updated_time,
      :event_type,
      :event_data,
      :event_references,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about what caused the incident to be created in Incident Manager.</p>
    # @!attribute source
    #   <p>Identifies the service that sourced the event. All events sourced from within Amazon Web Services begin with "<code>aws.</code>" Customer-generated events can have any value here,
    #         as long as it doesn't begin with "<code>aws.</code>" We recommend the use of Java package-name
    #         style reverse domain-name strings. </p>
    #   @return [String]
    # @!attribute trigger_arn
    #   <p>The Amazon Resource Name (ARN) of the source that detected the incident.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp for when the incident was detected.</p>
    #   @return [Time]
    # @!attribute raw_data
    #   <p>Raw data passed from either Amazon EventBridge, Amazon CloudWatch, or Incident Manager when an incident is created.</p>
    #   @return [String]
    class TriggerDetails < Struct.new(
      :source,
      :trigger_arn,
      :timestamp,
      :raw_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan you're removing a tag from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The name of the tag to remove from the response plan.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set to update.</p>
    #   @return [String]
    # @!attribute deletion_protected
    #   <p>Specifies if deletion protection is turned on or off in your account. </p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #         details.</p>
    #   @return [String]
    class UpdateDeletionProtectionOperationInput < Struct.new(
      :arn,
      :deletion_protected,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateDeletionProtectionOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A token that ensures that a client calls the operation only once with the specified
    #         details.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the incident record you are updating.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A brief description of the incident.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>A longer description of what occurred during the incident.</p>
    #   @return [String]
    # @!attribute impact
    #   <p>Defines the impact of the incident to customers and applications. If you provide an impact
    #         for an incident, it overwrites the impact provided by the response plan.</p>
    #            <p class="title">
    #               <b>Supported impact codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1</code> - Critical</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - High</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3</code> - Medium</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>4</code> - Low</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>5</code> - No Impact</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the incident. Possible statuses are <code>Open</code> or
    #           <code>Resolved</code>.</p>
    #   @return [String]
    # @!attribute chat_channel
    #   <p>The Chatbot chat channel where responders can collaborate.</p>
    #   @return [Types::ChatChannel]
    # @!attribute notification_targets
    #   <p>The Amazon SNS targets that Incident Manager notifies when a client updates an
    #         incident.</p>
    #            <p>Using multiple SNS topics creates redundancy in the event that a Region is down during the
    #         incident.</p>
    #   @return [Array<Types::NotificationTargetItem>]
    class UpdateIncidentRecordOperationInput < Struct.new(
      :client_token,
      :arn,
      :title,
      :summary,
      :impact,
      :status,
      :chat_channel,
      :notification_targets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateIncidentRecordOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A token that ensures that a client calls the operation only once with the specified
    #         details.</p>
    #   @return [String]
    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record that contains the related items that
    #         you update.</p>
    #   @return [String]
    # @!attribute related_items_update
    #   <p>Details about the item that you are add to, or delete from, an incident.</p>
    #   @return [Types::RelatedItemsUpdate]
    class UpdateRelatedItemsOperationInput < Struct.new(
      :client_token,
      :incident_record_arn,
      :related_items_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateRelatedItemsOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details used when updating the replication set.</p>
    # @!attribute add_region_action
    #   <p>Details about the Amazon Web Services Region that you're adding to the replication
    #         set.</p>
    #   @return [Types::AddRegionAction]
    # @!attribute delete_region_action
    #   <p>Details about the Amazon Web Services Region that you're deleting to the replication
    #         set.</p>
    #   @return [Types::DeleteRegionAction]
    class UpdateReplicationSetAction < Struct.new(
      :add_region_action,
      :delete_region_action,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AddRegionAction < UpdateReplicationSetAction; end
      class DeleteRegionAction < UpdateReplicationSetAction; end
      class Unknown < UpdateReplicationSetAction; end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you're updating.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>An action to add or delete a Region.</p>
    #   @return [Array<Types::UpdateReplicationSetAction>]
    # @!attribute client_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #         details.</p>
    #   @return [String]
    class UpdateReplicationSetOperationInput < Struct.new(
      :arn,
      :actions,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateReplicationSetOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A token ensuring that the operation is called only once with the specified details.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The long format name of the response plan. The display name can't contain spaces.</p>
    #   @return [String]
    # @!attribute incident_template_title
    #   <p>The short format name of the incident. The title can't contain spaces.</p>
    #   @return [String]
    # @!attribute incident_template_impact
    #   <p>Defines the impact to the customers. Providing an impact overwrites the impact provided by
    #         a response plan.</p>
    #            <p class="title">
    #               <b>Supported impact codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1</code> - Critical</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - High</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3</code> - Medium</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>4</code> - Low</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>5</code> - No Impact</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute incident_template_summary
    #   <p>A brief summary of the incident. This typically contains what has happened, what's
    #         currently happening, and next steps.</p>
    #   @return [String]
    # @!attribute incident_template_dedupe_string
    #   <p>The string Incident Manager uses to prevent duplicate incidents from being created by the same
    #         incident in the same account.</p>
    #   @return [String]
    # @!attribute incident_template_notification_targets
    #   <p>The Amazon SNS targets that are notified when updates are made to an
    #         incident.</p>
    #   @return [Array<Types::NotificationTargetItem>]
    # @!attribute chat_channel
    #   <p>The Chatbot chat channel used for collaboration during an incident.</p>
    #            <p>Use the empty structure to remove the chat channel from the response plan.</p>
    #   @return [Types::ChatChannel]
    # @!attribute engagements
    #   <p>The Amazon Resource Name (ARN) for the contacts and escalation plans that the response
    #         plan engages during an incident.</p>
    #   @return [Array<String>]
    # @!attribute actions
    #   <p>The actions that this response plan takes at the beginning of an incident.</p>
    #   @return [Array<Types::Action>]
    # @!attribute incident_template_tags
    #   <p>Tags to assign to the template. When the <code>StartIncident</code> API action is called,
    #         Incident Manager assigns the tags specified in the template to the incident. To call this action,
    #         you must also have permission to call the <code>TagResource</code> API action for the incident
    #         record resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute integrations
    #   <p>Information about third-party services integrated into the response plan.</p>
    #   @return [Array<Types::Integration>]
    class UpdateResponsePlanOperationInput < Struct.new(
      :client_token,
      :arn,
      :display_name,
      :incident_template_title,
      :incident_template_impact,
      :incident_template_summary,
      :incident_template_dedupe_string,
      :incident_template_notification_targets,
      :chat_channel,
      :engagements,
      :actions,
      :incident_template_tags,
      :integrations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateResponsePlanOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A token that ensures that a client calls the operation only once with the specified
    #         details.</p>
    #   @return [String]
    # @!attribute incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline event.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The ID of the event to update. You can use <code>ListTimelineEvents</code> to find an
    #         event's ID.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The timestamp for when the event occurred.</p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of event. You can update events of type <code>Custom Event</code> and
    #           <code>Note</code>.</p>
    #   @return [String]
    # @!attribute event_data
    #   <p>A short description of the event.</p>
    #   @return [String]
    # @!attribute event_references
    #   <p>Updates all existing references in a <code>TimelineEvent</code>. A reference is an Amazon Web Services resource involved or associated with the incident. To specify a reference, enter
    #         its Amazon Resource Name (ARN). You can also specify a related item associated with that
    #         resource. For example, to specify an Amazon DynamoDB (DynamoDB) table as a
    #         resource, use its ARN. You can also specify an Amazon CloudWatch metric associated with
    #         the DynamoDB table as a related item.</p>
    #            <important>
    #               <p>This update action overrides all existing references. If you want to keep existing
    #           references, you must specify them in the call. If you don't, this action removes any
    #           existing references and enters only new references.</p>
    #            </important>
    #   @return [Array<Types::EventReference>]
    class UpdateTimelineEventOperationInput < Struct.new(
      :client_token,
      :incident_record_arn,
      :event_id,
      :event_time,
      :event_type,
      :event_data,
      :event_references,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateTimelineEventOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services
    #       service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
