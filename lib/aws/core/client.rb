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

require 'set'

module AWS
  module Core
    
    # Base class for all of the Amazon AWS service clients.
    # @private
    class Client
  
      extend Naming
  
      CACHEABLE_REQUESTS = Set.new
  
      # Creates a new low-level client.
      #
      # == Required Options
      #
      # To create a client you must provide access to AWS credentials.
      # There are two options:
      #
      # * +:signer+ -- An object that responds to +access_key_id+
      #   (to return the AWS Access Key ID) and to
      #   <code>sign(string_to_sign)</code> (to return a signature
      #   for a given string).  An example implementation is
      #   AWS::Core::DefaultSigner.  This option is useful if you want to
      #   more tightly control access to your secret access key (for
      #   example by moving the signature computation into a
      #   different process).
      #
      # * +:access_key_id+ and +:secret_access_key+ -- You can use
      #   these options to provide the AWS Access Key ID and AWS
      #   Secret Access Key directly to the client.
      #
      # == Optional
      #
      # * +:http_handler+ -- Any object that implements a
      #   <code>handle(request, response)</code> method; an example
      #   is BuiltinHttpHandler.  This method is used to perform the
      #   HTTP requests that this client constructs.
      #
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
  
        @config = options.delete(:config)
        @config ||= AWS.config
        @config = @config.with(options)

        @signer = @config.signer
        @http_handler = @config.http_handler
        @endpoint = config.send(:"#{service_ruby_name}_endpoint")
        @port = config.send(:"#{service_ruby_name}_port")

      end
  
      # @return [Configuration] This clients configuration.
      attr_reader :config
  
      # @return [DefaultSigner,Object] Returns the signer for this client.
      #   This is normally a DefaultSigner, but it can be configured to
      #   an other object.
      attr_reader :signer

      # @return [String] The snake-cased ruby name for the service
      #   (e.g. 's3', 'iam', 'dynamo_db', etc).
      attr_reader :service_ruby_name

      # @return [Integer] What port this client makes requests via.
      attr_reader :port

      # @return [String] Returns the service endpoint (hostname) this client
      #   makes requests against.
      attr_reader :endpoint
  
      # Returns a copy of the client with a different HTTP handler.
      # You can pass an object like BuiltinHttpHandler or you can
      # use a block; for example:
      #
      #   s3_with_logging = s3.with_http_handler do |request, response|
      #     $stderr.puts request.inspect
      #     super
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
  
      # @param [Hash] options
      # @see AWS.config detailed list of accepted options.
      def with_options options
        with_config(config.with(options))
      end
  
      # @param [Configuration] The configuration object to use.
      # @return [Core::Client] Returns a new client object with the given
      #   configuration.
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
        req = self.class::REQUEST_CLASS.new
        req.http_method = 'POST'
        req.headers['Content-Type'] = 'application/x-www-form-urlencoded; charset=utf-8'
        req.add_param 'Timestamp', Time.now.utc.strftime('%Y-%m-%dT%H:%M:%SZ')
        req.add_param 'Version', self.class::API_VERSION
        req
      end
  
      protected
      def new_response(*args, &block)
        Response.new(*args, &block)
      end
  
      private
      def make_async_request response
  
        pauses = async_request_with_retries(response, response.http_request)
  
        response
  
      end
  
      private
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
  
      private
      def make_sync_request response
        retry_server_errors do
  
          response.http_response = http_response =
            Http::Response.new
  
          @http_handler.handle(response.http_request, http_response)
  
          populate_error(response)

          populate_error(response)
          response.signal_success unless response.error
          response
  
        end
      end
  
      private
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

      private
      def rebuild_http_request response
        response.rebuild_request
        response.retry_count += 1
      end
  
      private
      def sleep_durations response
        factor = scaling_factor(response)
        Array.new(config.max_retries) {|n| (2 ** n) * factor }
      end
  
      private
      def scaling_factor response
        response.throttled? ? (0.5 + Kernel.rand * 0.1) : 0.3
      end
  
      private
      def should_retry? response
        response.timeout? or
          response.throttled? or
          response.error.kind_of?(Errors::ServerError)
      end
  
      private
      def return_or_raise options, &block
        response = yield
        unless options[:async]
          raise response.error if response.error
        end
        response
      end

      private
      def log_client_request options

        # time the request, retries and all
        start = Time.now
        response = yield
        response.duration = Time.now - start

        if config.logger
          if options[:async] 
            response.on_complete { log_response(response) } 
          else
            log_response(response)
          end
        end
  
        response

      end

      def log_response response
        message = config.log_formatter.format(response)
        config.logger.send(config.log_level, message)
      end
  
      protected
      def populate_error response
  
        # clear out a previous error
        response.error = nil
        status = response.http_response.status
        code = nil
        code = extract_error_code(response)

        case
        when response.timeout?
          response.error = Timeout::Error.new
  
        when code
          response.error =
            service_module::Errors.error_class(code).new(response.http_request,
                                                         response.http_response)
        when status >= 500
          response.error =
            Errors::ServerError.new(response.http_request, response.http_response)
  
        when status >= 300
          response.error =
            Errors::ClientError.new(response.http_request, response.http_response)
        end
  
      end
  
      protected
      def extract_error_code response
        if response.http_response.status >= 300 and
            body = response.http_response.body and
            parse = xml_error_grammar.parse(body) and
            parse.respond_to?(:code)
          parse.code
        end
      end

      protected
      def xml_error_grammar
        if service_module::const_defined?(:Errors) and
            service_module::Errors::const_defined?(:BASE_ERROR_GRAMMAR)
          service_module::Errors::BASE_ERROR_GRAMMAR
        else
          XmlGrammar
        end
      end
  
      protected
      def service_module
        AWS.const_get(self.class.to_s[/(\w+)::Client/, 1])
      end
  
      private
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

      private
      def cacheable_request? name, options
        self.class::CACHEABLE_REQUESTS.include?(name)
      end
  
      private
      def build_request(name, options, &block)
        # we dont want to pass the async option to the configure block
        opts = options.dup
        opts.delete(:async)
  
        http_request = new_request
  
        # configure the http request
        http_request.service_ruby_name = service_ruby_name
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
        http_request.add_authorization!(signer)
        http_request
      end
  
      private
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
  
      private
      def self.add_client_request_method method_name, options = {}, &block
  
        method = ClientRequestMethodBuilder.new(self, method_name, &block)
  
        if xml_grammar = options[:xml_grammar]
  
          method.process_response do |resp|
            xml_grammar.parse(resp.http_response.body, :context => resp)
            super(resp)
          end
  
          method.simulate_response do |resp|
            xml_grammar.simulate(resp)
            super(resp)
          end
  
        end
  
        module_eval <<-END
          def #{method_name}(*args, &block)
            options = args.first ? args.first : {}
            client_request(#{method_name.inspect}, options, &block)
          end
        END
  
      end
  
      protected
      def self.configure_client
  
        module_eval('module Options; end')
        module_eval('module XML; end')
  
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
