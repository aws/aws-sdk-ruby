# frozen_string_literal: true

module AwsSdkCodeGenerator
  class PluginList

    include Enumerable

    def initialize(options)
      @aws_sdk_core_lib_path = options.fetch(:aws_sdk_core_lib_path)
      @plugins = compute_plugins(options)
      @client_plugins = compute_client_plugins(options)
    end

    # @return [Array<Plugin>]
    attr_reader :client_plugins

    # @return [Enumerable<Plugin>]
    def each(&block)
      @plugins.each(&block)
    end

    private

    def compute_plugins(options)
      plugins = {}
      plugins.update(options[:async_client] ? default_async_plugins : default_plugins)
      plugins.update(signature_plugins(options))
      plugins.update(protocol_plugins(options.fetch(:protocol)))
      plugins.update(options.fetch(:add_plugins))
      options.fetch(:remove_plugins).each do |plugin_name|
        plugins.delete(plugin_name)
      end
      plugins.map do |class_name, path|
        compute_plugin(class_name, path)
      end
    end

    def compute_client_plugins(options)
      plugins = options[:async_client] ? async_client_plugins : base_client_plugins
      plugins.map do |class_name, path|
        compute_plugin(class_name, path)
      end
    end

    def compute_plugin(class_name, path)
      path = File.absolute_path(path)
      Kernel.require(path)

      Plugin.new(
        class_name: class_name,
        options: const_get(class_name).options,
        path: path
      )
    end

    def async_client_plugins
      {
        'Seahorse::Client::Plugins::Endpoint' => "#{seahorse_plugins_path}/endpoint.rb",
        'Seahorse::Client::Plugins::H2' => "#{seahorse_plugins_path}/h2.rb",
        'Seahorse::Client::Plugins::ResponseTarget' => "#{seahorse_plugins_path}/response_target.rb",
      }
    end

    def base_client_plugins
      {
        'Seahorse::Client::Plugins::Endpoint' => "#{seahorse_plugins_path}/endpoint.rb",
        'Seahorse::Client::Plugins::NetHttp' => "#{seahorse_plugins_path}/h2.rb",
        'Seahorse::Client::Plugins::RaiseResponseErrors' => "#{seahorse_plugins_path}/raise_response_errors.rb",
        'Seahorse::Client::Plugins::ResponseTarget' => "#{seahorse_plugins_path}/response_target.rb",
        'Seahorse::Client::Plugins::RequestCallback' => "#{seahorse_plugins_path}/request_callback.rb",
      }
    end

    def default_plugins
      {
        'Seahorse::Client::Plugins::ContentLength' => "#{seahorse_plugins_path}/content_length.rb",
        'Aws::Plugins::CredentialsConfiguration' => "#{core_plugins_path}/credentials_configuration.rb",
        'Aws::Plugins::Logging' => "#{core_plugins_path}/logging.rb",
        'Aws::Plugins::ParamConverter' => "#{core_plugins_path}/param_converter.rb",
        'Aws::Plugins::ParamValidator' => "#{core_plugins_path}/param_validator.rb",
        'Aws::Plugins::UserAgent' => "#{core_plugins_path}/user_agent.rb",
        'Aws::Plugins::HelpfulSocketErrors' => "#{core_plugins_path}/helpful_socket_errors.rb",
        'Aws::Plugins::RetryErrors' => "#{core_plugins_path}/retry_errors.rb",
        'Aws::Plugins::GlobalConfiguration' => "#{core_plugins_path}/global_configuration.rb",
        'Aws::Plugins::RegionalEndpoint' => "#{core_plugins_path}/regional_endpoint.rb",
        'Aws::Plugins::EndpointDiscovery' => "#{core_plugins_path}/endpoint_discovery.rb",
        'Aws::Plugins::EndpointPattern' => "#{core_plugins_path}/endpoint_pattern.rb",
        'Aws::Plugins::ResponsePaging' => "#{core_plugins_path}/response_paging.rb",
        'Aws::Plugins::StubResponses' => "#{core_plugins_path}/stub_responses.rb",
        'Aws::Plugins::IdempotencyToken' => "#{core_plugins_path}/idempotency_token.rb",
        'Aws::Plugins::InvocationId' => "#{core_plugins_path}/invocation_id.rb",
        'Aws::Plugins::JsonvalueConverter' => "#{core_plugins_path}/jsonvalue_converter.rb",
        'Aws::Plugins::ClientMetricsPlugin' => "#{core_plugins_path}/client_metrics_plugin.rb",
        'Aws::Plugins::ClientMetricsSendPlugin' => "#{core_plugins_path}/client_metrics_send_plugin.rb",
        'Aws::Plugins::TransferEncoding' => "#{core_plugins_path}/transfer_encoding.rb",
        'Aws::Plugins::HttpChecksum' => "#{core_plugins_path}/http_checksum.rb",
        'Aws::Plugins::ChecksumAlgorithm' => "#{core_plugins_path}/checksum_algorithm.rb",
        'Aws::Plugins::RequestCompression' => "#{core_plugins_path}/request_compression.rb",
        'Aws::Plugins::DefaultsMode' => "#{core_plugins_path}/defaults_mode.rb",
        'Aws::Plugins::RecursionDetection' => "#{core_plugins_path}/recursion_detection.rb",
        'Aws::Plugins::Telemetry' => "#{core_plugins_path}/telemetry.rb"
      }
    end

    def default_async_plugins
      plugins = default_plugins.dup
      plugins.delete('Seahorse::Client::Plugins::ContentLength')
      plugins.delete('Aws::Plugins::ResponsePaging')
      plugins.delete('Aws::Plugins::EndpointDiscovery')
      plugins.delete('Aws::Plugins::EndpointPattern')
      plugins.delete('Aws::Plugins::ClientMetricsPlugin')
      plugins.delete('Aws::Plugins::ClientMetricsSendPlugin')
      plugins.delete('Aws::Plugins::TransferEncoding')
      plugins
    end

    def protocol_plugins(protocol)
      {
        'json'      => { 'Aws::Plugins::Protocols::JsonRpc' => "#{core_plugins_path}/protocols/json_rpc.rb" },
        'rest-json' => { 'Aws::Plugins::Protocols::RestJson' => "#{core_plugins_path}/protocols/rest_json.rb" },
        'rest-xml'  => { 'Aws::Plugins::Protocols::RestXml' => "#{core_plugins_path}/protocols/rest_xml.rb" },
        'query'     => { 'Aws::Plugins::Protocols::Query' => "#{core_plugins_path}/protocols/query.rb" },
        'ec2'       => { 'Aws::Plugins::Protocols::EC2' => "#{core_plugins_path}/protocols/ec2.rb" },
        'smithy-rpc-v2-cbor' => { 'Aws::Plugins::Protocols::RpcV2' => "#{core_plugins_path}/protocols/rpc_v2.rb" },
        'api-gateway' => {
          'Aws::Plugins::Protocols::ApiGateway' => "#{core_plugins_path}/protocols/api_gateway.rb",
          'Aws::Plugins::ApiKey' => "#{core_plugins_path}/api_key.rb",
          'Aws::Plugins::APIGUserAgent' => "#{core_plugins_path}/apig_user_agent.rb",
          'Aws::Plugins::APIGAuthorizerToken' => "#{core_plugins_path}/apig_authorizer_token.rb",
          'Aws::Plugins::APIGCredentialsConfiguration' => "#{core_plugins_path}/apig_credentials_configuration.rb"
        },
        nil         => {}
      }[protocol]
    end

    # HACK: Sigv2 is deprecated, Sigv4/Bearer are with core. Always assume
    # new signer plugin. This logic would be moved to gem dependencies
    # calculation, but don't worry until new signature type.
    #
    # NOTE: If no rules are provided, just use old Signing method
    def signature_plugins(options)
      if !options[:legacy_endpoints]
        {
          'Aws::Plugins::Sign' => "#{core_plugins_path}/sign.rb"
        }
      else
        auth_types  = [options.fetch(:signature_version)]
        auth_types += options[:api]['operations'].map { |_n, o| o['authtype'] }.compact
        plugins = {}
        auth_types.each do |auth_type|
          case auth_type
          when 'v4'
            plugins['Aws::Plugins::SignatureV4'] = "#{core_plugins_path}/signature_v4.rb"
          when 'v2'
            plugins['Aws::Plugins::SignatureV2'] = "#{core_plugins_path}/signature_v2.rb"
          when 'bearer'
            plugins['Aws::Plugins::BearerAuthorization'] = "#{core_plugins_path}/bearer_authorization.rb"
          end
        end
        plugins
      end
    end

    def core_plugins_path
      File.join(@aws_sdk_core_lib_path, 'aws-sdk-core/plugins')
    end

    def seahorse_plugins_path
      File.join(@aws_sdk_core_lib_path, 'seahorse/client/plugins')
    end

    def const_get(class_name)
      Object.const_get(class_name)
    end

    class Plugin

      def initialize(options)
        @class_name = options.fetch(:class_name)
        @options = options.fetch(:options)
        @require_path = options.fetch(:path).split('/lib/').last
      end

      # @return [String]
      attr_reader :class_name

      # @return [Array<Seahorse::Client::Plugin::PluginOption>]
      attr_reader :options

      # @return [String]
      attr_reader :require_path

    end
  end
end
