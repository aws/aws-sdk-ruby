# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:health)

module Aws::Health
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :health

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Returns a list of entities that have been affected by the specified
    # events, based on the specified filter criteria. Entities can refer to
    # individual customer resources, groups of customer resources, or any
    # other construct, depending on the AWS service. Events that have impact
    # beyond that of the affected entities, or where the extent of impact is
    # unknown, include at least one entity indicating this.
    #
    # At least one event ARN is required. Results are sorted by the
    # `lastUpdatedTime` of the entity, starting with the most recent.
    #
    # @option params [required, Types::EntityFilter] :filter
    #   Values to narrow the results returned. At least one event ARN is
    #   required.
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    # @return [Types::DescribeAffectedEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAffectedEntitiesResponse#entities #entities} => Array&lt;Types::AffectedEntity&gt;
    #   * {Types::DescribeAffectedEntitiesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_affected_entities({
    #     filter: { # required
    #       event_arns: ["eventArn"], # required
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       last_updated_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       tags: [
    #         {
    #           "tagKey" => "tagValue",
    #         },
    #       ],
    #       status_codes: ["IMPAIRED"], # accepts IMPAIRED, UNIMPAIRED, UNKNOWN
    #     },
    #     locale: "locale",
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].entity_arn #=> String
    #   resp.entities[0].event_arn #=> String
    #   resp.entities[0].entity_value #=> String
    #   resp.entities[0].aws_account_id #=> String
    #   resp.entities[0].last_updated_time #=> Time
    #   resp.entities[0].status_code #=> String, one of "IMPAIRED", "UNIMPAIRED", "UNKNOWN"
    #   resp.entities[0].tags #=> Hash
    #   resp.entities[0].tags["tagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntities AWS API Documentation
    #
    # @overload describe_affected_entities(params = {})
    # @param [Hash] params ({})
    def describe_affected_entities(params = {}, options = {})
      req = build_request(:describe_affected_entities, params)
      req.send_request(options)
    end

    # Returns the number of entities that are affected by each of the
    # specified events. If no events are specified, the counts of all
    # affected entities are returned.
    #
    # @option params [Array<String>] :event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #
    # @return [Types::DescribeEntityAggregatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntityAggregatesResponse#entity_aggregates #entity_aggregates} => Array&lt;Types::EntityAggregate&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entity_aggregates({
    #     event_arns: ["eventArn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_aggregates #=> Array
    #   resp.entity_aggregates[0].event_arn #=> String
    #   resp.entity_aggregates[0].count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregates AWS API Documentation
    #
    # @overload describe_entity_aggregates(params = {})
    # @param [Hash] params ({})
    def describe_entity_aggregates(params = {}, options = {})
      req = build_request(:describe_entity_aggregates, params)
      req.send_request(options)
    end

    # Returns the number of events of each event type (issue, scheduled
    # change, and account notification). If no filter is specified, the
    # counts of all events in each category are returned.
    #
    # @option params [Types::EventFilter] :filter
    #   Values to narrow the results returned.
    #
    # @option params [required, String] :aggregate_field
    #   The only currently supported value is `eventTypeCategory`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @return [Types::DescribeEventAggregatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventAggregatesResponse#event_aggregates #event_aggregates} => Array&lt;Types::EventAggregate&gt;
    #   * {Types::DescribeEventAggregatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_aggregates({
    #     filter: {
    #       event_arns: ["eventArn"],
    #       event_type_codes: ["eventType"],
    #       services: ["service"],
    #       regions: ["region"],
    #       availability_zones: ["availabilityZone"],
    #       start_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       end_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       last_updated_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange
    #       tags: [
    #         {
    #           "tagKey" => "tagValue",
    #         },
    #       ],
    #       event_status_codes: ["open"], # accepts open, closed, upcoming
    #     },
    #     aggregate_field: "eventTypeCategory", # required, accepts eventTypeCategory
    #     max_results: 1,
    #     next_token: "nextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_aggregates #=> Array
    #   resp.event_aggregates[0].aggregate_value #=> String
    #   resp.event_aggregates[0].count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventAggregates AWS API Documentation
    #
    # @overload describe_event_aggregates(params = {})
    # @param [Hash] params ({})
    def describe_event_aggregates(params = {}, options = {})
      req = build_request(:describe_event_aggregates, params)
      req.send_request(options)
    end

    # Returns detailed information about one or more specified events.
    # Information includes standard event data (region, service, etc., as
    # returned by DescribeEvents), a detailed event description, and
    # possible additional metadata that depends upon the nature of the
    # event. Affected entities are not included; to retrieve those, use the
    # DescribeAffectedEntities operation.
    #
    # If a specified event cannot be retrieved, an error message is returned
    # for that event.
    #
    # @option params [required, Array<String>] :event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @return [Types::DescribeEventDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventDetailsResponse#successful_set #successful_set} => Array&lt;Types::EventDetails&gt;
    #   * {Types::DescribeEventDetailsResponse#failed_set #failed_set} => Array&lt;Types::EventDetailsErrorItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_details({
    #     event_arns: ["eventArn"], # required
    #     locale: "locale",
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_set #=> Array
    #   resp.successful_set[0].event.arn #=> String
    #   resp.successful_set[0].event.service #=> String
    #   resp.successful_set[0].event.event_type_code #=> String
    #   resp.successful_set[0].event.event_type_category #=> String, one of "issue", "accountNotification", "scheduledChange"
    #   resp.successful_set[0].event.region #=> String
    #   resp.successful_set[0].event.availability_zone #=> String
    #   resp.successful_set[0].event.start_time #=> Time
    #   resp.successful_set[0].event.end_time #=> Time
    #   resp.successful_set[0].event.last_updated_time #=> Time
    #   resp.successful_set[0].event.status_code #=> String, one of "open", "closed", "upcoming"
    #   resp.successful_set[0].event_description.latest_description #=> String
    #   resp.successful_set[0].event_metadata #=> Hash
    #   resp.successful_set[0].event_metadata["metadataKey"] #=> String
    #   resp.failed_set #=> Array
    #   resp.failed_set[0].event_arn #=> String
    #   resp.failed_set[0].error_name #=> String
    #   resp.failed_set[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetails AWS API Documentation
    #
    # @overload describe_event_details(params = {})
    # @param [Hash] params ({})
    def describe_event_details(params = {}, options = {})
      req = build_request(:describe_event_details, params)
      req.send_request(options)
    end

    # Returns the event types that meet the specified filter criteria. If no
    # filter criteria are specified, all event types are returned, in no
    # particular order.
    #
    # @option params [Types::EventTypeFilter] :filter
    #   Values to narrow the results returned.
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    # @return [Types::DescribeEventTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventTypesResponse#event_types #event_types} => Array&lt;Types::EventType&gt;
    #   * {Types::DescribeEventTypesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_types({
    #     filter: {
    #       event_type_codes: ["eventTypeCode"],
    #       services: ["service"],
    #       event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange
    #     },
    #     locale: "locale",
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_types #=> Array
    #   resp.event_types[0].service #=> String
    #   resp.event_types[0].code #=> String
    #   resp.event_types[0].category #=> String, one of "issue", "accountNotification", "scheduledChange"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventTypes AWS API Documentation
    #
    # @overload describe_event_types(params = {})
    # @param [Hash] params ({})
    def describe_event_types(params = {}, options = {})
      req = build_request(:describe_event_types, params)
      req.send_request(options)
    end

    # Returns information about events that meet the specified filter
    # criteria. Events are returned in a summary form and do not include the
    # detailed description, any additional metadata that depends on the
    # event type, or any affected resources. To retrieve that information,
    # use the DescribeEventDetails and DescribeAffectedEntities operations.
    #
    # If no filter criteria are specified, all events are returned. Results
    # are sorted by `lastModifiedTime`, starting with the most recent.
    #
    # @option params [Types::EventFilter] :filter
    #   Values to narrow the results returned.
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @return [Types::DescribeEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::DescribeEventsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     filter: {
    #       event_arns: ["eventArn"],
    #       event_type_codes: ["eventType"],
    #       services: ["service"],
    #       regions: ["region"],
    #       availability_zones: ["availabilityZone"],
    #       start_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       end_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       last_updated_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange
    #       tags: [
    #         {
    #           "tagKey" => "tagValue",
    #         },
    #       ],
    #       event_status_codes: ["open"], # accepts open, closed, upcoming
    #     },
    #     next_token: "nextToken",
    #     max_results: 1,
    #     locale: "locale",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].arn #=> String
    #   resp.events[0].service #=> String
    #   resp.events[0].event_type_code #=> String
    #   resp.events[0].event_type_category #=> String, one of "issue", "accountNotification", "scheduledChange"
    #   resp.events[0].region #=> String
    #   resp.events[0].availability_zone #=> String
    #   resp.events[0].start_time #=> Time
    #   resp.events[0].end_time #=> Time
    #   resp.events[0].last_updated_time #=> Time
    #   resp.events[0].status_code #=> String, one of "open", "closed", "upcoming"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-health'
      context[:gem_version] = '1.5.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
