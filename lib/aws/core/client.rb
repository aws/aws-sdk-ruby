# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'json'
require 'set'
require 'yaml'

module AWS
  module Core

    # Base client class for all of the Amazon AWS service clients.
    class Client

      extend Naming

      # @private
      CACHEABLE_REQUESTS = Set[]

      # Creates a new low-level client.
      # @param [Hash] options
      # @option options [Core::Configuration] :config (AWS.config)
      #   The base configuration object to use.  All other options
      #   are merged with this.  Defaults to the AWS.config.
      # @option (see AWS.config)
      def initialize options = {}

        options = options.dup # so we don't modify the options passed in

        @service_ruby_name = self.class.service_ruby_name

        # translate these into service specific configuration options,
        # e.g. :endpoint into :s3_endpoint
        [:endpoint, :region, :port].each do |opt|
          if options[opt]
            options[:"#{service_ruby_name}_#{opt}"] = options.delete(opt)
          end
        end

        @config = (options.delete(:config) || AWS.config)
        @config = @config.with(options)

        @credential_provider = @config.credential_provider
        @http_handler = @config.http_handler
        @endpoint = config.send(:"#{service_ruby_name}_endpoint")
        @port = config.send(:"#{service_ruby_name}_port")
        @http_read_timeout = @config.http_read_timeout

      end

      # @return [Configuration] This clients configuration.
      attr_reader :config

      # @return [CredentialProviders::Provider] Returns the credentail
      #   provider for this client.
      # @private
      attr_reader :credential_provider

      # @return [String] The snake-cased ruby name for the service
      #   (e.g. 's3', 'iam', 'dynamo_db', etc).
      # @private
      attr_reader :service_ruby_name

      # @return [Integer] What port this client makes requests via.
      # @private
      attr_reader :port

      # @return [Integer] The number of secords before requests made by
      #   this client should timeout if they have not received a response.
      attr_reader :http_read_timeout

      # @return [String] Returns the service endpoint (hostname) this client
      #   makes requests against.
      # @private
      attr_reader :endpoint

      # @return (see Client.operations)
      def operations
        self.class.operations
      end

      # Returns a copy of the client with a different HTTP handler.
      # You can pass an object like BuiltinHttpHandler or you can
      # use a block; for example:
      #
      #   s3_with_logging = s3.with_http_handler do |request, response|
      #     $stderr.puts request.inspect
      #     super(request, response)
      #     $stderr.puts response.inspect
      #   end
      #
      # The block executes in the context of an HttpHandler
      # instance, and +super+ delegates to the HTTP handler used by
      # this client.  This provides an easy way to spy on requests
      # and responses.  See HttpHandler, HttpRequest, and
      # HttpResponse for more details on how to implement a fully
      # functional HTTP handler using a different HTTP library than
      # the one that ships with Ruby.
      # @param handler (nil) A new http handler.  Leave blank and pass a
      #   block to wrap the current handler with the block.
      # @return [Core::Client] Returns a new instance of the client class with
      #   the modified or wrapped http handler.
      def with_http_handler(handler = nil, &blk)
        handler ||= Http::Handler.new(@http_handler, &blk)
        with_options(:http_handler => handler)
      end

      # Returns a new client with the passed configuration options
      # merged with the current configuration options.
      #
      #   no_retry_client = client.with_options(:max_retries => 0)
      #
      # @param [Hash] options
      # @option (see AWS.config)
      # @return [Client]
      def with_options options
        with_config(config.with(options))
      end

      # @param [Configuration] config The configuration object to use.
      # @return [Core::Client] Returns a new client object with the given
      #   configuration.
      # @private
      def with_config config
        self.class.new(:config => config)
      end

      # The stub returned is memoized.
      # @see new_stub_for
      # @private
      def stub_for method_name
        @stubs ||= {}
        @stubs[method_name] ||= new_stub_for(method_name)
      end

      # Primarily used for testing, this method returns an empty psuedo
      # service response without making a request.  Its used primarily for
      # testing the ligher level service interfaces.
      # @private
      def new_stub_for method_name
        response = Response.new(Http::Request.new, Http::Response.new)
        response.request_type = method_name
        response.request_options = {}
        send("simulate_#{method_name}_response", response)
        response.signal_success
        response
      end

      protected

      def new_request
        eval(self.class.name.sub(/::Client$/, ''))::Request.new
      end

      def new_response(*args, &block)
        Response.new(*args, &block)
      end

      def make_async_request response

        pauses = async_request_with_retries(response, response.http_request)

        response

      end

      def async_request_with_retries response, http_request, retry_delays = nil

        response.http_response = Http::Response.new

        handle = Object.new
        handle.extend AsyncHandle
        handle.on_complete do |status|
          case status
          when :failure
            response.error = StandardError.new("failed to contact the service")
            response.signal_failure
          when :success
            populate_error(response)
            retry_delays ||= sleep_durations(response)
            if should_retry?(response) and !retry_delays.empty?
              rebuild_http_request(response)
              @http_handler.sleep_with_callback(retry_delays.shift) do
                async_request_with_retries(response, response.http_request, retry_delays)
              end
            else
              response.error ?
                response.signal_failure :
                response.signal_success
            end
          end
        end

        @http_handler.handle_async(http_request, response.http_response, handle)

      end

      def make_sync_request response
        retry_server_errors do

          response.http_response = http_response =
            Http::Response.new

          @http_handler.handle(response.http_request, http_response)

          populate_error(response)
          response.signal_success unless response.error
          response

        end
      end

      def retry_server_errors &block

        response = yield

        sleeps = sleep_durations(response)
        while should_retry?(response)
          break if sleeps.empty?
          Kernel.sleep(sleeps.shift)
          # rebuild the request to get a fresh signature
          rebuild_http_request(response)
          response = yield
        end

        response

      end

      def rebuild_http_request response
        credential_provider.refresh if expired_credentials?(response)
        response.rebuild_request
        response.retry_count += 1
      end

      def sleep_durations response
        if expired_credentials?(response)
          [0]
        else
          factor = scaling_factor(response)
          Array.new(config.max_retries) {|n| (2 ** n) * factor }
        end
      end

      def scaling_factor response
        response.throttled? ? (0.5 + Kernel.rand * 0.1) : 0.3
      end

      def should_retry? response
        expired_credentials?(response) or
        response.timeout? or
        response.throttled? or
        response.error.kind_of?(Errors::ServerError)
      end

      # @return [Boolean] Returns +true+ if the response contains an
      #   error message that indicates credentials have expired.
      def expired_credentials? response
        response.error and
        response.error.respond_to?(:code) and
        response.error.code == 'ExpiredTokenException'
      end

      def return_or_raise options, &block
        response = yield
        unless options[:async]
          raise response.error if response.error
        end
        response
      end

      # Yields to the given block (which should be making a
      # request and returning a {Response} object).  The results of the
      # request/response are logged.
      #
      # @param [Hash] options
      # @option options [Boolean] :async
      # @return [Response]
      def log_client_request options, &block

        # time the request, retries and all
        start = Time.now
        response = yield
        response.duration = Time.now - start

        if options[:async]
          response.on_complete { log_response(response) }
        else
          log_response(response)
        end

        response

      end

      # Logs the response to the configured logger.
      # @param [Resposne] response
      # @return [nil]
      def log_response response
        if config.logger
          message = config.log_formatter.format(response)
          config.logger.send(config.log_level, message)
        end
        nil
      end

      def populate_error response
        response.error = extract_error(response)
      end

      # If the response contains error, this method will construct
      # and return an error object.  If no error is contained in the
      # response, then nil is returned.
      # @param [Response] response
      # @return [Errors::Base,nil]
      def extract_error response

        status = response.http_response.status

        error_code, error_message = extract_error_details(response)

        error_args = [
          response.http_request,
          response.http_response,
          error_code,
          error_message
        ]

        case
        when response.timeout? then TimeoutError.new
        when error_code        then error_class(error_code).new(*error_args)
        when status >= 500     then Errors::ServerError.new(*error_args)
        when status >= 300     then Errors::ClientError.new(*error_args)
        else nil # no error
        end

      end

      # Given an error code string, this method will return an error class.
      #
      #   AWS::EC2::Client.new.send(:error_code, 'InvalidInstanceId')
      #   #=> AWS::EC2::Errors::InvalidInstanceId
      #
      # @param [String] error_code The error code string as returned by
      #   the service.  If this class contains periods, they will be
      #   converted into namespaces (e.g. 'Foo.Bar' becomes Errors::Foo::Bar).
      #
      # @return [Class]
      #
      def error_class error_code
        errors_module.error_class(error_code)
      end

      # Returns the ::Errors module for the current client.
      #
      #   AWS::S3::Client.new.errors_module
      #   #=> AWS::S3::Errors
      #
      # @return [Module]
      #
      def errors_module
        AWS.const_get(self.class.to_s[/(\w+)::Client/, 1])::Errors
      end

      def client_request name, options, &block
        return_or_raise(options) do
          log_client_request(options) do

            if config.stub_requests?

              response = stub_for(name)
              response.http_request = build_request(name, options, &block)
              response.request_options = options
              response

            else

              client = self
              response = new_response { client.send(:build_request, name, options, &block) }
              response.request_type = name
              response.request_options = options

              if
                cacheable_request?(name, options) and
                cache = AWS.response_cache and
                cached_response = cache.cached(response)
              then
                cached_response.cached = true
                cached_response
              else
                # process the http request
                options[:async] ?
                make_async_request(response) :
                  make_sync_request(response)

                # process the http response
                response.on_success do
                  send("process_#{name}_response", response)
                  if cache = AWS.response_cache
                    cache.add(response)
                  end
                end

                response

              end

            end

          end
        end
      end

      def cacheable_request? name, options
        self.class::CACHEABLE_REQUESTS.include?(name)
      end

      def build_request(name, options, &block)

        # we dont want to pass the async option to the configure block
        opts = options.dup
        opts.delete(:async)

        http_request = new_request
        http_request.access_key_id = credential_provider.access_key_id

        # configure the http request
        http_request.service_ruby_name = service_ruby_name
        http_request.default_read_timeout = http_read_timeout
        http_request.host = endpoint
        http_request.port = port
        http_request.region = config.send(:"#{service_ruby_name}_region")
        http_request.proxy_uri = config.proxy_uri
        http_request.use_ssl = config.use_ssl?
        http_request.ssl_verify_peer = config.ssl_verify_peer?
        http_request.ssl_ca_file = config.ssl_ca_file if config.ssl_ca_file
        http_request.ssl_ca_path = config.ssl_ca_path if config.ssl_ca_path

        send("configure_#{name}_request", http_request, opts, &block)

        http_request.headers["user-agent"] = user_agent_string
        http_request.add_authorization!(credential_provider)

        http_request

      end

      def user_agent_string
        engine = (RUBY_ENGINE rescue nil or "ruby")
        user_agent = "%s aws-sdk-ruby/#{VERSION} %s/%s %s" %
          [config.user_agent_prefix, engine, RUBY_VERSION, RUBY_PLATFORM]
        user_agent.strip!
        if AWS.memoizing?
          user_agent << " memoizing"
        end
        user_agent
      end

      # Adds a single method to the current client class.  This method
      # yields a request method builder that allows you to specify how:
      #
      # * the request is built
      # * the response is processed
      # * the response is stubbed for testing
      #
      def self.add_client_request_method method_name, options = {}, &block

        self.operations << method_name

        ClientRequestMethodBuilder.new(self, method_name, &block)

        module_eval <<-END
          def #{method_name}(*args, &block)
            options = args.first ? args.first : {}
            client_request(#{method_name.inspect}, options, &block)
          end
        END

      end

      # Parses the service's API configuration yaml file.  This file has
      # configuration that drives the request and response DSLs.
      # @return [Hash]
      def self.api_config
        config_file =
          File.dirname(File.dirname(__FILE__)) +
          "/api_config/#{service_name}-#{self::API_VERSION}.yml"
        YAML.load(File.read(config_file))
      end

      # @return [Array<Symbol>] Returns a list of service operations as
      #   method names supported by this client.
      def self.operations
        @operations ||= []
      end

      # @private
      class ClientRequestMethodBuilder

        def initialize client_class, method_name, &block
          @client_class = client_class
          @method_name = method_name
          configure_request {|request, options|}
          process_response {|response|}
          simulate_response {|response|}
          instance_eval(&block)
        end

        def configure_request options = {}, &block
          name = "configure_#{@method_name}_request"
          MetaUtils.class_extend_method(@client_class, name, &block)
          if block.arity == 3
            m = Module.new
            m.module_eval(<<-END)
              def #{name}(req, options, &block)
                super(req, options, block)
              end
            END
            @client_class.send(:include, m)
          end
        end

        def process_response &block
          name = "process_#{@method_name}_response"
          MetaUtils.class_extend_method(@client_class, name, &block)
        end

        def simulate_response &block
          name = "simulate_#{@method_name}_response"
          MetaUtils.class_extend_method(@client_class, name, &block)
        end

      end

    end
  end
end
