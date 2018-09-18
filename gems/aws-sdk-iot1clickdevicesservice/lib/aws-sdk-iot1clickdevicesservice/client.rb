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

Aws::Plugins::GlobalConfiguration.add_identifier(:iot1clickdevicesservice)

module Aws::IoT1ClickDevicesService
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :iot1clickdevicesservice

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

    # Adds device(s) to your account (i.e., claim one or more devices) if
    # and only if you received a claim code with the device(s).
    #
    # @option params [required, String] :claim_code
    #
    # @return [Types::ClaimDevicesByClaimCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClaimDevicesByClaimCodeResponse#claim_code #claim_code} => String
    #   * {Types::ClaimDevicesByClaimCodeResponse#total #total} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.claim_devices_by_claim_code({
    #     claim_code: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.claim_code #=> String
    #   resp.total #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ClaimDevicesByClaimCode AWS API Documentation
    #
    # @overload claim_devices_by_claim_code(params = {})
    # @param [Hash] params ({})
    def claim_devices_by_claim_code(params = {}, options = {})
      req = build_request(:claim_devices_by_claim_code, params)
      req.send_request(options)
    end

    # Given a device ID, returns a DescribeDeviceResponse object describing
    # the details of the device.
    #
    # @option params [required, String] :device_id
    #
    # @return [Types::DescribeDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeviceResponse#device_description #device_description} => Types::DeviceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device({
    #     device_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_description.attributes #=> Hash
    #   resp.device_description.attributes["__string"] #=> String
    #   resp.device_description.device_id #=> String
    #   resp.device_description.enabled #=> Boolean
    #   resp.device_description.remaining_life #=> Float
    #   resp.device_description.type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/DescribeDevice AWS API Documentation
    #
    # @overload describe_device(params = {})
    # @param [Hash] params ({})
    def describe_device(params = {}, options = {})
      req = build_request(:describe_device, params)
      req.send_request(options)
    end

    # Given a device ID, finalizes the claim request for the associated
    # device.
    #
    # <note markdown="1"> Claiming a device consists of initiating a claim, then publishing a
    # device event, and finalizing the claim. For a device of type button, a
    # device event can be published by simply clicking the device.
    #
    #  </note>
    #
    # @option params [required, String] :device_id
    #
    # @return [Types::FinalizeDeviceClaimResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FinalizeDeviceClaimResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.finalize_device_claim({
    #     device_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/FinalizeDeviceClaim AWS API Documentation
    #
    # @overload finalize_device_claim(params = {})
    # @param [Hash] params ({})
    def finalize_device_claim(params = {}, options = {})
      req = build_request(:finalize_device_claim, params)
      req.send_request(options)
    end

    # Given a device ID, returns the invokable methods associated with the
    # device.
    #
    # @option params [required, String] :device_id
    #
    # @return [Types::GetDeviceMethodsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceMethodsResponse#device_methods #device_methods} => Array&lt;Types::DeviceMethod&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_methods({
    #     device_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_methods #=> Array
    #   resp.device_methods[0].device_type #=> String
    #   resp.device_methods[0].method_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/GetDeviceMethods AWS API Documentation
    #
    # @overload get_device_methods(params = {})
    # @param [Hash] params ({})
    def get_device_methods(params = {}, options = {})
      req = build_request(:get_device_methods, params)
      req.send_request(options)
    end

    # Given a device ID, initiates a claim request for the associated
    # device.
    #
    # <note markdown="1"> Claiming a device consists of initiating a claim, then publishing a
    # device event, and finalizing the claim. For a device of type button, a
    # device event can be published by simply clicking the device.
    #
    #  </note>
    #
    # @option params [required, String] :device_id
    #
    # @return [Types::InitiateDeviceClaimResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateDeviceClaimResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_device_claim({
    #     device_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/InitiateDeviceClaim AWS API Documentation
    #
    # @overload initiate_device_claim(params = {})
    # @param [Hash] params ({})
    def initiate_device_claim(params = {}, options = {})
      req = build_request(:initiate_device_claim, params)
      req.send_request(options)
    end

    # Given a device ID, issues a request to invoke a named device method
    # (with possible parameters). See the "Example POST" code snippet
    # below.
    #
    # @option params [required, String] :device_id
    #
    # @option params [Types::DeviceMethod] :device_method
    #   The device method to invoke.
    #
    # @option params [String] :device_method_parameters
    #   A JSON encoded string containing the device method request parameters.
    #
    # @return [Types::InvokeDeviceMethodResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeDeviceMethodResponse#device_method_response #device_method_response} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_device_method({
    #     device_id: "__string", # required
    #     device_method: {
    #       device_type: "__string",
    #       method_name: "__string",
    #     },
    #     device_method_parameters: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.device_method_response #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/InvokeDeviceMethod AWS API Documentation
    #
    # @overload invoke_device_method(params = {})
    # @param [Hash] params ({})
    def invoke_device_method(params = {}, options = {})
      req = build_request(:invoke_device_method, params)
      req.send_request(options)
    end

    # Using a device ID, returns a DeviceEventsResponse object containing an
    # array of events for the device.
    #
    # @option params [required, String] :device_id
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :from_time_stamp
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :to_time_stamp
    #
    # @return [Types::ListDeviceEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeviceEventsResponse#events #events} => Array&lt;Types::DeviceEvent&gt;
    #   * {Types::ListDeviceEventsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_events({
    #     device_id: "__string", # required
    #     from_time_stamp: Time.now, # required
    #     max_results: 1,
    #     next_token: "__string",
    #     to_time_stamp: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].device.device_id #=> String
    #   resp.events[0].device.type #=> String
    #   resp.events[0].std_event #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ListDeviceEvents AWS API Documentation
    #
    # @overload list_device_events(params = {})
    # @param [Hash] params ({})
    def list_device_events(params = {}, options = {})
      req = build_request(:list_device_events, params)
      req.send_request(options)
    end

    # Lists the 1-Click compatible devices associated with your AWS account.
    #
    # @option params [String] :device_type
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesResponse#devices #devices} => Array&lt;Types::DeviceDescription&gt;
    #   * {Types::ListDevicesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices({
    #     device_type: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].attributes #=> Hash
    #   resp.devices[0].attributes["__string"] #=> String
    #   resp.devices[0].device_id #=> String
    #   resp.devices[0].enabled #=> Boolean
    #   resp.devices[0].remaining_life #=> Float
    #   resp.devices[0].type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ListDevices AWS API Documentation
    #
    # @overload list_devices(params = {})
    # @param [Hash] params ({})
    def list_devices(params = {}, options = {})
      req = build_request(:list_devices, params)
      req.send_request(options)
    end

    # Disassociates a device from your AWS account using its device ID.
    #
    # @option params [required, String] :device_id
    #
    # @return [Types::UnclaimDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UnclaimDeviceResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unclaim_device({
    #     device_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/UnclaimDevice AWS API Documentation
    #
    # @overload unclaim_device(params = {})
    # @param [Hash] params ({})
    def unclaim_device(params = {}, options = {})
      req = build_request(:unclaim_device, params)
      req.send_request(options)
    end

    # Using a Boolean value (true or false), this operation enables or
    # disables the device given a device ID.
    #
    # @option params [required, String] :device_id
    #
    # @option params [Boolean] :enabled
    #   If true, the device is enabled. If false, the device is disabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_state({
    #     device_id: "__string", # required
    #     enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/UpdateDeviceState AWS API Documentation
    #
    # @overload update_device_state(params = {})
    # @param [Hash] params ({})
    def update_device_state(params = {}, options = {})
      req = build_request(:update_device_state, params)
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
      context[:gem_name] = 'aws-sdk-iot1clickdevicesservice'
      context[:gem_version] = '1.3.0'
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
