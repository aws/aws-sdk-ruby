# frozen_string_literal: true

module AwsSdkCodeGenerator
  class PluginList

    include Enumerable

    def initialize(options)
      @aws_sdk_core_lib_path = options.fetch(:aws_sdk_core_lib_path)
      @plugins = compute_plugins(options)
    end

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
        path = File.absolute_path(path)
        Kernel.require(path)

        Plugin.new(
          class_name: class_name,
          options: const_get(class_name).options,
          path: path)
      end
    end

    def default_plugins
      {
        'Seahorse::Client::Plugins::ContentLength' => "#{seahorse_plugins}/content_length.rb",
        'Aws::Plugins::CredentialsConfiguration' => "#{core_plugins}/credentials_configuration.rb",
        'Aws::Plugins::Logging' => "#{core_plugins}/logging.rb",
        'Aws::Plugins::ParamConverter' => "#{core_plugins}/param_converter.rb",
        'Aws::Plugins::ParamValidator' => "#{core_plugins}/param_validator.rb",
        'Aws::Plugins::UserAgent' => "#{core_plugins}/user_agent.rb",
        'Aws::Plugins::HelpfulSocketErrors' => "#{core_plugins}/helpful_socket_errors.rb",
        'Aws::Plugins::RetryErrors' => "#{core_plugins}/retry_errors.rb",
        'Aws::Plugins::GlobalConfiguration' => "#{core_plugins}/global_configuration.rb",
        'Aws::Plugins::RegionalEndpoint' => "#{core_plugins}/regional_endpoint.rb",
        'Aws::Plugins::EndpointDiscovery' => "#{core_plugins}/endpoint_discovery.rb",
        'Aws::Plugins::EndpointPattern' => "#{core_plugins}/endpoint_pattern.rb",
        'Aws::Plugins::ResponsePaging' => "#{core_plugins}/response_paging.rb",
        'Aws::Plugins::StubResponses' => "#{core_plugins}/stub_responses.rb",
        'Aws::Plugins::IdempotencyToken' => "#{core_plugins}/idempotency_token.rb",
        'Aws::Plugins::JsonvalueConverter' => "#{core_plugins}/jsonvalue_converter.rb",
        'Aws::Plugins::ClientMetricsPlugin' => "#{core_plugins}/client_metrics_plugin.rb",
        'Aws::Plugins::ClientMetricsSendPlugin' => "#{core_plugins}/client_metrics_send_plugin.rb",
        'Aws::Plugins::TransferEncoding' => "#{core_plugins}/transfer_encoding.rb",
        'Aws::Plugins::HttpChecksum' => "#{core_plugins}/http_checksum.rb",
        'Aws::Plugins::ChecksumAlgorithm' => "#{core_plugins}/checksum_algorithm.rb",
        'Aws::Plugins::DefaultsMode' => "#{core_plugins}/defaults_mode.rb",
        'Aws::Plugins::RecursionDetection' => "#{core_plugins}/recursion_detection.rb"
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
      plugins['Aws::Plugins::InvocationId'] = "#{core_plugins}/invocation_id.rb"
      plugins
    end

    def protocol_plugins(protocol)
      {
        'json'      => { 'Aws::Plugins::Protocols::JsonRpc' => "#{core_plugins}/protocols/json_rpc.rb" },
        'rest-json' => { 'Aws::Plugins::Protocols::RestJson' => "#{core_plugins}/protocols/rest_json.rb" },
        'rest-xml'  => { 'Aws::Plugins::Protocols::RestXml' => "#{core_plugins}/protocols/rest_xml.rb" },
        'query'     => { 'Aws::Plugins::Protocols::Query' => "#{core_plugins}/protocols/query.rb" },
        'ec2'       => { 'Aws::Plugins::Protocols::EC2' => "#{core_plugins}/protocols/ec2.rb" },
        'api-gateway' => {
          'Aws::Plugins::Protocols::ApiGateway' => "#{core_plugins}/protocols/api_gateway.rb",
          'Aws::Plugins::ApiKey' => "#{core_plugins}/api_key.rb",
          'Aws::Plugins::APIGUserAgent' => "#{core_plugins}/apig_user_agent.rb",
          'Aws::Plugins::APIGAuthorizerToken' => "#{core_plugins}/apig_authorizer_token.rb",
          'Aws::Plugins::APIGCredentialsConfiguration' => "#{core_plugins}/apig_credentials_configuration.rb"
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
          'Aws::Plugins::Sign' => "#{core_plugins}/sign.rb"
        }
      else
        auth_types  = [options.fetch(:signature_version)]
        auth_types += options[:api]['operations'].map { |_n, o| o['authtype'] }.compact
        plugins = {}
        auth_types.each do |auth_type|
          case auth_type
          when 'v4'
            plugins['Aws::Plugins::SignatureV4'] = "#{core_plugins}/signature_v4.rb"
          when 'v2'
            plugins['Aws::Plugins::SignatureV2'] = "#{core_plugins}/signature_v2.rb"
          when 'bearer'
            plugins['Aws::Plugins::BearerAuthorization'] = "#{core_plugins}/bearer_authorization.rb"
          end
        end
        plugins
      end
    end

    def core_plugins
      File.join(@aws_sdk_core_lib_path, 'aws-sdk-core/plugins')
    end

    def seahorse_plugins
      File.join(@aws_sdk_core_lib_path, 'seahorse/client/plugins')
    end

    def core_lib
      # TODO : may need to register the default plugins directory rather
      #        than have the hard-coded here as a relative path
      File.expand_path('../../../../../gems/aws-sdk-core/lib', __FILE__)
    end

    def const_get(class_name)
      const_names = class_name.split('::')
      const_names.inject(Kernel) do |const, const_name|
        const.const_get(const_name)
      end
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
