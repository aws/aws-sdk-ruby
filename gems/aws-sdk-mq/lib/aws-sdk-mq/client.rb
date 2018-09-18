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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:mq)

module Aws::MQ
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :mq

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
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Creates a broker. Note: This API is asynchronous.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #
    # @option params [String] :broker_name
    #
    # @option params [Types::ConfigurationId] :configuration
    #   A list of information about the configuration.
    #
    # @option params [String] :creator_request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :deployment_mode
    #   The deployment mode of the broker.
    #
    # @option params [String] :engine_type
    #   The type of broker engine. Note: Currently, Amazon MQ supports only
    #   ActiveMQ.
    #
    # @option params [String] :engine_version
    #
    # @option params [String] :host_instance_type
    #
    # @option params [Types::Logs] :logs
    #   The list of information about logs to be enabled for the specified
    #   broker.
    #
    # @option params [Types::WeeklyStartTime] :maintenance_window_start_time
    #   The scheduled time period relative to UTC during which Amazon MQ
    #   begins to apply pending updates or patches to the broker.
    #
    # @option params [Boolean] :publicly_accessible
    #
    # @option params [Array<String>] :security_groups
    #
    # @option params [Array<String>] :subnet_ids
    #
    # @option params [Array<Types::User>] :users
    #
    # @return [Types::CreateBrokerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBrokerResponse#broker_arn #broker_arn} => String
    #   * {Types::CreateBrokerResponse#broker_id #broker_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_broker({
    #     auto_minor_version_upgrade: false,
    #     broker_name: "__string",
    #     configuration: {
    #       id: "__string",
    #       revision: 1,
    #     },
    #     creator_request_id: "__string",
    #     deployment_mode: "SINGLE_INSTANCE", # accepts SINGLE_INSTANCE, ACTIVE_STANDBY_MULTI_AZ
    #     engine_type: "ACTIVEMQ", # accepts ACTIVEMQ
    #     engine_version: "__string",
    #     host_instance_type: "__string",
    #     logs: {
    #       audit: false,
    #       general: false,
    #     },
    #     maintenance_window_start_time: {
    #       day_of_week: "MONDAY", # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #       time_of_day: "__string",
    #       time_zone: "__string",
    #     },
    #     publicly_accessible: false,
    #     security_groups: ["__string"],
    #     subnet_ids: ["__string"],
    #     users: [
    #       {
    #         console_access: false,
    #         groups: ["__string"],
    #         password: "__string",
    #         username: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_arn #=> String
    #   resp.broker_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateBroker AWS API Documentation
    #
    # @overload create_broker(params = {})
    # @param [Hash] params ({})
    def create_broker(params = {}, options = {})
      req = build_request(:create_broker, params)
      req.send_request(options)
    end

    # Creates a new configuration for the specified configuration name.
    # Amazon MQ uses the default configuration (the engine type and
    # version).
    #
    # @option params [String] :engine_type
    #   The type of broker engine. Note: Currently, Amazon MQ supports only
    #   ActiveMQ.
    #
    # @option params [String] :engine_version
    #
    # @option params [String] :name
    #
    # @return [Types::CreateConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfigurationResponse#arn #arn} => String
    #   * {Types::CreateConfigurationResponse#created #created} => Time
    #   * {Types::CreateConfigurationResponse#id #id} => String
    #   * {Types::CreateConfigurationResponse#latest_revision #latest_revision} => Types::ConfigurationRevision
    #   * {Types::CreateConfigurationResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration({
    #     engine_type: "ACTIVEMQ", # accepts ACTIVEMQ
    #     engine_version: "__string",
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created #=> Time
    #   resp.id #=> String
    #   resp.latest_revision.created #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateConfiguration AWS API Documentation
    #
    # @overload create_configuration(params = {})
    # @param [Hash] params ({})
    def create_configuration(params = {}, options = {})
      req = build_request(:create_configuration, params)
      req.send_request(options)
    end

    # Creates an ActiveMQ user.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [Boolean] :console_access
    #
    # @option params [Array<String>] :groups
    #
    # @option params [String] :password
    #
    # @option params [required, String] :username
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     broker_id: "__string", # required
    #     console_access: false,
    #     groups: ["__string"],
    #     password: "__string",
    #     username: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes a broker. Note: This API is asynchronous.
    #
    # @option params [required, String] :broker_id
    #
    # @return [Types::DeleteBrokerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBrokerResponse#broker_id #broker_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_broker({
    #     broker_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteBroker AWS API Documentation
    #
    # @overload delete_broker(params = {})
    # @param [Hash] params ({})
    def delete_broker(params = {}, options = {})
      req = build_request(:delete_broker, params)
      req.send_request(options)
    end

    # Deletes an ActiveMQ user.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [required, String] :username
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     broker_id: "__string", # required
    #     username: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Returns information about the specified broker.
    #
    # @option params [required, String] :broker_id
    #
    # @return [Types::DescribeBrokerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBrokerResponse#auto_minor_version_upgrade #auto_minor_version_upgrade} => Boolean
    #   * {Types::DescribeBrokerResponse#broker_arn #broker_arn} => String
    #   * {Types::DescribeBrokerResponse#broker_id #broker_id} => String
    #   * {Types::DescribeBrokerResponse#broker_instances #broker_instances} => Array&lt;Types::BrokerInstance&gt;
    #   * {Types::DescribeBrokerResponse#broker_name #broker_name} => String
    #   * {Types::DescribeBrokerResponse#broker_state #broker_state} => String
    #   * {Types::DescribeBrokerResponse#configurations #configurations} => Types::Configurations
    #   * {Types::DescribeBrokerResponse#created #created} => Time
    #   * {Types::DescribeBrokerResponse#deployment_mode #deployment_mode} => String
    #   * {Types::DescribeBrokerResponse#engine_type #engine_type} => String
    #   * {Types::DescribeBrokerResponse#engine_version #engine_version} => String
    #   * {Types::DescribeBrokerResponse#host_instance_type #host_instance_type} => String
    #   * {Types::DescribeBrokerResponse#logs #logs} => Types::LogsSummary
    #   * {Types::DescribeBrokerResponse#maintenance_window_start_time #maintenance_window_start_time} => Types::WeeklyStartTime
    #   * {Types::DescribeBrokerResponse#publicly_accessible #publicly_accessible} => Boolean
    #   * {Types::DescribeBrokerResponse#security_groups #security_groups} => Array&lt;String&gt;
    #   * {Types::DescribeBrokerResponse#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::DescribeBrokerResponse#users #users} => Array&lt;Types::UserSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_broker({
    #     broker_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_minor_version_upgrade #=> Boolean
    #   resp.broker_arn #=> String
    #   resp.broker_id #=> String
    #   resp.broker_instances #=> Array
    #   resp.broker_instances[0].console_url #=> String
    #   resp.broker_instances[0].endpoints #=> Array
    #   resp.broker_instances[0].endpoints[0] #=> String
    #   resp.broker_instances[0].ip_address #=> String
    #   resp.broker_name #=> String
    #   resp.broker_state #=> String, one of "CREATION_IN_PROGRESS", "CREATION_FAILED", "DELETION_IN_PROGRESS", "RUNNING", "REBOOT_IN_PROGRESS"
    #   resp.configurations.current.id #=> String
    #   resp.configurations.current.revision #=> Integer
    #   resp.configurations.history #=> Array
    #   resp.configurations.history[0].id #=> String
    #   resp.configurations.history[0].revision #=> Integer
    #   resp.configurations.pending.id #=> String
    #   resp.configurations.pending.revision #=> Integer
    #   resp.created #=> Time
    #   resp.deployment_mode #=> String, one of "SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ"
    #   resp.engine_type #=> String, one of "ACTIVEMQ"
    #   resp.engine_version #=> String
    #   resp.host_instance_type #=> String
    #   resp.logs.audit #=> Boolean
    #   resp.logs.audit_log_group #=> String
    #   resp.logs.general #=> Boolean
    #   resp.logs.general_log_group #=> String
    #   resp.logs.pending.audit #=> Boolean
    #   resp.logs.pending.general #=> Boolean
    #   resp.maintenance_window_start_time.day_of_week #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.maintenance_window_start_time.time_of_day #=> String
    #   resp.maintenance_window_start_time.time_zone #=> String
    #   resp.publicly_accessible #=> Boolean
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.users #=> Array
    #   resp.users[0].pending_change #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.users[0].username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBroker AWS API Documentation
    #
    # @overload describe_broker(params = {})
    # @param [Hash] params ({})
    def describe_broker(params = {}, options = {})
      req = build_request(:describe_broker, params)
      req.send_request(options)
    end

    # Returns information about the specified configuration.
    #
    # @option params [required, String] :configuration_id
    #
    # @return [Types::DescribeConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationResponse#arn #arn} => String
    #   * {Types::DescribeConfigurationResponse#created #created} => Time
    #   * {Types::DescribeConfigurationResponse#description #description} => String
    #   * {Types::DescribeConfigurationResponse#engine_type #engine_type} => String
    #   * {Types::DescribeConfigurationResponse#engine_version #engine_version} => String
    #   * {Types::DescribeConfigurationResponse#id #id} => String
    #   * {Types::DescribeConfigurationResponse#latest_revision #latest_revision} => Types::ConfigurationRevision
    #   * {Types::DescribeConfigurationResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration({
    #     configuration_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created #=> Time
    #   resp.description #=> String
    #   resp.engine_type #=> String, one of "ACTIVEMQ"
    #   resp.engine_version #=> String
    #   resp.id #=> String
    #   resp.latest_revision.created #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfiguration AWS API Documentation
    #
    # @overload describe_configuration(params = {})
    # @param [Hash] params ({})
    def describe_configuration(params = {}, options = {})
      req = build_request(:describe_configuration, params)
      req.send_request(options)
    end

    # Returns the specified configuration revision for the specified
    # configuration.
    #
    # @option params [required, String] :configuration_id
    #
    # @option params [required, String] :configuration_revision
    #
    # @return [Types::DescribeConfigurationRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationRevisionResponse#configuration_id #configuration_id} => String
    #   * {Types::DescribeConfigurationRevisionResponse#created #created} => Time
    #   * {Types::DescribeConfigurationRevisionResponse#data #data} => String
    #   * {Types::DescribeConfigurationRevisionResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_revision({
    #     configuration_id: "__string", # required
    #     configuration_revision: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_id #=> String
    #   resp.created #=> Time
    #   resp.data #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfigurationRevision AWS API Documentation
    #
    # @overload describe_configuration_revision(params = {})
    # @param [Hash] params ({})
    def describe_configuration_revision(params = {}, options = {})
      req = build_request(:describe_configuration_revision, params)
      req.send_request(options)
    end

    # Returns information about an ActiveMQ user.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [required, String] :username
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#broker_id #broker_id} => String
    #   * {Types::DescribeUserResponse#console_access #console_access} => Boolean
    #   * {Types::DescribeUserResponse#groups #groups} => Array&lt;String&gt;
    #   * {Types::DescribeUserResponse#pending #pending} => Types::UserPendingChanges
    #   * {Types::DescribeUserResponse#username #username} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     broker_id: "__string", # required
    #     username: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_id #=> String
    #   resp.console_access #=> Boolean
    #   resp.groups #=> Array
    #   resp.groups[0] #=> String
    #   resp.pending.console_access #=> Boolean
    #   resp.pending.groups #=> Array
    #   resp.pending.groups[0] #=> String
    #   resp.pending.pending_change #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Returns a list of all brokers.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListBrokersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBrokersResponse#broker_summaries #broker_summaries} => Array&lt;Types::BrokerSummary&gt;
    #   * {Types::ListBrokersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_brokers({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_summaries #=> Array
    #   resp.broker_summaries[0].broker_arn #=> String
    #   resp.broker_summaries[0].broker_id #=> String
    #   resp.broker_summaries[0].broker_name #=> String
    #   resp.broker_summaries[0].broker_state #=> String, one of "CREATION_IN_PROGRESS", "CREATION_FAILED", "DELETION_IN_PROGRESS", "RUNNING", "REBOOT_IN_PROGRESS"
    #   resp.broker_summaries[0].created #=> Time
    #   resp.broker_summaries[0].deployment_mode #=> String, one of "SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ"
    #   resp.broker_summaries[0].host_instance_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListBrokers AWS API Documentation
    #
    # @overload list_brokers(params = {})
    # @param [Hash] params ({})
    def list_brokers(params = {}, options = {})
      req = build_request(:list_brokers, params)
      req.send_request(options)
    end

    # Returns a list of all revisions for the specified configuration.
    #
    # @option params [required, String] :configuration_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListConfigurationRevisionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationRevisionsResponse#configuration_id #configuration_id} => String
    #   * {Types::ListConfigurationRevisionsResponse#max_results #max_results} => Integer
    #   * {Types::ListConfigurationRevisionsResponse#next_token #next_token} => String
    #   * {Types::ListConfigurationRevisionsResponse#revisions #revisions} => Array&lt;Types::ConfigurationRevision&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_revisions({
    #     configuration_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_id #=> String
    #   resp.max_results #=> Integer
    #   resp.next_token #=> String
    #   resp.revisions #=> Array
    #   resp.revisions[0].created #=> Time
    #   resp.revisions[0].description #=> String
    #   resp.revisions[0].revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurationRevisions AWS API Documentation
    #
    # @overload list_configuration_revisions(params = {})
    # @param [Hash] params ({})
    def list_configuration_revisions(params = {}, options = {})
      req = build_request(:list_configuration_revisions, params)
      req.send_request(options)
    end

    # Returns a list of all configurations.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationsResponse#configurations #configurations} => Array&lt;Types::Configuration&gt;
    #   * {Types::ListConfigurationsResponse#max_results #max_results} => Integer
    #   * {Types::ListConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configurations({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.configurations #=> Array
    #   resp.configurations[0].arn #=> String
    #   resp.configurations[0].created #=> Time
    #   resp.configurations[0].description #=> String
    #   resp.configurations[0].engine_type #=> String, one of "ACTIVEMQ"
    #   resp.configurations[0].engine_version #=> String
    #   resp.configurations[0].id #=> String
    #   resp.configurations[0].latest_revision.created #=> Time
    #   resp.configurations[0].latest_revision.description #=> String
    #   resp.configurations[0].latest_revision.revision #=> Integer
    #   resp.configurations[0].name #=> String
    #   resp.max_results #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurations AWS API Documentation
    #
    # @overload list_configurations(params = {})
    # @param [Hash] params ({})
    def list_configurations(params = {}, options = {})
      req = build_request(:list_configurations, params)
      req.send_request(options)
    end

    # Returns a list of all ActiveMQ users.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#broker_id #broker_id} => String
    #   * {Types::ListUsersResponse#max_results #max_results} => Integer
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::UserSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     broker_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_id #=> String
    #   resp.max_results #=> Integer
    #   resp.next_token #=> String
    #   resp.users #=> Array
    #   resp.users[0].pending_change #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.users[0].username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Reboots a broker. Note: This API is asynchronous.
    #
    # @option params [required, String] :broker_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_broker({
    #     broker_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/RebootBroker AWS API Documentation
    #
    # @overload reboot_broker(params = {})
    # @param [Hash] params ({})
    def reboot_broker(params = {}, options = {})
      req = build_request(:reboot_broker, params)
      req.send_request(options)
    end

    # Adds a pending configuration change to a broker.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [Types::ConfigurationId] :configuration
    #   A list of information about the configuration.
    #
    # @option params [Types::Logs] :logs
    #   The list of information about logs to be enabled for the specified
    #   broker.
    #
    # @return [Types::UpdateBrokerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrokerResponse#broker_id #broker_id} => String
    #   * {Types::UpdateBrokerResponse#configuration #configuration} => Types::ConfigurationId
    #   * {Types::UpdateBrokerResponse#logs #logs} => Types::Logs
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_broker({
    #     broker_id: "__string", # required
    #     configuration: {
    #       id: "__string",
    #       revision: 1,
    #     },
    #     logs: {
    #       audit: false,
    #       general: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_id #=> String
    #   resp.configuration.id #=> String
    #   resp.configuration.revision #=> Integer
    #   resp.logs.audit #=> Boolean
    #   resp.logs.general #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateBroker AWS API Documentation
    #
    # @overload update_broker(params = {})
    # @param [Hash] params ({})
    def update_broker(params = {}, options = {})
      req = build_request(:update_broker, params)
      req.send_request(options)
    end

    # Updates the specified configuration.
    #
    # @option params [required, String] :configuration_id
    #
    # @option params [String] :data
    #
    # @option params [String] :description
    #
    # @return [Types::UpdateConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfigurationResponse#arn #arn} => String
    #   * {Types::UpdateConfigurationResponse#created #created} => Time
    #   * {Types::UpdateConfigurationResponse#id #id} => String
    #   * {Types::UpdateConfigurationResponse#latest_revision #latest_revision} => Types::ConfigurationRevision
    #   * {Types::UpdateConfigurationResponse#name #name} => String
    #   * {Types::UpdateConfigurationResponse#warnings #warnings} => Array&lt;Types::SanitizationWarning&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration({
    #     configuration_id: "__string", # required
    #     data: "__string",
    #     description: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created #=> Time
    #   resp.id #=> String
    #   resp.latest_revision.created #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].attribute_name #=> String
    #   resp.warnings[0].element_name #=> String
    #   resp.warnings[0].reason #=> String, one of "DISALLOWED_ELEMENT_REMOVED", "DISALLOWED_ATTRIBUTE_REMOVED", "INVALID_ATTRIBUTE_VALUE_REMOVED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateConfiguration AWS API Documentation
    #
    # @overload update_configuration(params = {})
    # @param [Hash] params ({})
    def update_configuration(params = {}, options = {})
      req = build_request(:update_configuration, params)
      req.send_request(options)
    end

    # Updates the information for an ActiveMQ user.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [Boolean] :console_access
    #
    # @option params [Array<String>] :groups
    #
    # @option params [String] :password
    #
    # @option params [required, String] :username
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     broker_id: "__string", # required
    #     console_access: false,
    #     groups: ["__string"],
    #     password: "__string",
    #     username: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-mq'
      context[:gem_version] = '1.4.0'
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
