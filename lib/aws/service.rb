require 'multi_json'

module Aws
  class Service
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
      # If you are using multiple services in your application, you can lock
      # them to a specific set of API version by setting a global API version.
      #
      #     Aws.config[:api_version] = '2012-10-01'
      #     Aws::DynamoDB.new
      #     #=> #<Aws::DynamoDB::V20120810>
      #
      #
      # This causes each service to choose the closer API version that does
      # not exceed the given `YYYY-MM-DD` date.
      #
      # @return [Seahorse::Client::Base] Returns a versioned client.
      def new(options = {})
        options = options.dup
        api_version = options.delete(:api_version) || default_api_version
        versioned_client_class(api_version).new(options)
      end

      # Registers a new API version for this client factory.  You need to
      # provide the API version in `YYYY-MM-DD` format and an API.
      # The `api` may be a string path to an API on disk or a fully
      # constructed `Seahorse::Model::Api` object.
      #
      # @example Register a versioned client with a path to the JSON api.
      #   Aws::S3::add_version('2013-01-02', '/path/to/api/src.json')
      #
      # @example Register a versioned client with a hydrated API.
      #   api = Seahorse::Model::Api.from_hash(api_src)
      #   Aws::S3::add_version('2013-01-02', api)
      #
      # @param [String<YYYY-MM-DD>] api_version
      # @param [String<Pathname>, Seahorse::Model::Api] api
      # @return [void]
      # @see .api_versions
      # @see .default_api_version
      # @see .latest_api_version
      # @see .versioned_clients
      def add_version(api_version, api)
        apis[api_version] = api
      end

      # @return [Array<String>] Returns a list of supported API versions
      #   in a `YYYY-MM-DD` format.
      # @see .add_version
      # @see .latest_api_version
      # @see .default_api_version
      # @see .versioned_clients
      def api_versions
        apis.keys.sort
      end

      # @return [String<YYYY-MM-DD>] Returns the most current API version.
      # @see .add_version
      # @see .api_versions
      # @see .default_api_version
      # @see .versioned_clients
      def latest_api_version
        api_versions.last
      end

      # @return [String<YYYY-MM-DD>] Returns the default API version.  This
      #   is the version of the client that will be constructed if there
      #   is other configured or specified API version.
      # @see .add_version
      # @see .api_versions
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
      # @see .latest_api_version
      def versioned_clients
        api_versions.map { |api_version| versioned_client_class(api_version) }
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

      # @return [Symbol] Returns the service identifier.  This is the
      #   downcased service name (e.g. `:s3`, `:dynamodb`, `:ec2`, etc).
      attr_accessor :identifier

      # @param [Symbol] identifier The downcased short name for this service.
      # @param [Array<Api, String>] apis An array of client APIs for this
      #   service.  Values may be string paths to API files or instances of
      #   `Seahorse::Model::Api`.
      # @return [Class<Service>]
      # @api private
      def define(identifier, apis = [])
        klass = Class.new(self)
        klass.const_set(:Errors, Module.new { extend Errors::DynamicErrors })
        klass.identifier = identifier.to_sym
        apis.each do |api|
          if api.is_a?(String)
            yyyy_mm_dd = api.match(/\d{4}-\d{2}-\d{2}/)[0]
            klass.add_version(yyyy_mm_dd, api)
          else
            klass.add_version(api.version, api)
          end
        end
        klass
      end

      private

      def svc_locked_version
        (Aws.config[identifier] || {})[:api_version]
      end

      def aws_locked_version
        if api_version = Aws.config[:api_version]
          api_versions.select { |v| v <= api_version }.last || api_version
        end
      end

      def versioned_client_class(api_version)
        const_get("V#{api_version.gsub('-', '')}")
      end

      def apis
        @apis ||= {}
      end

      def const_missing(constant)
        if constant =~ /^V\d{8}$/
          api = api(api_version(constant))
          const_set(constant, Seahorse::Client.define(api: api))
        else
          super
        end
      end

      def api(api_version)
        api = apis[api_version]
        case api
        when Seahorse::Model::Api then api
        when String then load_api(api)
        else
          msg = "API #{api_version} not defined for #{name}"
          raise Errors::NoSuchApiVersionError, msg
        end
      end

      def api_version(constant)
        yyyy = constant[1,4]
        mm = constant[5,2]
        dd = constant[7,2]
        [yyyy, mm, dd].join('-')
      end

      def load_api(path)
        api = MultiJson.load(File.read(path), max_nesting: false)
        if api.key?('metadata')
          Seahorse::Model::Api.from_hash(api)
        else
          Api::Translator.translate(api, documentation: false, errors: false)
        end
      end

    end
  end
end
