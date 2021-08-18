# frozen_string_literal: true

require_relative 'spec_helper'
require 'rexml/document'

def fixtures
  fixtures = {}
  files = Dir.glob(File.join(
    File.dirname(__FILE__), 'protocols', '**', '*.json'))
  raise 'unable to locate spec files' if files.empty?
  files.each do |path|
    directory = File.basename(path).split('.').first
    input_output = path.split('/')[-2]
    fixtures[directory] ||= {}
    fixtures[directory][input_output] = path
  end
  fixtures
end

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

def each_test_case(context, fixture_path)
  return unless fixture_path
  Aws::Json.load_file(fixture_path).each.with_index do |suite, suite_n|
    describe(suite['description'].inspect) do
      suite['cases'].each.with_index do |test_case, case_n|
        describe("case: #{case_n}") do
          suite['metadata']['endpointPrefix'] ||= 'svc'
          test_case_name = suite['metadata']['protocol'].gsub(/-/, '_')
          test_case_name += "_#{suite_n}_#{case_n}"
          yield(self, suite, test_case, test_case_name)
        end
      end
    end
  end
end

def client_for(suite, test_case, n)
  name = "Service_#{n}"
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
        'shapes' => suite['shapes'],
      },
      gem_dependencies: { 'aws-sdk-core' => '3' },
      gem_version: '1.0.0',
    }
    if suite['metadata']['protocol'] == "api-gateway"
      opts[:default_endpoint] = "https://foobar.us-west-2.amazonaws.com/test"
    end
    service = AwsSdkCodeGenerator::Service.new(opts)
    code = AwsSdkCodeGenerator::CodeBuilder.new(
      aws_sdk_core_lib_path: File.expand_path('../../../../gems/aws-sdk-core/lib/', __FILE__),
      service: service,
    ).source
    Object.module_eval(code)
  end
  client_class = Aws.const_get(name).const_get(:Client)
  client_class.new(
    regional_endpoint: true,
    endpoint: suite['clientEndpoint'] ? suite['clientEndpoint'] : 'http://example.com',
    region: 'us-east-1',
    credentials: Aws::Credentials.new('akid', 'secret')
  )
end

def underscore(str)
  AwsSdkCodeGenerator::Underscore.underscore(str)
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
    src.map { |value| format_data(ref.shape.member, value) }
  when Seahorse::Model::Shapes::MapShape
    src.each.with_object({}) do |(key, value), params|
      params[key] = format_data(ref.shape.value, value)
    end
  when Seahorse::Model::Shapes::TimestampShape
    Time.at(src)
  else src
  end
end

def normalize_headers(hash)
  hash.each.with_object({}) do |(k,v),headers|
    headers[k.downcase] = v.to_s
  end
end

def match_req_host(group, test_case, http_req, it)
  if expected_host = test_case['serialized']['host']
    it.expect(http_req.endpoint.host).to eq(expected_host)
  end
end

def match_req_method(group, test_case, http_req, it)
  if expected_method = test_case['serialized']['method']
    it.expect(http_req.http_method).to(eq(expected_method))
  end
end

def match_req_uri(group, test_case, http_req, it)
  if expected_uri = test_case['serialized']['uri']
    it.expect(http_req.endpoint.request_uri).to eq(expected_uri)
  end
end

def match_req_headers(group, test_case, http_req, it)
  if expected_headers = test_case['serialized']['headers']
    headers = normalize_headers(http_req.headers)
    expected_headers = normalize_headers(expected_headers)
    it.expect(headers).to include(expected_headers)
  end
end

def exclude_req_headers(group, test_case, http_req, it)
  if excluded_headers = test_case['serialized']['excludeHeaders']
    headers = normalize_headers(http_req.headers)
    excluded_headers = normalize_headers(excluded_headers)
    it.expect(headers).to_not include(excluded_headers)
  end
end

def match_req_body(group, suite, test_case, http_req, it)
  protocol = suite['metadata']['protocol']
  if expected_body = test_case['serialized']['body']
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

def normalize_xml(xml)
  REXML::Document.new(xml).to_s.gsub(/>\s+?</, '><').strip
end

fixtures.each do |directory, files|
  describe(directory) do

    describe 'input' do
      each_test_case(self, files['input']) do |group, suite, test_case, name|

        group.it "marshalls response data correctly" do
          client = client_for(suite, test_case, "Input_#{name}")
          ctx = nil
          client.handle(step: :send) do |context|
            ctx = context
            Seahorse::Client::Response.new(context:context)
          end

          input_shape = client.config.api.operation(:operation_name).input
          request_params = format_data(input_shape, test_case['params'] || {})
          client.operation_name(request_params)

          match_req_host(group, test_case, ctx.http_request, self)
          match_req_method(group, test_case, ctx.http_request, self)
          match_req_uri(group, test_case, ctx.http_request, self)
          match_req_headers(group, test_case, ctx.http_request, self)
          exclude_req_headers(group, test_case, ctx.http_request, self)
          match_req_body(group, suite, test_case, ctx.http_request, self)

        end
      end
    end

    describe 'output' do
      each_test_case(self, files['output']) do |group, suite, test_case, name|

        group.it "extract response data correctly" do

          client = client_for(suite, test_case, "Output_#{name}")
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(
              test_case['response']['status_code'],
              test_case['response']['headers']
            )

            # temporary work-around for header case-sensitive test
            context.http_response.headers = test_case['response']['headers']

            # Base64 encoded binary body is provided for eventstream
            body = test_case['response']['eventstream'] ?
              Base64.decode64(test_case['response']['body']) :
              test_case['response']['body']
            context.http_response.signal_data(body)
            context.http_response.signal_done
            Seahorse::Client::Response.new(context:context)
          end
          resp = client.operation_name
          data = data_to_hash(resp.data)

          expected_data = format_data(resp.context.operation.output, test_case['result'] || {})
          if test_case['response']['eventstream']
            data.each do |member_name, value|
              if value.respond_to?(:each)
                # event stream member
                value.each do |event_struct|
                  # verify each event
                  event = event_struct.to_h
                  expect_event = expected_data[member_name][event.delete(:event_type)]
                  expect(data_to_hash(event)).to eq(expect_event)
                end
              else
                # non event stream member
                expect(value).to eq(expected_data[member_name])
              end
            end
          else
            expect(data).to eq(expected_data)
            if test_case['resultClass']
              test_case['resultClass'].each_pair do |member_name, expected_class|
                expect(resp.data[underscore(member_name).to_sym].class.to_s).to include(expected_class)
              end
            end
          end
        end

      end
    end

  end
end
