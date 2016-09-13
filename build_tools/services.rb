require 'json'

module BuildTools
  class ServiceEnumerator

    include Enumerable

    MANIFEST_PATH = File.expand_path('../../services.json', __FILE__)

    API_DIR = File.expand_path('../../apis', __FILE__)

    def initialize
      manifest = JSON.load(File.read(MANIFEST_PATH))
      @services = manifest.inject([]) do |services, (svc_name, svc_definition)|
        services << Service.build(svc_name, svc_definition)
        services
      end
    end

    # @param [String] identifier
    def [](identifier)
      service = @services.find { |svc| svc.name.downcase == identifier }
      if service
        service
      else
        raise ArgumentError, "unknown service #{identifier.inspect}"
      end
    end
    alias service []

    def each(&block)
      @services.each(&block)
    end

    class Service

      # @return [String] Something like "dynamodb"
      attr_accessor :identifier

      # @return [String] Something like "DynamoDB"
      attr_accessor :name

      # @return [Hash] A hash of service models paths. Keys may include the
      #   following:
      #
      #   * `:api`
      #   * `:docs`
      #   * `:paginators`
      #   * `:waiters`
      #   * `:resources`
      #   * `:examples`
      #
      attr_accessor :models

      # @return [string] Something like "aws-sdk-dynamodb"
      attr_accessor :gem_name

      # @return [string] Path to the gem directory, e.g. "gems/aws-sdk-dynamodb"
      attr_accessor :gem_dir

      # @return [Hash<String,String> A hash of runtime gem dependencies. Keys
      #   are gem names and values are versions
      attr_accessor :dependencies

      # @return [String] The name/key used in endpoints.json.
      attr_accessor :endpoints_key

      # @return [Array<String>] A list of plugin class names to apply.
      attr_accessor :plugins

      # @return [Hash]
      def api
        @api ||= json_load(models[:api])
      end

      # @return [nil,String]
      #   One of:
      #
      #   * "json"
      #   * "query"
      #   * "rest-json"
      #   * "rest-xml"
      #   * "ec2"
      #
      def protocol
        api['metadata']['protocol']
      end

      # @return [String<YYYY-MM-DD>]
      def api_version
        api['metadata']['apiVersion']
      end

      # @return [String] Something like "Amazon Simple Storage Service"
      def full_name
        api['metadata']['serviceFullName']
      end

      # @return [String] Something like "Amazon S3"
      def short_name
        api['metadata']['serviceAbbreviation'] || full_name
      end

      def build
        Builder.new(self).build
      end

      private

      def json_load(path)
        JSON.load(File.open(path, 'rb') { |f| f.read })
      end

      class << self

        def build(name, definition)
          svc = Service.new
          svc.identifier = name.downcase
          svc.name = name
          svc.models = models(definition['models'])
          svc.gem_name = definition['gem'] || "aws-sdk-#{svc.identifier}"
          svc.gem_dir = definition['gem_dir'] || File.join('gems', svc.gem_name)
          svc.endpoints_key = definition['endpoint']
          svc.dependencies = {}
          svc.dependencies['aws-sdk-core'] = '~> 3.0'
          svc.dependencies.update(definition['dependencies'] || {})
          svc.plugins = plugins(svc, definition)
          svc
        end

        private

        def models(prefix)
          Dir.glob("#{API_DIR}/#{prefix}/*").inject({}) do |paths, model_path|
            paths[model_key(model_path)] = model_path
            paths
          end
        end

        def model_key(model_path)
          case File.basename(model_path)
          when 'api-2.json' then :api
          when 'docs-2.json' then :docs
          when 'waiters-2.json' then :waiters
          when 'paginators-1.json' then :paginators
          when 'examples-1.json' then :examples
          when 'resources-1.json' then :resources
          else raise ArgumentError, "unsupported `#{File.basename(model_path)}'"
          end
        end

        def plugins(svc, definition)
          plugins = {}
          plugins.update(default_plugins)
          plugins.update(protocol_plugins(svc.protocol))
          plugins.update(add_plugins(svc, definition))
          Array(definition['removePlugins']).each do |class_name|
            plugins.delete(class_name)
          end
          plugins
        end

        def add_plugins(svc, definition)
          Array(definition['addPlugins']).inject({}) do |plugins, plugin_name|
            plugins[plugin_name] = plugin_path(svc, plugin_name)
            plugins
          end
        end

        def plugin_path(svc, plugin_name)
          path = plugin_name.split('::').last
          path = AwsSdkCodeGenerator::Underscore.underscore(path) + '.rb'
          path = "gems/#{svc.gem_name}/lib/#{svc.gem_name}/plugins/#{path}"
        end

        def default_plugins
          {
            'Seahorse::Client::Plugins::ContentLength' => 'gems/aws-sdk-core/lib/seahorse/client/plugins/content_length.rb',
            'Aws::Plugins::Logging' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/logging.rb',
            'Aws::Plugins::ParamConverter' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/param_converter.rb',
            'Aws::Plugins::ParamValidator' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/param_validator.rb',
            'Aws::Plugins::UserAgent' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/user_agent.rb',
            'Aws::Plugins::HelpfulSocketErrors' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/helpful_socket_errors.rb',
            'Aws::Plugins::RetryErrors' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/retry_errors.rb',
            'Aws::Plugins::GlobalConfiguration' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/global_configuration.rb',
            'Aws::Plugins::RegionalEndpoint' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/regional_endpoint.rb',
            'Aws::Plugins::RequestSigner' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/request_signer.rb',
            'Aws::Plugins::ResponsePaging' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/response_paging.rb',
            'Aws::Plugins::StubResponses' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/stub_responses.rb',
          }
        end

        def protocol_plugins(protocol)
          {
            'json'      => { 'Aws::Plugins::Protocols::JsonRpc' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/protocols/json_rpc.rb' },
            'rest-json' => { 'Aws::Plugins::Protocols::RestJson' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/protocols/rest_json.rb' },
            'rest-xml'  => { 'Aws::Plugins::Protocols::RestXml' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/protocols/rest_xml.rb' },
            'query'     => { 'Aws::Plugins::Protocols::Query' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/protocols/query.rb' },
            'ec2'       => { 'Aws::Plugins::Protocols::EC2' => 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/protocols/ec2.rb' },
            nil         => {}
          }[protocol]
        end

      end
    end
  end

  Services = ServiceEnumerator.new

end
