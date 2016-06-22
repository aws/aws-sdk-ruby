require 'spec_helper'
require 'stringio'
require 'yaml'

module Aws
  describe 'Aws' do
    class OperationFixture

      Request = Struct.new(:method, :host, :headers, :path, :body)
      Response = Struct.new(:status_code, :headers, :body)
      Error = Struct.new(:class, :message)

      def self.load(svc_name, fixture_name)
        path = File.expand_path(File.join(File.dirname(__FILE__),
          'fixtures', 'services', svc_name, "#{fixture_name}.yml"))
        self.new(YAML.load(File.read(path)))
      end

      def initialize(data)
        @response = nil
        @operation = data['operation']
        @config = (data['config'] || {}).inject({}) do |config, (key, value)|
          config.merge(key.to_sym => value)
        end
        @config[:region] ||= 'us-east-1'
        @config[:credentials] = Credentials.new('akid', 'secret')
        @params = data['params'] || {}
        @data = data['data']

        {
          'error' => Error,
          'request' => Request,
          'response' => Response,
        }.each do |entry, struct_class|
          if data.key?(entry)
            struct = struct_class.new
            data[entry].each do |key, value|
              struct[key] = value
            end
            instance_variable_set("@#{entry}", struct)
          end
        end

        if @response
          @response.status_code ||= 200
          @response.headers = header_hash(@response.headers)
          @response.body = StringIO.new(@response.body || '')
        end
      end

      attr_reader :operation, :config, :params, :request, :response, :data, :error

      def handler
        FixtureHandler.new(self)
      end

      private

      def header_hash(headers)
        Seahorse::Client::Http::Headers.new(headers || {})
      end

    end

    class FixtureHandler < Seahorse::Client::Handler

      def call(context)
        f = context.metadata[:fixture]
        if f.response
          context.http_response.signal_headers(
            f.response.status_code,
            f.response.headers
          )
          context.http_response.signal_data(f.response.body.read)
        end
        context.http_response.signal_done
        Seahorse::Client::Response.new(context: context)
      end

    end

    def request_assertions(f, http_req)
      if f.request
        expect(http_req.endpoint.host).to eq(f.request.host) if f.request.host
        expect(http_req.http_method).to eq(f.request.method) if f.request.method
        if path = f.request.path
          uri = http_req.endpoint.request_uri
          case path
          when String then expect(uri).to eq(path)
          when Regexp then expect(uri).to match(path)
          end
        end
        if f.request.headers
          f.request.headers.each_pair do |header, value|
            expected_value = value.nil? ? nil : value.to_s
            expect(http_req.headers[header]).to eq(expected_value)
          end
        end
        if f.request.body
          yyyy_mm_dd = /\d{4}-\d{2}-\d{2}/
          body = http_req.body.read.gsub(yyyy_mm_dd, 'YYYY-MM-DD')
          expected_body = f.request.body.gsub(yyyy_mm_dd, 'YYYY-MM-DD')
          expect(body).to eq(expected_body)
        end
      end
    end

    def response_assertions(f, resp)
      if f.data
        expect(data_to_hash(resp.data)).to eq(f.data)
      end

      if f.error
        expect(resp.data).to be(nil)
        expect(resp.error.class.name).to eq(f.error.class) if f.error.class
        expect(resp.error.message).to eq(f.error.message) if f.error.message
      end
    end

    glob = File.expand_path(File.join(
      File.dirname(__FILE__), 'fixtures', 'services', '**', '*.yml'))

    fixtures = Dir.glob(glob)

    raise "unable to locate test fixures" if fixtures.empty?

    fixtures.group_by { |p| p.split('/')[-2] }.each do |svc_name, paths|
      describe(svc_name) do
        paths.each do |path|
          fixture_name = path.split('/')[-1][0..-5]

          it(fixture_name) do
            # load the fixture from disk
            f = OperationFixture.load(svc_name, fixture_name)

            # build the test service class by sub-classing the original
            # service class
            client_class = Aws.const_get(svc_name).const_get(:Client)

            client = client_class.new(f.config.merge(raise_response_errors: false))
            req = client.build_request(f.operation, f.params)
            req.handler(FixtureHandler, step: :send)
            req.context.metadata[:fixture] = f
            resp = req.send_request

            request_assertions(f, resp.context.http_request)
            response_assertions(f, resp)
          end
        end
      end
    end
  end
end
