require 'multi_json'
require 'thread'

module Aws
  class ClientFactory

    @@const_set_mutex = Mutex.new

    class << self

      # Constructs and returns versioned API client.  Defaults to the 
      # newest/latest API version.
      #
      #     Aws::DynamoDB.new
      #     #=> #<Aws::DynamoDB::V20120810>
      #
      # ## Specify API Version
      #
      # You can specify the API version and get a different client.
      #
      #     Aws::DynamoDB.new(api_version: '2011-12-05')
      #     #=> #<Aws::DynamoDB::V20111205>
      #
      # ## Locking API Versions
      #
      # You can lock the API version for a service via {Aws.config}:
      #
      #     Aws.config[:dynamodb] = { api_version: '2011-12-05' }
      #     Aws::DynamoDB.new
      #     #=> #<Aws::DynamoDB::V20111205>
      #
      # ## Global Version Lock
      #
      # It is possible to provide a single 'YYYY-MM-DD' date to lock the
      # API version for every service.  This is useful to ensure that
      # future API updates do not break existing usage.
      #
      # When using the single lock, the API version that was current
      # at the given date will be used.
      #
      # For example, Aws::DynamoDB has two API versions, 2011-12-05 and
      # 2012-10-01.  If the lock date is in between these two dates, the
      # older will be used.
      #
      #     Aws.config[:api_version] = '2012-01-01'
      #     Aws::DynamoDB.new
      #     #=> #<Aws::DynamoDB::V20111205>
      #
      # @return [Seahorse::Client::Base] Returns a versioned client.
      def new(options = {})
        options = options.dup
        api_version = options.delete(:api_version) || default_api_version
        versioned_client_class(api_version).new(options)
      end

      # Registers a new API version for this client factory.  You need to
      # provide the API version in `YYYY-MM-DD` format and an API.
      #
      #     Aws::S3.add_version('2013-01-02', 'api' => '/path/to/api.json')
      #
      # You can also provide paths to the paginator, waiter, and resource
      # definitions.
      #
      # @param [String<YYYY-MM-DD>] api_version
      # @param [Hash] definitions
      # @option definitions [required,String] 'api'
      # @option definitions [String] 'paginators'
      # @option definitions [String] 'waiters'
      # @option definitions [String] 'resources'
      # @return [void]
      # @see .api_versions
      # @see .default_api_version
      # @see .latest_api_version
      # @see .versioned_clients
      def add_version(api_version, definitions)
        versions[api_version] = definitions
      end

      # @return [Array<String>] Returns a list of supported API versions
      #   in a `YYYY-MM-DD` format.
      # @see .add_version
      # @see .latest_api_version
      # @see .default_api_version
      # @see .default_client_class
      # @see .versioned_clients
      def api_versions
        versions.keys.sort
      end

      # @return [String<YYYY-MM-DD>] Returns the most current API version.
      # @see .add_version
      # @see .api_versions
      # @see .default_api_version
      # @see .default_client_class
      # @see .versioned_clients
      def latest_api_version
        api_versions.last
      end

      # @return [String<YYYY-MM-DD>] Returns the default API version.  This
      #   is the version of the client that will be constructed if there
      #   is other configured or specified API version.
      # @see .add_version
      # @see .api_versions
      # @see .default_client_class
      # @see .latest_api_version
      # @see .versioned_clients
      def default_api_version
        svc_locked_version || aws_locked_version || latest_api_version
      end

      # Returns an array of versioned client classes for this service.
      #
      #     Aws::DynamoDB.versioned_clients
      #     #=> [Aws::DynamoDB::V20111205, Aws::DynamoDB::V20120810]
      #
      # @return [Array<Class>] Returns an array of the versioned client
      #   classes for this service.
      # @see .add_version
      # @see .api_versions
      # @see .default_api_version
      # @see .default_client_class
      # @see .latest_api_version
      def versioned_clients
        api_versions.map { |api_version| versioned_client_class(api_version) }
      end

      # @return [Class<Seahorse::Client::Base>]
      # @see .add_version
      # @see .api_versions
      # @see .default_api_version
      # @see .latest_api_version
      # @see .versioned_clients
      def default_client_class
        versioned_client_class(default_api_version)
      end

      # Adds a plugin to each versioned client class.
      # @param [Plugin] plugin
      # @return [void]
      # @see .remove_plugin
      def add_plugin(plugin)
        versioned_clients.each do |client_class|
          client_class.add_plugin(plugin)
        end
      end

      # Removes a plugin from each versioned client class.
      # @param [Plugin] plugin
      # @return [void]
      # @see .add_plugin
      def remove_plugin(plugin)
        versioned_clients.each do |client_class|
          client_class.remove_plugin(plugin)
        end
      end

      # @api private
      def define(identifier, versions = {})
        Class.new(self).tap do |client_class|
          client_class.const_set(:IDENTIFIER, identifier)
          versions.each do |date, definitions|
            client_class.add_version(date, definitions)
          end
        end
      end

      # @api private
      def const_missing(const)
        if const =~ /^V\d{8}$/
          @@const_set_mutex.synchronize do
            if const_defined?(const)
              const_get(const)
            else
              const_set(const, build_versioned_client_class(api_version(const)))
            end
          end
        else
          super
        end
      end

      private

      def build_versioned_client_class(version)
        if definitions = versions[version]
          api = build_api(definitions['api'])
          apply_paging(api, definitions['paginators'])
          client_class = Seahorse::Client::Base.define(api: api)
          client_class.const_set(:IDENTIFIER, self::IDENTIFIER)
          Api::ServiceCustomizations.apply(client_class)
          client_class
        else
          msg = "API #{version} not defined for #{name}"
          raise Errors::NoSuchApiVersionError, msg
        end
      end

      def apply_paging(api, paging)
        paging = case paging
          when nil then Paging::NullProvider.new
          when Paging::Provider then paging
          when Hash then PagingProvider.new(paging)
          when String
            path = File.expand_path(paging, GEM_ROOT)
            Paging::Provider.new(MultiJson.load(File.read(path)))
          else raise "unhandled paging format `#{paging}'"
        end
        api.definition['metadata']['paging'] = paging
      end

      def svc_locked_version
        (Aws.config[self::IDENTIFIER] || {})[:api_version]
      end

      def aws_locked_version
        if api_version = Aws.config[:api_version]
          api_versions.select { |v| v <= api_version }.last || api_version
        end
      end

      def versioned_client_class(api_version)
        const_get("V#{api_version.gsub('-', '')}")
      end

      def versions
        @versions ||= {}
      end

      def build_api(api)
        case api
        when String then load_api(api)
        when Hash then Seahorse::Model::Api.new(api)
        when Seahorse::Model::Api then api
        else raise "unhandled api format `#{api.class.name}'"
        end
      end

      def api_version(constant)
        constant.to_s.match(/V(\d{4})(\d{2})(\d{2})/)[1..3].join('-')
      end

      def load_api(path)
        path = File.expand_path(path, GEM_ROOT)
        api = MultiJson.load(File.read(path), max_nesting: false)
        Seahorse::Model::Api.new(api)
      end

    end
  end
end
