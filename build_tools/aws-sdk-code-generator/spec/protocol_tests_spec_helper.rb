# frozen_string_literal: true

require 'rexml/document'
require 'rspec/expectations'

# This module contains helpers relating to protocol-tests
module ProtocolTestsHelper
  class << self
    # sets up paths for each protocol and its files
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

      Aws::Json.load_file(fixture_path).each.with_index do |suite, suite_n|
        context.context(suite['description']) do
          suite['cases'].each.with_index do |test_case, case_n|
            suite['metadata']['endpointPrefix'] ||= 'svc'
            test_id = "#{suite['metadata']['protocol'].gsub(/-/, '_')}_"
            test_id += test_case['id'] || "#{suite_n}_#{case_n}"
            test_description = test_case['description'] || "case: #{case_n}"

            yield(self, suite, test_case, test_id, test_description)
          end
        end
      end
    end

    # creates service client for req/resp testing
    def client_for(suite, test_case, id)
      name = "Service_#{id}"
      unless Aws.const_defined?(name)
        operation = test_case['given']
        operation['http'] ||= { 'method' => 'POST', 'requestUri' => '/' }
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
          opts[:default_endpoint] = 'https://foobar.us-west-2.amazonaws.com/test'
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
        credentials: Aws::Credentials.new('akid', 'secret')
      )
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

    def format_data(ref, src)
      case ref.shape
      when Seahorse::Model::Shapes::StructureShape
        return nil if src.nil?

        src.each.with_object({}) do |(key, value), params|
          member_ref = ref.shape.member(underscore(key).to_sym)
          params[underscore(key).to_sym] = format_data(member_ref, value)
        end
      when Seahorse::Model::Shapes::ListShape
        return nil if src.nil?

        src.map { |value| format_data(ref.shape.member, value) }
      when Seahorse::Model::Shapes::MapShape
        return nil if src.nil?

        src.each.with_object({}) do |(key, value), params|
          params[key] = format_data(ref.shape.value, value)
        end
      when Seahorse::Model::Shapes::TimestampShape
        case src
        when String
          Time.parse(src)
        else
          Time.at(src)
        end
      else src
      end
    end

    def underscore(str)
      AwsSdkCodeGenerator::Underscore.underscore(str)
    end
  end

  # holds logic for input/output matchers
  class Matcher
    include RSpec::Matchers

    def normalize_headers(hash)
      hash.each.with_object({}) do |(k,v),headers|
        headers[k.downcase] = v.to_s
      end
    end

    def normalize_xml(xml)
      REXML::Document.new(xml).to_s.gsub(/>\s+?</, '><').strip
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
        it.expect(http_req.endpoint.host).to eq(expected_host_uri.host)
        it.expect(http_req.endpoint.path).to start_with(expected_host_uri.path)
      end
    end

    def match_req_method(test_case, http_req, it)
      if (expected_method = test_case['serialized']['method'])
        it.expect(http_req.http_method).to eq(expected_method)
      end
    end

    def match_req_uri(test_case, http_req, it)
      if (expected_uri = test_case['serialized']['uri'])
        # normalize expected URI path
        expected_uri = Pathname.new(expected_uri).cleanpath.to_s
        it.expect(http_req.endpoint.request_uri).to eq(expected_uri)
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
        it.expect(headers).to include(expected_headers)
      end
    end

    def exclude_req_headers(test_case, http_req, it)
      if (excluded_headers = test_case['serialized']['forbidHeaders'])
        headers = normalize_headers(http_req.headers)
        excluded_headers = excluded_headers.map(&:downcase) # normalize array
        it.expect(headers.keys).to_not include(*excluded_headers)
      end
    end

    def match_req_body(suite, test_case, http_req, it)
      protocol = suite['metadata']['protocol']
      if (expected_body = test_case['serialized']['body'])
        body = http_req.body_contents
        case protocol
        when 'query', 'ec2'
          body = body.split('&').sort.join('&')
          expected_body = expected_body.split('&').sort.join('&')
        when 'json'
          body = Aws::Json.load(body)
          expected_body = Aws::Json.load(expected_body)
        when 'rest-json'
          if body[0] == '{'
            body = Aws::Json.load(body)
            expected_body = Aws::Json.load(expected_body)
          end
        when 'rest-xml'
          body = normalize_xml(body)
          expected_body = normalize_xml(expected_body)
        when 'api-gateway'
          if body[0] == '{'
            body = Aws::Json.load(body)
            expected_body = Aws::Json.load(expected_body)
          end
        else raise "unsupported protocol: `#{protocol}`"
        end
        it.expect(body).to(eq(expected_body))
      end
    end

    def match_resp_data(test_case, resp, it)
      data = ProtocolTestsHelper.data_to_hash(resp.data)
      expected_data = ProtocolTestsHelper.format_data(
        resp.context.operation.output, test_case['result'] || {}
      )
      if test_case['response']['eventstream']
        data.each do |member_name, value|
          if value.respond_to?(:each)
            # event stream member
            value.each do |event_struct|
              # verify each event
              event = event_struct.to_h
              expect_event = expected_data[member_name][event.delete(:event_type)]
              it.expect(ProtocolTestsHelper.data_to_hash(event)).to eq(expect_event)
            end
          else
            # non event stream member
            it.expect(value).to eq(expected_data[member_name])
          end
        end
      else
        it.expect(data).to eq(expected_data)
        test_case['resultClass']&.each_pair do |member_name, expected_class|
          it.expect (resp.data[ProtocolTestsHelper.underscore(member_name).to_sym].class.to_s)
            .to include(expected_class)
        end
      end
    end
  end
end
