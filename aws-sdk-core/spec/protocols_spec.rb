require 'spec_helper'
require 'rexml/document'

def fixtures
  fixtures = {}
  files = Dir.glob(File.join(
    File.dirname(__FILE__), 'fixtures', 'protocols', '**', '*.json'))
  raise 'unable to locate spec files' if files.empty?
  files.each do |path|
    directory = File.basename(path).split('.').first
    input_output = path.split('/')[-2]
    fixtures[directory] ||= {}
    fixtures[directory][input_output] = path
  end
  fixtures
end

def each_test_case(context, fixture_path)
  return unless fixture_path
  Aws::Json.load_file(fixture_path).each do |suite|
    describe(suite['description'].inspect) do
      suite['cases'].each.with_index do |test_case,n|
        describe("case: #{n}") do
          yield(self, suite, test_case, n)
        end
      end
    end
  end
end

def client_for(suite, test_case)
  protocol = suite['metadata']['protocol']
  api = Aws::Api::Builder.build({
    'metadata' => suite['metadata'],
    'operations' => {
      'OperationName' => test_case['given']
    },
    'shapes' => suite['shapes'],
  })
  client_class = Seahorse::Client::Base.define(api: api)
  client_class.add_plugin(
    case protocol
    when 'ec2'       then Aws::Plugins::Protocols::EC2
    when 'query'     then Aws::Plugins::Protocols::Query
    when 'json'      then Aws::Plugins::Protocols::JsonRpc
    when 'rest-json' then Aws::Plugins::Protocols::RestJson
    when 'rest-xml'  then Aws::Plugins::Protocols::RestXml
    end
  )
  client_class.add_plugin(Aws::Plugins::RegionalEndpoint)
  client_class.add_plugin(Aws::Plugins::EndpointPattern)
  client_class.new(
    region: 'us-east-1',
    regional_endpoint: true,
    endpoint: suite['clientEndpoint'] ? suite['clientEndpoint'] : 'http://example.com'
  )
end

def underscore(str)
  Seahorse::Util.underscore(str)
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
    http_req.headers.delete('user-agent')
    headers = normalize_headers(http_req.headers)
    expected_headers = normalize_headers(expected_headers)
    it.expect(headers).to eq(headers)
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
      body = Aws::Json.load(body) unless body == ''
      expected_body = Aws::Json.load(expected_body)
    when 'rest-json'
      if body[0] == '{'
        body = Aws::Json.load(body)
        expected_body = Aws::Json.load(expected_body)
      end
    when 'rest-xml'
      body = normalize_xml(body)
      expected_body = normalize_xml(expected_body)
    else raise "unsported protocol: `#{protocol}'"
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
      each_test_case(self, files['input']) do |group, suite, test_case, n|

        group.it "marshalls response data correctly" do

          client = client_for(suite, test_case)
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
          match_req_body(group, suite, test_case, ctx.http_request, self)

        end
      end
    end

    describe 'output' do
      each_test_case(self, files['output']) do |group, suite, test_case, n|

        client = client_for(suite, test_case)
        client.handle(step: :send) do |context|
          context.http_response.signal_headers(
            test_case['response']['status_code'],
            test_case['response']['headers']
          )

          # temporary work-around for header case-sensitive test
          context.http_response.headers = test_case['response']['headers']

          context.http_response.signal_data(test_case['response']['body'])
          context.http_response.signal_done
          Seahorse::Client::Response.new(context:context)
        end

        group.it "extract response data correctly" do
          resp = client.operation_name
          data = data_to_hash(resp.data)
          expected_data = format_data(resp.context.operation.output, test_case['result'] || {})
          expect(data).to eq(expected_data)
        end

      end
    end

  end
end
