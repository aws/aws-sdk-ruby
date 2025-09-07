# frozen_string_literal: true

# This is generated code!

module Aws::XRay
  # This module contains the types returned by client operations.
  module Types

    # <p>An alias for an edge.</p>
    # @!attribute name
    #   <p>The canonical name of the alias.</p>
    #   @return [String]
    # @!attribute names
    #   <p>A list of names for the alias, including the canonical name.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of the alias.</p>
    #   @return [String]
    class Alias < Struct.new(
      :name,
      :names,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Value of a segment annotation. Has one of three value types: Number, Boolean, or String.</p>
    # @!attribute number_value
    #   <p>Value for a Number annotation.</p>
    #   @return [Float]
    # @!attribute boolean_value
    #   <p>Value for a Boolean annotation.</p>
    #   @return [Boolean]
    # @!attribute string_value
    #   <p>Value for a String annotation.</p>
    #   @return [String]
    class AnnotationValue < Struct.new(
      :number_value,
      :boolean_value,
      :string_value,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class NumberValue < AnnotationValue; end
      class BooleanValue < AnnotationValue; end
      class StringValue < AnnotationValue; end
      class Unknown < AnnotationValue; end
    end

    # <p>The service within the service graph that has anomalously high fault rates. </p>
    # @!attribute service_id
    #   <p></p>
    #   @return [Types::ServiceId]
    class AnomalousService < Struct.new(
      :service_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of Availability Zones corresponding to the segments in a trace.</p>
    # @!attribute name
    #   <p>The name of a corresponding Availability Zone.</p>
    #   @return [String]
    class AvailabilityZoneDetail < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute timeout_count
    #   <p></p>
    #   @return [Integer]
    # @!attribute connection_refused_count
    #   <p></p>
    #   @return [Integer]
    # @!attribute http_code4_xx_count
    #   <p></p>
    #   @return [Integer]
    # @!attribute http_code5_xx_count
    #   <p></p>
    #   @return [Integer]
    # @!attribute unknown_host_count
    #   <p></p>
    #   @return [Integer]
    # @!attribute other_count
    #   <p></p>
    #   @return [Integer]
    class BackendConnectionErrors < Struct.new(
      :timeout_count,
      :connection_refused_count,
      :http_code4_xx_count,
      :http_code5_xx_count,
      :unknown_host_count,
      :other_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_ids
    #   <p>Specify the trace IDs of requests for which to retrieve segments.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class BatchGetTracesRequest < Struct.new(
      :trace_ids,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traces
    #   <p>Full traces for the specified requests.</p>
    #   @return [Array<Types::Trace>]
    # @!attribute unprocessed_trace_ids
    #   <p>Trace IDs of requests that haven't been processed.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class BatchGetTracesResult < Struct.new(
      :traces,
      :unprocessed_trace_ids,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute retrieval_token
    #   <p>
    #   Retrieval token.
    #   </p>
    #   @return [String]
    class CancelTraceRetrievalRequest < Struct.new(
      :retrieval_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CancelTraceRetrievalResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The case-sensitive name of the new group. Default is a reserved name and names must
    #               be unique.</p>
    #   @return [String]
    # @!attribute filter_expression
    #   <p>The filter expression defining criteria by which to group traces.</p>
    #   @return [String]
    # @!attribute insights_configuration
    #   <p>The structure containing configurations related to insights.</p>
    #            <ul>
    #               <li>
    #                  <p>The InsightsEnabled boolean can be set to true to enable insights for the
    #                       new group or false to disable insights for the new group.</p>
    #               </li>
    #               <li>
    #                  <p>The NotificationsEnabled boolean can be set to true to enable insights
    #                       notifications for the new group. Notifications may only be enabled on a group
    #                       with InsightsEnabled set to true.</p>
    #               </li>
    #            </ul>
    #   @return [Types::InsightsConfiguration]
    # @!attribute tags
    #   <p>A map that contains one or more tag keys and tag values to attach to an X-Ray group.
    #               For more information about ways to use tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #                   resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of user-applied tags per resource: 50</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag key length: 128 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag value length: 256 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
    #                       / = + - and @</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services
    #                       use.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    class CreateGroupRequest < Struct.new(
      :group_name,
      :filter_expression,
      :insights_configuration,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The group that was created. Contains the name of the group that was created, the Amazon Resource Name
    #               (ARN) of the group that was generated based on the group name, the filter expression, and the insight
    #               configuration that was assigned to the group.</p>
    #   @return [Types::Group]
    class CreateGroupResult < Struct.new(
      :group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sampling_rule
    #   <p>The rule definition.</p>
    #   @return [Types::SamplingRule]
    # @!attribute tags
    #   <p>A map that contains one or more tag keys and tag values to attach to an X-Ray sampling
    #            rule. For more information about ways to use tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #               resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of user-applied tags per resource: 50</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag key length: 128 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag value length: 256 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
    #                  / = + - and @</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services
    #                  use.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    class CreateSamplingRuleRequest < Struct.new(
      :sampling_rule,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sampling_rule_record
    #   <p>The saved rule definition and metadata.</p>
    #   @return [Types::SamplingRuleRecord]
    class CreateSamplingRuleResult < Struct.new(
      :sampling_rule_record,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The case-sensitive name of the group.</p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The ARN of the group that was generated on creation.</p>
    #   @return [String]
    class DeleteGroupRequest < Struct.new(
      :group_name,
      :group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteGroupResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_name
    #   <p>The name of the resource policy to delete.</p>
    #   @return [String]
    # @!attribute policy_revision_id
    #   <p>Specifies a specific policy revision to delete. Provide a <code>PolicyRevisionId</code> to ensure an atomic delete operation. If the provided revision id does 
    #               not match the latest policy revision id, an <code>InvalidPolicyRevisionIdException</code> exception is returned.
    #           </p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :policy_name,
      :policy_revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcePolicyResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>
    #   @return [String]
    class DeleteSamplingRuleRequest < Struct.new(
      :rule_name,
      :rule_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sampling_rule_record
    #   <p>The deleted rule definition and metadata.</p>
    #   @return [Types::SamplingRuleRecord]
    class DeleteSamplingRuleResult < Struct.new(
      :sampling_rule_record,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a connection between two services. An edge can be a synchronous connection, such as typical
    #     call between client and service, or an asynchronous link, such as a Lambda function which retrieves an event from an
    #     SNS queue.</p>
    # @!attribute reference_id
    #   <p>Identifier of the edge. Unique within a service map.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The start time of the first segment on the edge.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the last segment on the edge.</p>
    #   @return [Time]
    # @!attribute summary_statistics
    #   <p>Response statistics for segments on the edge.</p>
    #   @return [Types::EdgeStatistics]
    # @!attribute response_time_histogram
    #   <p>A histogram that maps the spread of client response times on an edge. Only populated
    #                for synchronous edges.</p>
    #   @return [Array<Types::HistogramEntry>]
    # @!attribute aliases
    #   <p>Aliases for the edge.</p>
    #   @return [Array<Types::Alias>]
    # @!attribute edge_type
    #   <p>Describes an asynchronous connection, with a value of <code>link</code>.</p>
    #   @return [String]
    # @!attribute received_event_age_histogram
    #   <p>A histogram that maps the spread of event age when received by consumers. 
    #         Age is calculated each time an event is received. Only populated when <i>EdgeType</i> is 
    #         <code>link</code>.</p>
    #   @return [Array<Types::HistogramEntry>]
    class Edge < Struct.new(
      :reference_id,
      :start_time,
      :end_time,
      :summary_statistics,
      :response_time_histogram,
      :aliases,
      :edge_type,
      :received_event_age_histogram,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Response statistics for an edge.</p>
    # @!attribute ok_count
    #   <p>The number of requests that completed with a 2xx Success status code.</p>
    #   @return [Integer]
    # @!attribute error_statistics
    #   <p>Information about requests that failed with a 4xx Client Error status code.</p>
    #   @return [Types::ErrorStatistics]
    # @!attribute fault_statistics
    #   <p>Information about requests that failed with a 5xx Server Error status code.</p>
    #   @return [Types::FaultStatistics]
    # @!attribute total_count
    #   <p>The total number of completed requests.</p>
    #   @return [Integer]
    # @!attribute total_response_time
    #   <p>The aggregate response time of completed requests.</p>
    #   @return [Float]
    class EdgeStatistics < Struct.new(
      :ok_count,
      :error_statistics,
      :fault_statistics,
      :total_count,
      :total_response_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration document that specifies encryption configuration settings.</p>
    # @!attribute key_id
    #   <p>The ID of the KMS key used for encryption, if applicable.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The encryption status. While the status is <code>UPDATING</code>, X-Ray may encrypt data with a combination of the new and old settings.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of encryption. Set to <code>KMS</code> for encryption with KMS keys. Set to <code>NONE</code> for
    #         default encryption.</p>
    #   @return [String]
    class EncryptionConfig < Struct.new(
      :key_id,
      :status,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The root cause of a trace summary error.</p>
    # @!attribute services
    #   <p>A list of services corresponding to an error. A service identifies a segment and it
    #         contains a name, account ID, type, and inferred flag.</p>
    #   @return [Array<Types::ErrorRootCauseService>]
    # @!attribute client_impacting
    #   <p>A flag that denotes that the root cause impacts the trace client.</p>
    #   @return [Boolean]
    class ErrorRootCause < Struct.new(
      :services,
      :client_impacting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of segments and corresponding subsegments associated to a trace summary
    #       error.</p>
    # @!attribute name
    #   <p>The name of the entity.</p>
    #   @return [String]
    # @!attribute exceptions
    #   <p>The types and messages of the exceptions.</p>
    #   @return [Array<Types::RootCauseException>]
    # @!attribute remote
    #   <p>A flag that denotes a remote subsegment.</p>
    #   @return [Boolean]
    class ErrorRootCauseEntity < Struct.new(
      :name,
      :exceptions,
      :remote,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of fields identifying the services in a trace summary error.</p>
    # @!attribute name
    #   <p>The service name.</p>
    #   @return [String]
    # @!attribute names
    #   <p>A collection of associated service names.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type associated to the service.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID associated to the service.</p>
    #   @return [String]
    # @!attribute entity_path
    #   <p>The path of root cause entities found on the service. </p>
    #   @return [Array<Types::ErrorRootCauseEntity>]
    # @!attribute inferred
    #   <p>A Boolean value indicating if the service is inferred from the trace.</p>
    #   @return [Boolean]
    class ErrorRootCauseService < Struct.new(
      :name,
      :names,
      :type,
      :account_id,
      :entity_path,
      :inferred,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about requests that failed with a 4xx Client Error status code.</p>
    # @!attribute throttle_count
    #   <p>The number of requests that failed with a 429 throttling status code.</p>
    #   @return [Integer]
    # @!attribute other_count
    #   <p>The number of requests that failed with untracked 4xx Client Error status
    #         codes.</p>
    #   @return [Integer]
    # @!attribute total_count
    #   <p>The total number of requests that failed with a 4xx Client Error status code.</p>
    #   @return [Integer]
    class ErrorStatistics < Struct.new(
      :throttle_count,
      :other_count,
      :total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The root cause information for a trace summary fault.</p>
    # @!attribute services
    #   <p>A list of corresponding services. A service identifies a segment and it contains a
    #         name, account ID, type, and inferred flag.</p>
    #   @return [Array<Types::FaultRootCauseService>]
    # @!attribute client_impacting
    #   <p>A flag that denotes that the root cause impacts the trace client.</p>
    #   @return [Boolean]
    class FaultRootCause < Struct.new(
      :services,
      :client_impacting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of segments and corresponding subsegments associated to a trace summary
    #       fault error.</p>
    # @!attribute name
    #   <p>The name of the entity.</p>
    #   @return [String]
    # @!attribute exceptions
    #   <p>The types and messages of the exceptions.</p>
    #   @return [Array<Types::RootCauseException>]
    # @!attribute remote
    #   <p>A flag that denotes a remote subsegment.</p>
    #   @return [Boolean]
    class FaultRootCauseEntity < Struct.new(
      :name,
      :exceptions,
      :remote,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of fields identifying the services in a trace summary fault.</p>
    # @!attribute name
    #   <p>The service name.</p>
    #   @return [String]
    # @!attribute names
    #   <p>A collection of associated service names.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type associated to the service.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID associated to the service.</p>
    #   @return [String]
    # @!attribute entity_path
    #   <p>The path of root cause entities found on the service. </p>
    #   @return [Array<Types::FaultRootCauseEntity>]
    # @!attribute inferred
    #   <p>A Boolean value indicating if the service is inferred from the trace.</p>
    #   @return [Boolean]
    class FaultRootCauseService < Struct.new(
      :name,
      :names,
      :type,
      :account_id,
      :entity_path,
      :inferred,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about requests that failed with a 5xx Server Error status code.</p>
    # @!attribute other_count
    #   <p>The number of requests that failed with untracked 5xx Server Error status
    #         codes.</p>
    #   @return [Integer]
    # @!attribute total_count
    #   <p>The total number of requests that failed with a 5xx Server Error status code.</p>
    #   @return [Integer]
    class FaultStatistics < Struct.new(
      :other_count,
      :total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The predicted high and low fault count. This is used to determine if a service has
    #          become anomalous and if an insight should be created.</p>
    # @!attribute fault_count_high
    #   <p>The upper limit of fault counts for a service.</p>
    #   @return [Integer]
    # @!attribute fault_count_low
    #   <p>The lower limit of fault counts for a service.</p>
    #   @return [Integer]
    class ForecastStatistics < Struct.new(
      :fault_count_high,
      :fault_count_low,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetEncryptionConfigRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_config
    #   <p>The encryption configuration document.</p>
    #   @return [Types::EncryptionConfig]
    class GetEncryptionConfigResult < Struct.new(
      :encryption_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The case-sensitive name of the group.</p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The ARN of the group that was generated on creation.</p>
    #   @return [String]
    class GetGroupRequest < Struct.new(
      :group_name,
      :group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The group that was requested. Contains the name of the group, the ARN of the group,
    #               the filter expression, and the insight configuration assigned to the group.</p>
    #   @return [Types::Group]
    class GetGroupResult < Struct.new(
      :group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetGroupsRequest < Struct.new(
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute groups
    #   <p>The collection of all active groups.</p>
    #   @return [Array<Types::GroupSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetGroupsResult < Struct.new(
      :groups,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #   Specify the pagination token returned by a previous request to retrieve the next page of indexes.
    #     
    #     
    #   </p>
    #   @return [String]
    class GetIndexingRulesRequest < Struct.new(
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute indexing_rules
    #   <p>
    #       Retrieves all indexing rules.</p>
    #   @return [Array<Types::IndexingRule>]
    # @!attribute next_token
    #   <p>
    #         Specify the pagination token returned by a previous request to retrieve the next page of indexes.
    #       </p>
    #   @return [String]
    class GetIndexingRulesResult < Struct.new(
      :indexing_rules,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute insight_id
    #   <p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Used to retrieve at most the specified value of events.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token returned by a previous request to retrieve the next page of events. </p>
    #   @return [String]
    class GetInsightEventsRequest < Struct.new(
      :insight_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute insight_events
    #   <p>A detailed description of the event. This includes the time of the event, client and
    #            root cause impact statistics, and the top anomalous service at the time of the
    #            event.</p>
    #   @return [Array<Types::InsightEvent>]
    # @!attribute next_token
    #   <p>Use this token to retrieve the next page of insight events.</p>
    #   @return [String]
    class GetInsightEventsResult < Struct.new(
      :insight_events,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute insight_id
    #   <p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The estimated start time of the insight, in Unix time seconds. The StartTime is inclusive of the value
    #            provided and can't be more than 30 days old.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The estimated end time of the insight, in Unix time seconds. The EndTime is exclusive of the value provided.
    #            The time range between the start time and end time can't be more than six hours. </p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>Specify the pagination token returned by a previous request to retrieve the next page of results. </p>
    #   @return [String]
    class GetInsightImpactGraphRequest < Struct.new(
      :insight_id,
      :start_time,
      :end_time,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute insight_id
    #   <p>The insight's unique identifier.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The provided start time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The provided end time. </p>
    #   @return [Time]
    # @!attribute service_graph_start_time
    #   <p>The time, in Unix seconds, at which the service graph started.</p>
    #   @return [Time]
    # @!attribute service_graph_end_time
    #   <p>The time, in Unix seconds, at which the service graph ended.</p>
    #   @return [Time]
    # @!attribute services
    #   <p>The Amazon Web Services instrumented services related to the insight.</p>
    #   @return [Array<Types::InsightImpactGraphService>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetInsightImpactGraphResult < Struct.new(
      :insight_id,
      :start_time,
      :end_time,
      :service_graph_start_time,
      :service_graph_end_time,
      :services,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute insight_id
    #   <p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>
    #   @return [String]
    class GetInsightRequest < Struct.new(
      :insight_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute insight
    #   <p>The summary information of an insight.</p>
    #   @return [Types::Insight]
    class GetInsightResult < Struct.new(
      :insight,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute states
    #   <p>The list of insight states. </p>
    #   @return [Array<String>]
    # @!attribute group_arn
    #   <p>The Amazon Resource Name (ARN) of the group. Required if the GroupName isn't provided.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group. Required if the GroupARN isn't provided.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The beginning of the time frame in which the insights started. The start time can't be more than 30 days
    #            old.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time frame in which the insights ended. The end time can't be more than 30 days old.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of results to display.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetInsightSummariesRequest < Struct.new(
      :states,
      :group_arn,
      :group_name,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute insight_summaries
    #   <p>The summary of each insight within the group matching the provided filters. The summary
    #            contains the InsightID, start and end time, the root cause service, the root cause and
    #            client impact statistics, the top anomalous services, and the status of the insight.</p>
    #   @return [Array<Types::InsightSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetInsightSummariesResult < Struct.new(
      :insight_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute retrieval_token
    #   <p>
    #       Retrieval token.
    #     </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #       Specify the pagination token returned by a previous request to retrieve the next page of indexes.
    #       
    #       
    #     </p>
    #   @return [String]
    class GetRetrievedTracesGraphRequest < Struct.new(
      :retrieval_token,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute retrieval_status
    #   <p>
    #   Status of the retrieval.
    #   </p>
    #   @return [String]
    # @!attribute services
    #   <p>
    #   Retrieved services.
    #   </p>
    #   @return [Array<Types::RetrievedService>]
    # @!attribute next_token
    #   <p>
    #       Specify the pagination token returned by a previous request to retrieve the next page of indexes.
    #       
    #       
    #     </p>
    #   @return [String]
    class GetRetrievedTracesGraphResult < Struct.new(
      :retrieval_status,
      :services,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetSamplingRulesRequest < Struct.new(
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sampling_rule_records
    #   <p>Rule definitions and metadata.</p>
    #   @return [Array<Types::SamplingRuleRecord>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetSamplingRulesResult < Struct.new(
      :sampling_rule_records,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetSamplingStatisticSummariesRequest < Struct.new(
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sampling_statistic_summaries
    #   <p>Information about the number of requests instrumented for each sampling
    #            rule.</p>
    #   @return [Array<Types::SamplingStatisticSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetSamplingStatisticSummariesResult < Struct.new(
      :sampling_statistic_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sampling_statistics_documents
    #   <p>Information about rules that the service is using to sample requests.</p>
    #   @return [Array<Types::SamplingStatisticsDocument>]
    # @!attribute sampling_boost_statistics_documents
    #   <p>Information about rules that the service is using to boost sampling rate.</p>
    #   @return [Array<Types::SamplingBoostStatisticsDocument>]
    class GetSamplingTargetsRequest < Struct.new(
      :sampling_statistics_documents,
      :sampling_boost_statistics_documents,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sampling_target_documents
    #   <p>Updated rules that the service should use to sample requests.</p>
    #   @return [Array<Types::SamplingTargetDocument>]
    # @!attribute last_rule_modification
    #   <p>The last time a user changed the sampling rule configuration. If
    #            the sampling rule configuration changed since the service last retrieved it, the service
    #            should call <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingRules.html">GetSamplingRules</a> to get the latest version.</p>
    #   @return [Time]
    # @!attribute unprocessed_statistics
    #   <p>Information about <a href="https://docs.aws.amazon.com/xray/latest/api/API_SamplingStatisticsDocument.html">SamplingStatisticsDocument</a> that X-Ray could not
    #            process.</p>
    #   @return [Array<Types::UnprocessedStatistics>]
    # @!attribute unprocessed_boost_statistics
    #   <p>Information about <a href="https://docs.aws.amazon.com/xray/latest/api/API_SamplingBoostStatisticsDocument.html">SamplingBoostStatisticsDocument</a> that X-Ray could not
    #            process.</p>
    #   @return [Array<Types::UnprocessedStatistics>]
    class GetSamplingTargetsResult < Struct.new(
      :sampling_target_documents,
      :last_rule_modification,
      :unprocessed_statistics,
      :unprocessed_boost_statistics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time frame for which to generate a graph.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the timeframe for which to generate a graph.</p>
    #   @return [Time]
    # @!attribute group_name
    #   <p>The name of a group based on which you want to generate a graph.</p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The Amazon Resource Name (ARN) of a group based on which you want to generate a graph.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetServiceGraphRequest < Struct.new(
      :start_time,
      :end_time,
      :group_name,
      :group_arn,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time frame for which the graph was generated.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time frame for which the graph was generated.</p>
    #   @return [Time]
    # @!attribute services
    #   <p>The services that have processed a traced request during the specified time
    #         frame.</p>
    #   @return [Array<Types::Service>]
    # @!attribute contains_old_group_versions
    #   <p>A flag indicating whether the group's filter expression has been consistent, or
    #         if the returned service graph may show traces from an older version of the group's filter
    #         expression.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetServiceGraphResult < Struct.new(
      :start_time,
      :end_time,
      :services,
      :contains_old_group_versions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:contains_old_group_versions] = false unless options.key?(:contains_old_group_versions)
        super
      end
    end

    # @!attribute start_time
    #   <p>The start of the time frame for which to aggregate statistics.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time frame for which to aggregate statistics.</p>
    #   @return [Time]
    # @!attribute group_name
    #   <p>The case-sensitive name of the group for which to pull statistics from.</p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The Amazon Resource Name (ARN) of the group for which to pull statistics from.</p>
    #   @return [String]
    # @!attribute entity_selector_expression
    #   <p>A filter expression defining entities that will be aggregated for statistics.
    #               Supports ID, service, and edge functions. If no selector expression is specified, edge
    #               statistics are returned. </p>
    #   @return [String]
    # @!attribute period
    #   <p>Aggregation period in seconds.</p>
    #   @return [Integer]
    # @!attribute forecast_statistics
    #   <p>The forecasted high and low fault count values. Forecast enabled requests require the
    #               EntitySelectorExpression ID be provided.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetTimeSeriesServiceStatisticsRequest < Struct.new(
      :start_time,
      :end_time,
      :group_name,
      :group_arn,
      :entity_selector_expression,
      :period,
      :forecast_statistics,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_series_service_statistics
    #   <p>The collection of statistics.</p>
    #   @return [Array<Types::TimeSeriesServiceStatistics>]
    # @!attribute contains_old_group_versions
    #   <p>A flag indicating whether or not a group's filter expression has been consistent, or if a returned
    #               aggregation might show statistics from an older version of the group's filter expression.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetTimeSeriesServiceStatisticsResult < Struct.new(
      :time_series_service_statistics,
      :contains_old_group_versions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:contains_old_group_versions] = false unless options.key?(:contains_old_group_versions)
        super
      end
    end

    # @!attribute trace_ids
    #   <p>Trace IDs of requests for which to generate a service graph.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetTraceGraphRequest < Struct.new(
      :trace_ids,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute services
    #   <p>The services that have processed one of the specified requests.</p>
    #   @return [Array<Types::Service>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class GetTraceGraphResult < Struct.new(
      :services,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetTraceSegmentDestinationRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination
    #   <p>
    #   Retrieves the current destination.
    #   </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #       Status of the retrieval.
    #     </p>
    #   @return [String]
    class GetTraceSegmentDestinationResult < Struct.new(
      :destination,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time frame for which to retrieve traces.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time frame for which to retrieve traces.</p>
    #   @return [Time]
    # @!attribute time_range_type
    #   <p>Query trace summaries by TraceId (trace start time), Event (trace update time), or Service (trace segment end time).</p>
    #   @return [String]
    # @!attribute sampling
    #   <p>Set to <code>true</code> to get summaries for only a subset of available
    #         traces.</p>
    #   @return [Boolean]
    # @!attribute sampling_strategy
    #   <p>A parameter to indicate whether to enable sampling on trace summaries. Input parameters are Name and
    #               Value.</p>
    #   @return [Types::SamplingStrategy]
    # @!attribute filter_expression
    #   <p>Specify a filter expression to retrieve trace summaries for services or requests that
    #         meet certain requirements.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specify the pagination token returned by a previous request to retrieve the next page
    #         of results.</p>
    #   @return [String]
    class GetTraceSummariesRequest < Struct.new(
      :start_time,
      :end_time,
      :time_range_type,
      :sampling,
      :sampling_strategy,
      :filter_expression,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_summaries
    #   <p>Trace IDs and annotations for traces that were found in the specified time
    #         frame.</p>
    #   @return [Array<Types::TraceSummary>]
    # @!attribute approximate_time
    #   <p>The start time of this page of results.</p>
    #   @return [Time]
    # @!attribute traces_processed_count
    #   <p>The total number of traces processed, including traces that did not match the specified
    #         filter expression.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the requested time frame contained more than one page of results, you can use this token to retrieve the
    #         next page. The first page contains the most recent results, closest to the end of the time frame.</p>
    #   @return [String]
    class GetTraceSummariesResult < Struct.new(
      :trace_summaries,
      :approximate_time,
      :traces_processed_count,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    # The relation between two services.
    # </p>
    # @!attribute reference_type
    #   <p>
    #   Relationship of a trace to the corresponding service.
    #   </p>
    #   @return [String]
    # @!attribute source_trace_id
    #   <p>
    #   Source trace of a link relationship.
    #   </p>
    #   @return [String]
    # @!attribute destination_trace_ids
    #   <p>
    #   Destination traces of a link relationship.
    #   </p>
    #   @return [Array<String>]
    class GraphLink < Struct.new(
      :reference_type,
      :source_trace_id,
      :destination_trace_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details and metadata for a group.</p>
    # @!attribute group_name
    #   <p>The unique case-sensitive name of the group.</p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The Amazon Resource Name (ARN) of the group generated based on the GroupName.</p>
    #   @return [String]
    # @!attribute filter_expression
    #   <p>The filter expression defining the parameters to include traces.</p>
    #   @return [String]
    # @!attribute insights_configuration
    #   <p>The structure containing configurations related to insights.</p>
    #            <ul>
    #               <li>
    #                  <p>The InsightsEnabled boolean can be set to true to enable insights for the
    #                       group or false to disable insights for the group.</p>
    #               </li>
    #               <li>
    #                  <p>The NotificationsEnabled boolean can be set to true to enable insights
    #                       notifications through Amazon EventBridge for the group.</p>
    #               </li>
    #            </ul>
    #   @return [Types::InsightsConfiguration]
    class Group < Struct.new(
      :group_name,
      :group_arn,
      :filter_expression,
      :insights_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details for a group without metadata.</p>
    # @!attribute group_name
    #   <p>The unique case-sensitive name of the group.</p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The ARN of the group generated based on the GroupName.</p>
    #   @return [String]
    # @!attribute filter_expression
    #   <p>The filter expression defining the parameters to include traces.</p>
    #   @return [String]
    # @!attribute insights_configuration
    #   <p>The structure containing configurations related to insights.</p>
    #            <ul>
    #               <li>
    #                  <p>The InsightsEnabled boolean can be set to true to enable insights for the
    #                       group or false to disable insights for the group.</p>
    #               </li>
    #               <li>
    #                  <p>The NotificationsEnabled boolean can be set to true to enable insights notifications.
    #                       Notifications can only be enabled on a group with InsightsEnabled set to true.</p>
    #               </li>
    #            </ul>
    #   @return [Types::InsightsConfiguration]
    class GroupSummary < Struct.new(
      :group_name,
      :group_arn,
      :filter_expression,
      :insights_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An entry in a histogram for a statistic. A histogram maps the range of observed values
    #       on the X axis, and the prevalence of each value on the Y axis.</p>
    # @!attribute value
    #   <p>The value of the entry.</p>
    #   @return [Float]
    # @!attribute count
    #   <p>The prevalence of the entry.</p>
    #   @return [Integer]
    class HistogramEntry < Struct.new(
      :value,
      :count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # <p>Information about an HTTP request.</p>
    # @!attribute http_url
    #   <p>The request URL.</p>
    #   @return [String]
    # @!attribute http_status
    #   <p>The response status.</p>
    #   @return [Integer]
    # @!attribute http_method
    #   <p>The request method.</p>
    #   @return [String]
    # @!attribute user_agent
    #   <p>The request's user agent string.</p>
    #   @return [String]
    # @!attribute client_ip
    #   <p>The IP address of the requestor.</p>
    #   @return [String]
    class Http < Struct.new(
      :http_url,
      :http_status,
      :http_method,
      :user_agent,
      :client_ip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    # Rule used to determine the server-side sampling rate for spans ingested through the CloudWatchLogs destination and indexed by X-Ray.
    # </p>
    # @!attribute name
    #   <p>
    #     The name of the indexing rule.
    #   </p>
    #   @return [String]
    # @!attribute modified_at
    #   <p>
    #   Displays when the rule was last modified, in Unix time seconds.
    #   </p>
    #   @return [Time]
    # @!attribute rule
    #   <p>
    #     The indexing rule.
    #   </p>
    #   @return [Types::IndexingRuleValue]
    class IndexingRule < Struct.new(
      :name,
      :modified_at,
      :rule,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   The indexing rule configuration.
    # </p>
    # @!attribute probabilistic
    #   <p>
    #     Indexing rule configuration that is used to probabilistically  sample traceIds.
    #   </p>
    #   @return [Types::ProbabilisticRuleValue]
    class IndexingRuleValue < Struct.new(
      :probabilistic,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Probabilistic < IndexingRuleValue; end
      class Unknown < IndexingRuleValue; end
    end

    # <p>
    #   Update to an indexing rule.
    # </p>
    # @!attribute probabilistic
    #   <p>
    #       Indexing rule configuration that is used to probabilistically  sample traceIds.
    #     </p>
    #   @return [Types::ProbabilisticRuleValueUpdate]
    class IndexingRuleValueUpdate < Struct.new(
      :probabilistic,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Probabilistic < IndexingRuleValueUpdate; end
      class Unknown < IndexingRuleValueUpdate; end
    end

    # <p>When fault rates go outside of the expected range, X-Ray creates an insight. Insights
    #          tracks emergent issues within your applications.</p>
    # @!attribute insight_id
    #   <p>The insights unique identifier. </p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The Amazon Resource Name (ARN) of the group that the insight belongs to.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group  that the insight belongs to.</p>
    #   @return [String]
    # @!attribute root_cause_service_id
    #   <p></p>
    #   @return [Types::ServiceId]
    # @!attribute categories
    #   <p>The categories that label and describe the type of insight.</p>
    #   @return [Array<String>]
    # @!attribute state
    #   <p>The current state of the insight.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time, in Unix seconds, at which the insight began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time, in Unix seconds, at which the insight ended.</p>
    #   @return [Time]
    # @!attribute summary
    #   <p>A brief description of the insight.</p>
    #   @return [String]
    # @!attribute client_request_impact_statistics
    #   <p>The impact statistics of the client side service. This includes the number of requests to the client service
    #            and whether the requests were faults or okay.</p>
    #   @return [Types::RequestImpactStatistics]
    # @!attribute root_cause_service_request_impact_statistics
    #   <p>The impact statistics of the root cause service. This includes the number of requests to the client service
    #            and whether the requests were faults or okay.</p>
    #   @return [Types::RequestImpactStatistics]
    # @!attribute top_anomalous_services
    #   <p>The service within the insight that is most impacted by the incident.</p>
    #   @return [Array<Types::AnomalousService>]
    class Insight < Struct.new(
      :insight_id,
      :group_arn,
      :group_name,
      :root_cause_service_id,
      :categories,
      :state,
      :start_time,
      :end_time,
      :summary,
      :client_request_impact_statistics,
      :root_cause_service_request_impact_statistics,
      :top_anomalous_services,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>X-Ray reevaluates insights periodically until they are resolved, and records each intermediate state in an
    #          event. You can review incident events in the Impact Timeline on the Inspect page in the X-Ray console.</p>
    # @!attribute summary
    #   <p>A brief description of the event.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The time, in Unix seconds, at which the event was recorded.</p>
    #   @return [Time]
    # @!attribute client_request_impact_statistics
    #   <p>The impact statistics of the client side service. This includes the number of requests to the client service
    #            and whether the requests were faults or okay.</p>
    #   @return [Types::RequestImpactStatistics]
    # @!attribute root_cause_service_request_impact_statistics
    #   <p>The impact statistics of the root cause service. This includes the number of requests to the client service
    #            and whether the requests were faults or okay.</p>
    #   @return [Types::RequestImpactStatistics]
    # @!attribute top_anomalous_services
    #   <p>The service during the event that is most impacted by the incident.</p>
    #   @return [Array<Types::AnomalousService>]
    class InsightEvent < Struct.new(
      :summary,
      :event_time,
      :client_request_impact_statistics,
      :root_cause_service_request_impact_statistics,
      :top_anomalous_services,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The connection between two service in an insight impact graph.</p>
    # @!attribute reference_id
    #   <p>Identifier of the edge. Unique within a service map.</p>
    #   @return [Integer]
    class InsightImpactGraphEdge < Struct.new(
      :reference_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an application that processed requests, users that made requests, or downstream services,
    #          resources, and applications that an application used. </p>
    # @!attribute reference_id
    #   <p>Identifier for the service. Unique within the service map.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>Identifier for the service. Unique within the service map.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services Resource - The type of an Amazon Web Services resource. For example, AWS::EC2::Instance for an application running
    #                  on Amazon EC2 or AWS::DynamoDB::Table for an Amazon DynamoDB table that the application used. </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services Service - The type of an Amazon Web Services service. For example, AWS::DynamoDB for downstream calls to Amazon
    #                  DynamoDB that didn't target a specific table. </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services Service - The type of an Amazon Web Services service. For example, AWS::DynamoDB for downstream calls to Amazon
    #                  DynamoDB that didn't target a specific table. </p>
    #               </li>
    #               <li>
    #                  <p>remote - A downstream service of indeterminate type.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The canonical name of the service.</p>
    #   @return [String]
    # @!attribute names
    #   <p>A list of names for the service, including the canonical name.</p>
    #   @return [Array<String>]
    # @!attribute account_id
    #   <p>Identifier of the Amazon Web Services account in which the service runs.</p>
    #   @return [String]
    # @!attribute edges
    #   <p>Connections to downstream services.</p>
    #   @return [Array<Types::InsightImpactGraphEdge>]
    class InsightImpactGraphService < Struct.new(
      :reference_id,
      :type,
      :name,
      :names,
      :account_id,
      :edges,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information that describes an insight.</p>
    # @!attribute insight_id
    #   <p>The insights unique identifier. </p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The Amazon Resource Name (ARN) of the group that the insight belongs to.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group  that the insight belongs to.</p>
    #   @return [String]
    # @!attribute root_cause_service_id
    #   <p></p>
    #   @return [Types::ServiceId]
    # @!attribute categories
    #   <p> Categories The categories that label and describe the type of insight.</p>
    #   @return [Array<String>]
    # @!attribute state
    #   <p>The current state of the insight.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time, in Unix seconds, at which the insight began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time, in Unix seconds, at which the insight ended.</p>
    #   @return [Time]
    # @!attribute summary
    #   <p>A brief description of the insight.</p>
    #   @return [String]
    # @!attribute client_request_impact_statistics
    #   <p>The impact statistics of the client side service. This includes the number of requests
    #            to the client service and whether the requests were faults or okay. </p>
    #   @return [Types::RequestImpactStatistics]
    # @!attribute root_cause_service_request_impact_statistics
    #   <p>The impact statistics of the root cause service. This includes the number of requests to
    #            the client service and whether the requests were faults or okay. </p>
    #   @return [Types::RequestImpactStatistics]
    # @!attribute top_anomalous_services
    #   <p>The service within the insight that is most impacted by the incident.</p>
    #   @return [Array<Types::AnomalousService>]
    # @!attribute last_update_time
    #   <p>The time, in Unix seconds, that the insight was last updated.</p>
    #   @return [Time]
    class InsightSummary < Struct.new(
      :insight_id,
      :group_arn,
      :group_name,
      :root_cause_service_id,
      :categories,
      :state,
      :start_time,
      :end_time,
      :summary,
      :client_request_impact_statistics,
      :root_cause_service_request_impact_statistics,
      :top_anomalous_services,
      :last_update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure containing configurations related to insights.</p>
    # @!attribute insights_enabled
    #   <p>Set the InsightsEnabled value to true to enable insights or false to disable
    #               insights.</p>
    #   @return [Boolean]
    # @!attribute notifications_enabled
    #   <p>Set the NotificationsEnabled value to true to enable insights notifications. Notifications can only be
    #               enabled on a group with InsightsEnabled set to true.</p>
    #   @return [Boolean]
    class InsightsConfiguration < Struct.new(
      :insights_enabled,
      :notifications_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of EC2 instance IDs corresponding to the segments in a trace. </p>
    # @!attribute id
    #   <p>The ID of a corresponding EC2 instance.</p>
    #   @return [String]
    class InstanceIdDetail < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A policy revision id was provided which does not match the latest policy revision. This exception is also 
    #     if a policy revision id of 0 is provided via <code>PutResourcePolicy</code> and a policy with the same name already exists.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPolicyRevisionIdException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request is missing required parameters or has invalid parameters.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Not currently supported.</p>
    #   @return [String]
    class ListResourcePoliciesRequest < Struct.new(
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_policies
    #   <p>The list of resource policies in the target Amazon Web Services account.</p>
    #   @return [Array<Types::ResourcePolicy>]
    # @!attribute next_token
    #   <p>Pagination token. Not currently supported.</p>
    #   @return [String]
    class ListResourcePoliciesResult < Struct.new(
      :resource_policies,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute retrieval_token
    #   <p>
    #   Retrieval token.
    #   </p>
    #   @return [String]
    # @!attribute trace_format
    #   <p>
    #   Format of the requested traces.
    #   </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #       Specify the pagination token returned by a previous request to retrieve the next page of indexes.
    #       
    #       
    #     </p>
    #   @return [String]
    class ListRetrievedTracesRequest < Struct.new(
      :retrieval_token,
      :trace_format,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute retrieval_status
    #   <p>
    #       Status of the retrieval.
    #     </p>
    #   @return [String]
    # @!attribute trace_format
    #   <p>
    #       Format of the requested traces.
    #     </p>
    #   @return [String]
    # @!attribute traces
    #   <p>
    #   Full traces for the specified requests.
    #   </p>
    #   @return [Array<Types::RetrievedTrace>]
    # @!attribute next_token
    #   <p>
    #       Specify the pagination token returned by a previous request to retrieve the next page of indexes.
    #       
    #       
    #     </p>
    #   @return [String]
    class ListRetrievedTracesResult < Struct.new(
      :retrieval_status,
      :trace_format,
      :traces,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token. If multiple pages of results are returned, use the <code>NextToken</code> value returned with 
    #       the current page of results as the value of this parameter to get the next page of results.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags, as key and value pairs, that is associated with the specified X-Ray group or sampling rule.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>A pagination token. If multiple pages of results are returned, use the <code>NextToken</code> value returned with 
    #         the current page of results to get the next page of results.</p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The provided resource policy would prevent the caller of this request from calling PutResourcePolicy in the future.</p>
    # @!attribute message
    #   @return [String]
    class LockoutPreventionException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Invalid policy document provided in request.</p>
    # @!attribute message
    #   @return [String]
    class MalformedPolicyDocumentException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exceeded the maximum number of resource policies for a target Amazon Web Services account.</p>
    # @!attribute message
    #   @return [String]
    class PolicyCountLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exceeded the maximum size for a resource policy.</p>
    # @!attribute message
    #   @return [String]
    class PolicySizeLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   The indexing rule configuration for probabilistic sampling.
    # </p>
    # @!attribute desired_sampling_percentage
    #   <p>
    #     Configured sampling percentage of traceIds. Note that sampling can be subject to limits to ensure completeness of data.
    #   </p>
    #   @return [Float]
    # @!attribute actual_sampling_percentage
    #   <p>
    #     Applied sampling percentage of traceIds. 
    #   </p>
    #   @return [Float]
    class ProbabilisticRuleValue < Struct.new(
      :desired_sampling_percentage,
      :actual_sampling_percentage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   Update to the indexing rule configuration for probabilistic sampling.
    # </p>
    # @!attribute desired_sampling_percentage
    #   <p>
    #     Configured sampling percentage of traceIds. Note that sampling can be subject to limits to ensure completeness of data.
    #   </p>
    #   @return [Float]
    class ProbabilisticRuleValueUpdate < Struct.new(
      :desired_sampling_percentage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_id
    #   <p>An Amazon Web Services KMS key in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Alias</b> - The name of the key. For example,
    #               <code>alias/MyKey</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Key ID</b> - The KMS key ID of the key. For example,
    #             <code>ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>. Amazon Web Services X-Ray does not support asymmetric KMS keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ARN</b> - The full Amazon Resource Name of the key ID or alias.
    #             For example,
    #               <code>arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>.
    #             Use this format to specify a key in a different account.</p>
    #               </li>
    #            </ul>
    #            <p>Omit this key if you set <code>Type</code> to <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of encryption. Set to <code>KMS</code> to use your own key for encryption. Set
    #         to <code>NONE</code> for default encryption.</p>
    #   @return [String]
    class PutEncryptionConfigRequest < Struct.new(
      :key_id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_config
    #   <p>The new encryption configuration.</p>
    #   @return [Types::EncryptionConfig]
    class PutEncryptionConfigResult < Struct.new(
      :encryption_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_name
    #   <p>The name of the resource policy. Must be unique within a specific Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The resource policy document, which can be up to 5kb in size.</p>
    #   @return [String]
    # @!attribute policy_revision_id
    #   <p>Specifies a specific policy revision, to ensure an atomic create operation. By default the resource policy is created if it does not exist, or updated with an incremented revision id. 
    #               The revision id is unique to each policy in the account.</p>
    #            <p>If the policy revision id does not match the latest revision id, the operation will fail with an <code>InvalidPolicyRevisionIdException</code> exception. You can also provide a 
    #               <code>PolicyRevisionId</code> of 0. In this case, the operation will fail with an <code>InvalidPolicyRevisionIdException</code> exception if a resource policy with the same name already exists.
    #           </p>
    #   @return [String]
    # @!attribute bypass_policy_lockout_check
    #   <p>A flag to indicate whether to bypass the resource policy lockout safety check.</p>
    #            <important>
    #               <p>Setting this value to true increases the risk that the policy becomes unmanageable. Do not set this value to true indiscriminately.</p>
    #            </important>
    #            <p>Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent <code>PutResourcePolicy</code> request.</p>
    #            <p>The default value is false.</p>
    #   @return [Boolean]
    class PutResourcePolicyRequest < Struct.new(
      :policy_name,
      :policy_document,
      :policy_revision_id,
      :bypass_policy_lockout_check,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_policy
    #   <p>The resource policy document, as provided in the <code>PutResourcePolicyRequest</code>.</p>
    #   @return [Types::ResourcePolicy]
    class PutResourcePolicyResult < Struct.new(
      :resource_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute telemetry_records
    #   <p></p>
    #   @return [Array<Types::TelemetryRecord>]
    # @!attribute ec2_instance_id
    #   <p></p>
    #   @return [String]
    # @!attribute hostname
    #   <p></p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p></p>
    #   @return [String]
    class PutTelemetryRecordsRequest < Struct.new(
      :telemetry_records,
      :ec2_instance_id,
      :hostname,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutTelemetryRecordsResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_segment_documents
    #   <p>A string containing a JSON document defining one or more segments or
    #         subsegments.</p>
    #   @return [Array<String>]
    class PutTraceSegmentsRequest < Struct.new(
      :trace_segment_documents,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unprocessed_trace_segments
    #   <p>Segments that failed processing.</p>
    #   @return [Array<Types::UnprocessedTraceSegment>]
    class PutTraceSegmentsResult < Struct.new(
      :unprocessed_trace_segments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics that describe how the incident has impacted a service.</p>
    # @!attribute fault_count
    #   <p>The number of requests that have resulted in a fault,</p>
    #   @return [Integer]
    # @!attribute ok_count
    #   <p>The number of successful requests.</p>
    #   @return [Integer]
    # @!attribute total_count
    #   <p>The total number of requests to the service.</p>
    #   @return [Integer]
    class RequestImpactStatistics < Struct.new(
      :fault_count,
      :ok_count,
      :total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of resources ARNs corresponding to the segments in a trace.</p>
    # @!attribute arn
    #   <p>The ARN of a corresponding resource.</p>
    #   @return [String]
    class ResourceARNDetail < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource was not found. Verify that the name or Amazon Resource Name (ARN) of the resource is
    #       correct.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource policy grants one or more Amazon Web Services services and accounts permissions 
    #             to access X-Ray. Each resource policy is associated with a 
    #             specific Amazon Web Services account.</p>
    # @!attribute policy_name
    #   <p>The name of the resource policy. Must be unique within a specific Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The resource policy document, which can be up to 5kb in size.</p>
    #   @return [String]
    # @!attribute policy_revision_id
    #   <p>Returns the current policy revision id for this policy name.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>When the policy was last updated, in Unix time seconds.</p>
    #   @return [Time]
    class ResourcePolicy < Struct.new(
      :policy_name,
      :policy_document,
      :policy_revision_id,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The root cause information for a response time warning.</p>
    # @!attribute services
    #   <p>A list of corresponding services. A service identifies a segment and contains a name,
    #         account ID, type, and inferred flag.</p>
    #   @return [Array<Types::ResponseTimeRootCauseService>]
    # @!attribute client_impacting
    #   <p>A flag that denotes that the root cause impacts the trace client.</p>
    #   @return [Boolean]
    class ResponseTimeRootCause < Struct.new(
      :services,
      :client_impacting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of segments and corresponding subsegments associated to a response time
    #       warning.</p>
    # @!attribute name
    #   <p>The name of the entity.</p>
    #   @return [String]
    # @!attribute coverage
    #   <p>The type and messages of the exceptions.</p>
    #   @return [Float]
    # @!attribute remote
    #   <p>A flag that denotes a remote subsegment.</p>
    #   @return [Boolean]
    class ResponseTimeRootCauseEntity < Struct.new(
      :name,
      :coverage,
      :remote,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of fields identifying the service in a response time warning.</p>
    # @!attribute name
    #   <p>The service name.</p>
    #   @return [String]
    # @!attribute names
    #   <p>A collection of associated service names.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type associated to the service.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID associated to the service.</p>
    #   @return [String]
    # @!attribute entity_path
    #   <p>The path of root cause entities found on the service. </p>
    #   @return [Array<Types::ResponseTimeRootCauseEntity>]
    # @!attribute inferred
    #   <p>A Boolean value indicating if the service is inferred from the trace.</p>
    #   @return [Boolean]
    class ResponseTimeRootCauseService < Struct.new(
      :name,
      :names,
      :type,
      :account_id,
      :entity_path,
      :inferred,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   Retrieved information about an application that processed requests, users that made requests, or downstream services, resources, and applications that an application used.
    # </p>
    # @!attribute service
    #   <p>Information about an application that processed requests, users that made requests, or downstream services,
    #         resources, and applications that an application used.</p>
    #   @return [Types::Service]
    # @!attribute links
    #   <p>
    #    Relation between two 2 services.
    #   </p>
    #   @return [Array<Types::GraphLink>]
    class RetrievedService < Struct.new(
      :service,
      :links,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   Retrieved collection of spans with matching trace IDs.
    # </p>
    # @!attribute id
    #   <p>
    #     The unique identifier for the span.
    #   </p>
    #   @return [String]
    # @!attribute duration
    #   <p>
    #     The length of time in seconds between the start time of the root span and the end time of the last span that completed.
    #   </p>
    #   @return [Float]
    # @!attribute spans
    #   <p>
    #     Spans that comprise the trace.
    #   </p>
    #   @return [Array<Types::Span>]
    class RetrievedTrace < Struct.new(
      :id,
      :duration,
      :spans,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The exception associated with a root cause.</p>
    # @!attribute name
    #   <p>The name of the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message of the exception.</p>
    #   @return [String]
    class RootCauseException < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of sampling rules.</p>
    # @!attribute message
    #   @return [String]
    class RuleLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Temporary boost sampling rate. X-Ray calculates sampling boost for each service based on the recent sampling boost stats of all services that called
    #       <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html">GetSamplingTargets</a>.</p>
    # @!attribute boost_rate
    #   <p>The calculated sampling boost rate for this service </p>
    #   @return [Float]
    # @!attribute boost_rate_ttl
    #   <p>When the sampling boost expires.</p>
    #   @return [Time]
    class SamplingBoost < Struct.new(
      :boost_rate,
      :boost_rate_ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:boost_rate] = 0 unless options.key?(:boost_rate)
        super
      end
    end

    # <p>Request anomaly stats for a single rule from a service. Results are for the last 10
    #       seconds unless the service has been assigned a longer reporting interval after a previous call
    #       to <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html">GetSamplingTargets</a>.</p>
    # @!attribute rule_name
    #   <p>The name of the sampling rule.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>Matches the <code>name</code> that the service uses to identify itself in segments.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The current time.</p>
    #   @return [Time]
    # @!attribute anomaly_count
    #   <p>The number of requests with anomaly.</p>
    #   @return [Integer]
    # @!attribute total_count
    #   <p>The number of requests that associated to the rule.</p>
    #   @return [Integer]
    # @!attribute sampled_anomaly_count
    #   <p>The number of requests with anomaly recorded.</p>
    #   @return [Integer]
    class SamplingBoostStatisticsDocument < Struct.new(
      :rule_name,
      :service_name,
      :timestamp,
      :anomaly_count,
      :total_count,
      :sampled_anomaly_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:anomaly_count] = 0 unless options.key?(:anomaly_count)
        options[:total_count] = 0 unless options.key?(:total_count)
        options[:sampled_anomaly_count] = 0 unless options.key?(:sampled_anomaly_count)
        super
      end
    end

    # <p>Enable temporary sampling rate increases when you detect anomalies to improve visibility.</p>
    # @!attribute max_rate
    #   <p>Defines max temporary sampling rate to apply when a boost is triggered.
    #         Calculated boost rate by X-Ray will be less than or equal to this max rate.</p>
    #   @return [Float]
    # @!attribute cooldown_window_minutes
    #   <p>Sets the time window (in minutes) in which only one sampling rate boost can be triggered.
    #         After a boost occurs, no further boosts are allowed until the next window.</p>
    #   @return [Integer]
    class SamplingRateBoost < Struct.new(
      :max_rate,
      :cooldown_window_minutes,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_rate] = 0 unless options.key?(:max_rate)
        options[:cooldown_window_minutes] = 0 unless options.key?(:cooldown_window_minutes)
        super
      end
    end

    # <p>A sampling rule that services use to decide whether to instrument a request. Rule
    #       fields can match properties of the service, or properties of a request. The service can ignore
    #       rules that don't match its properties.</p>
    # @!attribute rule_name
    #   <p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>Matches the ARN of the Amazon Web Services resource on which the service runs.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the sampling rule.</p>
    #   @return [Integer]
    # @!attribute fixed_rate
    #   <p>The percentage of matching requests to instrument, after the reservoir is
    #         exhausted.</p>
    #   @return [Float]
    # @!attribute reservoir_size
    #   <p>A fixed number of matching requests to instrument per second, prior to applying the
    #         fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.</p>
    #   @return [Integer]
    # @!attribute service_name
    #   <p>Matches the <code>name</code> that the service uses to identify itself in segments.</p>
    #   @return [String]
    # @!attribute service_type
    #   <p>Matches the <code>origin</code> that the service uses to identify its type in segments.</p>
    #   @return [String]
    # @!attribute host
    #   <p>Matches the hostname from a request URL.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Matches the HTTP method of a request.</p>
    #   @return [String]
    # @!attribute url_path
    #   <p>Matches the path from a request URL.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the sampling rule format (<code>1</code>).</p>
    #   @return [Integer]
    # @!attribute attributes
    #   <p>Matches attributes derived from the request.</p>
    #   @return [Hash<String, String>]
    # @!attribute sampling_rate_boost
    #   <p>Specifies the multiplier applied to the base sampling rate.
    #         This boost allows you to temporarily increase sampling without changing the rule's configuration.</p>
    #   @return [Types::SamplingRateBoost]
    class SamplingRule < Struct.new(
      :rule_name,
      :rule_arn,
      :resource_arn,
      :priority,
      :fixed_rate,
      :reservoir_size,
      :service_name,
      :service_type,
      :host,
      :http_method,
      :url_path,
      :version,
      :attributes,
      :sampling_rate_boost,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:fixed_rate] = 0 unless options.key?(:fixed_rate)
        options[:reservoir_size] = 0 unless options.key?(:reservoir_size)
        super
      end
    end

    # <p>A <a href="https://docs.aws.amazon.com/xray/latest/api/API_SamplingRule.html">SamplingRule</a> and its metadata.</p>
    # @!attribute sampling_rule
    #   <p>The sampling rule.</p>
    #   @return [Types::SamplingRule]
    # @!attribute created_at
    #   <p>When the rule was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>When the rule was last modified.</p>
    #   @return [Time]
    class SamplingRuleRecord < Struct.new(
      :sampling_rule,
      :created_at,
      :modified_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A document specifying changes to a sampling rule's configuration.</p>
    # @!attribute rule_name
    #   <p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>Matches the ARN of the Amazon Web Services resource on which the service runs.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the sampling rule.</p>
    #   @return [Integer]
    # @!attribute fixed_rate
    #   <p>The percentage of matching requests to instrument, after the reservoir is
    #         exhausted.</p>
    #   @return [Float]
    # @!attribute reservoir_size
    #   <p>A fixed number of matching requests to instrument per second, prior to applying the
    #         fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.</p>
    #   @return [Integer]
    # @!attribute host
    #   <p>Matches the hostname from a request URL.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>Matches the <code>name</code> that the service uses to identify itself in segments.</p>
    #   @return [String]
    # @!attribute service_type
    #   <p>Matches the <code>origin</code> that the service uses to identify its type in segments.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>Matches the HTTP method of a request.</p>
    #   @return [String]
    # @!attribute url_path
    #   <p>Matches the path from a request URL.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Matches attributes derived from the request.</p>
    #   @return [Hash<String, String>]
    # @!attribute sampling_rate_boost
    #   <p>Specifies the multiplier applied to the base sampling rate.
    #         This boost allows you to temporarily increase sampling without changing the rule's configuration.</p>
    #   @return [Types::SamplingRateBoost]
    class SamplingRuleUpdate < Struct.new(
      :rule_name,
      :rule_arn,
      :resource_arn,
      :priority,
      :fixed_rate,
      :reservoir_size,
      :host,
      :service_name,
      :service_type,
      :http_method,
      :url_path,
      :attributes,
      :sampling_rate_boost,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Aggregated request sampling data for a sampling rule across all services for a 10-second window.</p>
    # @!attribute rule_name
    #   <p>The name of the sampling rule.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The start time of the reporting window.</p>
    #   @return [Time]
    # @!attribute request_count
    #   <p>The number of requests that matched the rule.</p>
    #   @return [Integer]
    # @!attribute borrow_count
    #   <p>The number of requests recorded with borrowed reservoir quota.</p>
    #   @return [Integer]
    # @!attribute sampled_count
    #   <p>The number of requests recorded.</p>
    #   @return [Integer]
    class SamplingStatisticSummary < Struct.new(
      :rule_name,
      :timestamp,
      :request_count,
      :borrow_count,
      :sampled_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:request_count] = 0 unless options.key?(:request_count)
        options[:borrow_count] = 0 unless options.key?(:borrow_count)
        options[:sampled_count] = 0 unless options.key?(:sampled_count)
        super
      end
    end

    # <p>Request sampling results for a single rule from a service. Results are for the last 10
    #       seconds unless the service has been assigned a longer reporting interval after a previous call
    #       to <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html">GetSamplingTargets</a>.</p>
    # @!attribute rule_name
    #   <p>The name of the sampling rule.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>A unique identifier for the service in hexadecimal.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The current time.</p>
    #   @return [Time]
    # @!attribute request_count
    #   <p>The number of requests that matched the rule.</p>
    #   @return [Integer]
    # @!attribute sampled_count
    #   <p>The number of requests recorded.</p>
    #   @return [Integer]
    # @!attribute borrow_count
    #   <p>The number of requests recorded with borrowed reservoir quota.</p>
    #   @return [Integer]
    class SamplingStatisticsDocument < Struct.new(
      :rule_name,
      :client_id,
      :timestamp,
      :request_count,
      :sampled_count,
      :borrow_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:request_count] = 0 unless options.key?(:request_count)
        options[:sampled_count] = 0 unless options.key?(:sampled_count)
        options[:borrow_count] = 0 unless options.key?(:borrow_count)
        super
      end
    end

    # <p>The name and value of a sampling rule to apply to a trace summary.</p>
    # @!attribute name
    #   <p>The name of a sampling rule.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a sampling rule.</p>
    #   @return [Float]
    class SamplingStrategy < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Temporary changes to a sampling rule configuration. To meet the global sampling target for a rule, X-Ray
    #       calculates a new reservoir for each service based on the recent sampling results of all services that called 
    #       <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html">GetSamplingTargets</a>.</p>
    # @!attribute rule_name
    #   <p>The name of the sampling rule.</p>
    #   @return [String]
    # @!attribute fixed_rate
    #   <p>The percentage of matching requests to instrument, after the reservoir is
    #         exhausted.</p>
    #   @return [Float]
    # @!attribute reservoir_quota
    #   <p>The number of requests per second that X-Ray allocated for this service.</p>
    #   @return [Integer]
    # @!attribute reservoir_quota_ttl
    #   <p>When the reservoir quota expires.</p>
    #   @return [Time]
    # @!attribute interval
    #   <p>The number of seconds for the service to wait before getting sampling targets
    #         again.</p>
    #   @return [Integer]
    # @!attribute sampling_boost
    #   <p>The sampling boost that X-Ray allocated for this service.</p>
    #   @return [Types::SamplingBoost]
    class SamplingTargetDocument < Struct.new(
      :rule_name,
      :fixed_rate,
      :reservoir_quota,
      :reservoir_quota_ttl,
      :interval,
      :sampling_boost,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:fixed_rate] = 0 unless options.key?(:fixed_rate)
        super
      end
    end

    # <p>A segment from a trace that has been ingested by the X-Ray service. The segment can be
    #       compiled from documents uploaded with <a href="https://docs.aws.amazon.com/xray/latest/api/API_PutTraceSegments.html">PutTraceSegments</a>, or an
    #         <code>inferred</code> segment for a downstream service, generated from a subsegment sent by
    #       the service that called it.</p>
    #          <p>For the full segment document schema, see <a href="https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-api.html#xray-api-segmentdocuments">Amazon Web Services X-Ray segment
    #       documents</a> in the <i>Amazon Web Services X-Ray Developer Guide</i>.</p>
    # @!attribute id
    #   <p>The segment's ID.</p>
    #   @return [String]
    # @!attribute document
    #   <p>The segment document.</p>
    #   @return [String]
    class Segment < Struct.new(
      :id,
      :document,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an application that processed requests, users that made requests, or downstream services,
    #       resources, and applications that an application used.</p>
    # @!attribute reference_id
    #   <p>Identifier for the service. Unique within the service map.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The canonical name of the service.</p>
    #   @return [String]
    # @!attribute names
    #   <p>A list of names for the service, including the canonical name.</p>
    #   @return [Array<String>]
    # @!attribute root
    #   <p>Indicates that the service was the first service to process a request.</p>
    #   @return [Boolean]
    # @!attribute account_id
    #   <p>Identifier of the Amazon Web Services account in which the service runs.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of service.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services Resource - The type of an Amazon Web Services resource. For example, <code>AWS::EC2::Instance</code> for an
    #             application running on Amazon EC2 or <code>AWS::DynamoDB::Table</code> for an Amazon DynamoDB table that the
    #             application used.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services Service - The type of an Amazon Web Services service. For example, <code>AWS::DynamoDB</code>
    #             for downstream calls to Amazon DynamoDB that didn't target a specific table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>client</code> - Represents the clients that sent requests to a root
    #             service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>remote</code> - A downstream service of indeterminate type.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute state
    #   <p>The service's state.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the first segment that the service generated.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the last segment that the service generated.</p>
    #   @return [Time]
    # @!attribute edges
    #   <p>Connections to downstream services.</p>
    #   @return [Array<Types::Edge>]
    # @!attribute summary_statistics
    #   <p>Aggregated statistics for the service.</p>
    #   @return [Types::ServiceStatistics]
    # @!attribute duration_histogram
    #   <p>A histogram that maps the spread of service durations.</p>
    #   @return [Array<Types::HistogramEntry>]
    # @!attribute response_time_histogram
    #   <p>A histogram that maps the spread of service response times.</p>
    #   @return [Array<Types::HistogramEntry>]
    class Service < Struct.new(
      :reference_id,
      :name,
      :names,
      :root,
      :account_id,
      :type,
      :state,
      :start_time,
      :end_time,
      :edges,
      :summary_statistics,
      :duration_histogram,
      :response_time_histogram,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute name
    #   <p></p>
    #   @return [String]
    # @!attribute names
    #   <p></p>
    #   @return [Array<String>]
    # @!attribute account_id
    #   <p></p>
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    class ServiceId < Struct.new(
      :name,
      :names,
      :account_id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Response statistics for a service.</p>
    # @!attribute ok_count
    #   <p>The number of requests that completed with a 2xx Success status code.</p>
    #   @return [Integer]
    # @!attribute error_statistics
    #   <p>Information about requests that failed with a 4xx Client Error status code.</p>
    #   @return [Types::ErrorStatistics]
    # @!attribute fault_statistics
    #   <p>Information about requests that failed with a 5xx Server Error status code.</p>
    #   @return [Types::FaultStatistics]
    # @!attribute total_count
    #   <p>The total number of completed requests.</p>
    #   @return [Integer]
    # @!attribute total_response_time
    #   <p>The aggregate response time of completed requests.</p>
    #   @return [Float]
    class ServiceStatistics < Struct.new(
      :ok_count,
      :error_statistics,
      :fault_statistics,
      :total_count,
      :total_response_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #   A span from a trace that has been ingested by the X-Ray service. A span represents a unit of work or an operation performed by a service.
    # </p>
    # @!attribute id
    #   <p>The span ID.</p>
    #   @return [String]
    # @!attribute document
    #   <p>
    #   The span document.</p>
    #   @return [String]
    class Span < Struct.new(
      :id,
      :document,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_ids
    #   <p>
    #     Specify the trace IDs of the traces to be retrieved.
    #   </p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>
    #     The start of the time range to retrieve traces. The range is inclusive, so the specified start time is included in the query. 
    #     Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.
    #   </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #     The end of the time range to retrieve traces. The range is inclusive, so the specified end time is included in the query. Specified as epoch time,
    #     the number of seconds since January 1, 1970, 00:00:00 UTC.</p>
    #   @return [Time]
    class StartTraceRetrievalRequest < Struct.new(
      :trace_ids,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute retrieval_token
    #   <p>
    #   Retrieval token.
    #   </p>
    #   @return [String]
    class StartTraceRetrievalResult < Struct.new(
      :retrieval_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A map that contains tag keys and tag values to attach to an Amazon Web Services X-Ray group or sampling
    #       rule. For more information about ways to use tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #       in the <i>Amazon Web Services General Reference</i>.</p>
    #          <p>The following restrictions apply to tags:</p>
    #          <ul>
    #             <li>
    #                <p>Maximum number of user-applied tags per resource: 50</p>
    #             </li>
    #             <li>
    #                <p>Tag keys and values are case sensitive.</p>
    #             </li>
    #             <li>
    #                <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services use. You
    #           cannot edit or delete system tags.</p>
    #             </li>
    #          </ul>
    # @!attribute key
    #   <p>A tag key, such as <code>Stage</code> or <code>Name</code>. A tag key cannot be empty. The 
    #         key can be a maximum of 128 characters, and can contain only Unicode letters, numbers, or separators, 
    #         or the following special characters: <code>+ - = . _ : /</code>
    #            </p>
    #   @return [String]
    # @!attribute value
    #   <p>An optional tag value, such as <code>Production</code> or <code>test-only</code>. The value can be 
    #         a maximum of 255 characters, and contain only Unicode letters, numbers, or separators, or the following 
    #         special characters: <code>+ - = . _ : /</code>
    #            </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map that contains one or more tag keys and tag values to attach to an X-Ray group or
    #         sampling rule. For more information about ways to use tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #         in the <i>Amazon Web Services General Reference</i>.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of user-applied tags per resource: 50</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag key length: 128 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag value length: 256 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
    #             / = + - and @</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services use. You
    #             cannot edit or delete system tags.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute timestamp
    #   <p></p>
    #   @return [Time]
    # @!attribute segments_received_count
    #   <p></p>
    #   @return [Integer]
    # @!attribute segments_sent_count
    #   <p></p>
    #   @return [Integer]
    # @!attribute segments_spillover_count
    #   <p></p>
    #   @return [Integer]
    # @!attribute segments_rejected_count
    #   <p></p>
    #   @return [Integer]
    # @!attribute backend_connection_errors
    #   <p></p>
    #   @return [Types::BackendConnectionErrors]
    class TelemetryRecord < Struct.new(
      :timestamp,
      :segments_received_count,
      :segments_sent_count,
      :segments_spillover_count,
      :segments_rejected_count,
      :backend_connection_errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the maximum number of requests per second.</p>
    # @!attribute message
    #   @return [String]
    class ThrottledException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of TimeSeriesStatistic structures.</p>
    # @!attribute timestamp
    #   <p>Timestamp of the window for which statistics are aggregated.</p>
    #   @return [Time]
    # @!attribute edge_summary_statistics
    #   <p>Response statistics for an edge.</p>
    #   @return [Types::EdgeStatistics]
    # @!attribute service_summary_statistics
    #   <p>Response statistics for a service.</p>
    #   @return [Types::ServiceStatistics]
    # @!attribute service_forecast_statistics
    #   <p>The forecasted high and low fault count values.</p>
    #   @return [Types::ForecastStatistics]
    # @!attribute response_time_histogram
    #   <p>The response time histogram for the selected entities.</p>
    #   @return [Array<Types::HistogramEntry>]
    class TimeSeriesServiceStatistics < Struct.new(
      :timestamp,
      :edge_summary_statistics,
      :service_summary_statistics,
      :service_forecast_statistics,
      :response_time_histogram,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the maximum number of tags you can apply to this resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of segment documents with matching trace IDs.</p>
    # @!attribute id
    #   <p>The unique identifier for the request that generated the trace's segments and
    #         subsegments.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The length of time in seconds between the start time of the earliest segment that started and the end time of the last segment that completed.</p>
    #   @return [Float]
    # @!attribute limit_exceeded
    #   <p>LimitExceeded is set to true when the trace has exceeded the <code>Trace document size</code> limit. For
    #         more information about this limit and other X-Ray limits and quotas, see <a href="https://docs.aws.amazon.com/general/latest/gr/xray.html">Amazon Web Services X-Ray endpoints and quotas</a>.</p>
    #   @return [Boolean]
    # @!attribute segments
    #   <p>Segment documents for the segments and subsegments that comprise the trace.</p>
    #   @return [Array<Types::Segment>]
    class Trace < Struct.new(
      :id,
      :duration,
      :limit_exceeded,
      :segments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata generated from the segment documents in a trace.</p>
    # @!attribute id
    #   <p>The unique identifier for the request that generated the trace's segments and
    #         subsegments.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of a trace, based on the earliest trace segment start time.</p>
    #   @return [Time]
    # @!attribute duration
    #   <p> The length of time in seconds between the start time of the earliest segment that started and the end time of the last segment that completed.</p>
    #   @return [Float]
    # @!attribute response_time
    #   <p>The length of time in seconds between the start and end times of the root segment. If
    #         the service performs work asynchronously, the response time measures the time before the
    #         response is sent to the user, while the duration measures the amount of time before the last
    #         traced activity completes.</p>
    #   @return [Float]
    # @!attribute has_fault
    #   <p>The root segment document has a 500 series error.</p>
    #   @return [Boolean]
    # @!attribute has_error
    #   <p>The root segment document has a 400 series error.</p>
    #   @return [Boolean]
    # @!attribute has_throttle
    #   <p>One or more of the segment documents has a 429 throttling error.</p>
    #   @return [Boolean]
    # @!attribute is_partial
    #   <p>One or more of the segment documents is in progress.</p>
    #   @return [Boolean]
    # @!attribute http
    #   <p>Information about the HTTP request served by the trace.</p>
    #   @return [Types::Http]
    # @!attribute annotations
    #   <p>Annotations from the trace's segment documents.</p>
    #   @return [Hash<String, Array<Types::ValueWithServiceIds>>]
    # @!attribute users
    #   <p>Users from the trace's segment documents.</p>
    #   @return [Array<Types::TraceUser>]
    # @!attribute service_ids
    #   <p>Service IDs from the trace's segment documents.</p>
    #   @return [Array<Types::ServiceId>]
    # @!attribute resource_ar_ns
    #   <p>A list of resource ARNs for any resource corresponding to the trace segments.</p>
    #   @return [Array<Types::ResourceARNDetail>]
    # @!attribute instance_ids
    #   <p>A list of EC2 instance IDs for any instance corresponding to the trace
    #         segments.</p>
    #   @return [Array<Types::InstanceIdDetail>]
    # @!attribute availability_zones
    #   <p>A list of Availability Zones for any zone corresponding to the trace segments.</p>
    #   @return [Array<Types::AvailabilityZoneDetail>]
    # @!attribute entry_point
    #   <p>The root of a trace.</p>
    #   @return [Types::ServiceId]
    # @!attribute fault_root_causes
    #   <p>A collection of FaultRootCause structures corresponding to the trace segments.</p>
    #   @return [Array<Types::FaultRootCause>]
    # @!attribute error_root_causes
    #   <p>A collection of ErrorRootCause structures corresponding to the trace
    #         segments.</p>
    #   @return [Array<Types::ErrorRootCause>]
    # @!attribute response_time_root_causes
    #   <p>A collection of ResponseTimeRootCause structures corresponding to the trace
    #         segments.</p>
    #   @return [Array<Types::ResponseTimeRootCause>]
    # @!attribute revision
    #   <p>The revision number of a trace.</p>
    #   @return [Integer]
    # @!attribute matched_event_time
    #   <p>The matched time stamp of a defined event.</p>
    #   @return [Time]
    class TraceSummary < Struct.new(
      :id,
      :start_time,
      :duration,
      :response_time,
      :has_fault,
      :has_error,
      :has_throttle,
      :is_partial,
      :http,
      :annotations,
      :users,
      :service_ids,
      :resource_ar_ns,
      :instance_ids,
      :availability_zones,
      :entry_point,
      :fault_root_causes,
      :error_root_causes,
      :response_time_root_causes,
      :revision,
      :matched_event_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:revision] = 0 unless options.key?(:revision)
        super
      end
    end

    # <p>Information about a user recorded in segment documents.</p>
    # @!attribute user_name
    #   <p>The user's name.</p>
    #   @return [String]
    # @!attribute service_ids
    #   <p>Services that the user's request hit.</p>
    #   @return [Array<Types::ServiceId>]
    class TraceUser < Struct.new(
      :user_name,
      :service_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sampling statistics from a call to <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html">GetSamplingTargets</a> that X-Ray
    #       could not process.</p>
    # @!attribute rule_name
    #   <p>The name of the sampling rule.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class UnprocessedStatistics < Struct.new(
      :rule_name,
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a segment that failed processing.</p>
    # @!attribute id
    #   <p>The segment's ID.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error that caused processing to fail.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class UnprocessedTraceSegment < Struct.new(
      :id,
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys for one or more tags that you want to remove from an X-Ray group or sampling rule.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The case-sensitive name of the group.</p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The ARN that was generated upon creation.</p>
    #   @return [String]
    # @!attribute filter_expression
    #   <p>The updated filter expression defining criteria by which to group traces.</p>
    #   @return [String]
    # @!attribute insights_configuration
    #   <p>The structure containing configurations related to insights.</p>
    #            <ul>
    #               <li>
    #                  <p>The InsightsEnabled boolean can be set to true to enable insights for the
    #                       group or false to disable insights for the group.</p>
    #               </li>
    #               <li>
    #                  <p>The NotificationsEnabled boolean can be set to true to enable insights notifications for the group.
    #                       Notifications can only be enabled on a group with InsightsEnabled set to true.</p>
    #               </li>
    #            </ul>
    #   @return [Types::InsightsConfiguration]
    class UpdateGroupRequest < Struct.new(
      :group_name,
      :group_arn,
      :filter_expression,
      :insights_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The group that was updated. Contains the name of the group that was updated, the
    #               ARN of the group that was updated, the updated filter expression, and the updated insight
    #               configuration assigned to the group.</p>
    #   @return [Types::Group]
    class UpdateGroupResult < Struct.new(
      :group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #     Name of the indexing rule to be updated.
    #   </p>
    #   @return [String]
    # @!attribute rule
    #   <p>
    #       Rule configuration to be updated.
    #     </p>
    #   @return [Types::IndexingRuleValueUpdate]
    class UpdateIndexingRuleRequest < Struct.new(
      :name,
      :rule,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute indexing_rule
    #   <p>
    #       Updated indexing rule.
    #     </p>
    #   @return [Types::IndexingRule]
    class UpdateIndexingRuleResult < Struct.new(
      :indexing_rule,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sampling_rule_update
    #   <p>The rule and fields to change.</p>
    #   @return [Types::SamplingRuleUpdate]
    class UpdateSamplingRuleRequest < Struct.new(
      :sampling_rule_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sampling_rule_record
    #   <p>The updated rule definition and metadata.</p>
    #   @return [Types::SamplingRuleRecord]
    class UpdateSamplingRuleResult < Struct.new(
      :sampling_rule_record,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination
    #   <p>
    #   The configured destination of trace segments.
    #   </p>
    #   @return [String]
    class UpdateTraceSegmentDestinationRequest < Struct.new(
      :destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination
    #   <p>
    #       The destination of the trace segments.
    #     </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #   The status of the update.
    #   </p>
    #   @return [String]
    class UpdateTraceSegmentDestinationResult < Struct.new(
      :destination,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a segment annotation.</p>
    # @!attribute annotation_value
    #   <p>Values of the annotation.</p>
    #   @return [Types::AnnotationValue]
    # @!attribute service_ids
    #   <p>Services to which the annotation applies.</p>
    #   @return [Array<Types::ServiceId>]
    class ValueWithServiceIds < Struct.new(
      :annotation_value,
      :service_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
