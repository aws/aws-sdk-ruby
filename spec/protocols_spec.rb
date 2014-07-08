require 'spec_helper'
require 'multi_json'
require 'rexml/document'

def fixtures
  fixtures = {}
  files = Dir.glob(File.join('spec', 'fixtures', 'protocols', '**', '*.json'))
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
  MultiJson.load(File.read(fixture_path)).each do |suite|
    describe(suite['description'].inspect) do
      suite['cases'].each.with_index do |test_case,n|
        describe("case: #{n}") do |group|
          yield(group, suite, test_case, n)
        end
      end
    end
  end
end

def client_for(suite, test_case)
  protocol = suite['metadata']['protocol']
  api = Seahorse::Model::Api.new({
    'metadata' => suite['metadata'],
    'operations' => {
      'ExampleOperation' => test_case['given']
    },
    'shapes' => suite['shapes'],
  })
  client_class = Seahorse::Client::Base.define(api: api)
  client_class.add_plugin(Seahorse::Client::Plugins::RestfulBindings)
  client_class.add_plugin(
    case protocol
    when 'ec2'       then Aws::Plugins::Protocols::EC2
    when 'query'     then Aws::Plugins::Protocols::Query
    when 'json'      then Aws::Plugins::Protocols::JsonRpc
    when 'rest-json' then Aws::Plugins::Protocols::RestJson
    when 'rest-xml'  then Aws::Plugins::Protocols::RestXml
    end
  )
  client_class.new(endpoint:'http://example.com')
end

def underscore(str)
  Aws::Util.underscore(str)
end

def format_data(shape, src)
  case shape
  when Seahorse::Model::Shapes::Structure
    src.each.with_object({}) do |(key, value), params|
      member = shape.member(underscore(key))
      params[underscore(key).to_sym] = format_data(member, value)
    end
  when Seahorse::Model::Shapes::List
    src.map { |value| format_data(shape.member, value) }
  when Seahorse::Model::Shapes::Map
    src.each.with_object({}) do |(key, value), params|
      params[key] = format_data(shape.value, value)
    end
  when Seahorse::Model::Shapes::Timestamp
    Time.at(src)
  else src
  end
end

def match_req_method(group, test_case, http_req)
  if expected_method = test_case['serialized']['method']
    group.it "uses the #{expected_method} HTTP method" do
      expect(http_req.http_method).to(eq(expected_method))
    end
  end
end

def match_req_uri(group, test_case, http_req)
  if expected_uri = test_case['serialized']['uri']
    group.it 'constructs a valid http request uri' do
      expect(http_req.endpoint.request_uri).to eq(expected_uri)
    end
  end
end

def match_req_headers(group, test_case, http_req)
  if expected_headers = test_case['serialized']['headers']
    group.it 'populates the http request headers' do
      http_req.headers.delete('user-agent')
      headers = normalize_headers(http_req.headers)
      expected_headers = normalize_headers(expected_headers)
      expect(headers).to eq(headers)
    end
  end
end

def normalize_headers(hash)
  hash.each.with_object({}) do |(k,v),headers|
    headers[k.downcase] = v
  end
end

def match_req_body(group, suite, test_case, http_req)
  protocol = suite['metadata']['protocol']
  if expected_body = test_case['serialized']['body']
    group.it "serializes the #{protocol} body correctly" do
      body = http_req.body_contents
      case protocol
      when 'query', 'ec2'
        body = body.split('&').sort.join('&')
        expected_body = expected_body.split('&').sort.join('&')
      when 'json'
        body = MultiJson.load(body)
        expected_body = MultiJson.load(expected_body)
      when 'rest-json'
        if body[0] == '{'
          body = MultiJson.load(body)
          expected_body = MultiJson.load(expected_body)
        end
      when 'rest-xml'
        body = normalize_xml(body)
        expected_body = normalize_xml(expected_body)
      else raise "unsported protocol: `#{protocol}'"
      end
      expect(body).to(eq(expected_body))
    end
  end
end

def normalize_xml(xml)
  REXML::Document.new(xml).to_s.gsub(/>\s+?</, '><').strip
end

fixtures.each do |directory, files|
  describe(directory) do

    describe 'input' do
      each_test_case(self, files['input']) do |group, suite, test_case, n|

        client = client_for(suite, test_case)
        client.handle(step: :send) do |context|
          context.http_request.tap do |http_req|
            match_req_method(group, test_case, http_req)
            match_req_uri(group, test_case, http_req)
            match_req_headers(group, test_case, http_req)
            match_req_body(group, suite, test_case, http_req)
          end
          Seahorse::Client::Response.new(context:context)
        end

        input_shape = client.config.api.operation(:example_operation).input
        request_params = format_data(input_shape, test_case['params'])
        client.example_operation(request_params)

      end
    end

    describe 'output' do
      each_test_case(self, files['output']) do |group, suite, test_case, n|

        client = client_for(suite, test_case)
        client.handle(step: :send) do |context|
          context.http_response.status_code = test_case['response']['status_code']
          context.http_response.headers = test_case['response']['headers']
          context.http_response.body = test_case['response']['body']
          Seahorse::Client::Response.new(context:context)
        end

        group.it "extract response data correctly" do
          resp = client.example_operation
          data = resp.data.to_h
          expected_data = format_data(resp.context.operation.output, test_case['result'])
          expect(data).to eq(expected_data)
        end

      end
    end

  end
end
