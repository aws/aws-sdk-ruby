# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc'

module Aws::CloudTrail
  # An API client for Aws::CloudTrail.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CloudTrail20131101

    add_plugin(::Aws::CloudTrail::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpc)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::CloudTrail::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Adds one or more tags to a trail, event data store, dashboard, or channel, up to a limit of 50. Overwrites an
    #          existing tag's value when a new value is specified for an existing tag key. Tag key names
    #          must be unique; you cannot have two keys with the same name but different
    #          values. If you specify a key without a value, the tag will be created with the specified
    #          key and a value of null. You can tag a trail or event data store that applies to all
    #             Amazon Web Services Regions only from the Region in which the trail or event data store
    #          was created (also known as its home Region).</p>
    # @param [Hash, Types::AddTagsRequest] params
    # @option params [String] :resource_id
    #   <p>Specifies the ARN of the trail, event data store, dashboard, or channel to which one or more tags will be
    #            added.</p>
    #            <p>The format of a trail ARN is:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>The format of an event data store ARN is:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>The format of a dashboard ARN is: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>The format of a channel ARN is:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags_list
    #   <p>Contains a list of tags, up to a limit of 50</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "String", # required
    #     tags_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddTagsResponse]
    def add_tags(params = {}, options = {})
      request = build_request(:add_tags, params)
      request.send_request(options)
    end

    # <p>Cancels a query if the query is not in a terminated state, such as
    #             <code>CANCELLED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or
    #             <code>FINISHED</code>. You must specify an ARN value for <code>EventDataStore</code>.
    #          The ID of the query that you want to cancel is also required. When you run
    #             <code>CancelQuery</code>, the query status might show as <code>CANCELLED</code> even if
    #          the operation is not yet finished.</p>
    # @param [Hash, Types::CancelQueryRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified
    #            query is running.</p>
    # @option params [String] :query_id
    #   <p>The ID of the query that you want to cancel. The <code>QueryId</code> comes from the
    #            response of a <code>StartQuery</code> operation.</p>
    # @option params [String] :event_data_store_owner_account_id
    #   <p>
    #   The account ID of the event data store owner.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn",
    #     query_id: "UUID", # required
    #     event_data_store_owner_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.cancel_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "UUID", # required
    #     query_status: "QUEUED" # One of: ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"], # required
    #     event_data_store_owner_account_id: "AccountId"
    #   }
    # @return [Types::CancelQueryResponse]
    def cancel_query(params = {}, options = {})
      request = build_request(:cancel_query, params)
      request.send_request(options)
    end

    # <p>Creates a channel for CloudTrail to ingest events from a partner or external source. 
    #          After you create a channel, a CloudTrail Lake event data store can log events 
    #       from the partner or source that you specify.</p>
    # @param [Hash, Types::CreateChannelRequest] params
    # @option params [String] :name
    #   <p>The name of the channel.</p>
    # @option params [String] :source
    #   <p>The name of the partner or external event source. You cannot change this name after you create the 
    #            channel. A maximum of one channel is allowed per source.</p>
    #            <p>
    #            A source can be either <code>Custom</code> for all valid non-Amazon Web Services
    #            events, or the name of a partner event source. For information about the source names for available partners, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store-integration.html#cloudtrail-lake-partner-information">Additional information about integration partners</a> in the CloudTrail User Guide.
    #         </p>
    # @option params [Array<Types::Destination>] :destinations
    #   <p>One or more event data stores to which events arriving through a channel will be logged.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ChannelName", # required
    #     source: "Source", # required
    #     destinations: [ # required
    #       {
    #         type: "EVENT_DATA_STORE" # One of: ["EVENT_DATA_STORE", "AWS_SERVICE"], # required
    #         location: "Location", # required
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChannelArn",
    #     name: "ChannelName",
    #     source: "Source",
    #     destinations: [
    #       {
    #         type: "EVENT_DATA_STORE" # One of: ["EVENT_DATA_STORE", "AWS_SERVICE"], # required
    #         location: "Location", # required
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::CreateChannelResponse]
    def create_channel(params = {}, options = {})
      request = build_request(:create_channel, params)
      request.send_request(options)
    end

    # <p>
    # Creates a custom dashboard or the Highlights dashboard.
    # </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Custom dashboards</b> - Custom dashboards allow you to query 
    #             events in any event data store type. You can add up to 10 widgets to a custom dashboard. You can manually refresh a custom dashboard, or you can set a refresh schedule.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Highlights dashboard</b> - You can create
    #             the Highlights dashboard to see a summary of key user activities and API usage across all your event data stores. 
    #             CloudTrail Lake manages the Highlights dashboard and refreshes the dashboard every 6 hours. To create the Highlights dashboard, you must set and enable a refresh schedule.</p>
    #             </li>
    #          </ul>
    #          <p>
    #       CloudTrail runs queries to populate the dashboard's widgets during a manual or scheduled refresh. CloudTrail must be granted permissions to run the <code>StartQuery</code> operation on your behalf. To provide permissions, run the <code>PutResourcePolicy</code> operation to attach a resource-based policy to each event data store. For more information, 
    #       see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard">Example: Allow CloudTrail to run queries to populate a dashboard</a> in the <i>CloudTrail User Guide</i>.
    #    </p>
    #          <p>
    #       To set a refresh schedule, CloudTrail must be granted permissions to run the <code>StartDashboardRefresh</code> operation to refresh the dashboard on your behalf. To provide permissions, run the <code>PutResourcePolicy</code> operation to attach a resource-based policy to the dashboard. For more information, 
    #       see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-dashboards">
    #          Resource-based policy example for a dashboard</a> in the <i>CloudTrail User Guide</i>.
    #    </p>
    #          <p>For more information about dashboards, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-dashboard.html">CloudTrail Lake dashboards</a> in the <i>CloudTrail User Guide</i>.</p>
    # @param [Hash, Types::CreateDashboardRequest] params
    # @option params [String] :name
    #   <p>
    #      The name of the dashboard. The name must be unique to your account.
    #   </p>
    #            <p>To create the Highlights dashboard, the name must be <code>AWSCloudTrail-Highlights</code>.</p>
    # @option params [Types::RefreshSchedule] :refresh_schedule
    #   <p>
    #      The refresh schedule configuration for the dashboard.
    #   </p>
    #            <p>To create the Highlights dashboard, you must set a refresh schedule and set the <code>Status</code> to <code>ENABLED</code>. The <code>Unit</code> for the refresh schedule must be <code>HOURS</code> 
    #      and the <code>Value</code> must be <code>6</code>.</p>
    # @option params [Array<Types::Tag>] :tags_list
    #   <p>A list of tags.</p>
    # @option params [Boolean] :termination_protection_enabled
    #   <p>
    #      Specifies whether termination protection is enabled for the dashboard. If termination protection is enabled, you cannot delete the dashboard until termination protection is disabled.
    #   </p>
    # @option params [Array<Types::RequestWidget>] :widgets
    #   <p>
    #   An array of widgets for a custom dashboard. A custom dashboard can have a maximum of ten widgets.
    #   </p>
    #            <p>You do not need to specify widgets for the Highlights dashboard.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DashboardName", # required
    #     refresh_schedule: {
    #       frequency: {
    #         unit: "HOURS" # One of: ["HOURS", "DAYS"],
    #         value: 1
    #       },
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       time_of_day: "TimeOfDay"
    #     },
    #     tags_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     termination_protection_enabled: false,
    #     widgets: [
    #       {
    #         query_statement: "QueryStatement", # required
    #         query_parameters: ["QueryParameter"],
    #         view_properties: { # required
    #           "ViewPropertiesKey" => "ViewPropertiesValue"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboard_arn: "DashboardArn",
    #     name: "DashboardName",
    #     type: "MANAGED" # One of: ["MANAGED", "CUSTOM"],
    #     widgets: [
    #       {
    #         query_alias: "QueryAlias",
    #         query_statement: "QueryStatement",
    #         query_parameters: ["QueryParameter"],
    #         view_properties: {
    #           "ViewPropertiesKey" => "ViewPropertiesValue"
    #         }
    #       }
    #     ],
    #     tags_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     refresh_schedule: {
    #       frequency: {
    #         unit: "HOURS" # One of: ["HOURS", "DAYS"],
    #         value: 1
    #       },
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       time_of_day: "TimeOfDay"
    #     },
    #     termination_protection_enabled: false
    #   }
    # @return [Types::CreateDashboardResponse]
    def create_dashboard(params = {}, options = {})
      request = build_request(:create_dashboard, params)
      request.send_request(options)
    end

    # <p>Creates a new event data store.</p>
    # @param [Hash, Types::CreateEventDataStoreRequest] params
    # @option params [String] :name
    #   <p>The name of the event data store.</p>
    # @option params [Array<Types::AdvancedEventSelector>] :advanced_event_selectors
    #   <p>The advanced event selectors to use to select the events for the data store. You can
    #            configure up to five advanced event selectors for each event data store.</p>
    #            <p> For more information about how to use advanced event selectors to log CloudTrail
    #            events, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced">Log events by using advanced event selectors</a> in the CloudTrail User Guide.</p>
    #            <p>For more information about how to use advanced event selectors to include Config configuration items in your event data store, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-eds-cli.html#lake-cli-create-eds-config">Create an event data store for Config configuration
    #               items</a> in the CloudTrail User Guide.</p>
    #            <p>For more information about how to use advanced event selectors to include events outside of Amazon Web Services events in your event data store, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-integrations-cli.html#lake-cli-create-integration">Create an integration to log events from outside Amazon Web Services</a> in the CloudTrail User Guide.</p>
    # @option params [Boolean] :multi_region_enabled
    #   <p>Specifies whether the event data store includes events from all Regions, or only from
    #            the Region in which the event data store is created.</p>
    # @option params [Boolean] :organization_enabled
    #   <p>Specifies whether an event data store collects events logged for an organization in
    #               Organizations.</p>
    # @option params [Integer] :retention_period
    #   <p>The retention period of the event data store, in days. If <code>BillingMode</code> is set to <code>EXTENDABLE_RETENTION_PRICING</code>, you can set a retention period of
    #            up to 3653 days, the equivalent of 10 years. If <code>BillingMode</code> is set to <code>FIXED_RETENTION_PRICING</code>, you can set a retention period of
    #            up to 2557 days, the equivalent of seven years.</p>
    #            <p>CloudTrail  Lake determines whether to retain an event by checking if the <code>eventTime</code> 
    #            of the event is within the specified retention period. For example, if you set a retention period of 90 days, CloudTrail will remove events 
    #         when the <code>eventTime</code> is older than 90 days.</p>
    #            <note>
    #               <p>If you plan to copy trail events to this event data store, we recommend 
    #               that you consider both the age of the events that you
    #               want to copy as well as how long you want to keep the copied events
    #               in your event data store. For example, if you copy trail events that are 5 years old 
    #               and specify a retention period of 7 years, the event data store 
    #               will retain those events for two years.</p>
    #            </note>
    # @option params [Boolean] :termination_protection_enabled
    #   <p>Specifies whether termination protection is enabled for the event data store. If
    #            termination protection is enabled, you cannot delete the event data store until termination
    #            protection is disabled.</p>
    # @option params [Array<Types::Tag>] :tags_list
    #   <p>A list of tags.</p>
    # @option params [String] :kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the events delivered by
    #               CloudTrail. The value can be an alias name prefixed by <code>alias/</code>, a
    #            fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique
    #            identifier.</p>
    #            <important>
    #               <p>Disabling or deleting the KMS key, or removing CloudTrail
    #               permissions on the key, prevents CloudTrail from logging events to the event data
    #               store, and prevents users from querying the data in the event data store that was
    #               encrypted with the key. After you associate an event data store with a KMS key, the KMS key cannot be removed or changed. Before you
    #               disable or delete a KMS key that you are using with an event data store,
    #               delete or back up your event data store.</p>
    #            </important>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more
    #            information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region
    #               keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :start_ingestion
    #   <p>Specifies whether the event data store should start ingesting live events. The default is true.</p>
    # @option params [String] :billing_mode
    #   <p>The billing mode for the event data store determines the cost for ingesting events and the default and maximum retention period for the event data store.</p>
    #            <p>The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXTENDABLE_RETENTION_PRICING</code> - This billing mode is generally recommended if you want a flexible retention period of up to 3653 days (about 10 years). 
    #                   The default retention period for this billing mode is 366 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FIXED_RETENTION_PRICING</code> - This billing mode is recommended if you expect to ingest more than 25 TB of event data per month and need a retention period of up to 2557 days (about 7 years). 
    #                   The default retention period for this billing mode is 2557 days.</p>
    #               </li>
    #            </ul>
    #            <p>The default value is <code>EXTENDABLE_RETENTION_PRICING</code>.</p>
    #            <p>For more information about CloudTrail pricing, 
    #            see <a href="http://aws.amazon.com/cloudtrail/pricing/">CloudTrail Pricing</a> and 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-manage-costs.html">Managing CloudTrail Lake costs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventDataStoreName", # required
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"]
    #           }
    #         ]
    #       }
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #     tags_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     kms_key_id: "EventDataStoreKmsKeyId",
    #     start_ingestion: false,
    #     billing_mode: "EXTENDABLE_RETENTION_PRICING" # One of: ["EXTENDABLE_RETENTION_PRICING", "FIXED_RETENTION_PRICING"]
    #   }
    #   options = {}
    #   response = client.create_event_data_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_data_store_arn: "EventDataStoreArn",
    #     name: "EventDataStoreName",
    #     status: "CREATED" # One of: ["CREATED", "ENABLED", "PENDING_DELETION", "STARTING_INGESTION", "STOPPING_INGESTION", "STOPPED_INGESTION"],
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"]
    #           }
    #         ]
    #       }
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #     tags_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     created_timestamp: Time.now,
    #     updated_timestamp: Time.now,
    #     kms_key_id: "EventDataStoreKmsKeyId",
    #     billing_mode: "EXTENDABLE_RETENTION_PRICING" # One of: ["EXTENDABLE_RETENTION_PRICING", "FIXED_RETENTION_PRICING"]
    #   }
    # @return [Types::CreateEventDataStoreResponse]
    def create_event_data_store(params = {}, options = {})
      request = build_request(:create_event_data_store, params)
      request.send_request(options)
    end

    # <p>Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket.
    #          </p>
    # @param [Hash, Types::CreateTrailRequest] params
    # @option params [String] :name
    #   <p>Specifies the name of the trail. The name must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                  (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like
    #                     <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    # @option params [String] :s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log files. 
    #            For information about bucket naming rules, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Bucket naming rules</a> 
    #            in the <i>Amazon Simple Storage Service User Guide</i>.
    #           </p>
    # @option params [String] :s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you
    #            have designated for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files">Finding Your CloudTrail Log Files</a>. The maximum length is 200
    #            characters.</p>
    # @option params [String] :sns_topic_name
    #   <p>Specifies the name or ARN of the Amazon SNS topic defined for notification of log file
    #            delivery. The maximum length is 256 characters.</p>
    # @option params [Boolean] :include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the
    #            log files.</p>
    # @option params [Boolean] :is_multi_region_trail
    #   <p>Specifies whether the trail is created in the current Region or in all Regions. The
    #            default is false, which creates a trail only in the Region where you are signed in. As a
    #            best practice, consider creating trails that log events in all Regions.</p>
    # @option params [Boolean] :enable_log_file_validation
    #   <p>Specifies whether log file integrity validation is enabled. The default is false.</p>
    #            <note>
    #               <p>When you disable log file integrity validation, the chain of digest files is broken
    #               after one hour. CloudTrail does not create digest files for log files that were
    #               delivered during a period in which log file integrity validation was disabled. For
    #               example, if you enable log file integrity validation at noon on January 1, disable it at
    #               noon on January 2, and re-enable it at noon on January 10, digest files will not be
    #               created for the log files delivered from noon on January 2 to noon on January 10. The
    #               same applies whenever you stop CloudTrail logging or delete a trail.</p>
    #            </note>
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that
    #            represents the log group to which CloudTrail logs will be delivered. You must use a
    #            log group that exists in your account.</p>
    #            <p>Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>
    # @option params [String] :cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's
    #            log group. You must use a role that exists in your account.</p>
    # @option params [String] :kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by <code>alias/</code>, a fully
    #            specified ARN to an alias, a fully specified ARN to a key, or a globally unique
    #            identifier.</p>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more
    #            information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region
    #               keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :is_organization_trail
    #   <p>Specifies whether the trail is created for all accounts in an organization in Organizations, or only for the current Amazon Web Services account. The default is false,
    #            and cannot be true unless the call is made on behalf of an Amazon Web Services account that
    #            is the management account or delegated administrator account for an organization in Organizations.</p>
    # @option params [Array<Types::Tag>] :tags_list
    #   <p>A list of tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     s3_bucket_name: "String", # required
    #     s3_key_prefix: "String",
    #     sns_topic_name: "String",
    #     include_global_service_events: false,
    #     is_multi_region_trail: false,
    #     enable_log_file_validation: false,
    #     cloud_watch_logs_log_group_arn: "String",
    #     cloud_watch_logs_role_arn: "String",
    #     kms_key_id: "String",
    #     is_organization_trail: false,
    #     tags_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_trail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String",
    #     s3_bucket_name: "String",
    #     s3_key_prefix: "String",
    #     sns_topic_name: "String",
    #     sns_topic_arn: "String",
    #     include_global_service_events: false,
    #     is_multi_region_trail: false,
    #     trail_arn: "String",
    #     log_file_validation_enabled: false,
    #     cloud_watch_logs_log_group_arn: "String",
    #     cloud_watch_logs_role_arn: "String",
    #     kms_key_id: "String",
    #     is_organization_trail: false
    #   }
    # @return [Types::CreateTrailResponse]
    def create_trail(params = {}, options = {})
      request = build_request(:create_trail, params)
      request.send_request(options)
    end

    # <p>Deletes a channel.</p>
    # @param [Hash, Types::DeleteChannelRequest] params
    # @option params [String] :channel
    #   <p>The ARN or the <code>UUID</code> value of the channel that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel: "ChannelArn", # required
    #   }
    #   options = {}
    #   response = client.delete_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChannelResponse]
    def delete_channel(params = {}, options = {})
      request = build_request(:delete_channel, params)
      request.send_request(options)
    end

    # <p>
    # Deletes the specified dashboard. You cannot delete a dashboard that has termination protection enabled.
    # </p>
    # @param [Hash, Types::DeleteDashboardRequest] params
    # @option params [String] :dashboard_id
    #   <p>
    #   The name or ARN for the dashboard.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_id: "DashboardArn", # required
    #   }
    #   options = {}
    #   response = client.delete_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDashboardResponse]
    def delete_dashboard(params = {}, options = {})
      request = build_request(:delete_dashboard, params)
      request.send_request(options)
    end

    # <p>Disables the event data store specified by <code>EventDataStore</code>, which accepts an
    #          event data store ARN. After you run <code>DeleteEventDataStore</code>, the event data store
    #          enters a <code>PENDING_DELETION</code> state, and is automatically deleted after a wait
    #          period of seven days. <code>TerminationProtectionEnabled</code> must be set to
    #             <code>False</code> on the event data store and the <code>FederationStatus</code> must be <code>DISABLED</code>. 
    #          You cannot delete an event data store if <code>TerminationProtectionEnabled</code> 
    #          is <code>True</code> or the <code>FederationStatus</code> is <code>ENABLED</code>.</p>
    #          <p>After you run <code>DeleteEventDataStore</code> on an event data store, you cannot run
    #             <code>ListQueries</code>, <code>DescribeQuery</code>, or <code>GetQueryResults</code> on
    #          queries that are using an event data store in a <code>PENDING_DELETION</code> state. An
    #          event data store in the <code>PENDING_DELETION</code> state does not incur costs.</p>
    # @param [Hash, Types::DeleteEventDataStoreRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn", # required
    #   }
    #   options = {}
    #   response = client.delete_event_data_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEventDataStoreResponse]
    def delete_event_data_store(params = {}, options = {})
      request = build_request(:delete_event_data_store, params)
      request.send_request(options)
    end

    # <p>
    #          Deletes the resource-based policy attached to the CloudTrail event data store, dashboard, or channel.
    #       </p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel you're deleting the resource-based policy from.</p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a trail. This operation must be called from the Region in which the trail was
    #          created. <code>DeleteTrail</code> cannot be called on the shadow trails (replicated trails
    #          in other Regions) of a trail that is enabled in all Regions.</p>
    # @param [Hash, Types::DeleteTrailRequest] params
    # @option params [String] :name
    #   <p>Specifies the name or the CloudTrail ARN of the trail to be deleted. The
    #            following is the format of a trail ARN.
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_trail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTrailResponse]
    def delete_trail(params = {}, options = {})
      request = build_request(:delete_trail, params)
      request.send_request(options)
    end

    # <p>Removes CloudTrail delegated administrator permissions from a member account in
    #          an organization.</p>
    # @param [Hash, Types::DeregisterOrganizationDelegatedAdminRequest] params
    # @option params [String] :delegated_admin_account_id
    #   <p>A delegated administrator account ID. This is a member account in an organization that
    #            is currently designated as a delegated administrator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delegated_admin_account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.deregister_organization_delegated_admin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterOrganizationDelegatedAdminResponse]
    def deregister_organization_delegated_admin(params = {}, options = {})
      request = build_request(:deregister_organization_delegated_admin, params)
      request.send_request(options)
    end

    # <p>Returns metadata about a query, including query run time in milliseconds, number of
    #          events scanned and matched, and query status. If the query results were delivered to an S3 bucket, 
    #          the response also provides the S3 URI and the delivery status.</p>
    #          <p>You must specify either <code>QueryId</code> or <code>QueryAlias</code>. Specifying the <code>QueryAlias</code> parameter 
    #          returns information about the last query run for the alias. You can provide 
    #          <code>RefreshId</code> along with <code>QueryAlias</code> to view the query results 
    #          of a dashboard query for the specified <code>RefreshId</code>.</p>
    # @param [Hash, Types::DescribeQueryRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified
    #            query was run.</p>
    # @option params [String] :query_id
    #   <p>The query ID.</p>
    # @option params [String] :query_alias
    #   <p>
    #            The alias that identifies a query template.
    #         </p>
    # @option params [String] :refresh_id
    #   <p>
    #   The ID of the dashboard refresh.
    #   </p>
    # @option params [String] :event_data_store_owner_account_id
    #   <p>
    #   The account ID of the event data store owner.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn",
    #     query_id: "UUID",
    #     query_alias: "QueryAlias",
    #     refresh_id: "RefreshId",
    #     event_data_store_owner_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "UUID",
    #     query_string: "QueryStatement",
    #     query_status: "QUEUED" # One of: ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"],
    #     query_statistics: {
    #       events_matched: 1,
    #       events_scanned: 1,
    #       bytes_scanned: 1,
    #       execution_time_in_millis: 1,
    #       creation_time: Time.now
    #     },
    #     error_message: "ErrorMessage",
    #     delivery_s3_uri: "DeliveryS3Uri",
    #     delivery_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "FAILED_SIGNING_FILE", "PENDING", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "ACCESS_DENIED_SIGNING_FILE", "CANCELLED", "UNKNOWN"],
    #     prompt: "Prompt",
    #     event_data_store_owner_account_id: "AccountId"
    #   }
    # @return [Types::DescribeQueryResponse]
    def describe_query(params = {}, options = {})
      request = build_request(:describe_query, params)
      request.send_request(options)
    end

    # <p>Retrieves settings for one or more trails associated with the current Region for your
    #          account.</p>
    # @param [Hash, Types::DescribeTrailsRequest] params
    # @option params [Array<String>] :trail_name_list
    #   <p>Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The
    #            format of a trail ARN is:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>If an empty list is specified, information for the trail in the current Region is
    #            returned.</p>
    #            <ul>
    #               <li>
    #                  <p>If an empty list is specified and <code>IncludeShadowTrails</code> is false, then
    #                  information for all trails in the current Region is returned.</p>
    #               </li>
    #               <li>
    #                  <p>If an empty list is specified and IncludeShadowTrails is null or true, then
    #                  information for all trails in the current Region and any associated shadow trails in
    #                  other Regions is returned.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If one or more trail names are specified, information is returned only if the names
    #               match the names of trails belonging only to the current Region and current account. To
    #               return information about a trail in another Region, you must specify its trail
    #               ARN.</p>
    #            </note>
    # @option params [Boolean] :include_shadow_trails
    #   <p>Specifies whether to include shadow trails in the response. A shadow trail is the
    #            replication in a Region of a trail that was created in a different Region, or in the case
    #            of an organization trail, the replication of an organization trail in member accounts. If
    #            you do not include shadow trails, organization trails in a member account and Region
    #            replication trails will not be returned. The default is true.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trail_name_list: ["String"],
    #     include_shadow_trails: false
    #   }
    #   options = {}
    #   response = client.describe_trails(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trail_list: [
    #       {
    #         name: "String",
    #         s3_bucket_name: "String",
    #         s3_key_prefix: "String",
    #         sns_topic_name: "String",
    #         sns_topic_arn: "String",
    #         include_global_service_events: false,
    #         is_multi_region_trail: false,
    #         home_region: "String",
    #         trail_arn: "String",
    #         log_file_validation_enabled: false,
    #         cloud_watch_logs_log_group_arn: "String",
    #         cloud_watch_logs_role_arn: "String",
    #         kms_key_id: "String",
    #         has_custom_event_selectors: false,
    #         has_insight_selectors: false,
    #         is_organization_trail: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTrailsResponse]
    def describe_trails(params = {}, options = {})
      request = build_request(:describe_trails, params)
      request.send_request(options)
    end

    # <p>
    #          Disables Lake query federation on the specified event data store. When you disable federation, CloudTrail disables 
    #          the integration with Glue, Lake Formation, and Amazon Athena. 
    #          After disabling Lake query federation, you can no longer query your event data in Amazon Athena.</p>
    #          <p>No CloudTrail Lake data is deleted when you disable federation and you can continue to run queries in CloudTrail Lake.</p>
    # @param [Hash, Types::DisableFederationRequest] params
    # @option params [String] :event_data_store
    #   <p>
    #            The ARN (or ID suffix of the ARN) of the event data store for which you want to disable Lake query federation.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn", # required
    #   }
    #   options = {}
    #   response = client.disable_federation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_data_store_arn: "EventDataStoreArn",
    #     federation_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #   }
    # @return [Types::DisableFederationResponse]
    def disable_federation(params = {}, options = {})
      request = build_request(:disable_federation, params)
      request.send_request(options)
    end

    # <p>
    #          Enables Lake query federation on the specified event data store. Federating an event data store lets you view the metadata associated with the event data store in the Glue 
    #          <a href="https://docs.aws.amazon.com/glue/latest/dg/components-overview.html#data-catalog-intro">Data Catalog</a> and run 
    #          SQL queries against your event data using Amazon Athena. The table metadata stored in the Glue Data Catalog 
    #          lets the Athena query engine know how to find, read, and process the data that you want to query.</p>
    #          <p>When you enable Lake query federation, CloudTrail
    #          creates a managed database named <code>aws:cloudtrail</code> (if the database doesn't already exist) and a managed federated table in
    #          the Glue Data Catalog. The event data store ID is used for the table name. CloudTrail registers the role ARN and event data store in
    #          <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation-lake-formation.html">Lake Formation</a>, the service responsible for allowing fine-grained access control 
    #          of the federated resources in the Glue Data Catalog.</p>
    #          <p>For more information about Lake query federation, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html">Federate an event data store</a>.</p>
    # @param [Hash, Types::EnableFederationRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store for which you want to enable Lake query federation.</p>
    # @option params [String] :federation_role_arn
    #   <p>
    #            The ARN of the federation role to use for the event data store. Amazon Web Services services like Lake Formation use this federation role to access data for the federated event 
    #            data store. The federation role must exist in your account and provide the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html#query-federation-permissions-role">required minimum permissions</a>.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn", # required
    #     federation_role_arn: "FederationRoleArn", # required
    #   }
    #   options = {}
    #   response = client.enable_federation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_data_store_arn: "EventDataStoreArn",
    #     federation_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"],
    #     federation_role_arn: "FederationRoleArn"
    #   }
    # @return [Types::EnableFederationResponse]
    def enable_federation(params = {}, options = {})
      request = build_request(:enable_federation, params)
      request.send_request(options)
    end

    # <p>
    #          Generates a query from a natural language prompt. This operation uses generative artificial intelligence
    #          (generative AI) to produce a ready-to-use SQL query from the prompt.
    #       </p>
    #          <p>The prompt can be a question or a statement about the event data
    #          in your event data store. For example, you can enter prompts like "What are my
    #          top errors in the past month?" and “Give me a list of users that used SNS.”</p>
    #          <p>The prompt must be in English. For information about limitations, permissions, and supported Regions, see 
    #          <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html">Create CloudTrail Lake queries from natural language prompts</a> 
    #          in the <i>CloudTrail </i> user guide.</p>
    #          <note>
    #             <p>Do not include any personally identifying, confidential, or sensitive information
    #             in your prompts.</p>
    #             <p>This feature uses generative AI large language models (LLMs); we recommend double-checking the
    #             LLM response.</p>
    #          </note>
    # @param [Hash, Types::GenerateQueryRequest] params
    # @option params [Array<String>] :event_data_stores
    #   <p>
    #            The ARN (or ID suffix of the ARN) of the event data store
    #            that you want to query. You can only specify one event data store.
    #         </p>
    # @option params [String] :prompt
    #   <p>
    #            The prompt that you want to use to generate the query. The prompt must be in English. For example prompts, see 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html#lake-query-generator-examples">Example prompts</a> 
    #            in the <i>CloudTrail </i> user guide.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_stores: ["EventDataStoreArn"], # required
    #     prompt: "Prompt", # required
    #   }
    #   options = {}
    #   response = client.generate_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_statement: "QueryStatement",
    #     query_alias: "QueryAlias",
    #     event_data_store_owner_account_id: "AccountId"
    #   }
    # @return [Types::GenerateQueryResponse]
    def generate_query(params = {}, options = {})
      request = build_request(:generate_query, params)
      request.send_request(options)
    end

    # <p> Returns information about a specific channel.
    #       </p>
    # @param [Hash, Types::GetChannelRequest] params
    # @option params [String] :channel
    #   <p>The ARN or <code>UUID</code> of a channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel: "ChannelArn", # required
    #   }
    #   options = {}
    #   response = client.get_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChannelArn",
    #     name: "ChannelName",
    #     source: "Source",
    #     source_config: {
    #       apply_to_all_regions: false,
    #       advanced_event_selectors: [
    #         {
    #           name: "SelectorName",
    #           field_selectors: [ # required
    #             {
    #               field: "SelectorField", # required
    #               equals: ["OperatorValue"],
    #               starts_with: ["OperatorValue"],
    #               ends_with: ["OperatorValue"],
    #               not_equals: ["OperatorValue"],
    #               not_starts_with: ["OperatorValue"],
    #               not_ends_with: ["OperatorValue"]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     destinations: [
    #       {
    #         type: "EVENT_DATA_STORE" # One of: ["EVENT_DATA_STORE", "AWS_SERVICE"], # required
    #         location: "Location", # required
    #       }
    #     ],
    #     ingestion_status: {
    #       latest_ingestion_success_time: Time.now,
    #       latest_ingestion_success_event_id: "UUID",
    #       latest_ingestion_error_code: "ErrorMessage",
    #       latest_ingestion_attempt_time: Time.now,
    #       latest_ingestion_attempt_event_id: "UUID"
    #     }
    #   }
    # @return [Types::GetChannelResponse]
    def get_channel(params = {}, options = {})
      request = build_request(:get_channel, params)
      request.send_request(options)
    end

    # <p>
    # Returns the specified dashboard.
    # </p>
    # @param [Hash, Types::GetDashboardRequest] params
    # @option params [String] :dashboard_id
    #   <p>
    #   The name or ARN for the dashboard.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_id: "DashboardArn", # required
    #   }
    #   options = {}
    #   response = client.get_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboard_arn: "DashboardArn",
    #     type: "MANAGED" # One of: ["MANAGED", "CUSTOM"],
    #     status: "CREATING" # One of: ["CREATING", "CREATED", "UPDATING", "UPDATED", "DELETING"],
    #     widgets: [
    #       {
    #         query_alias: "QueryAlias",
    #         query_statement: "QueryStatement",
    #         query_parameters: ["QueryParameter"],
    #         view_properties: {
    #           "ViewPropertiesKey" => "ViewPropertiesValue"
    #         }
    #       }
    #     ],
    #     refresh_schedule: {
    #       frequency: {
    #         unit: "HOURS" # One of: ["HOURS", "DAYS"],
    #         value: 1
    #       },
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       time_of_day: "TimeOfDay"
    #     },
    #     created_timestamp: Time.now,
    #     updated_timestamp: Time.now,
    #     last_refresh_id: "RefreshId",
    #     last_refresh_failure_reason: "ErrorMessage",
    #     termination_protection_enabled: false
    #   }
    # @return [Types::GetDashboardResponse]
    def get_dashboard(params = {}, options = {})
      request = build_request(:get_dashboard, params)
      request.send_request(options)
    end

    # <p>Retrieves the current event configuration settings for the specified event data store, including details 
    #          about maximum event size and context key selectors configured for the event data store.</p>
    # @param [Hash, Types::GetEventConfigurationRequest] params
    # @option params [String] :event_data_store
    #   <p>The Amazon Resource Name (ARN) or ID suffix of the ARN of the event data store for which you want to retrieve event configuration settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "String"
    #   }
    #   options = {}
    #   response = client.get_event_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_data_store_arn: "EventDataStoreArn",
    #     max_event_size: "Standard" # One of: ["Standard", "Large"],
    #     context_key_selectors: [
    #       {
    #         type: "TagContext" # One of: ["TagContext", "RequestContext"], # required
    #         equals: ["OperatorTargetListMember"], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetEventConfigurationResponse]
    def get_event_configuration(params = {}, options = {})
      request = build_request(:get_event_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about an event data store specified as either an ARN or the ID
    #          portion of the ARN.</p>
    # @param [Hash, Types::GetEventDataStoreRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store about which you want
    #            information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn", # required
    #   }
    #   options = {}
    #   response = client.get_event_data_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_data_store_arn: "EventDataStoreArn",
    #     name: "EventDataStoreName",
    #     status: "CREATED" # One of: ["CREATED", "ENABLED", "PENDING_DELETION", "STARTING_INGESTION", "STOPPING_INGESTION", "STOPPED_INGESTION"],
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"]
    #           }
    #         ]
    #       }
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #     created_timestamp: Time.now,
    #     updated_timestamp: Time.now,
    #     kms_key_id: "EventDataStoreKmsKeyId",
    #     billing_mode: "EXTENDABLE_RETENTION_PRICING" # One of: ["EXTENDABLE_RETENTION_PRICING", "FIXED_RETENTION_PRICING"],
    #     federation_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"],
    #     federation_role_arn: "FederationRoleArn",
    #     partition_keys: [
    #       {
    #         name: "PartitionKeyName", # required
    #         type: "PartitionKeyType", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetEventDataStoreResponse]
    def get_event_data_store(params = {}, options = {})
      request = build_request(:get_event_data_store, params)
      request.send_request(options)
    end

    # <p>Describes the settings for the event selectors that you configured for your trail. The
    #          information returned for your event selectors includes the following:</p>
    #          <ul>
    #             <li>
    #                <p>If your event selector includes read-only events, write-only events, or all
    #                events. This applies to management events, data events, and network activity events.</p>
    #             </li>
    #             <li>
    #                <p>If your event selector includes management events.</p>
    #             </li>
    #             <li>
    #                <p>If your event selector includes network activity events, the event sources 
    #                for which you are logging network activity events.</p>
    #             </li>
    #             <li>
    #                <p>If your event selector includes data events, the resources on which you are
    #                logging data events.</p>
    #             </li>
    #          </ul>
    #          <p>For more information about logging management, data, and network activity events, see the following topics
    #          in the <i>CloudTrail User Guide</i>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html">Logging management events</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Logging data events</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html">Logging network activity events</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetEventSelectorsRequest] params
    # @option params [String] :trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string
    #            must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                  (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like
    #                     <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the format:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trail_name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_event_selectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trail_arn: "String",
    #     event_selectors: [
    #       {
    #         read_write_type: "ReadOnly" # One of: ["ReadOnly", "WriteOnly", "All"],
    #         include_management_events: false,
    #         data_resources: [
    #           {
    #             type: "String",
    #             values: ["String"]
    #           }
    #         ],
    #         exclude_management_event_sources: ["String"]
    #       }
    #     ],
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetEventSelectorsResponse]
    def get_event_selectors(params = {}, options = {})
      request = build_request(:get_event_selectors, params)
      request.send_request(options)
    end

    # <p> Returns information about a specific import. </p>
    # @param [Hash, Types::GetImportRequest] params
    # @option params [String] :import_id
    #   <p> The ID for the import. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_id: "UUID",
    #     destinations: ["EventDataStoreArn"],
    #     import_source: {
    #       s3: { # required
    #         s3_location_uri: "String", # required
    #         s3_bucket_region: "String", # required
    #         s3_bucket_access_role_arn: "String", # required
    #       }
    #     },
    #     start_event_time: Time.now,
    #     end_event_time: Time.now,
    #     import_status: "INITIALIZING" # One of: ["INITIALIZING", "IN_PROGRESS", "FAILED", "STOPPED", "COMPLETED"],
    #     created_timestamp: Time.now,
    #     updated_timestamp: Time.now,
    #     import_statistics: {
    #       prefixes_found: 1,
    #       prefixes_completed: 1,
    #       files_completed: 1,
    #       events_completed: 1,
    #       failed_entries: 1
    #     }
    #   }
    # @return [Types::GetImportResponse]
    def get_import(params = {}, options = {})
      request = build_request(:get_import, params)
      request.send_request(options)
    end

    # <p>Describes the settings for the Insights event selectors that you configured for your
    #          trail or event data store. <code>GetInsightSelectors</code> shows if CloudTrail Insights event logging
    #          is enabled on the trail or event data store, and if it is, which Insights types are enabled. If you run
    #             <code>GetInsightSelectors</code> on a trail or event data store that does not have Insights events enabled,
    #          the operation throws the exception <code>InsightNotEnabledException</code>
    #          </p>
    #          <p>Specify either the <code>EventDataStore</code> parameter to get Insights event selectors for an event data store, 
    #          or the <code>TrailName</code> parameter to the get Insights event selectors for a trail. You cannot specify these parameters together.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html">Working with CloudTrail Insights</a> in the <i>CloudTrail User Guide</i>.</p>
    # @param [Hash, Types::GetInsightSelectorsRequest] params
    # @option params [String] :trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string
    #            must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                  (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like
    #                     <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the format:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>You cannot use this parameter with the <code>EventDataStore</code> parameter.</p>
    # @option params [String] :event_data_store
    #   <p>
    #            Specifies the ARN (or ID suffix of the ARN) of the event data store for which you want to get Insights
    #            selectors.
    #         </p>
    #            <p>You cannot use this parameter with the <code>TrailName</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trail_name: "String",
    #     event_data_store: "EventDataStoreArn"
    #   }
    #   options = {}
    #   response = client.get_insight_selectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trail_arn: "String",
    #     insight_selectors: [
    #       {
    #         insight_type: "ApiCallRateInsight" # One of: ["ApiCallRateInsight", "ApiErrorRateInsight"]
    #       }
    #     ],
    #     event_data_store_arn: "EventDataStoreArn",
    #     insights_destination: "EventDataStoreArn"
    #   }
    # @return [Types::GetInsightSelectorsResponse]
    def get_insight_selectors(params = {}, options = {})
      request = build_request(:get_insight_selectors, params)
      request.send_request(options)
    end

    # <p>Gets event data results of a query. You must specify the <code>QueryID</code> value
    #          returned by the <code>StartQuery</code> operation.</p>
    # @param [Hash, Types::GetQueryResultsRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store against which the query was
    #            run.</p>
    # @option params [String] :query_id
    #   <p>The ID of the query for which you want to get results.</p>
    # @option params [String] :next_token
    #   <p>A token you can use to get the next page of query results.</p>
    # @option params [Integer] :max_query_results
    #   <p>The maximum number of query results to display on a single page.</p>
    # @option params [String] :event_data_store_owner_account_id
    #   <p>
    #   The account ID of the event data store owner.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn",
    #     query_id: "UUID", # required
    #     next_token: "PaginationToken",
    #     max_query_results: 1,
    #     event_data_store_owner_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_query_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_status: "QUEUED" # One of: ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"],
    #     query_statistics: {
    #       results_count: 1,
    #       total_results_count: 1,
    #       bytes_scanned: 1
    #     },
    #     query_result_rows: [
    #       [
    #         {
    #           "QueryResultKey" => "QueryResultValue"
    #         }
    #       ]
    #     ],
    #     next_token: "PaginationToken",
    #     error_message: "ErrorMessage"
    #   }
    # @return [Types::GetQueryResultsResponse]
    def get_query_results(params = {}, options = {})
      request = build_request(:get_query_results, params)
      request.send_request(options)
    end

    # <p>
    #          Retrieves the JSON text of the resource-based policy document attached to the CloudTrail event data store, dashboard, or channel.
    #       </p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel attached to the resource-based policy.</p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceArn",
    #     resource_policy: "ResourcePolicy",
    #     delegated_admin_resource_policy: "ResourcePolicy"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Returns settings information for a specified trail.</p>
    # @param [Hash, Types::GetTrailRequest] params
    # @option params [String] :name
    #   <p>The name or the Amazon Resource Name (ARN) of the trail for which you want to retrieve
    #            settings information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_trail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trail: {
    #       name: "String",
    #       s3_bucket_name: "String",
    #       s3_key_prefix: "String",
    #       sns_topic_name: "String",
    #       sns_topic_arn: "String",
    #       include_global_service_events: false,
    #       is_multi_region_trail: false,
    #       home_region: "String",
    #       trail_arn: "String",
    #       log_file_validation_enabled: false,
    #       cloud_watch_logs_log_group_arn: "String",
    #       cloud_watch_logs_role_arn: "String",
    #       kms_key_id: "String",
    #       has_custom_event_selectors: false,
    #       has_insight_selectors: false,
    #       is_organization_trail: false
    #     }
    #   }
    # @return [Types::GetTrailResponse]
    def get_trail(params = {}, options = {})
      request = build_request(:get_trail, params)
      request.send_request(options)
    end

    # <p>Returns a JSON-formatted list of information about the specified trail. Fields include
    #          information on delivery errors, Amazon SNS and Amazon S3 errors, and start
    #          and stop logging times for each trail. This operation returns trail status from a single
    #          Region. To return trail status from all Regions, you must call the operation on each
    #          Region.</p>
    # @param [Hash, Types::GetTrailStatusRequest] params
    # @option params [String] :name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which you are
    #            requesting status. To get the status of a shadow trail (a replication of the trail in
    #            another Region), you must specify its ARN.</p>
    #            <p>
    #            The following is the format of a trail
    #            ARN: <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <note>
    #               <p>If the trail is an organization trail and you are a member account in the organization in Organizations, you must provide the full ARN of that trail, and not just the name.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_trail_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     is_logging: false,
    #     latest_delivery_error: "String",
    #     latest_notification_error: "String",
    #     latest_delivery_time: Time.now,
    #     latest_notification_time: Time.now,
    #     start_logging_time: Time.now,
    #     stop_logging_time: Time.now,
    #     latest_cloud_watch_logs_delivery_error: "String",
    #     latest_cloud_watch_logs_delivery_time: Time.now,
    #     latest_digest_delivery_time: Time.now,
    #     latest_digest_delivery_error: "String",
    #     latest_delivery_attempt_time: "String",
    #     latest_notification_attempt_time: "String",
    #     latest_notification_attempt_succeeded: "String",
    #     latest_delivery_attempt_succeeded: "String",
    #     time_logging_started: "String",
    #     time_logging_stopped: "String"
    #   }
    # @return [Types::GetTrailStatusResponse]
    def get_trail_status(params = {}, options = {})
      request = build_request(:get_trail_status, params)
      request.send_request(options)
    end

    # <p> Lists the channels in the current account, and their source names. 
    #       </p>
    # @param [Hash, Types::ListChannelsRequest] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of CloudTrail channels to display on a single page. </p>
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. This token
    #            must be passed in with the same parameters that were specified in the original call. For
    #            example, if the original call specified an AttributeKey of 'Username' with a value of
    #            'root', the call with NextToken should include those same parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels: [
    #       {
    #         channel_arn: "ChannelArn",
    #         name: "ChannelName"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListChannelsResponse]
    def list_channels(params = {}, options = {})
      request = build_request(:list_channels, params)
      request.send_request(options)
    end

    # <p>
    #    Returns information about all dashboards in the account, in the current Region.
    # </p>
    # @param [Hash, Types::ListDashboardsRequest] params
    # @option params [String] :name_prefix
    #   <p>
    #   Specify a name prefix to filter on.
    #   </p>
    # @option params [String] :type
    #   <p>
    #   Specify a dashboard type to filter on: <code>CUSTOM</code> or <code>MANAGED</code>.
    #   </p>
    # @option params [String] :next_token
    #   <p>
    #      A token you can use to get the next page of dashboard results.
    #   </p>
    # @option params [Integer] :max_results
    #   <p>
    #      The maximum number of dashboards to display on a single page.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "DashboardName",
    #     type: "MANAGED" # One of: ["MANAGED", "CUSTOM"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dashboards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboards: [
    #       {
    #         dashboard_arn: "DashboardArn",
    #         type: "MANAGED" # One of: ["MANAGED", "CUSTOM"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDashboardsResponse]
    def list_dashboards(params = {}, options = {})
      request = build_request(:list_dashboards, params)
      request.send_request(options)
    end

    # <p>Returns information about all event data stores in the account, in the current
    #          Region.</p>
    # @param [Hash, Types::ListEventDataStoresRequest] params
    # @option params [String] :next_token
    #   <p>A token you can use to get the next page of event data store results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of event data stores to display on a single page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_data_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_data_stores: [
    #       {
    #         event_data_store_arn: "EventDataStoreArn",
    #         name: "EventDataStoreName",
    #         termination_protection_enabled: false,
    #         status: "CREATED" # One of: ["CREATED", "ENABLED", "PENDING_DELETION", "STARTING_INGESTION", "STOPPING_INGESTION", "STOPPED_INGESTION"],
    #         advanced_event_selectors: [
    #           {
    #             name: "SelectorName",
    #             field_selectors: [ # required
    #               {
    #                 field: "SelectorField", # required
    #                 equals: ["OperatorValue"],
    #                 starts_with: ["OperatorValue"],
    #                 ends_with: ["OperatorValue"],
    #                 not_equals: ["OperatorValue"],
    #                 not_starts_with: ["OperatorValue"],
    #                 not_ends_with: ["OperatorValue"]
    #               }
    #             ]
    #           }
    #         ],
    #         multi_region_enabled: false,
    #         organization_enabled: false,
    #         retention_period: 1,
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEventDataStoresResponse]
    def list_event_data_stores(params = {}, options = {})
      request = build_request(:list_event_data_stores, params)
      request.send_request(options)
    end

    # <p> Returns a list of failures for the specified import. </p>
    # @param [Hash, Types::ListImportFailuresRequest] params
    # @option params [String] :import_id
    #   <p> The ID of the import. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of failures to display on a single page. </p>
    # @option params [String] :next_token
    #   <p> A token you can use to get the next page of import failures. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_id: "UUID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_import_failures(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [
    #       {
    #         location: "String",
    #         status: "FAILED" # One of: ["FAILED", "RETRY", "SUCCEEDED"],
    #         error_type: "String",
    #         error_message: "String",
    #         last_updated_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImportFailuresResponse]
    def list_import_failures(params = {}, options = {})
      request = build_request(:list_import_failures, params)
      request.send_request(options)
    end

    # <p> Returns information on all imports, or a select set of imports by
    #             <code>ImportStatus</code> or <code>Destination</code>. </p>
    # @param [Hash, Types::ListImportsRequest] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of imports to display on a single page. </p>
    # @option params [String] :destination
    #   <p> The ARN of the destination event data store. </p>
    # @option params [String] :import_status
    #   <p> The status of the import. </p>
    # @option params [String] :next_token
    #   <p> A token you can use to get the next page of import results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     destination: "EventDataStoreArn",
    #     import_status: "INITIALIZING" # One of: ["INITIALIZING", "IN_PROGRESS", "FAILED", "STOPPED", "COMPLETED"],
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_imports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     imports: [
    #       {
    #         import_id: "UUID",
    #         import_status: "INITIALIZING" # One of: ["INITIALIZING", "IN_PROGRESS", "FAILED", "STOPPED", "COMPLETED"],
    #         destinations: ["EventDataStoreArn"],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImportsResponse]
    def list_imports(params = {}, options = {})
      request = build_request(:list_imports, params)
      request.send_request(options)
    end

    # <p>Returns Insights metrics data for trails that have enabled Insights. The request must include the <code>EventSource</code>, 
    #          <code>EventName</code>, and <code>InsightType</code> parameters.</p>
    #          <p>If the <code>InsightType</code> is set to <code>ApiErrorRateInsight</code>, the request must also include the <code>ErrorCode</code> parameter.</p>
    #          <p>The following are the available time periods for <code>ListInsightsMetricData</code>. Each cutoff is inclusive.</p>
    #          <ul>
    #             <li>
    #                <p>Data points with a period of 60 seconds (1-minute) are available for 15 days.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 300 seconds (5-minute) are available for 63 days.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 3600 seconds (1 hour) are available for 90 days.</p>
    #             </li>
    #          </ul>
    #          <p>Access to the <code>ListInsightsMetricData</code> API operation is linked to the <code>cloudtrail:LookupEvents</code> action. To use this operation, 
    #          you must have permissions to perform the <code>cloudtrail:LookupEvents</code> action.</p>
    # @param [Hash, Types::ListInsightsMetricDataRequest] params
    # @option params [String] :event_source
    #   <p>The Amazon Web Services service to which the request was made, such as <code>iam.amazonaws.com</code> or <code>s3.amazonaws.com</code>.</p>
    # @option params [String] :event_name
    #   <p>The name of the event, typically the Amazon Web Services API on which unusual levels of activity were recorded.</p>
    # @option params [String] :insight_type
    #   <p>The type of CloudTrail Insights event, which is either <code>ApiCallRateInsight</code> or <code>ApiErrorRateInsight</code>. 
    #            The <code>ApiCallRateInsight</code> Insights type analyzes write-only management API calls that are aggregated per minute against a baseline API call volume. 
    #            The <code>ApiErrorRateInsight</code> Insights type analyzes management API calls that result in error codes.</p>
    # @option params [String] :error_code
    #   <p>Conditionally required if the <code>InsightType</code> parameter is set to <code>ApiErrorRateInsight</code>.</p>
    #            <p>If returning metrics for the <code>ApiErrorRateInsight</code> Insights type, this is the error to retrieve data for. For example, <code>AccessDenied</code>.</p>
    # @option params [Time] :start_time
    #   <p>Specifies, in UTC, the start time for time-series data. The value specified is inclusive; results include data points with the specified time stamp.</p>
    #            <p>The default is 90 days before the time of request.</p>
    # @option params [Time] :end_time
    #   <p>Specifies, in UTC, the end time for time-series data. The value specified is exclusive; 
    #            results include data points up to the specified time stamp.</p>
    #            <p>The default is the time of request.</p>
    # @option params [Integer] :period
    #   <p>Granularity of data to retrieve, in seconds. Valid values are <code>60</code>, <code>300</code>, and <code>3600</code>. 
    #            If you specify any other value, you will get an error. The default is 3600 seconds.</p>
    # @option params [String] :data_type
    #   <p>Type of data points to return. Valid values are <code>NonZeroData</code> and 
    #            <code>FillWithZeros</code>. The default is <code>NonZeroData</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of data points to return. Valid values are integers from 1 to 21600. 
    #            The default value is 21600.</p>
    # @option params [String] :next_token
    #   <p>Returned if all datapoints can't be returned in a single call. For example, due to reaching <code>MaxResults</code>.</p>
    #            <p>Add this parameter to the request to continue retrieving results starting from the last evaluated point.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source: "EventSource", # required
    #     event_name: "EventName", # required
    #     insight_type: "ApiCallRateInsight" # One of: ["ApiCallRateInsight", "ApiErrorRateInsight"], # required
    #     error_code: "ErrorCode",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     period: 1,
    #     data_type: "FillWithZeros" # One of: ["FillWithZeros", "NonZeroData"],
    #     max_results: 1,
    #     next_token: "InsightsMetricNextToken"
    #   }
    #   options = {}
    #   response = client.list_insights_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_source: "EventSource",
    #     event_name: "EventName",
    #     insight_type: "ApiCallRateInsight" # One of: ["ApiCallRateInsight", "ApiErrorRateInsight"],
    #     error_code: "ErrorCode",
    #     timestamps: [Time.now],
    #     values: [1.0],
    #     next_token: "InsightsMetricNextToken"
    #   }
    # @return [Types::ListInsightsMetricDataResponse]
    def list_insights_metric_data(params = {}, options = {})
      request = build_request(:list_insights_metric_data, params)
      request.send_request(options)
    end

    # <p>Returns all public keys whose private keys were used to sign the digest files within the
    #          specified time range. The public key is needed to validate digest files that were signed
    #          with its corresponding private key.</p>
    #          <note>
    #             <p>CloudTrail uses different private and public key pairs per Region. Each digest
    #             file is signed with a private key unique to its Region. When you validate a digest file
    #             from a specific Region, you must look in the same Region for its corresponding public
    #             key.</p>
    #          </note>
    # @param [Hash, Types::ListPublicKeysRequest] params
    # @option params [Time] :start_time
    #   <p>Optionally specifies, in UTC, the start of the time range to look up public keys for
    #               CloudTrail digest files. If not specified, the current time is used, and the
    #            current public key is returned.</p>
    # @option params [Time] :end_time
    #   <p>Optionally specifies, in UTC, the end of the time range to look up public keys for
    #               CloudTrail digest files. If not specified, the current time is used.</p>
    # @option params [String] :next_token
    #   <p>Reserved for future use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_public_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_key_list: [
    #       {
    #         value: "data",
    #         validity_start_time: Time.now,
    #         validity_end_time: Time.now,
    #         fingerprint: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPublicKeysResponse]
    def list_public_keys(params = {}, options = {})
      request = build_request(:list_public_keys, params)
      request.send_request(options)
    end

    # <p>Returns a list of queries and query statuses for the past seven days. You must specify
    #          an ARN value for <code>EventDataStore</code>. Optionally, to shorten the list of results,
    #          you can specify a time range, formatted as timestamps, by adding <code>StartTime</code> and
    #             <code>EndTime</code> parameters, and a <code>QueryStatus</code> value. Valid values for
    #             <code>QueryStatus</code> include <code>QUEUED</code>, <code>RUNNING</code>,
    #             <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or
    #             <code>CANCELLED</code>.</p>
    # @param [Hash, Types::ListQueriesRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which queries were
    #            run.</p>
    # @option params [String] :next_token
    #   <p>A token you can use to get the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of queries to show on a page.</p>
    # @option params [Time] :start_time
    #   <p>Use with <code>EndTime</code> to bound a <code>ListQueries</code> request, and limit its
    #            results to only those queries run within a specified time period.</p>
    # @option params [Time] :end_time
    #   <p>Use with <code>StartTime</code> to bound a <code>ListQueries</code> request, and limit
    #            its results to only those queries run within a specified time period.</p>
    # @option params [String] :query_status
    #   <p>The status of queries that you want to return in results. Valid values for
    #               <code>QueryStatus</code> include <code>QUEUED</code>, <code>RUNNING</code>,
    #               <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or
    #               <code>CANCELLED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     query_status: "QUEUED" # One of: ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #   }
    #   options = {}
    #   response = client.list_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queries: [
    #       {
    #         query_id: "UUID",
    #         query_status: "QUEUED" # One of: ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"],
    #         creation_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListQueriesResponse]
    def list_queries(params = {}, options = {})
      request = build_request(:list_queries, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified trails, event data stores, dashboards, or channels in the current Region.</p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [Array<String>] :resource_id_list
    #   <p>Specifies a list of trail, event data store, dashboard, or channel ARNs whose tags will be listed. The list
    #            has a limit of 20 ARNs.</p>
    #            <p> Example trail ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>Reserved for future use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id_list: ["String"], # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tag_list: [
    #       {
    #         resource_id: "String",
    #         tags_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTagsResponse]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Lists trails that are in the current account.</p>
    # @param [Hash, Types::ListTrailsRequest] params
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. This token
    #            must be passed in with the same parameters that were specified in the original call. For
    #            example, if the original call specified an AttributeKey of 'Username' with a value of
    #            'root', the call with NextToken should include those same parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_trails(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trails: [
    #       {
    #         trail_arn: "String",
    #         name: "String",
    #         home_region: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTrailsResponse]
    def list_trails(params = {}, options = {})
      request = build_request(:list_trails, params)
      request.send_request(options)
    end

    # <p>Looks up <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events">management events</a> or <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events">CloudTrail Insights events</a> that are captured by CloudTrail. 
    #          You can look up events that occurred in a Region within the last 90 days.</p>
    #          <note>
    #             <p>
    #                <code>LookupEvents</code> returns recent Insights events for trails that enable Insights. To view Insights events for an event data store, you can run queries on your 
    #             Insights event data store, and you can also view the Lake dashboard for Insights.</p>
    #          </note>
    #          <p>Lookup supports the following attributes for management events:</p>
    #          <ul>
    #             <li>
    #                <p>Amazon Web Services access key</p>
    #             </li>
    #             <li>
    #                <p>Event ID</p>
    #             </li>
    #             <li>
    #                <p>Event name</p>
    #             </li>
    #             <li>
    #                <p>Event source</p>
    #             </li>
    #             <li>
    #                <p>Read only</p>
    #             </li>
    #             <li>
    #                <p>Resource name</p>
    #             </li>
    #             <li>
    #                <p>Resource type</p>
    #             </li>
    #             <li>
    #                <p>User name</p>
    #             </li>
    #          </ul>
    #          <p>Lookup supports the following attributes for Insights events:</p>
    #          <ul>
    #             <li>
    #                <p>Event ID</p>
    #             </li>
    #             <li>
    #                <p>Event name</p>
    #             </li>
    #             <li>
    #                <p>Event source</p>
    #             </li>
    #          </ul>
    #          <p>All attributes are optional. The default number of results returned is 50, with a
    #          maximum of 50 possible. The response includes a token that you can use to get the next page
    #          of results.</p>
    #          <important>
    #             <p>The rate of lookup requests is limited to two per second, per account, per Region. If
    #             this limit is exceeded, a throttling error occurs.</p>
    #          </important>
    # @param [Hash, Types::LookupEventsRequest] params
    # @option params [Array<Types::LookupAttribute>] :lookup_attributes
    #   <p>Contains a list of lookup attributes. Currently the list can contain only one
    #            item.</p>
    # @option params [Time] :start_time
    #   <p>Specifies that only events that occur after or at the specified time are returned. If
    #            the specified start time is after the specified end time, an error is returned.</p>
    # @option params [Time] :end_time
    #   <p>Specifies that only events that occur before or at the specified time are returned. If
    #            the specified end time is before the specified start time, an error is returned.</p>
    # @option params [String] :event_category
    #   <p>Specifies the event category. If you do not specify an event category, events of the
    #            category are not returned in the response. For example, if you do not specify
    #               <code>insight</code> as the value of <code>EventCategory</code>, no Insights events are
    #            returned.</p>
    # @option params [Integer] :max_results
    #   <p>The number of events to return. Possible values are 1 through 50. The default is
    #            50.</p>
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. This token
    #            must be passed in with the same parameters that were specified in the original call. For
    #            example, if the original call specified an AttributeKey of 'Username' with a value of
    #            'root', the call with NextToken should include those same parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     lookup_attributes: [
    #       {
    #         attribute_key: "EventId" # One of: ["EventId", "EventName", "ReadOnly", "Username", "ResourceType", "ResourceName", "EventSource", "AccessKeyId"], # required
    #         attribute_value: "LookupAttributeValue", # required
    #       }
    #     ],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     event_category: "insight" # One of: ["insight"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.lookup_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [
    #       {
    #         event_id: "String",
    #         event_name: "String",
    #         read_only: "String",
    #         access_key_id: "String",
    #         event_time: Time.now,
    #         event_source: "String",
    #         username: "String",
    #         resources: [
    #           {
    #             resource_type: "String",
    #             resource_name: "String"
    #           }
    #         ],
    #         cloud_trail_event: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::LookupEventsResponse]
    def lookup_events(params = {}, options = {})
      request = build_request(:lookup_events, params)
      request.send_request(options)
    end

    # <p>Updates the event configuration settings for the specified event data store. You can update the maximum event size and context key selectors.</p>
    # @param [Hash, Types::PutEventConfigurationRequest] params
    # @option params [String] :event_data_store
    #   <p>The Amazon Resource Name (ARN) or ID suffix of the ARN of the event data store for which you want to update event configuration settings.</p>
    # @option params [String] :max_event_size
    #   <p>The maximum allowed size for events to be stored in the specified event data store. If you are using context key selectors, MaxEventSize must be set to Large.</p>
    # @option params [Array<Types::ContextKeySelector>] :context_key_selectors
    #   <p>A list of context key selectors that will be included to provide enriched event data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "String",
    #     max_event_size: "Standard" # One of: ["Standard", "Large"], # required
    #     context_key_selectors: [ # required
    #       {
    #         type: "TagContext" # One of: ["TagContext", "RequestContext"], # required
    #         equals: ["OperatorTargetListMember"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_event_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_data_store_arn: "EventDataStoreArn",
    #     max_event_size: "Standard" # One of: ["Standard", "Large"],
    #     context_key_selectors: [
    #       {
    #         type: "TagContext" # One of: ["TagContext", "RequestContext"], # required
    #         equals: ["OperatorTargetListMember"], # required
    #       }
    #     ]
    #   }
    # @return [Types::PutEventConfigurationResponse]
    def put_event_configuration(params = {}, options = {})
      request = build_request(:put_event_configuration, params)
      request.send_request(options)
    end

    # <p>Configures event selectors (also referred to as <i>basic event selectors</i>) or advanced event selectors for your trail. You can use
    #          either <code>AdvancedEventSelectors</code> or <code>EventSelectors</code>, but not both. If
    #          you apply <code>AdvancedEventSelectors</code> to a trail, any existing
    #          <code>EventSelectors</code> are overwritten.</p>
    #          <p>You can use <code>AdvancedEventSelectors</code> to 
    #          log management events, data events for all resource types, and network activity events.</p>
    #          <p>You can use <code>EventSelectors</code> to log management events and data events for the following resource types:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AWS::DynamoDB::Table</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AWS::Lambda::Function</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AWS::S3::Object</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>You can't use <code>EventSelectors</code> to log network activity events.</p>
    #          <p>If you want your trail to log Insights events, be sure the event selector or advanced event selector enables 
    #          logging of the Insights event types you want configured for your trail. For more information about logging Insights events, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html">Working with CloudTrail Insights</a> in the <i>CloudTrail User Guide</i>.
    #          By default, trails created without specific event selectors are configured to
    #          log all read and write management events, and no data events or network activity events.</p>
    #          <p>When an event occurs in your account, CloudTrail evaluates the event selectors or
    #          advanced event selectors in all trails. For each trail, if the event matches any event
    #          selector, the trail processes and logs the event. If the event doesn't match any event
    #          selector, the trail doesn't log the event.</p>
    #          <p>Example</p>
    #          <ol>
    #             <li>
    #                <p>You create an event selector for a trail and specify that you want to log write-only
    #                events.</p>
    #             </li>
    #             <li>
    #                <p>The EC2 <code>GetConsoleOutput</code> and <code>RunInstances</code> API operations
    #                occur in your account.</p>
    #             </li>
    #             <li>
    #                <p>CloudTrail evaluates whether the events match your event selectors.</p>
    #             </li>
    #             <li>
    #                <p>The <code>RunInstances</code> is a write-only event and it matches your event
    #                selector. The trail logs the event.</p>
    #             </li>
    #             <li>
    #                <p>The <code>GetConsoleOutput</code> is a read-only event that doesn't match your
    #                event selector. The trail doesn't log the event. </p>
    #             </li>
    #          </ol>
    #          <p>The <code>PutEventSelectors</code> operation must be called from the Region in which the
    #          trail was created; otherwise, an <code>InvalidHomeRegionException</code> exception is
    #          thrown.</p>
    #          <p>You can configure up to five event selectors for each trail.</p>
    #          <p>You can add advanced event selectors, and conditions for your advanced event selectors,
    #          up to a maximum of 500 values for all conditions and selectors on a trail. For more information, see
    #          <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html">Logging management events</a>, <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Logging
    #                data events</a>, <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html">Logging
    #                   network activity events</a>, and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html">Quotas in CloudTrail</a> in the <i>CloudTrail User
    #                            Guide</i>.</p>
    # @param [Hash, Types::PutEventSelectorsRequest] params
    # @option params [String] :trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string
    #            must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                  (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like
    #                     <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the following format.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    # @option params [Array<Types::EventSelector>] :event_selectors
    #   <p>Specifies the settings for your event selectors. You can use event selectors to log management events and data events for the following resource types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS::DynamoDB::Table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::Lambda::Function</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::S3::Object</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You can't use event selectors to log network activity events.</p>
    #            <p>You can configure up to five event
    #            selectors for a trail. You can use either <code>EventSelectors</code> or
    #               <code>AdvancedEventSelectors</code> in a <code>PutEventSelectors</code> request, but not
    #            both. If you apply <code>EventSelectors</code> to a trail, any existing
    #               <code>AdvancedEventSelectors</code> are overwritten.</p>
    # @option params [Array<Types::AdvancedEventSelector>] :advanced_event_selectors
    #   <p> Specifies the settings for advanced event selectors. You can use advanced event selectors to 
    #            log management events, data events for all resource types, and network activity events.</p>
    #            <p>You can add advanced event
    #            selectors, and conditions for your advanced event selectors, up to a maximum of 500 values
    #            for all conditions and selectors on a trail. You can use either
    #               <code>AdvancedEventSelectors</code> or <code>EventSelectors</code>, but not both. If you
    #            apply <code>AdvancedEventSelectors</code> to a trail, any existing
    #               <code>EventSelectors</code> are overwritten. For more information about advanced event
    #            selectors, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Logging data events</a> and 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html">Logging network activity events</a>
    #            in the <i>CloudTrail User Guide</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trail_name: "String", # required
    #     event_selectors: [
    #       {
    #         read_write_type: "ReadOnly" # One of: ["ReadOnly", "WriteOnly", "All"],
    #         include_management_events: false,
    #         data_resources: [
    #           {
    #             type: "String",
    #             values: ["String"]
    #           }
    #         ],
    #         exclude_management_event_sources: ["String"]
    #       }
    #     ],
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_event_selectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trail_arn: "String",
    #     event_selectors: [
    #       {
    #         read_write_type: "ReadOnly" # One of: ["ReadOnly", "WriteOnly", "All"],
    #         include_management_events: false,
    #         data_resources: [
    #           {
    #             type: "String",
    #             values: ["String"]
    #           }
    #         ],
    #         exclude_management_event_sources: ["String"]
    #       }
    #     ],
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::PutEventSelectorsResponse]
    def put_event_selectors(params = {}, options = {})
      request = build_request(:put_event_selectors, params)
      request.send_request(options)
    end

    # <p>Lets you enable Insights event logging by specifying the Insights selectors that you
    #          want to enable on an existing trail or event data store. You also use <code>PutInsightSelectors</code> to turn
    #          off Insights event logging, by passing an empty list of Insights types. The valid Insights
    #          event types are <code>ApiErrorRateInsight</code> and
    #             <code>ApiCallRateInsight</code>.</p>
    #          <p>To enable Insights on an event data store, you must specify the ARNs (or ID suffix of the ARNs) for the source event data store (<code>EventDataStore</code>) and the destination event data store (<code>InsightsDestination</code>). The source event data store logs management events and enables Insights. 
    #          The destination event data store logs Insights events based upon the management event activity of the source event data store. The source and destination event data stores must belong to the same Amazon Web Services account.</p>
    #          <p>To log Insights events for a trail, you must specify the name (<code>TrailName</code>) of the CloudTrail trail for which you want to change or add Insights
    #          selectors.</p>
    #          <p>To log CloudTrail Insights events on API call volume, the trail or event data store
    #          must log <code>write</code> management events. To log CloudTrail
    #          Insights events on API error rate, the trail or event data store must log <code>read</code> or
    #             <code>write</code> management events. You can call <code>GetEventSelectors</code> on a trail 
    #          to check whether the trail logs management events. You can call <code>GetEventDataStore</code> on an 
    #       event data store to check whether the event data store logs management events.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html">Working with CloudTrail Insights</a> in the <i>CloudTrail User Guide</i>.</p>
    # @param [Hash, Types::PutInsightSelectorsRequest] params
    # @option params [String] :trail_name
    #   <p>The name of the CloudTrail trail for which you want to change or add Insights
    #            selectors.</p>
    #            <p>You cannot use this parameter with the <code>EventDataStore</code> and <code>InsightsDestination</code> parameters.</p>
    # @option params [Array<Types::InsightSelector>] :insight_selectors
    #   <p>A JSON string that contains the Insights types you want to log on a trail or event data store.
    #               <code>ApiCallRateInsight</code> and <code>ApiErrorRateInsight</code> are valid Insight
    #            types.</p>
    #            <p>The <code>ApiCallRateInsight</code> Insights type analyzes write-only
    #            management API calls that are aggregated per minute against a baseline API call volume.</p>
    #            <p>The <code>ApiErrorRateInsight</code> Insights type analyzes management
    #            API calls that result in error codes. The error is shown if the API call is
    #            unsuccessful.</p>
    # @option params [String] :event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the source event data store for which you want to change or add Insights
    #            selectors. To enable Insights on an event data store, you must provide both the 
    #            <code>EventDataStore</code> and <code>InsightsDestination</code> parameters.</p>
    #            <p>You cannot use this parameter with the <code>TrailName</code> parameter.</p>
    # @option params [String] :insights_destination
    #   <p>
    #            The ARN (or ID suffix of the ARN) of the destination event data store that logs Insights events. To enable Insights on an event data store, you must provide both the 
    #            <code>EventDataStore</code> and <code>InsightsDestination</code> parameters.
    #         </p>
    #            <p>You cannot use this parameter with the <code>TrailName</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trail_name: "String",
    #     insight_selectors: [ # required
    #       {
    #         insight_type: "ApiCallRateInsight" # One of: ["ApiCallRateInsight", "ApiErrorRateInsight"]
    #       }
    #     ],
    #     event_data_store: "EventDataStoreArn",
    #     insights_destination: "EventDataStoreArn"
    #   }
    #   options = {}
    #   response = client.put_insight_selectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trail_arn: "String",
    #     insight_selectors: [
    #       {
    #         insight_type: "ApiCallRateInsight" # One of: ["ApiCallRateInsight", "ApiErrorRateInsight"]
    #       }
    #     ],
    #     event_data_store_arn: "EventDataStoreArn",
    #     insights_destination: "EventDataStoreArn"
    #   }
    # @return [Types::PutInsightSelectorsResponse]
    def put_insight_selectors(params = {}, options = {})
      request = build_request(:put_insight_selectors, params)
      request.send_request(options)
    end

    # <p>
    #          Attaches a resource-based permission policy to a CloudTrail event data store, dashboard, or channel. For more information about resource-based policies, see 
    #          <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html">CloudTrail resource-based policy examples</a> 
    #          in the <i>CloudTrail User Guide</i>.
    #       </p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel attached to the resource-based policy.</p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    # @option params [String] :resource_policy
    #   <p>
    #            A JSON-formatted string for an Amazon Web Services resource-based policy.
    #         </p>
    #            <p> For example resource-based policies, see 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html">CloudTrail resource-based policy examples</a> 
    #            in the <i>CloudTrail User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     resource_policy: "ResourcePolicy", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceArn",
    #     resource_policy: "ResourcePolicy",
    #     delegated_admin_resource_policy: "ResourcePolicy"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Registers an organization’s member account as the CloudTrail <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-delegated-administrator.html">delegated administrator</a>.</p>
    # @param [Hash, Types::RegisterOrganizationDelegatedAdminRequest] params
    # @option params [String] :member_account_id
    #   <p>An organization member account ID that you want to designate as a delegated
    #            administrator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     member_account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.register_organization_delegated_admin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RegisterOrganizationDelegatedAdminResponse]
    def register_organization_delegated_admin(params = {}, options = {})
      request = build_request(:register_organization_delegated_admin, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from a trail, event data store, dashboard, or channel.</p>
    # @param [Hash, Types::RemoveTagsRequest] params
    # @option params [String] :resource_id
    #   <p>Specifies the ARN of the trail, event data store, dashboard, or channel from which tags should be
    #            removed.</p>
    #            <p> Example trail ARN format:
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags_list
    #   <p>Specifies a list of tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "String", # required
    #     tags_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveTagsResponse]
    def remove_tags(params = {}, options = {})
      request = build_request(:remove_tags, params)
      request.send_request(options)
    end

    # <p>Restores a deleted event data store specified by <code>EventDataStore</code>, which
    #          accepts an event data store ARN. You can only restore a deleted event data store within the
    #          seven-day wait period after deletion. Restoring an event data store can take several
    #          minutes, depending on the size of the event data store.</p>
    # @param [Hash, Types::RestoreEventDataStoreRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store that you want to
    #            restore.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn", # required
    #   }
    #   options = {}
    #   response = client.restore_event_data_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_data_store_arn: "EventDataStoreArn",
    #     name: "EventDataStoreName",
    #     status: "CREATED" # One of: ["CREATED", "ENABLED", "PENDING_DELETION", "STARTING_INGESTION", "STOPPING_INGESTION", "STOPPED_INGESTION"],
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"]
    #           }
    #         ]
    #       }
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #     created_timestamp: Time.now,
    #     updated_timestamp: Time.now,
    #     kms_key_id: "EventDataStoreKmsKeyId",
    #     billing_mode: "EXTENDABLE_RETENTION_PRICING" # One of: ["EXTENDABLE_RETENTION_PRICING", "FIXED_RETENTION_PRICING"]
    #   }
    # @return [Types::RestoreEventDataStoreResponse]
    def restore_event_data_store(params = {}, options = {})
      request = build_request(:restore_event_data_store, params)
      request.send_request(options)
    end

    # <p>
    #          Searches sample queries and returns a list of sample queries that are sorted by relevance. 
    #          To search for sample queries, provide a natural language <code>SearchPhrase</code> in English.
    #       </p>
    # @param [Hash, Types::SearchSampleQueriesRequest] params
    # @option params [String] :search_phrase
    #   <p>
    #            The natural language phrase to use for the semantic search. The phrase must be in English. The length constraint is in characters, not words.</p>
    # @option params [Integer] :max_results
    #   <p>
    #            The maximum number of results to return on a single page. The default value is 10.
    #         </p>
    # @option params [String] :next_token
    #   <p>
    #            A token you can use to get the next page of results. The length constraint is in characters, not words.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_phrase: "SearchSampleQueriesSearchPhrase", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.search_sample_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     search_results: [
    #       {
    #         name: "SampleQueryName",
    #         description: "SampleQueryDescription",
    #         sql: "SampleQuerySQL",
    #         relevance: 1.0
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::SearchSampleQueriesResponse]
    def search_sample_queries(params = {}, options = {})
      request = build_request(:search_sample_queries, params)
      request.send_request(options)
    end

    # <p>
    # Starts a refresh of the specified dashboard.
    # </p>
    #          <p>
    #    Each time a dashboard is refreshed, CloudTrail runs queries to populate the dashboard's widgets. CloudTrail must be granted permissions to run the <code>StartQuery</code> operation on your behalf. To provide permissions, run the <code>PutResourcePolicy</code> operation to attach a resource-based policy to each event data store. For more information, 
    #    see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard">Example: Allow CloudTrail to run queries to populate a dashboard</a> in the <i>CloudTrail User Guide</i>.
    # </p>
    # @param [Hash, Types::StartDashboardRefreshRequest] params
    # @option params [String] :dashboard_id
    #   <p>
    #   The name or ARN of the dashboard.
    #   </p>
    # @option params [Hash<String, String>] :query_parameter_values
    #   <p>
    #      The query parameter values for the dashboard
    #   </p>
    #            <p>For custom dashboards, the following query parameters are valid: <code>$StartTime$</code>, <code>$EndTime$</code>, and <code>$Period$</code>.</p>
    #            <p>For managed dashboards, the following query parameters are valid: <code>$StartTime$</code>,
    #               <code>$EndTime$</code>, <code>$Period$</code>, and <code>$EventDataStoreId$</code>. The
    #               <code>$EventDataStoreId$</code> query parameter is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_id: "DashboardArn", # required
    #     query_parameter_values: {
    #       "QueryParameterKey" => "QueryParameterValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_dashboard_refresh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     refresh_id: "RefreshId"
    #   }
    # @return [Types::StartDashboardRefreshResponse]
    def start_dashboard_refresh(params = {}, options = {})
      request = build_request(:start_dashboard_refresh, params)
      request.send_request(options)
    end

    # <p>Starts the ingestion of live events on an event data store specified as either an ARN or the ID portion of the ARN. To start ingestion, the event data store <code>Status</code> must be <code>STOPPED_INGESTION</code> 
    #          and the <code>eventCategory</code> must be <code>Management</code>, <code>Data</code>, <code>NetworkActivity</code>, or <code>ConfigurationItem</code>.</p>
    # @param [Hash, Types::StartEventDataStoreIngestionRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store for which you want to start ingestion.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn", # required
    #   }
    #   options = {}
    #   response = client.start_event_data_store_ingestion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartEventDataStoreIngestionResponse]
    def start_event_data_store_ingestion(params = {}, options = {})
      request = build_request(:start_event_data_store_ingestion, params)
      request.send_request(options)
    end

    # <p> Starts an import of logged trail events from a source S3 bucket to a destination event
    #          data store. By default, CloudTrail only imports events contained in the S3 bucket's
    #                <code>CloudTrail</code> prefix and the prefixes inside the <code>CloudTrail</code> prefix, and does not check prefixes for other Amazon Web Services
    #          services. If you want to import CloudTrail events contained in another prefix, you
    #          must include the prefix in the <code>S3LocationUri</code>. For more considerations about
    #          importing trail events, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-copy-trail-to-lake.html#cloudtrail-trail-copy-considerations">Considerations for copying trail events</a> in the <i>CloudTrail User Guide</i>. </p>
    #          <p> When you start a new import, the <code>Destinations</code> and
    #             <code>ImportSource</code> parameters are required. Before starting a new import, disable
    #          any access control lists (ACLs) attached to the source S3 bucket. For more information
    #          about disabling ACLs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of
    #             objects and disabling ACLs for your bucket</a>. </p>
    #          <p> When you retry an import, the <code>ImportID</code> parameter is required. </p>
    #          <note>
    #             <p> If the destination event data store is for an organization, you must use the
    #             management account to import trail events. You cannot use the delegated administrator
    #             account for the organization. </p>
    #          </note>
    # @param [Hash, Types::StartImportRequest] params
    # @option params [Array<String>] :destinations
    #   <p> The ARN of the destination event data store. Use this parameter for a new import.
    #         </p>
    # @option params [Types::ImportSource] :import_source
    #   <p> The source S3 bucket for the import. Use this parameter for a new import. </p>
    # @option params [Time] :start_event_time
    #   <p> Use with <code>EndEventTime</code> to bound a <code>StartImport</code> request, and
    #            limit imported trail events to only those events logged within a specified time period.
    #            When you specify a time range, CloudTrail checks the prefix and log file names to
    #            verify the names contain a date between the specified <code>StartEventTime</code> and
    #               <code>EndEventTime</code> before attempting to import events. </p>
    # @option params [Time] :end_event_time
    #   <p> Use with <code>StartEventTime</code> to bound a <code>StartImport</code> request, and
    #            limit imported trail events to only those events logged within a specified time period.
    #            When you specify a time range, CloudTrail checks the prefix and log file names to
    #            verify the names contain a date between the specified <code>StartEventTime</code> and
    #               <code>EndEventTime</code> before attempting to import events. </p>
    # @option params [String] :import_id
    #   <p> The ID of the import. Use this parameter when you are retrying an import. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destinations: ["EventDataStoreArn"],
    #     import_source: {
    #       s3: { # required
    #         s3_location_uri: "String", # required
    #         s3_bucket_region: "String", # required
    #         s3_bucket_access_role_arn: "String", # required
    #       }
    #     },
    #     start_event_time: Time.now,
    #     end_event_time: Time.now,
    #     import_id: "UUID"
    #   }
    #   options = {}
    #   response = client.start_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_id: "UUID",
    #     destinations: ["EventDataStoreArn"],
    #     import_source: {
    #       s3: { # required
    #         s3_location_uri: "String", # required
    #         s3_bucket_region: "String", # required
    #         s3_bucket_access_role_arn: "String", # required
    #       }
    #     },
    #     start_event_time: Time.now,
    #     end_event_time: Time.now,
    #     import_status: "INITIALIZING" # One of: ["INITIALIZING", "IN_PROGRESS", "FAILED", "STOPPED", "COMPLETED"],
    #     created_timestamp: Time.now,
    #     updated_timestamp: Time.now
    #   }
    # @return [Types::StartImportResponse]
    def start_import(params = {}, options = {})
      request = build_request(:start_import, params)
      request.send_request(options)
    end

    # <p>Starts the recording of Amazon Web Services API calls and log file delivery for a trail.
    #          For a trail that is enabled in all Regions, this operation must be called from the Region
    #          in which the trail was created. This operation cannot be called on the shadow trails
    #          (replicated trails in other Regions) of a trail that is enabled in all Regions.</p>
    # @param [Hash, Types::StartLoggingRequest] params
    # @option params [String] :name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail
    #            logs Amazon Web Services API calls. The following is the format of a trail ARN.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.start_logging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartLoggingResponse]
    def start_logging(params = {}, options = {})
      request = build_request(:start_logging, params)
      request.send_request(options)
    end

    # <p>Starts a CloudTrail Lake query. Use the <code>QueryStatement</code>
    #          parameter to provide your SQL query, enclosed in single quotation marks. Use the optional
    #             <code>DeliveryS3Uri</code> parameter to deliver the query results to an S3
    #          bucket.</p>
    #          <p>
    #             <code>StartQuery</code> requires you specify either the <code>QueryStatement</code> parameter, or a <code>QueryAlias</code> and any <code>QueryParameters</code>. In the current release, 
    #          the <code>QueryAlias</code> and <code>QueryParameters</code> parameters are used only for the queries that populate the CloudTrail Lake dashboards.</p>
    # @param [Hash, Types::StartQueryRequest] params
    # @option params [String] :query_statement
    #   <p>The SQL code of your query.</p>
    # @option params [String] :delivery_s3_uri
    #   <p> The URI for the S3 bucket where CloudTrail delivers the query results. </p>
    # @option params [String] :query_alias
    #   <p>
    #            The alias that identifies a query template.
    #         </p>
    # @option params [Array<String>] :query_parameters
    #   <p>
    #            The query parameters for the specified <code>QueryAlias</code>.
    #         </p>
    # @option params [String] :event_data_store_owner_account_id
    #   <p>
    #   The account ID of the event data store owner.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_statement: "QueryStatement",
    #     delivery_s3_uri: "DeliveryS3Uri",
    #     query_alias: "QueryAlias",
    #     query_parameters: ["QueryParameter"],
    #     event_data_store_owner_account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.start_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "UUID",
    #     event_data_store_owner_account_id: "AccountId"
    #   }
    # @return [Types::StartQueryResponse]
    def start_query(params = {}, options = {})
      request = build_request(:start_query, params)
      request.send_request(options)
    end

    # <p>Stops the ingestion of live events on an event data store specified as either an ARN or the ID portion of the ARN. To stop ingestion, the event data store <code>Status</code> must be <code>ENABLED</code> 
    #          and the <code>eventCategory</code> must be <code>Management</code>, <code>Data</code>, <code>NetworkActivity</code>, or <code>ConfigurationItem</code>.</p>
    # @param [Hash, Types::StopEventDataStoreIngestionRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store for which you want to stop ingestion.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn", # required
    #   }
    #   options = {}
    #   response = client.stop_event_data_store_ingestion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopEventDataStoreIngestionResponse]
    def stop_event_data_store_ingestion(params = {}, options = {})
      request = build_request(:stop_event_data_store_ingestion, params)
      request.send_request(options)
    end

    # <p> Stops a specified import. </p>
    # @param [Hash, Types::StopImportRequest] params
    # @option params [String] :import_id
    #   <p> The ID of the import. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.stop_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_id: "UUID",
    #     import_source: {
    #       s3: { # required
    #         s3_location_uri: "String", # required
    #         s3_bucket_region: "String", # required
    #         s3_bucket_access_role_arn: "String", # required
    #       }
    #     },
    #     destinations: ["EventDataStoreArn"],
    #     import_status: "INITIALIZING" # One of: ["INITIALIZING", "IN_PROGRESS", "FAILED", "STOPPED", "COMPLETED"],
    #     created_timestamp: Time.now,
    #     updated_timestamp: Time.now,
    #     start_event_time: Time.now,
    #     end_event_time: Time.now,
    #     import_statistics: {
    #       prefixes_found: 1,
    #       prefixes_completed: 1,
    #       files_completed: 1,
    #       events_completed: 1,
    #       failed_entries: 1
    #     }
    #   }
    # @return [Types::StopImportResponse]
    def stop_import(params = {}, options = {})
      request = build_request(:stop_import, params)
      request.send_request(options)
    end

    # <p>Suspends the recording of Amazon Web Services API calls and log file delivery for the
    #          specified trail. Under most circumstances, there is no need to use this action. You can
    #          update a trail without stopping it first. This action is the only way to stop recording.
    #          For a trail enabled in all Regions, this operation must be called from the Region in which
    #          the trail was created, or an <code>InvalidHomeRegionException</code> will occur. This
    #          operation cannot be called on the shadow trails (replicated trails in other Regions) of a
    #          trail enabled in all Regions.</p>
    # @param [Hash, Types::StopLoggingRequest] params
    # @option params [String] :name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail
    #            will stop logging Amazon Web Services API calls. The following is the format of a trail
    #            ARN.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_logging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopLoggingResponse]
    def stop_logging(params = {}, options = {})
      request = build_request(:stop_logging, params)
      request.send_request(options)
    end

    # <p>Updates a channel specified by a required channel ARN or UUID.</p>
    # @param [Hash, Types::UpdateChannelRequest] params
    # @option params [String] :channel
    #   <p>The ARN or ID (the ARN suffix) of the channel that you want to update.</p>
    # @option params [Array<Types::Destination>] :destinations
    #   <p>The ARNs of event data stores that you want to log events arriving through the channel.</p>
    # @option params [String] :name
    #   <p>
    #            Changes the name of the channel.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel: "ChannelArn", # required
    #     destinations: [
    #       {
    #         type: "EVENT_DATA_STORE" # One of: ["EVENT_DATA_STORE", "AWS_SERVICE"], # required
    #         location: "Location", # required
    #       }
    #     ],
    #     name: "ChannelName"
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ChannelArn",
    #     name: "ChannelName",
    #     source: "Source",
    #     destinations: [
    #       {
    #         type: "EVENT_DATA_STORE" # One of: ["EVENT_DATA_STORE", "AWS_SERVICE"], # required
    #         location: "Location", # required
    #       }
    #     ]
    #   }
    # @return [Types::UpdateChannelResponse]
    def update_channel(params = {}, options = {})
      request = build_request(:update_channel, params)
      request.send_request(options)
    end

    # <p>
    # Updates the specified dashboard.
    # </p>
    #          <p>
    #       To set a refresh schedule, CloudTrail must be granted permissions to run the <code>StartDashboardRefresh</code> operation to refresh the dashboard on your behalf. To provide permissions, run the <code>PutResourcePolicy</code> operation to attach a resource-based policy to the dashboard. For more information, 
    #       see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-dashboards">
    #          Resource-based policy example for a dashboard</a> in the <i>CloudTrail User Guide</i>.
    #    </p>
    #          <p>
    #       CloudTrail runs queries to populate the dashboard's widgets during a manual or scheduled refresh. CloudTrail must be granted permissions to run the <code>StartQuery</code> operation on your behalf. To provide permissions, run the <code>PutResourcePolicy</code> operation to attach a resource-based policy to each event data store. For more information, 
    #       see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard">Example: Allow CloudTrail to run queries to populate a dashboard</a> in the <i>CloudTrail User Guide</i>.
    #    </p>
    # @param [Hash, Types::UpdateDashboardRequest] params
    # @option params [String] :dashboard_id
    #   <p>
    #      The name or ARN of the dashboard.
    #   </p>
    # @option params [Array<Types::RequestWidget>] :widgets
    #   <p>
    #   An array of widgets for the dashboard. A custom dashboard can have a maximum of 10 widgets.
    #   </p>
    #            <p>To add new widgets, pass in an array that includes the existing widgets along with any new widgets. Run the <code>GetDashboard</code> operation to get the list of widgets for the dashboard.</p>
    #            <p>To remove widgets, pass in an array that includes the existing widgets minus the widgets you want removed.</p>
    # @option params [Types::RefreshSchedule] :refresh_schedule
    #   <p>
    #   The refresh schedule configuration for the dashboard.
    #   </p>
    # @option params [Boolean] :termination_protection_enabled
    #   <p>
    #      Specifies whether termination protection is enabled for the dashboard. If termination protection is enabled, you cannot delete the dashboard until termination protection is disabled.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_id: "DashboardArn", # required
    #     widgets: [
    #       {
    #         query_statement: "QueryStatement", # required
    #         query_parameters: ["QueryParameter"],
    #         view_properties: { # required
    #           "ViewPropertiesKey" => "ViewPropertiesValue"
    #         }
    #       }
    #     ],
    #     refresh_schedule: {
    #       frequency: {
    #         unit: "HOURS" # One of: ["HOURS", "DAYS"],
    #         value: 1
    #       },
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       time_of_day: "TimeOfDay"
    #     },
    #     termination_protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboard_arn: "DashboardArn",
    #     name: "DashboardName",
    #     type: "MANAGED" # One of: ["MANAGED", "CUSTOM"],
    #     widgets: [
    #       {
    #         query_alias: "QueryAlias",
    #         query_statement: "QueryStatement",
    #         query_parameters: ["QueryParameter"],
    #         view_properties: {
    #           "ViewPropertiesKey" => "ViewPropertiesValue"
    #         }
    #       }
    #     ],
    #     refresh_schedule: {
    #       frequency: {
    #         unit: "HOURS" # One of: ["HOURS", "DAYS"],
    #         value: 1
    #       },
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       time_of_day: "TimeOfDay"
    #     },
    #     termination_protection_enabled: false,
    #     created_timestamp: Time.now,
    #     updated_timestamp: Time.now
    #   }
    # @return [Types::UpdateDashboardResponse]
    def update_dashboard(params = {}, options = {})
      request = build_request(:update_dashboard, params)
      request.send_request(options)
    end

    # <p>Updates an event data store. The required <code>EventDataStore</code> value is an ARN or
    #          the ID portion of the ARN. Other parameters are optional, but at least one optional
    #          parameter must be specified, or CloudTrail throws an error.
    #             <code>RetentionPeriod</code> is in days, and valid values are integers between 7 and
    #          3653 if the <code>BillingMode</code> is set to <code>EXTENDABLE_RETENTION_PRICING</code>, or between 7 and 2557 if <code>BillingMode</code> is set to <code>FIXED_RETENTION_PRICING</code>. By default, <code>TerminationProtection</code> is enabled.</p>
    #          <p>For event data stores for CloudTrail events, <code>AdvancedEventSelectors</code>
    #          includes or excludes management, data, or network activity events in your event data store. For more
    #          information about <code>AdvancedEventSelectors</code>, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html">AdvancedEventSelectors</a>.</p>
    #          <p> For event data stores for CloudTrail Insights events, Config configuration items, Audit Manager evidence, or non-Amazon Web Services events,
    #             <code>AdvancedEventSelectors</code> includes events of that type in your event data store.</p>
    # @param [Hash, Types::UpdateEventDataStoreRequest] params
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store that you want to
    #            update.</p>
    # @option params [String] :name
    #   <p>The event data store name.</p>
    # @option params [Array<Types::AdvancedEventSelector>] :advanced_event_selectors
    #   <p>The advanced event selectors used to select events for the event data store. You can
    #            configure up to five advanced event selectors for each event data store.</p>
    # @option params [Boolean] :multi_region_enabled
    #   <p>Specifies whether an event data store collects events from all Regions, or only from the
    #            Region in which it was created.</p>
    # @option params [Boolean] :organization_enabled
    #   <p>Specifies whether an event data store collects events logged for an organization in
    #               Organizations.</p>
    #            <note>
    #               <p>Only the management account for the organization can convert an organization event data store to a non-organization event data store, or convert a non-organization event data store to 
    #            an organization event data store.</p>
    #            </note>
    # @option params [Integer] :retention_period
    #   <p>The retention period of the event data store, in days. If <code>BillingMode</code> is set to <code>EXTENDABLE_RETENTION_PRICING</code>, you can set a retention period of
    #            up to 3653 days, the equivalent of 10 years. If <code>BillingMode</code> is set to <code>FIXED_RETENTION_PRICING</code>, you can set a retention period of
    #            up to 2557 days, the equivalent of seven years.</p>
    #            <p>CloudTrail  Lake determines whether to retain an event by checking if the <code>eventTime</code> 
    #            of the event is within the specified retention period. For example, if you set a retention period of 90 days, CloudTrail will remove events 
    #            when the <code>eventTime</code> is older than 90 days.</p>
    #            <note>
    #               <p>If you decrease the retention period of an event data store, CloudTrail will remove any events with an <code>eventTime</code> older than the new retention period. For example, if the previous 
    #               retention period was 365 days and you decrease it to 100 days, CloudTrail  will remove events with an <code>eventTime</code> older than 100 days.</p>
    #            </note>
    # @option params [Boolean] :termination_protection_enabled
    #   <p>Indicates that termination protection is enabled and the event data store cannot be
    #            automatically deleted.</p>
    # @option params [String] :kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the events delivered by
    #               CloudTrail. The value can be an alias name prefixed by <code>alias/</code>, a
    #            fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique
    #            identifier.</p>
    #            <important>
    #               <p>Disabling or deleting the KMS key, or removing CloudTrail
    #               permissions on the key, prevents CloudTrail from logging events to the event data
    #               store, and prevents users from querying the data in the event data store that was
    #               encrypted with the key. After you associate an event data store with a KMS key, the KMS key cannot be removed or changed. Before you
    #               disable or delete a KMS key that you are using with an event data store,
    #               delete or back up your event data store.</p>
    #            </important>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more
    #            information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region
    #               keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :billing_mode
    #   <note>
    #               <p>You can't change the billing mode from <code>EXTENDABLE_RETENTION_PRICING</code> to <code>FIXED_RETENTION_PRICING</code>. If <code>BillingMode</code> is set to 
    #               <code>EXTENDABLE_RETENTION_PRICING</code> and you want to use <code>FIXED_RETENTION_PRICING</code> instead, you'll need to stop ingestion on the event data store and create a new event data store that uses <code>FIXED_RETENTION_PRICING</code>.</p>
    #            </note>
    #            <p>The billing mode for the event data store determines the cost 
    #            for ingesting events and the default and maximum retention period for the event data store.</p>
    #            <p>The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXTENDABLE_RETENTION_PRICING</code> - This billing mode is generally recommended if you want a flexible retention period of up to 3653 days (about 10 years). The default retention period for this billing mode is 
    #                  366 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FIXED_RETENTION_PRICING</code> - This billing mode is recommended if you expect to ingest more than 25 TB of event data per month and need a retention period of up to 2557 days (about 7 years). 
    #                  The default retention period for this billing mode is 2557 days.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CloudTrail pricing, 
    #            see <a href="http://aws.amazon.com/cloudtrail/pricing/">CloudTrail Pricing</a> and 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-manage-costs.html">Managing CloudTrail Lake costs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_data_store: "EventDataStoreArn", # required
    #     name: "EventDataStoreName",
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"]
    #           }
    #         ]
    #       }
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #     kms_key_id: "EventDataStoreKmsKeyId",
    #     billing_mode: "EXTENDABLE_RETENTION_PRICING" # One of: ["EXTENDABLE_RETENTION_PRICING", "FIXED_RETENTION_PRICING"]
    #   }
    #   options = {}
    #   response = client.update_event_data_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_data_store_arn: "EventDataStoreArn",
    #     name: "EventDataStoreName",
    #     status: "CREATED" # One of: ["CREATED", "ENABLED", "PENDING_DELETION", "STARTING_INGESTION", "STOPPING_INGESTION", "STOPPED_INGESTION"],
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"]
    #           }
    #         ]
    #       }
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #     created_timestamp: Time.now,
    #     updated_timestamp: Time.now,
    #     kms_key_id: "EventDataStoreKmsKeyId",
    #     billing_mode: "EXTENDABLE_RETENTION_PRICING" # One of: ["EXTENDABLE_RETENTION_PRICING", "FIXED_RETENTION_PRICING"],
    #     federation_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"],
    #     federation_role_arn: "FederationRoleArn"
    #   }
    # @return [Types::UpdateEventDataStoreResponse]
    def update_event_data_store(params = {}, options = {})
      request = build_request(:update_event_data_store, params)
      request.send_request(options)
    end

    # <p>Updates trail settings that control what events you are logging, and how to handle log
    #          files. Changes to a trail do not require stopping the CloudTrail service. Use this
    #          action to designate an existing bucket for log delivery. If the existing bucket has
    #          previously been a target for CloudTrail log files, an IAM policy
    #          exists for the bucket. <code>UpdateTrail</code> must be called from the Region in which the
    #          trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p>
    # @param [Hash, Types::UpdateTrailRequest] params
    # @option params [String] :name
    #   <p>Specifies the name of the trail or trail ARN. If <code>Name</code> is a trail name, the
    #            string must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                  (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like
    #                     <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If <code>Name</code> is a trail ARN, it must be in the following format.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    # @option params [String] :s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log files.
    #            See <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Amazon S3
    #               Bucket naming rules</a>.</p>
    # @option params [String] :s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you
    #            have designated for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files">Finding Your CloudTrail Log Files</a>. The maximum length is 200
    #            characters.</p>
    # @option params [String] :sns_topic_name
    #   <p>Specifies the name or ARN of the Amazon SNS topic defined for notification of log file
    #            delivery. The maximum length is 256 characters.</p>
    # @option params [Boolean] :include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
    # @option params [Boolean] :is_multi_region_trail
    #   <p>Specifies whether the trail applies only to the current Region or to all Regions. The
    #            default is false. If the trail exists only in the current Region and this value is set to
    #            true, shadow trails (replications of the trail) will be created in the other Regions. If
    #            the trail exists in all Regions and this value is set to false, the trail will remain in
    #            the Region where it was created, and its shadow trails in other Regions will be deleted. As
    #            a best practice, consider using trails that log events in all Regions.</p>
    # @option params [Boolean] :enable_log_file_validation
    #   <p>Specifies whether log file validation is enabled. The default is false.</p>
    #            <note>
    #               <p>When you disable log file integrity validation, the chain of digest files is broken
    #               after one hour. CloudTrail does not create digest files for log files that were
    #               delivered during a period in which log file integrity validation was disabled. For
    #               example, if you enable log file integrity validation at noon on January 1, disable it at
    #               noon on January 2, and re-enable it at noon on January 10, digest files will not be
    #               created for the log files delivered from noon on January 2 to noon on January 10. The
    #               same applies whenever you stop CloudTrail logging or delete a trail.</p>
    #            </note>
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that
    #            represents the log group to which CloudTrail logs are delivered. You must use a log
    #            group that exists in your account.</p>
    #            <p>Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>
    # @option params [String] :cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's
    #            log group. You must use a role that exists in your account.</p>
    # @option params [String] :kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to
    #            an alias, a fully specified ARN to a key, or a globally unique identifier.</p>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more
    #            information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region
    #               keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #               <li>
    #                  <p>12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :is_organization_trail
    #   <p>Specifies whether the trail is applied to all accounts in an organization in Organizations, or only for the current Amazon Web Services account. The default is false,
    #            and cannot be true unless the call is made on behalf of an Amazon Web Services account that
    #            is the management account for an organization in Organizations. If the trail is not an organization trail and this is set to
    #               <code>true</code>, the trail will be created in all Amazon Web Services accounts that
    #            belong to the organization. If the trail is an organization trail and this is set to
    #               <code>false</code>, the trail will remain in the current Amazon Web Services account but
    #            be deleted from all member accounts in the organization.</p>
    #            <note>
    #               <p>Only the management account for the organization can convert an organization trail to a non-organization trail, or convert a non-organization trail to 
    #               an organization trail.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     s3_bucket_name: "String",
    #     s3_key_prefix: "String",
    #     sns_topic_name: "String",
    #     include_global_service_events: false,
    #     is_multi_region_trail: false,
    #     enable_log_file_validation: false,
    #     cloud_watch_logs_log_group_arn: "String",
    #     cloud_watch_logs_role_arn: "String",
    #     kms_key_id: "String",
    #     is_organization_trail: false
    #   }
    #   options = {}
    #   response = client.update_trail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String",
    #     s3_bucket_name: "String",
    #     s3_key_prefix: "String",
    #     sns_topic_name: "String",
    #     sns_topic_arn: "String",
    #     include_global_service_events: false,
    #     is_multi_region_trail: false,
    #     trail_arn: "String",
    #     log_file_validation_enabled: false,
    #     cloud_watch_logs_log_group_arn: "String",
    #     cloud_watch_logs_role_arn: "String",
    #     kms_key_id: "String",
    #     is_organization_trail: false
    #   }
    # @return [Types::UpdateTrailResponse]
    def update_trail(params = {}, options = {})
      request = build_request(:update_trail, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-cloudtrail'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
