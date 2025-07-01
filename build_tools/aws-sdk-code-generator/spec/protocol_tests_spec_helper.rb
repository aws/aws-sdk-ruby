# frozen_string_literal: true

require 'rexml/document'

# This module contains helpers relating to protocol-tests
module ProtocolTestsHelper
  PROTOCOL_TESTS_IGNORE_LIST_PATH = File.join(File.dirname(__FILE__), 'protocol-tests-ignore-list.json')
  class << self
    def ignore_list
      @ignore_list ||= JSON.parse(File.read(PROTOCOL_TESTS_IGNORE_LIST_PATH))
    end

    # The format for the ignore list:
    #   "protocol" : {
    #     "input" : {},
    #     "output" : {
    #       "SomeTestId": {
    #         "description": "Description",
    #         "engines": ["engine"]
    #       }
    #     }
    #   },
    def skip_test_if_ignored(protocol, test_type, test_id, engine, it)
      ignored = check_ignore_list(protocol, test_type, test_id, engine)
      return unless ignored

      test_id, description = ignored
      it.skip("Engine: #{engine} ID: #{test_id} - #{description}")
    end

    # sets up paths for each protocol and its file paths
    def fixtures
      fixtures = {}
      files = Dir.glob(File.join(File.dirname(__FILE__), 'protocol-tests', '**', '*.json'))
      raise 'unable to locate spec files' if files.empty?

      files.each do |path|
        protocol = File.basename(path).split('.').first
        input_output = path.split('/')[-2]
        fixtures[protocol] ||= {}
        fixtures[protocol][input_output] = path
      end
      fixtures
    end

    def each_test_case(context, fixture_path)
      return unless fixture_path

      JSON.load_file(fixture_path).each do |suite|
        context.context(suite['description']) do
          suite['cases'].each do |test_case|
            suite['metadata']['endpointPrefix'] ||= 'svc'
            yield(self, suite, test_case, test_case['id'], test_case['description'])
          end
        end
      end
    end

    # creates service client for req/resp testing
    def client_for(suite, test_case, id)
      name = "Service_#{id}"
      unless Aws.const_defined?(name)
        opts = {
          name: name,
          module_name: "Aws::#{name}",
          api: {
            'metadata' => suite['metadata'],
            'operations' => {
              'OperationName' => test_case['given']
            },
            'shapes' => suite['shapes']
          },
          gem_dependencies: { 'aws-sdk-core' => '3' },
          gem_version: '1.0.0'
        }
        if suite['metadata']['protocol'] == 'api-gateway'
          opts[:default_endpoint] = 'https://foo.execute-api.us-west-2.amazonaws.com/test'
        end
        service = AwsSdkCodeGenerator::Service.new(opts)
        code = AwsSdkCodeGenerator::CodeBuilder.new(
          aws_sdk_core_lib_path: File.expand_path('../../../../gems/aws-sdk-core/lib/', __FILE__),
          service: service
        ).source
        Object.module_eval(code)
      end
      client_class = Aws.const_get(name).const_get(:Client)
      client_class.new(
        regional_endpoint: true,
        endpoint: suite['clientEndpoint'] || 'http://example.com',
        region: 'us-east-1',
        credentials: Aws::Credentials.new('akid', 'secret'),
        retry_limit: 0
      )
    end

    def engines_for(protocol)
      case protocol
      when /json/, /api-gateway/
        [:oj, :json]
      when /xml/, /ec2/, /query/
        [:ox, :nokogiri, :rexml, :libxml, :oga]
      when /smithy-rpc-v2-cbor/
        [:cbor]
      else
        raise "unsupported protocol: #{protocol}"
      end
    end

    def set_engine(context, protocol, engine)
      adapter_class =
        case protocol
        when /json/, /api-gateway/
          Aws::Json
        when /xml/, /ec2/, /query/
          Aws::Xml::Parser
        when /smithy-rpc-v2-cbor/
          Aws::RpcV2
        else
          raise "unsupported protocol: #{protocol}"
        end
      adapter_class.engine = engine
    rescue LoadError
      context.skip "Skipping tests for missing engine: #{engine}"
    end

    # formats response data
    def data_to_hash(obj)
      case obj
      when Struct
        obj.members.each.with_object({}) do |member, hash|
          value = obj[member]
          hash[member] = data_to_hash(value) unless value.nil?
        end
      when Hash
        obj.each.with_object({}) do |(key, value), hash|
          hash[key] = data_to_hash(value)
        end
      when Array then obj.collect { |value| data_to_hash(value) }
      when IO, StringIO then obj.read
      else obj
      end
    end

    def format_data(ref, src, input_shape: false)
      case ref.shape
      when Seahorse::Model::Shapes::StructureShape
        return nil if src.nil?

        src.each.with_object({}) do |(key, value), params|
          member_ref = ref.shape.member(underscore(key).to_sym)
          params[underscore(key).to_sym] = format_data(member_ref, value, input_shape: input_shape)
        end
      when Seahorse::Model::Shapes::ListShape
        return nil if src.nil?

        src.map { |value| format_data(ref.shape.member, value, input_shape: input_shape) }
      when Seahorse::Model::Shapes::MapShape
        return nil if src.nil?

        src.each.with_object({}) do |(key, value), params|
          # handle case-sensitive headers extracted from protocol-tests
          key = key.downcase if ref.location == 'headers'
          params[key] = format_data(ref.shape.value, value, input_shape: input_shape)
        end
      when Seahorse::Model::Shapes::TimestampShape
        case src
        when String
          Time.parse(src)
        else
          Time.at(src)
        end
      when Seahorse::Model::Shapes::FloatShape
        case src
        when String
          Aws::Util.deserialize_number(src)
        else
          src
        end
      when Seahorse::Model::Shapes::StringShape
        # handle specs with jsonValue trait in input shape
        if ref['jsonvalue'] && input_shape
          JSON.parse(src)
        else
          src
        end
      else src
      end
    end

    def underscore(str)
      AwsSdkCodeGenerator::Underscore.underscore(str)
    end

    private

    def check_ignore_list(protocol, test_type, test_id, engine)
      return nil if protocol.include?('extras')

      test = ignore_list
        .fetch(protocol, {})
        .fetch(test_type, {})
      return unless test.key?(test_id)

      test = test[test_id]
      if (test.key?('engines') && test['engines'].include?(engine.to_s)) ||
         !test.key?('engines')
        [test_id, test['description']]
      end
    end

  end

  # input/output matchers
  class Matcher
    include RSpec::Matchers

    class << self
      def setup_matchers(id, it)
        return unless id.include?('IdempotencyToken')

        it.allow(SecureRandom).to it.receive(:uuid).and_return('00000000-0000-4000-8000-000000000000')
      end

      def match_req_host(test_case, http_req, it)
        if (expected_host = test_case['serialized']['host'])
          # create URI object to cover custom host paths
          expected_host_uri = URI.parse(expected_host)
          unless expected_host_uri.host
            expected_host_uri = URI.parse(
              "#{http_req.endpoint.scheme}://#{expected_host}"
            )
          end
          it.expect(http_req.endpoint.host).to it.eq(expected_host_uri.host)
          it.expect(http_req.endpoint.path).to it.start_with(expected_host_uri.path)
        end
      end

      def match_req_method(test_case, http_req, it)
        if (expected_method = test_case['serialized']['method'])
          it.expect(http_req.http_method).to it.eq(expected_method)
        end
      end

      def match_req_uri(test_case, http_req, it)
        if (expected_uri = test_case['serialized']['uri'])
          # normalize expected URI path
          expected_uri = Pathname.new(expected_uri).cleanpath.to_s
          it.expect(http_req.endpoint.request_uri).to it.eq(expected_uri)
        end
      end

      def match_req_headers(suite, test_case, http_req, it)
        protocol = suite['metadata']['protocol']
        if (expected_headers = test_case['serialized']['headers'])
          headers = normalize_headers(http_req.headers)
          if expected_headers['Content-Type'] && %w[query ec2].include?(protocol)
            expected_headers['Content-Type'] += '; charset=utf-8'
          end
          expected_headers = normalize_headers(expected_headers)
          it.expect(headers).to it.include(expected_headers)
        end
      end

      def exclude_req_headers(test_case, http_req, it)
        if (excluded_headers = test_case['serialized']['forbidHeaders'])
          headers = normalize_headers(http_req.headers)
          excluded_headers = excluded_headers.map(&:downcase) # normalize array
          it.expect(headers.keys).to_not it.include(*excluded_headers)
        end
      end

      def match_req_body(suite, test_case, http_req, it)
        protocol = suite['metadata']['protocol']
        if (expected_body = test_case['serialized']['body'])
          request_body = http_req.body_contents
          case protocol
          when 'query', 'ec2'
            request_body = request_body.split('&').sort.join('&')
            expected_body = expected_body.split('&').sort.join('&')
          when 'json'
            request_body = Aws::Json.load(request_body)
            expected_body = Aws::Json.load(expected_body)
          when 'rest-json'
            if request_body[0] == '{'
              request_body = Aws::Json.load(request_body)
              expected_body =
                case expected_body
                  # to handle empty body, sourced from protocol-tests
                  when ''
                    {}
                  else
                    Aws::Json.load(expected_body)
                  end
            end
          when 'rest-xml'
            request_body = normalize_xml(request_body)
            expected_body = normalize_xml(expected_body)
          when 'api-gateway'
            if request_body[0] == '{'
              request_body = Aws::Json.load(request_body)
              expected_body = Aws::Json.load(expected_body)
            end
          when 'smithy-rpc-v2-cbor'
            request_body = Aws::RpcV2.decode(request_body)
            expected_body = Aws::RpcV2.decode(Base64.decode64(expected_body))
          else raise "unsupported protocol: `#{protocol}`"
          end
          assert(it, request_body, expected_body)
        end
      end

      def match_resp_data(test_case, resp_or_error, it)
        response_data = ProtocolTestsHelper.data_to_hash(resp_or_error.data)
        expected_data =
          if test_case['error']
            # This is not correct per protocol tests. `errorCode` is used to assert the error code
            # on the raised error class. However, because we incorrectly create errors from error codes
            # in query and query compatible services, we need to map back that error code to an
            # error shape, so that we can assert the error data.
            error_shape = resp_or_error.context.operation.errors.find do |err|
              shape =
                if err.shape['error']
                  err.shape['error']['code']
                else
                  err.shape.name
                end
              shape == test_case['errorCode']
            end
            raise "Unable to find #{test_case['errorCode']} in error shapes" if error_shape.nil?

            ProtocolTestsHelper.format_data(error_shape, test_case['error'] || {})
          else
            ProtocolTestsHelper.format_data(resp_or_error.context.operation.output, test_case['result'] || {})
          end
        if test_case['response']['eventstream']
          response_data.each do |member_name, value|
            if value.respond_to?(:each)
              # event stream member
              value.each do |event_struct|
                # verify each event
                event = event_struct.to_h
                expect_event = expected_data[member_name][event.delete(:event_type)]
                it.expect(ProtocolTestsHelper.data_to_hash(event)).to it.eq(expect_event)
              end
            else
              # non event stream member
              it.expect(value).to it.eq(expected_data[member_name])
            end
          end
        else
          assert(it, response_data, expected_data)
        end
      end

      def match_error_code(test_case, error, it)
        # This is not always correct per protocol tests. Some headers determine the error code.
        # If the body is empty, we are creating a generic HTTP error and error code, which is
        # different from what the protocol tests expect. We would ideally always check error.code.
        code = error.context.http_response.headers['x-amzn-errortype']
        code = code.split('#').last.split(':').first if code
        code ||= error.code
        assert(it, code, test_case['errorCode'])
      end

      private

      def assert(it, actual, expected)
        case actual
        when Hash
          actual.each do |key, value|
            it.expect(actual).not_to it.include(key) unless expected.key?(key)

            assert(it, value, expected[key])
          end
        when Array
          actual.each_with_index do |value, index|
            assert(it, value, expected[index])
          end
        when Float
          return if actual.nan? && expected.nan?
          return if actual.infinite? && expected.infinite?

          it.expect(actual).to it.be_within(0.0001).of(expected)
        else
          it.expect(actual).to it.eq(expected)
        end
      end

      def normalize_headers(hash)
        hash.each.with_object({}) do |(k, v), headers|
          headers[k.downcase] = v.to_s
        end
      end

      def normalize_xml(xml)
        REXML::Document.new(xml).to_s.gsub(/>\s+?</, '><').strip
      rescue REXML::ParseException
        xml # payload
      end
    end
  end
end