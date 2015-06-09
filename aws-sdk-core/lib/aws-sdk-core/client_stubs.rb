require 'thread'

module Aws

  # This module provides the ability to specify the data and/or errors to
  # return when a client is using stubbed responses. Pass
  # `:stub_responses => true` to a client constructor to enable this
  # behavior.
  module ClientStubs

    def initialize(*args)
      @stubs = {}
      @stub_mutex = Mutex.new
      super
      if Hash === @config.stub_responses
        @config.stub_responses.each do |operation_name, stubs|
          apply_stubs(operation_name, Array === stubs ? stubs : [stubs])
        end
        @config.stub_responses = true
      end
    end

    # Configures what data / errors should be returned from the named operation
    # when response stubbing is enabled.
    #
    # ## Basic usage
    #
    # When you enable response stubbing, the client will generate fake
    # responses and will not make any HTTP requests.
    #
    #     client = Aws::S3::Client.new(stub_responses: true)
    #     client.list_buckets
    #     #=> #<struct Aws::S3::Types::ListBucketsOutput buckets=[], owner=nil>
    #
    # You can provide stub data that will be returned by the client.
    #
    #     # stub data in the constructor
    #     client = Aws::S3::Client.new(stub_responses: {
    #       list_buckets: { bukets: [{name: 'my-bucket' }] },
    #       get_object: { body: 'data' },
    #     })
    #
    #     client.list_buckets.buckets.map(&:name) #=> ['my-bucket']
    #     client.get_object(bucket:'name', key:'key').body.read #=> 'data'
    #
    # You can also specify the stub data using {#stub_responses}
    #
    #     client = Aws::S3::Client.new(stub_responses: true)
    #     client.stub_resposnes(:list_buckets, {
    #       buckets: [{ name: 'my-bucket' }]
    #     })
    #
    #     client.list_buckets.buckets.map(&:name) #=> ['my-bucket']
    #     #=> ['aws-sdk']
    #
    # Lastly, default stubs can be configured via `Aws.config`:
    #
    #     Aws.config[:s3] = {
    #       stub_responses: {
    #         list_buckets: { bukets: [{name: 'my-bucket' }] }
    #       }
    #     }
    #
    #     Aws::S3::Client.new.list_buckets.buckets.map(&:name)
    #     #=> ['my-bucket']
    #
    # ## Stubbing Errors
    #
    # When stubbing is enabled, the SDK will default to generate
    # fake responses with placeholder values. You can override the data
    # returned. You can also specify errors it should raise.
    #
    #     client.stub_responses(:get_object, 'NotFound')
    #     client.get_object(bucket:'aws-sdk', key:'foo')
    #     #=> raises Aws::S3::Errors::NotFound
    #
    #     client.stub_responses(:get_object, Timeout::Error)
    #     client.get_object(bucket:'aws-sdk', key:'foo')
    #     #=> raises new Timeout::Error
    #
    #     client.stub_responses(:get_object, RuntimeError.new('custom message'))
    #     client.get_object(bucket:'aws-sdk', key:'foo')
    #     #=> raises the given runtime error object
    #
    # ## Stubbing HTTP Responses
    #
    # As an alternative to providing the response data, you can provide
    # an HTTP response.
    #
    #     client.stub_responses(:get_object, {
    #       status_code: 200,
    #       headers: { 'header-name' => 'header-value' },
    #       body: "...",
    #     })
    #
    # To stub a HTTP response, pass a Hash with all three of the following
    # keys set:
    #
    # * **`:status_code`** - <Integer> - The HTTP status code
    # * **`:headers`** - Hash<String,String> - A hash of HTTP header keys and values
    # * **`:body`** - <String,IO> - The HTTP response body.
    #
    # ## Stubbing Multiple Responses
    #
    # Calling an operation multiple times will return similar responses.
    # You can configure multiple stubs and they will be returned in sequence.
    #
    #     client.stub_responses(:head_object, [
    #       'NotFound',
    #       { content_length: 150 },
    #     ])
    #
    #     client.head_object(bucket:'aws-sdk', key:'foo')
    #     #=> raises Aws::S3::Errors::NotFound
    #
    #     resp = client.head_object(bucket:'aws-sdk', key:'foo')
    #     resp.content_length #=> 150
    #
    # @param [Symbol] operation_name
    #
    # @param [Mixed] stubs One or more responses to return from the named
    #   operation.
    #
    # @return [void]
    #
    # @raise [RuntimeError] Raises a runtime error when called
    #   on a client that has not enabled response stubbing via
    #   `:stub_responses => true`.
    #
    def stub_responses(operation_name, *stubs)
      if config.stub_responses
        apply_stubs(operation_name, stubs.flatten)
      else
        msg = 'stubbing is not enabled; enable stubbing in the constructor '
        msg << 'with `:stub_responses => true`'
        raise msg
      end
    end

    # @api private
    def next_stub(operation_name)
      @stub_mutex.synchronize do
        stubs = @stubs[operation_name.to_sym] || []
        case stubs.length
        when 0 then { data: stub_data(operation_name.to_sym) }
        when 1 then stubs.first
        else stubs.shift
        end
      end
    end

    # @api private
    def stub_data(operation_name)
      operation = self.operation(operation_name)
      stub = Stubbing::EmptyStub.new(operation.output).stub
      remove_paging_tokens(operation[:pager], stub)
      stub
    end

    private

    def apply_stubs(operation_name, stubs)
      @stub_mutex.synchronize do
        @stubs[operation_name.to_sym] = stubs.map do |stub|
          case stub
          when Exception, Class then { error: stub }
          when String then service_error_stub(stub)
          when Hash then http_response_stub(operation_name, stub)
          when Seahorse::Client::Http::Response then { http: stub }
          else { data: stub }
          end
        end
      end
    end

    def service_error_stub(error_code)
      { http: protocol_helper.stub_error(error_code) }
    end

    def http_response_stub(operation_name, data)
      if data.keys.sort == [:body, :headers, :status_code]
        { http: hash_to_http_resp(data) }
      else
        { http: data_to_http_resp(operation_name, data) }
      end
    end

    def hash_to_http_resp(data)
      http_resp = Seahorse::Client::Http::Response.new
      http_resp.status_code = data[:status_code]
      http_resp.headers.update(data[:headers])
      http_resp.body = data[:body]
      http_resp
    end

    def data_to_http_resp(operation_name, data)
      api = config.api
      operation = api.operation(operation_name)
      ParamValidator.validate!(operation.output, data)
      protocol_helper.stub_data(api, operation, data)
    end

    def protocol_helper
      case config.api.metadata['protocol']
      when 'json'      then Stubbing::Protocols::Json
      when 'query'     then Stubbing::Protocols::Query
      when 'ec2'       then Stubbing::Protocols::EC2
      when 'rest-json' then Stubbing::Protocols::RestJson
      when 'rest-xml'  then Stubbing::Protocols::RestXml
      else raise "unsupported protocol"
      end.new
    end

    def remove_paging_tokens(pager, stub)
      if pager
        pager.instance_variable_get("@tokens").keys.each do |path|
          key = path.split(/\b/)[0]
          stub[key] = nil
        end
      end
    end
  end
end
