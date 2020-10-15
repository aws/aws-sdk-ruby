# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::XRay
  module Types

    # An alias for an edge.
    #
    # @!attribute [rw] name
    #   The canonical name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] names
    #   A list of names for the alias, including the canonical name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Alias AWS API Documentation
    #
    class Alias < Struct.new(
      :name,
      :names,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Value of a segment annotation. Has one of three value types: Number,
    # Boolean, or String.
    #
    # @!attribute [rw] number_value
    #   Value for a Number annotation.
    #   @return [Float]
    #
    # @!attribute [rw] boolean_value
    #   Value for a Boolean annotation.
    #   @return [Boolean]
    #
    # @!attribute [rw] string_value
    #   Value for a String annotation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/AnnotationValue AWS API Documentation
    #
    class AnnotationValue < Struct.new(
      :number_value,
      :boolean_value,
      :string_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Availability Zones corresponding to the segments in a trace.
    #
    # @!attribute [rw] name
    #   The name of a corresponding Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/AvailabilityZoneDetail AWS API Documentation
    #
    class AvailabilityZoneDetail < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BackendConnectionErrors
    #   data as a hash:
    #
    #       {
    #         timeout_count: 1,
    #         connection_refused_count: 1,
    #         http_code_4_xx_count: 1,
    #         http_code_5_xx_count: 1,
    #         unknown_host_count: 1,
    #         other_count: 1,
    #       }
    #
    # @!attribute [rw] timeout_count
    #   @return [Integer]
    #
    # @!attribute [rw] connection_refused_count
    #   @return [Integer]
    #
    # @!attribute [rw] http_code_4_xx_count
    #   @return [Integer]
    #
    # @!attribute [rw] http_code_5_xx_count
    #   @return [Integer]
    #
    # @!attribute [rw] unknown_host_count
    #   @return [Integer]
    #
    # @!attribute [rw] other_count
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/BackendConnectionErrors AWS API Documentation
    #
    class BackendConnectionErrors < Struct.new(
      :timeout_count,
      :connection_refused_count,
      :http_code_4_xx_count,
      :http_code_5_xx_count,
      :unknown_host_count,
      :other_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetTracesRequest
    #   data as a hash:
    #
    #       {
    #         trace_ids: ["TraceId"], # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] trace_ids
    #   Specify the trace IDs of requests for which to retrieve segments.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/BatchGetTracesRequest AWS API Documentation
    #
    class BatchGetTracesRequest < Struct.new(
      :trace_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] traces
    #   Full traces for the specified requests.
    #   @return [Array<Types::Trace>]
    #
    # @!attribute [rw] unprocessed_trace_ids
    #   Trace IDs of requests that haven't been processed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/BatchGetTracesResult AWS API Documentation
    #
    class BatchGetTracesResult < Struct.new(
      :traces,
      :unprocessed_trace_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         filter_expression: "FilterExpression",
    #         insights_configuration: {
    #           insights_enabled: false,
    #           notifications_enabled: false,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] group_name
    #   The case-sensitive name of the new group. Default is a reserved name
    #   and names must be unique.
    #   @return [String]
    #
    # @!attribute [rw] filter_expression
    #   The filter expression defining criteria by which to group traces.
    #   @return [String]
    #
    # @!attribute [rw] insights_configuration
    #   The structure containing configurations related to insights.
    #
    #   * The InsightsEnabled boolean can be set to true to enable insights
    #     for the new group or false to disable insights for the new group.
    #
    #   * The NotifcationsEnabled boolean can be set to true to enable
    #     insights notifications for the new group. Notifications may only
    #     be enabled on a group with InsightsEnabled set to true.
    #   @return [Types::InsightsConfiguration]
    #
    # @!attribute [rw] tags
    #   A map that contains one or more tag keys and tag values to attach to
    #   an X-Ray group. For more information about ways to use tags, see
    #   [Tagging AWS resources][1] in the *AWS General Reference*.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of user-applied tags per resource: 50
    #
    #   * Maximum tag key length: 128 Unicode characters
    #
    #   * Maximum tag value length: 256 Unicode characters
    #
    #   * Valid values for key and value: a-z, A-Z, 0-9, space, and the
    #     following characters: \_ . : / = + - and @
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Don't use `aws:` as a prefix for keys; it's reserved for AWS
    #     use.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :group_name,
      :filter_expression,
      :insights_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The group that was created. Contains the name of the group that was
    #   created, the Amazon Resource Name (ARN) of the group that was
    #   generated based on the group name, the filter expression, and the
    #   insight configuration that was assigned to the group.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/CreateGroupResult AWS API Documentation
    #
    class CreateGroupResult < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSamplingRuleRequest
    #   data as a hash:
    #
    #       {
    #         sampling_rule: { # required
    #           rule_name: "RuleName",
    #           rule_arn: "String",
    #           resource_arn: "ResourceARN", # required
    #           priority: 1, # required
    #           fixed_rate: 1.0, # required
    #           reservoir_size: 1, # required
    #           service_name: "ServiceName", # required
    #           service_type: "ServiceType", # required
    #           host: "Host", # required
    #           http_method: "HTTPMethod", # required
    #           url_path: "URLPath", # required
    #           version: 1, # required
    #           attributes: {
    #             "AttributeKey" => "AttributeValue",
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] sampling_rule
    #   The rule definition.
    #   @return [Types::SamplingRule]
    #
    # @!attribute [rw] tags
    #   A map that contains one or more tag keys and tag values to attach to
    #   an X-Ray sampling rule. For more information about ways to use tags,
    #   see [Tagging AWS resources][1] in the *AWS General Reference*.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of user-applied tags per resource: 50
    #
    #   * Maximum tag key length: 128 Unicode characters
    #
    #   * Maximum tag value length: 256 Unicode characters
    #
    #   * Valid values for key and value: a-z, A-Z, 0-9, space, and the
    #     following characters: \_ . : / = + - and @
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Don't use `aws:` as a prefix for keys; it's reserved for AWS
    #     use.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/CreateSamplingRuleRequest AWS API Documentation
    #
    class CreateSamplingRuleRequest < Struct.new(
      :sampling_rule,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sampling_rule_record
    #   The saved rule definition and metadata.
    #   @return [Types::SamplingRuleRecord]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/CreateSamplingRuleResult AWS API Documentation
    #
    class CreateSamplingRuleResult < Struct.new(
      :sampling_rule_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName",
    #         group_arn: "GroupARN",
    #       }
    #
    # @!attribute [rw] group_name
    #   The case-sensitive name of the group.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The ARN of the group that was generated on creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :group_name,
      :group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/DeleteGroupResult AWS API Documentation
    #
    class DeleteGroupResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSamplingRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_name: "String",
    #         rule_arn: "String",
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the sampling rule. Specify a rule by either name or ARN,
    #   but not both.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The ARN of the sampling rule. Specify a rule by either name or ARN,
    #   but not both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/DeleteSamplingRuleRequest AWS API Documentation
    #
    class DeleteSamplingRuleRequest < Struct.new(
      :rule_name,
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sampling_rule_record
    #   The deleted rule definition and metadata.
    #   @return [Types::SamplingRuleRecord]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/DeleteSamplingRuleResult AWS API Documentation
    #
    class DeleteSamplingRuleResult < Struct.new(
      :sampling_rule_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a connection between two services.
    #
    # @!attribute [rw] reference_id
    #   Identifier of the edge. Unique within a service map.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start time of the first segment on the edge.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the last segment on the edge.
    #   @return [Time]
    #
    # @!attribute [rw] summary_statistics
    #   Response statistics for segments on the edge.
    #   @return [Types::EdgeStatistics]
    #
    # @!attribute [rw] response_time_histogram
    #   A histogram that maps the spread of client response times on an
    #   edge.
    #   @return [Array<Types::HistogramEntry>]
    #
    # @!attribute [rw] aliases
    #   Aliases for the edge.
    #   @return [Array<Types::Alias>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Edge AWS API Documentation
    #
    class Edge < Struct.new(
      :reference_id,
      :start_time,
      :end_time,
      :summary_statistics,
      :response_time_histogram,
      :aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response statistics for an edge.
    #
    # @!attribute [rw] ok_count
    #   The number of requests that completed with a 2xx Success status
    #   code.
    #   @return [Integer]
    #
    # @!attribute [rw] error_statistics
    #   Information about requests that failed with a 4xx Client Error
    #   status code.
    #   @return [Types::ErrorStatistics]
    #
    # @!attribute [rw] fault_statistics
    #   Information about requests that failed with a 5xx Server Error
    #   status code.
    #   @return [Types::FaultStatistics]
    #
    # @!attribute [rw] total_count
    #   The total number of completed requests.
    #   @return [Integer]
    #
    # @!attribute [rw] total_response_time
    #   The aggregate response time of completed requests.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/EdgeStatistics AWS API Documentation
    #
    class EdgeStatistics < Struct.new(
      :ok_count,
      :error_statistics,
      :fault_statistics,
      :total_count,
      :total_response_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration document that specifies encryption configuration
    # settings.
    #
    # @!attribute [rw] key_id
    #   The ID of the customer master key (CMK) used for encryption, if
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The encryption status. While the status is `UPDATING`, X-Ray may
    #   encrypt data with a combination of the new and old settings.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of encryption. Set to `KMS` for encryption with CMKs. Set
    #   to `NONE` for default encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/EncryptionConfig AWS API Documentation
    #
    class EncryptionConfig < Struct.new(
      :key_id,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The root cause of a trace summary error.
    #
    # @!attribute [rw] services
    #   A list of services corresponding to an error. A service identifies a
    #   segment and it contains a name, account ID, type, and inferred flag.
    #   @return [Array<Types::ErrorRootCauseService>]
    #
    # @!attribute [rw] client_impacting
    #   A flag that denotes that the root cause impacts the trace client.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ErrorRootCause AWS API Documentation
    #
    class ErrorRootCause < Struct.new(
      :services,
      :client_impacting)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of segments and corresponding subsegments associated to a
    # trace summary error.
    #
    # @!attribute [rw] name
    #   The name of the entity.
    #   @return [String]
    #
    # @!attribute [rw] exceptions
    #   The types and messages of the exceptions.
    #   @return [Array<Types::RootCauseException>]
    #
    # @!attribute [rw] remote
    #   A flag that denotes a remote subsegment.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ErrorRootCauseEntity AWS API Documentation
    #
    class ErrorRootCauseEntity < Struct.new(
      :name,
      :exceptions,
      :remote)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of fields identifying the services in a trace summary
    # error.
    #
    # @!attribute [rw] name
    #   The service name.
    #   @return [String]
    #
    # @!attribute [rw] names
    #   A collection of associated service names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type associated to the service.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID associated to the service.
    #   @return [String]
    #
    # @!attribute [rw] entity_path
    #   The path of root cause entities found on the service.
    #   @return [Array<Types::ErrorRootCauseEntity>]
    #
    # @!attribute [rw] inferred
    #   A Boolean value indicating if the service is inferred from the
    #   trace.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ErrorRootCauseService AWS API Documentation
    #
    class ErrorRootCauseService < Struct.new(
      :name,
      :names,
      :type,
      :account_id,
      :entity_path,
      :inferred)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about requests that failed with a 4xx Client Error status
    # code.
    #
    # @!attribute [rw] throttle_count
    #   The number of requests that failed with a 419 throttling status
    #   code.
    #   @return [Integer]
    #
    # @!attribute [rw] other_count
    #   The number of requests that failed with untracked 4xx Client Error
    #   status codes.
    #   @return [Integer]
    #
    # @!attribute [rw] total_count
    #   The total number of requests that failed with a 4xx Client Error
    #   status code.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ErrorStatistics AWS API Documentation
    #
    class ErrorStatistics < Struct.new(
      :throttle_count,
      :other_count,
      :total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The root cause information for a trace summary fault.
    #
    # @!attribute [rw] services
    #   A list of corresponding services. A service identifies a segment and
    #   it contains a name, account ID, type, and inferred flag.
    #   @return [Array<Types::FaultRootCauseService>]
    #
    # @!attribute [rw] client_impacting
    #   A flag that denotes that the root cause impacts the trace client.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/FaultRootCause AWS API Documentation
    #
    class FaultRootCause < Struct.new(
      :services,
      :client_impacting)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of segments and corresponding subsegments associated to a
    # trace summary fault error.
    #
    # @!attribute [rw] name
    #   The name of the entity.
    #   @return [String]
    #
    # @!attribute [rw] exceptions
    #   The types and messages of the exceptions.
    #   @return [Array<Types::RootCauseException>]
    #
    # @!attribute [rw] remote
    #   A flag that denotes a remote subsegment.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/FaultRootCauseEntity AWS API Documentation
    #
    class FaultRootCauseEntity < Struct.new(
      :name,
      :exceptions,
      :remote)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of fields identifying the services in a trace summary
    # fault.
    #
    # @!attribute [rw] name
    #   The service name.
    #   @return [String]
    #
    # @!attribute [rw] names
    #   A collection of associated service names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type associated to the service.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID associated to the service.
    #   @return [String]
    #
    # @!attribute [rw] entity_path
    #   The path of root cause entities found on the service.
    #   @return [Array<Types::FaultRootCauseEntity>]
    #
    # @!attribute [rw] inferred
    #   A Boolean value indicating if the service is inferred from the
    #   trace.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/FaultRootCauseService AWS API Documentation
    #
    class FaultRootCauseService < Struct.new(
      :name,
      :names,
      :type,
      :account_id,
      :entity_path,
      :inferred)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about requests that failed with a 5xx Server Error status
    # code.
    #
    # @!attribute [rw] other_count
    #   The number of requests that failed with untracked 5xx Server Error
    #   status codes.
    #   @return [Integer]
    #
    # @!attribute [rw] total_count
    #   The total number of requests that failed with a 5xx Server Error
    #   status code.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/FaultStatistics AWS API Documentation
    #
    class FaultStatistics < Struct.new(
      :other_count,
      :total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetEncryptionConfigRequest AWS API Documentation
    #
    class GetEncryptionConfigRequest < Aws::EmptyStructure; end

    # @!attribute [rw] encryption_config
    #   The encryption configuration document.
    #   @return [Types::EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetEncryptionConfigResult AWS API Documentation
    #
    class GetEncryptionConfigResult < Struct.new(
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName",
    #         group_arn: "GroupARN",
    #       }
    #
    # @!attribute [rw] group_name
    #   The case-sensitive name of the group.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The ARN of the group that was generated on creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetGroupRequest AWS API Documentation
    #
    class GetGroupRequest < Struct.new(
      :group_name,
      :group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The group that was requested. Contains the name of the group, the
    #   ARN of the group, the filter expression, and the insight
    #   configuration assigned to the group.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetGroupResult AWS API Documentation
    #
    class GetGroupResult < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "GetGroupsNextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetGroupsRequest AWS API Documentation
    #
    class GetGroupsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] groups
    #   The collection of all active groups.
    #   @return [Array<Types::GroupSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetGroupsResult AWS API Documentation
    #
    class GetGroupsResult < Struct.new(
      :groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSamplingRulesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingRulesRequest AWS API Documentation
    #
    class GetSamplingRulesRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sampling_rule_records
    #   Rule definitions and metadata.
    #   @return [Array<Types::SamplingRuleRecord>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingRulesResult AWS API Documentation
    #
    class GetSamplingRulesResult < Struct.new(
      :sampling_rule_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSamplingStatisticSummariesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingStatisticSummariesRequest AWS API Documentation
    #
    class GetSamplingStatisticSummariesRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sampling_statistic_summaries
    #   Information about the number of requests instrumented for each
    #   sampling rule.
    #   @return [Array<Types::SamplingStatisticSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingStatisticSummariesResult AWS API Documentation
    #
    class GetSamplingStatisticSummariesResult < Struct.new(
      :sampling_statistic_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSamplingTargetsRequest
    #   data as a hash:
    #
    #       {
    #         sampling_statistics_documents: [ # required
    #           {
    #             rule_name: "RuleName", # required
    #             client_id: "ClientID", # required
    #             timestamp: Time.now, # required
    #             request_count: 1, # required
    #             sampled_count: 1, # required
    #             borrow_count: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] sampling_statistics_documents
    #   Information about rules that the service is using to sample
    #   requests.
    #   @return [Array<Types::SamplingStatisticsDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingTargetsRequest AWS API Documentation
    #
    class GetSamplingTargetsRequest < Struct.new(
      :sampling_statistics_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sampling_target_documents
    #   Updated rules that the service should use to sample requests.
    #   @return [Array<Types::SamplingTargetDocument>]
    #
    # @!attribute [rw] last_rule_modification
    #   The last time a user changed the sampling rule configuration. If the
    #   sampling rule configuration changed since the service last retrieved
    #   it, the service should call GetSamplingRules to get the latest
    #   version.
    #   @return [Time]
    #
    # @!attribute [rw] unprocessed_statistics
    #   Information about SamplingStatisticsDocument that X-Ray could not
    #   process.
    #   @return [Array<Types::UnprocessedStatistics>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingTargetsResult AWS API Documentation
    #
    class GetSamplingTargetsResult < Struct.new(
      :sampling_target_documents,
      :last_rule_modification,
      :unprocessed_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServiceGraphRequest
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         group_name: "GroupName",
    #         group_arn: "GroupARN",
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] start_time
    #   The start of the time frame for which to generate a graph.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the timeframe for which to generate a graph.
    #   @return [Time]
    #
    # @!attribute [rw] group_name
    #   The name of a group based on which you want to generate a graph.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The Amazon Resource Name (ARN) of a group based on which you want to
    #   generate a graph.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetServiceGraphRequest AWS API Documentation
    #
    class GetServiceGraphRequest < Struct.new(
      :start_time,
      :end_time,
      :group_name,
      :group_arn,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The start of the time frame for which the graph was generated.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time frame for which the graph was generated.
    #   @return [Time]
    #
    # @!attribute [rw] services
    #   The services that have processed a traced request during the
    #   specified time frame.
    #   @return [Array<Types::Service>]
    #
    # @!attribute [rw] contains_old_group_versions
    #   A flag indicating whether the group's filter expression has been
    #   consistent, or if the returned service graph may show traces from an
    #   older version of the group's filter expression.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetServiceGraphResult AWS API Documentation
    #
    class GetServiceGraphResult < Struct.new(
      :start_time,
      :end_time,
      :services,
      :contains_old_group_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTimeSeriesServiceStatisticsRequest
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         group_name: "GroupName",
    #         group_arn: "GroupARN",
    #         entity_selector_expression: "EntitySelectorExpression",
    #         period: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] start_time
    #   The start of the time frame for which to aggregate statistics.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time frame for which to aggregate statistics.
    #   @return [Time]
    #
    # @!attribute [rw] group_name
    #   The case-sensitive name of the group for which to pull statistics
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The Amazon Resource Name (ARN) of the group for which to pull
    #   statistics from.
    #   @return [String]
    #
    # @!attribute [rw] entity_selector_expression
    #   A filter expression defining entities that will be aggregated for
    #   statistics. Supports ID, service, and edge functions. If no selector
    #   expression is specified, edge statistics are returned.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   Aggregation period in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTimeSeriesServiceStatisticsRequest AWS API Documentation
    #
    class GetTimeSeriesServiceStatisticsRequest < Struct.new(
      :start_time,
      :end_time,
      :group_name,
      :group_arn,
      :entity_selector_expression,
      :period,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] time_series_service_statistics
    #   The collection of statistics.
    #   @return [Array<Types::TimeSeriesServiceStatistics>]
    #
    # @!attribute [rw] contains_old_group_versions
    #   A flag indicating whether or not a group's filter expression has
    #   been consistent, or if a returned aggregation might show statistics
    #   from an older version of the group's filter expression.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTimeSeriesServiceStatisticsResult AWS API Documentation
    #
    class GetTimeSeriesServiceStatisticsResult < Struct.new(
      :time_series_service_statistics,
      :contains_old_group_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTraceGraphRequest
    #   data as a hash:
    #
    #       {
    #         trace_ids: ["TraceId"], # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] trace_ids
    #   Trace IDs of requests for which to generate a service graph.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceGraphRequest AWS API Documentation
    #
    class GetTraceGraphRequest < Struct.new(
      :trace_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] services
    #   The services that have processed one of the specified requests.
    #   @return [Array<Types::Service>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceGraphResult AWS API Documentation
    #
    class GetTraceGraphResult < Struct.new(
      :services,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTraceSummariesRequest
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         time_range_type: "TraceId", # accepts TraceId, Event
    #         sampling: false,
    #         sampling_strategy: {
    #           name: "PartialScan", # accepts PartialScan, FixedRate
    #           value: 1.0,
    #         },
    #         filter_expression: "FilterExpression",
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] start_time
    #   The start of the time frame for which to retrieve traces.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time frame for which to retrieve traces.
    #   @return [Time]
    #
    # @!attribute [rw] time_range_type
    #   A parameter to indicate whether to query trace summaries by TraceId
    #   or Event time.
    #   @return [String]
    #
    # @!attribute [rw] sampling
    #   Set to `true` to get summaries for only a subset of available
    #   traces.
    #   @return [Boolean]
    #
    # @!attribute [rw] sampling_strategy
    #   A parameter to indicate whether to enable sampling on trace
    #   summaries. Input parameters are Name and Value.
    #   @return [Types::SamplingStrategy]
    #
    # @!attribute [rw] filter_expression
    #   Specify a filter expression to retrieve trace summaries for services
    #   or requests that meet certain requirements.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token returned by a previous request to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceSummariesRequest AWS API Documentation
    #
    class GetTraceSummariesRequest < Struct.new(
      :start_time,
      :end_time,
      :time_range_type,
      :sampling,
      :sampling_strategy,
      :filter_expression,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trace_summaries
    #   Trace IDs and annotations for traces that were found in the
    #   specified time frame.
    #   @return [Array<Types::TraceSummary>]
    #
    # @!attribute [rw] approximate_time
    #   The start time of this page of results.
    #   @return [Time]
    #
    # @!attribute [rw] traces_processed_count
    #   The total number of traces processed, including traces that did not
    #   match the specified filter expression.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the requested time frame contained more than one page of results,
    #   you can use this token to retrieve the next page. The first page
    #   contains the most recent results, closest to the end of the time
    #   frame.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceSummariesResult AWS API Documentation
    #
    class GetTraceSummariesResult < Struct.new(
      :trace_summaries,
      :approximate_time,
      :traces_processed_count,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details and metadata for a group.
    #
    # @!attribute [rw] group_name
    #   The unique case-sensitive name of the group.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The Amazon Resource Name (ARN) of the group generated based on the
    #   GroupName.
    #   @return [String]
    #
    # @!attribute [rw] filter_expression
    #   The filter expression defining the parameters to include traces.
    #   @return [String]
    #
    # @!attribute [rw] insights_configuration
    #   The structure containing configurations related to insights.
    #
    #   * The InsightsEnabled boolean can be set to true to enable insights
    #     for the group or false to disable insights for the group.
    #
    #   * The NotifcationsEnabled boolean can be set to true to enable
    #     insights notifications through Amazon EventBridge for the group.
    #   @return [Types::InsightsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Group AWS API Documentation
    #
    class Group < Struct.new(
      :group_name,
      :group_arn,
      :filter_expression,
      :insights_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a group without metadata.
    #
    # @!attribute [rw] group_name
    #   The unique case-sensitive name of the group.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The ARN of the group generated based on the GroupName.
    #   @return [String]
    #
    # @!attribute [rw] filter_expression
    #   The filter expression defining the parameters to include traces.
    #   @return [String]
    #
    # @!attribute [rw] insights_configuration
    #   The structure containing configurations related to insights.
    #
    #   * The InsightsEnabled boolean can be set to true to enable insights
    #     for the group or false to disable insights for the group.
    #
    #   * The NotificationsEnabled boolean can be set to true to enable
    #     insights notifications. Notifications can only be enabled on a
    #     group with InsightsEnabled set to true.
    #   @return [Types::InsightsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GroupSummary AWS API Documentation
    #
    class GroupSummary < Struct.new(
      :group_name,
      :group_arn,
      :filter_expression,
      :insights_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entry in a histogram for a statistic. A histogram maps the range of
    # observed values on the X axis, and the prevalence of each value on the
    # Y axis.
    #
    # @!attribute [rw] value
    #   The value of the entry.
    #   @return [Float]
    #
    # @!attribute [rw] count
    #   The prevalence of the entry.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/HistogramEntry AWS API Documentation
    #
    class HistogramEntry < Struct.new(
      :value,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an HTTP request.
    #
    # @!attribute [rw] http_url
    #   The request URL.
    #   @return [String]
    #
    # @!attribute [rw] http_status
    #   The response status.
    #   @return [Integer]
    #
    # @!attribute [rw] http_method
    #   The request method.
    #   @return [String]
    #
    # @!attribute [rw] user_agent
    #   The request's user agent string.
    #   @return [String]
    #
    # @!attribute [rw] client_ip
    #   The IP address of the requestor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Http AWS API Documentation
    #
    class Http < Struct.new(
      :http_url,
      :http_status,
      :http_method,
      :user_agent,
      :client_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure containing configurations related to insights.
    #
    # @note When making an API call, you may pass InsightsConfiguration
    #   data as a hash:
    #
    #       {
    #         insights_enabled: false,
    #         notifications_enabled: false,
    #       }
    #
    # @!attribute [rw] insights_enabled
    #   Set the InsightsEnabled value to true to enable insights or false to
    #   disable insights.
    #   @return [Boolean]
    #
    # @!attribute [rw] notifications_enabled
    #   Set the NotificationsEnabled value to true to enable insights
    #   notifications. Notifications can only be enabled on a group with
    #   InsightsEnabled set to true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/InsightsConfiguration AWS API Documentation
    #
    class InsightsConfiguration < Struct.new(
      :insights_enabled,
      :notifications_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of EC2 instance IDs corresponding to the segments in a trace.
    #
    # @!attribute [rw] id
    #   The ID of a corresponding EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/InstanceIdDetail AWS API Documentation
    #
    class InstanceIdDetail < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is missing required parameters or has invalid parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token. If multiple pages of results are returned, use
    #   the `NextToken` value returned with the current page of results as
    #   the value of this parameter to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags, as key and value pairs, that is associated with the
    #   specified X-Ray group or sampling rule.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. If multiple pages of results are returned, use
    #   the `NextToken` value returned with the current page of results to
    #   get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEncryptionConfigRequest
    #   data as a hash:
    #
    #       {
    #         key_id: "EncryptionKeyId",
    #         type: "NONE", # required, accepts NONE, KMS
    #       }
    #
    # @!attribute [rw] key_id
    #   An AWS KMS customer master key (CMK) in one of the following
    #   formats:
    #
    #   * **Alias** - The name of the key. For example, `alias/MyKey`.
    #
    #   * **Key ID** - The KMS key ID of the key. For example,
    #     `ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`. AWS X-Ray does not
    #     support asymmetric CMKs.
    #
    #   * **ARN** - The full Amazon Resource Name of the key ID or alias.
    #     For example,
    #     `arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`.
    #     Use this format to specify a key in a different account.
    #
    #   Omit this key if you set `Type` to `NONE`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of encryption. Set to `KMS` to use your own key for
    #   encryption. Set to `NONE` for default encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutEncryptionConfigRequest AWS API Documentation
    #
    class PutEncryptionConfigRequest < Struct.new(
      :key_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encryption_config
    #   The new encryption configuration.
    #   @return [Types::EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutEncryptionConfigResult AWS API Documentation
    #
    class PutEncryptionConfigResult < Struct.new(
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutTelemetryRecordsRequest
    #   data as a hash:
    #
    #       {
    #         telemetry_records: [ # required
    #           {
    #             timestamp: Time.now, # required
    #             segments_received_count: 1,
    #             segments_sent_count: 1,
    #             segments_spillover_count: 1,
    #             segments_rejected_count: 1,
    #             backend_connection_errors: {
    #               timeout_count: 1,
    #               connection_refused_count: 1,
    #               http_code_4_xx_count: 1,
    #               http_code_5_xx_count: 1,
    #               unknown_host_count: 1,
    #               other_count: 1,
    #             },
    #           },
    #         ],
    #         ec2_instance_id: "EC2InstanceId",
    #         hostname: "Hostname",
    #         resource_arn: "ResourceARN",
    #       }
    #
    # @!attribute [rw] telemetry_records
    #   @return [Array<Types::TelemetryRecord>]
    #
    # @!attribute [rw] ec2_instance_id
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTelemetryRecordsRequest AWS API Documentation
    #
    class PutTelemetryRecordsRequest < Struct.new(
      :telemetry_records,
      :ec2_instance_id,
      :hostname,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTelemetryRecordsResult AWS API Documentation
    #
    class PutTelemetryRecordsResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutTraceSegmentsRequest
    #   data as a hash:
    #
    #       {
    #         trace_segment_documents: ["TraceSegmentDocument"], # required
    #       }
    #
    # @!attribute [rw] trace_segment_documents
    #   A string containing a JSON document defining one or more segments or
    #   subsegments.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTraceSegmentsRequest AWS API Documentation
    #
    class PutTraceSegmentsRequest < Struct.new(
      :trace_segment_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_trace_segments
    #   Segments that failed processing.
    #   @return [Array<Types::UnprocessedTraceSegment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTraceSegmentsResult AWS API Documentation
    #
    class PutTraceSegmentsResult < Struct.new(
      :unprocessed_trace_segments)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of resources ARNs corresponding to the segments in a trace.
    #
    # @!attribute [rw] arn
    #   The ARN of a corresponding resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ResourceARNDetail AWS API Documentation
    #
    class ResourceARNDetail < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource was not found. Verify that the name or Amazon Resource
    # Name (ARN) of the resource is correct.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The root cause information for a response time warning.
    #
    # @!attribute [rw] services
    #   A list of corresponding services. A service identifies a segment and
    #   contains a name, account ID, type, and inferred flag.
    #   @return [Array<Types::ResponseTimeRootCauseService>]
    #
    # @!attribute [rw] client_impacting
    #   A flag that denotes that the root cause impacts the trace client.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ResponseTimeRootCause AWS API Documentation
    #
    class ResponseTimeRootCause < Struct.new(
      :services,
      :client_impacting)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of segments and corresponding subsegments associated to a
    # response time warning.
    #
    # @!attribute [rw] name
    #   The name of the entity.
    #   @return [String]
    #
    # @!attribute [rw] coverage
    #   The type and messages of the exceptions.
    #   @return [Float]
    #
    # @!attribute [rw] remote
    #   A flag that denotes a remote subsegment.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ResponseTimeRootCauseEntity AWS API Documentation
    #
    class ResponseTimeRootCauseEntity < Struct.new(
      :name,
      :coverage,
      :remote)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of fields identifying the service in a response time
    # warning.
    #
    # @!attribute [rw] name
    #   The service name.
    #   @return [String]
    #
    # @!attribute [rw] names
    #   A collection of associated service names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type associated to the service.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID associated to the service.
    #   @return [String]
    #
    # @!attribute [rw] entity_path
    #   The path of root cause entities found on the service.
    #   @return [Array<Types::ResponseTimeRootCauseEntity>]
    #
    # @!attribute [rw] inferred
    #   A Boolean value indicating if the service is inferred from the
    #   trace.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ResponseTimeRootCauseService AWS API Documentation
    #
    class ResponseTimeRootCauseService < Struct.new(
      :name,
      :names,
      :type,
      :account_id,
      :entity_path,
      :inferred)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception associated with a root cause.
    #
    # @!attribute [rw] name
    #   The name of the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/RootCauseException AWS API Documentation
    #
    class RootCauseException < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of sampling rules.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/RuleLimitExceededException AWS API Documentation
    #
    class RuleLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A sampling rule that services use to decide whether to instrument a
    # request. Rule fields can match properties of the service, or
    # properties of a request. The service can ignore rules that don't
    # match its properties.
    #
    # @note When making an API call, you may pass SamplingRule
    #   data as a hash:
    #
    #       {
    #         rule_name: "RuleName",
    #         rule_arn: "String",
    #         resource_arn: "ResourceARN", # required
    #         priority: 1, # required
    #         fixed_rate: 1.0, # required
    #         reservoir_size: 1, # required
    #         service_name: "ServiceName", # required
    #         service_type: "ServiceType", # required
    #         host: "Host", # required
    #         http_method: "HTTPMethod", # required
    #         url_path: "URLPath", # required
    #         version: 1, # required
    #         attributes: {
    #           "AttributeKey" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the sampling rule. Specify a rule by either name or ARN,
    #   but not both.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The ARN of the sampling rule. Specify a rule by either name or ARN,
    #   but not both.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Matches the ARN of the AWS resource on which the service runs.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the sampling rule.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_rate
    #   The percentage of matching requests to instrument, after the
    #   reservoir is exhausted.
    #   @return [Float]
    #
    # @!attribute [rw] reservoir_size
    #   A fixed number of matching requests to instrument per second, prior
    #   to applying the fixed rate. The reservoir is not used directly by
    #   services, but applies to all services using the rule collectively.
    #   @return [Integer]
    #
    # @!attribute [rw] service_name
    #   Matches the `name` that the service uses to identify itself in
    #   segments.
    #   @return [String]
    #
    # @!attribute [rw] service_type
    #   Matches the `origin` that the service uses to identify its type in
    #   segments.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   Matches the hostname from a request URL.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Matches the HTTP method of a request.
    #   @return [String]
    #
    # @!attribute [rw] url_path
    #   Matches the path from a request URL.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the sampling rule format (`1`).
    #   @return [Integer]
    #
    # @!attribute [rw] attributes
    #   Matches attributes derived from the request.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/SamplingRule AWS API Documentation
    #
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
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A SamplingRule and its metadata.
    #
    # @!attribute [rw] sampling_rule
    #   The sampling rule.
    #   @return [Types::SamplingRule]
    #
    # @!attribute [rw] created_at
    #   When the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   When the rule was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/SamplingRuleRecord AWS API Documentation
    #
    class SamplingRuleRecord < Struct.new(
      :sampling_rule,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A document specifying changes to a sampling rule's configuration.
    #
    # @note When making an API call, you may pass SamplingRuleUpdate
    #   data as a hash:
    #
    #       {
    #         rule_name: "RuleName",
    #         rule_arn: "String",
    #         resource_arn: "ResourceARN",
    #         priority: 1,
    #         fixed_rate: 1.0,
    #         reservoir_size: 1,
    #         host: "Host",
    #         service_name: "ServiceName",
    #         service_type: "ServiceType",
    #         http_method: "HTTPMethod",
    #         url_path: "URLPath",
    #         attributes: {
    #           "AttributeKey" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the sampling rule. Specify a rule by either name or ARN,
    #   but not both.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The ARN of the sampling rule. Specify a rule by either name or ARN,
    #   but not both.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Matches the ARN of the AWS resource on which the service runs.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the sampling rule.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_rate
    #   The percentage of matching requests to instrument, after the
    #   reservoir is exhausted.
    #   @return [Float]
    #
    # @!attribute [rw] reservoir_size
    #   A fixed number of matching requests to instrument per second, prior
    #   to applying the fixed rate. The reservoir is not used directly by
    #   services, but applies to all services using the rule collectively.
    #   @return [Integer]
    #
    # @!attribute [rw] host
    #   Matches the hostname from a request URL.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   Matches the `name` that the service uses to identify itself in
    #   segments.
    #   @return [String]
    #
    # @!attribute [rw] service_type
    #   Matches the `origin` that the service uses to identify its type in
    #   segments.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Matches the HTTP method of a request.
    #   @return [String]
    #
    # @!attribute [rw] url_path
    #   Matches the path from a request URL.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Matches attributes derived from the request.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/SamplingRuleUpdate AWS API Documentation
    #
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
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregated request sampling data for a sampling rule across all
    # services for a 10-second window.
    #
    # @!attribute [rw] rule_name
    #   The name of the sampling rule.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The start time of the reporting window.
    #   @return [Time]
    #
    # @!attribute [rw] request_count
    #   The number of requests that matched the rule.
    #   @return [Integer]
    #
    # @!attribute [rw] borrow_count
    #   The number of requests recorded with borrowed reservoir quota.
    #   @return [Integer]
    #
    # @!attribute [rw] sampled_count
    #   The number of requests recorded.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/SamplingStatisticSummary AWS API Documentation
    #
    class SamplingStatisticSummary < Struct.new(
      :rule_name,
      :timestamp,
      :request_count,
      :borrow_count,
      :sampled_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request sampling results for a single rule from a service. Results are
    # for the last 10 seconds unless the service has been assigned a longer
    # reporting interval after a previous call to GetSamplingTargets.
    #
    # @note When making an API call, you may pass SamplingStatisticsDocument
    #   data as a hash:
    #
    #       {
    #         rule_name: "RuleName", # required
    #         client_id: "ClientID", # required
    #         timestamp: Time.now, # required
    #         request_count: 1, # required
    #         sampled_count: 1, # required
    #         borrow_count: 1,
    #       }
    #
    # @!attribute [rw] rule_name
    #   The name of the sampling rule.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   A unique identifier for the service in hexadecimal.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The current time.
    #   @return [Time]
    #
    # @!attribute [rw] request_count
    #   The number of requests that matched the rule.
    #   @return [Integer]
    #
    # @!attribute [rw] sampled_count
    #   The number of requests recorded.
    #   @return [Integer]
    #
    # @!attribute [rw] borrow_count
    #   The number of requests recorded with borrowed reservoir quota.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/SamplingStatisticsDocument AWS API Documentation
    #
    class SamplingStatisticsDocument < Struct.new(
      :rule_name,
      :client_id,
      :timestamp,
      :request_count,
      :sampled_count,
      :borrow_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name and value of a sampling rule to apply to a trace summary.
    #
    # @note When making an API call, you may pass SamplingStrategy
    #   data as a hash:
    #
    #       {
    #         name: "PartialScan", # accepts PartialScan, FixedRate
    #         value: 1.0,
    #       }
    #
    # @!attribute [rw] name
    #   The name of a sampling rule.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a sampling rule.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/SamplingStrategy AWS API Documentation
    #
    class SamplingStrategy < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Temporary changes to a sampling rule configuration. To meet the global
    # sampling target for a rule, X-Ray calculates a new reservoir for each
    # service based on the recent sampling results of all services that
    # called GetSamplingTargets.
    #
    # @!attribute [rw] rule_name
    #   The name of the sampling rule.
    #   @return [String]
    #
    # @!attribute [rw] fixed_rate
    #   The percentage of matching requests to instrument, after the
    #   reservoir is exhausted.
    #   @return [Float]
    #
    # @!attribute [rw] reservoir_quota
    #   The number of requests per second that X-Ray allocated for this
    #   service.
    #   @return [Integer]
    #
    # @!attribute [rw] reservoir_quota_ttl
    #   When the reservoir quota expires.
    #   @return [Time]
    #
    # @!attribute [rw] interval
    #   The number of seconds for the service to wait before getting
    #   sampling targets again.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/SamplingTargetDocument AWS API Documentation
    #
    class SamplingTargetDocument < Struct.new(
      :rule_name,
      :fixed_rate,
      :reservoir_quota,
      :reservoir_quota_ttl,
      :interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # A segment from a trace that has been ingested by the X-Ray service.
    # The segment can be compiled from documents uploaded with
    # PutTraceSegments, or an `inferred` segment for a downstream service,
    # generated from a subsegment sent by the service that called it.
    #
    # For the full segment document schema, see [AWS X-Ray Segment
    # Documents][1] in the *AWS X-Ray Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html
    #
    # @!attribute [rw] id
    #   The segment's ID.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The segment document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Segment AWS API Documentation
    #
    class Segment < Struct.new(
      :id,
      :document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an application that processed requests, users that
    # made requests, or downstream services, resources, and applications
    # that an application used.
    #
    # @!attribute [rw] reference_id
    #   Identifier for the service. Unique within the service map.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The canonical name of the service.
    #   @return [String]
    #
    # @!attribute [rw] names
    #   A list of names for the service, including the canonical name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] root
    #   Indicates that the service was the first service to process a
    #   request.
    #   @return [Boolean]
    #
    # @!attribute [rw] account_id
    #   Identifier of the AWS account in which the service runs.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of service.
    #
    #   * AWS Resource - The type of an AWS resource. For example,
    #     `AWS::EC2::Instance` for an application running on Amazon EC2 or
    #     `AWS::DynamoDB::Table` for an Amazon DynamoDB table that the
    #     application used.
    #
    #   * AWS Service - The type of an AWS service. For example,
    #     `AWS::DynamoDB` for downstream calls to Amazon DynamoDB that
    #     didn't target a specific table.
    #
    #   * `client` - Represents the clients that sent requests to a root
    #     service.
    #
    #   * `remote` - A downstream service of indeterminate type.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The service's state.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the first segment that the service generated.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the last segment that the service generated.
    #   @return [Time]
    #
    # @!attribute [rw] edges
    #   Connections to downstream services.
    #   @return [Array<Types::Edge>]
    #
    # @!attribute [rw] summary_statistics
    #   Aggregated statistics for the service.
    #   @return [Types::ServiceStatistics]
    #
    # @!attribute [rw] duration_histogram
    #   A histogram that maps the spread of service durations.
    #   @return [Array<Types::HistogramEntry>]
    #
    # @!attribute [rw] response_time_histogram
    #   A histogram that maps the spread of service response times.
    #   @return [Array<Types::HistogramEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Service AWS API Documentation
    #
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
      :response_time_histogram)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] names
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ServiceId AWS API Documentation
    #
    class ServiceId < Struct.new(
      :name,
      :names,
      :account_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response statistics for a service.
    #
    # @!attribute [rw] ok_count
    #   The number of requests that completed with a 2xx Success status
    #   code.
    #   @return [Integer]
    #
    # @!attribute [rw] error_statistics
    #   Information about requests that failed with a 4xx Client Error
    #   status code.
    #   @return [Types::ErrorStatistics]
    #
    # @!attribute [rw] fault_statistics
    #   Information about requests that failed with a 5xx Server Error
    #   status code.
    #   @return [Types::FaultStatistics]
    #
    # @!attribute [rw] total_count
    #   The total number of completed requests.
    #   @return [Integer]
    #
    # @!attribute [rw] total_response_time
    #   The aggregate response time of completed requests.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ServiceStatistics AWS API Documentation
    #
    class ServiceStatistics < Struct.new(
      :ok_count,
      :error_statistics,
      :fault_statistics,
      :total_count,
      :total_response_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map that contains tag keys and tag values to attach to an AWS X-Ray
    # group or sampling rule. For more information about ways to use tags,
    # see [Tagging AWS resources][1] in the *AWS General Reference*.
    #
    # The following restrictions apply to tags:
    #
    # * Maximum number of user-applied tags per resource: 50
    #
    # * Tag keys and values are case sensitive.
    #
    # * Don't use `aws:` as a prefix for keys; it's reserved for AWS use.
    #   You cannot edit or delete system tags.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   A tag key, such as `Stage` or `Name`. A tag key cannot be empty. The
    #   key can be a maximum of 128 characters, and can contain only Unicode
    #   letters, numbers, or separators, or the following special
    #   characters: `+ - = . _ : /`
    #   @return [String]
    #
    # @!attribute [rw] value
    #   An optional tag value, such as `Production` or `test-only`. The
    #   value can be a maximum of 255 characters, and contain only Unicode
    #   letters, numbers, or separators, or the following special
    #   characters: `+ - = . _ : /`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains one or more tag keys and tag values to attach to
    #   an X-Ray group or sampling rule. For more information about ways to
    #   use tags, see [Tagging AWS resources][1] in the *AWS General
    #   Reference*.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of user-applied tags per resource: 50
    #
    #   * Maximum tag key length: 128 Unicode characters
    #
    #   * Maximum tag value length: 256 Unicode characters
    #
    #   * Valid values for key and value: a-z, A-Z, 0-9, space, and the
    #     following characters: \_ . : / = + - and @
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Don't use `aws:` as a prefix for keys; it's reserved for AWS
    #     use. You cannot edit or delete system tags.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass TelemetryRecord
    #   data as a hash:
    #
    #       {
    #         timestamp: Time.now, # required
    #         segments_received_count: 1,
    #         segments_sent_count: 1,
    #         segments_spillover_count: 1,
    #         segments_rejected_count: 1,
    #         backend_connection_errors: {
    #           timeout_count: 1,
    #           connection_refused_count: 1,
    #           http_code_4_xx_count: 1,
    #           http_code_5_xx_count: 1,
    #           unknown_host_count: 1,
    #           other_count: 1,
    #         },
    #       }
    #
    # @!attribute [rw] timestamp
    #   @return [Time]
    #
    # @!attribute [rw] segments_received_count
    #   @return [Integer]
    #
    # @!attribute [rw] segments_sent_count
    #   @return [Integer]
    #
    # @!attribute [rw] segments_spillover_count
    #   @return [Integer]
    #
    # @!attribute [rw] segments_rejected_count
    #   @return [Integer]
    #
    # @!attribute [rw] backend_connection_errors
    #   @return [Types::BackendConnectionErrors]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TelemetryRecord AWS API Documentation
    #
    class TelemetryRecord < Struct.new(
      :timestamp,
      :segments_received_count,
      :segments_sent_count,
      :segments_spillover_count,
      :segments_rejected_count,
      :backend_connection_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the maximum number of requests per second.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ThrottledException AWS API Documentation
    #
    class ThrottledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of TimeSeriesStatistic structures.
    #
    # @!attribute [rw] timestamp
    #   Timestamp of the window for which statistics are aggregated.
    #   @return [Time]
    #
    # @!attribute [rw] edge_summary_statistics
    #   Response statistics for an edge.
    #   @return [Types::EdgeStatistics]
    #
    # @!attribute [rw] service_summary_statistics
    #   Response statistics for a service.
    #   @return [Types::ServiceStatistics]
    #
    # @!attribute [rw] response_time_histogram
    #   The response time histogram for the selected entities.
    #   @return [Array<Types::HistogramEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TimeSeriesServiceStatistics AWS API Documentation
    #
    class TimeSeriesServiceStatistics < Struct.new(
      :timestamp,
      :edge_summary_statistics,
      :service_summary_statistics,
      :response_time_histogram)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the maximum number of tags you can apply to this
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of segment documents with matching trace IDs.
    #
    # @!attribute [rw] id
    #   The unique identifier for the request that generated the trace's
    #   segments and subsegments.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The length of time in seconds between the start time of the root
    #   segment and the end time of the last segment that completed.
    #   @return [Float]
    #
    # @!attribute [rw] limit_exceeded
    #   LimitExceeded is set to true when the trace has exceeded one of the
    #   defined quotas. For more information about quotas, see [AWS X-Ray
    #   endpoints and quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/xray.html
    #   @return [Boolean]
    #
    # @!attribute [rw] segments
    #   Segment documents for the segments and subsegments that comprise the
    #   trace.
    #   @return [Array<Types::Segment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Trace AWS API Documentation
    #
    class Trace < Struct.new(
      :id,
      :duration,
      :limit_exceeded,
      :segments)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata generated from the segment documents in a trace.
    #
    # @!attribute [rw] id
    #   The unique identifier for the request that generated the trace's
    #   segments and subsegments.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The length of time in seconds between the start time of the root
    #   segment and the end time of the last segment that completed.
    #   @return [Float]
    #
    # @!attribute [rw] response_time
    #   The length of time in seconds between the start and end times of the
    #   root segment. If the service performs work asynchronously, the
    #   response time measures the time before the response is sent to the
    #   user, while the duration measures the amount of time before the last
    #   traced activity completes.
    #   @return [Float]
    #
    # @!attribute [rw] has_fault
    #   The root segment document has a 500 series error.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_error
    #   The root segment document has a 400 series error.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_throttle
    #   One or more of the segment documents has a 429 throttling error.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_partial
    #   One or more of the segment documents is in progress.
    #   @return [Boolean]
    #
    # @!attribute [rw] http
    #   Information about the HTTP request served by the trace.
    #   @return [Types::Http]
    #
    # @!attribute [rw] annotations
    #   Annotations from the trace's segment documents.
    #   @return [Hash<String,Array<Types::ValueWithServiceIds>>]
    #
    # @!attribute [rw] users
    #   Users from the trace's segment documents.
    #   @return [Array<Types::TraceUser>]
    #
    # @!attribute [rw] service_ids
    #   Service IDs from the trace's segment documents.
    #   @return [Array<Types::ServiceId>]
    #
    # @!attribute [rw] resource_arns
    #   A list of resource ARNs for any resource corresponding to the trace
    #   segments.
    #   @return [Array<Types::ResourceARNDetail>]
    #
    # @!attribute [rw] instance_ids
    #   A list of EC2 instance IDs for any instance corresponding to the
    #   trace segments.
    #   @return [Array<Types::InstanceIdDetail>]
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones for any zone corresponding to the trace
    #   segments.
    #   @return [Array<Types::AvailabilityZoneDetail>]
    #
    # @!attribute [rw] entry_point
    #   The root of a trace.
    #   @return [Types::ServiceId]
    #
    # @!attribute [rw] fault_root_causes
    #   A collection of FaultRootCause structures corresponding to the trace
    #   segments.
    #   @return [Array<Types::FaultRootCause>]
    #
    # @!attribute [rw] error_root_causes
    #   A collection of ErrorRootCause structures corresponding to the trace
    #   segments.
    #   @return [Array<Types::ErrorRootCause>]
    #
    # @!attribute [rw] response_time_root_causes
    #   A collection of ResponseTimeRootCause structures corresponding to
    #   the trace segments.
    #   @return [Array<Types::ResponseTimeRootCause>]
    #
    # @!attribute [rw] revision
    #   The revision number of a trace.
    #   @return [Integer]
    #
    # @!attribute [rw] matched_event_time
    #   The matched time stamp of a defined event.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TraceSummary AWS API Documentation
    #
    class TraceSummary < Struct.new(
      :id,
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
      :resource_arns,
      :instance_ids,
      :availability_zones,
      :entry_point,
      :fault_root_causes,
      :error_root_causes,
      :response_time_root_causes,
      :revision,
      :matched_event_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a user recorded in segment documents.
    #
    # @!attribute [rw] user_name
    #   The user's name.
    #   @return [String]
    #
    # @!attribute [rw] service_ids
    #   Services that the user's request hit.
    #   @return [Array<Types::ServiceId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TraceUser AWS API Documentation
    #
    class TraceUser < Struct.new(
      :user_name,
      :service_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sampling statistics from a call to GetSamplingTargets that X-Ray could
    # not process.
    #
    # @!attribute [rw] rule_name
    #   The name of the sampling rule.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UnprocessedStatistics AWS API Documentation
    #
    class UnprocessedStatistics < Struct.new(
      :rule_name,
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a segment that failed processing.
    #
    # @!attribute [rw] id
    #   The segment's ID.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error that caused processing to fail.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UnprocessedTraceSegment AWS API Documentation
    #
    class UnprocessedTraceSegment < Struct.new(
      :id,
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys for one or more tags that you want to remove from an X-Ray
    #   group or sampling rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName",
    #         group_arn: "GroupARN",
    #         filter_expression: "FilterExpression",
    #         insights_configuration: {
    #           insights_enabled: false,
    #           notifications_enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] group_name
    #   The case-sensitive name of the group.
    #   @return [String]
    #
    # @!attribute [rw] group_arn
    #   The ARN that was generated upon creation.
    #   @return [String]
    #
    # @!attribute [rw] filter_expression
    #   The updated filter expression defining criteria by which to group
    #   traces.
    #   @return [String]
    #
    # @!attribute [rw] insights_configuration
    #   The structure containing configurations related to insights.
    #
    #   * The InsightsEnabled boolean can be set to true to enable insights
    #     for the group or false to disable insights for the group.
    #
    #   * The NotifcationsEnabled boolean can be set to true to enable
    #     insights notifications for the group. Notifications can only be
    #     enabled on a group with InsightsEnabled set to true.
    #   @return [Types::InsightsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UpdateGroupRequest AWS API Documentation
    #
    class UpdateGroupRequest < Struct.new(
      :group_name,
      :group_arn,
      :filter_expression,
      :insights_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The group that was updated. Contains the name of the group that was
    #   updated, the ARN of the group that was updated, the updated filter
    #   expression, and the updated insight configuration assigned to the
    #   group.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UpdateGroupResult AWS API Documentation
    #
    class UpdateGroupResult < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSamplingRuleRequest
    #   data as a hash:
    #
    #       {
    #         sampling_rule_update: { # required
    #           rule_name: "RuleName",
    #           rule_arn: "String",
    #           resource_arn: "ResourceARN",
    #           priority: 1,
    #           fixed_rate: 1.0,
    #           reservoir_size: 1,
    #           host: "Host",
    #           service_name: "ServiceName",
    #           service_type: "ServiceType",
    #           http_method: "HTTPMethod",
    #           url_path: "URLPath",
    #           attributes: {
    #             "AttributeKey" => "AttributeValue",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] sampling_rule_update
    #   The rule and fields to change.
    #   @return [Types::SamplingRuleUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UpdateSamplingRuleRequest AWS API Documentation
    #
    class UpdateSamplingRuleRequest < Struct.new(
      :sampling_rule_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sampling_rule_record
    #   The updated rule definition and metadata.
    #   @return [Types::SamplingRuleRecord]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UpdateSamplingRuleResult AWS API Documentation
    #
    class UpdateSamplingRuleResult < Struct.new(
      :sampling_rule_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a segment annotation.
    #
    # @!attribute [rw] annotation_value
    #   Values of the annotation.
    #   @return [Types::AnnotationValue]
    #
    # @!attribute [rw] service_ids
    #   Services to which the annotation applies.
    #   @return [Array<Types::ServiceId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ValueWithServiceIds AWS API Documentation
    #
    class ValueWithServiceIds < Struct.new(
      :annotation_value,
      :service_ids)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
