require 'spec_helper'

module Aws
  describe 'Aws' do
    class OperationFixture

      Request = Struct.new(:method, :host, :headers, :path, :body)
      Response = Struct.new(:status_code, :headers, :body)
      Error = Struct.new(:class, :message)

      def self.load(svc_name, fixture_name)
        path = File.expand_path(File.join(File.dirname(__FILE__),
          '..', 'fixtures', 'operations', svc_name, "#{fixture_name}.yml"))
        self.new(YAML.load(File.read(path)))
      end

      def initialize(data)
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
          @response.body =
            Seahorse::Client::Http::PlainStringIO.new(@response.body || '')
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

      def initialize(fixture)
        @f = fixture
      end

      attr_accessor :handler, :f

      def call(context)
        response = Seahorse::Client::Response.new(context: context)
        if f.response
          context.http_response.status_code = f.response.status_code
          context.http_response.headers = f.response.headers
          context.http_response.body = f.response.body
        end
        response
      end

    end

    def request_assertions(f, http_req)
      if f.request
        expect(http_req.endpoint.host).to eq(f.request.host) if f.request.host
        expect(http_req.http_method).to eq(f.request.method) if f.request.method
        expect(http_req.endpoint.request_uri).to eq(f.request.path) if f.request.path
        if f.request.headers
          f.request.headers.each_pair do |header, value|
            expected_value = value.nil? ? nil : value.to_s
            expect(http_req.headers[header]).to eq(expected_value)
          end
        end
        expect(http_req.body.read).to eq(f.request.body) if f.request.body
      end
    end

    def response_assertions(f, resp)
      if f.data
        expect(resp.data.to_hash).to eq(f.data)
      end

      if f.error
        expect(resp.data).to be(nil)
        expect(resp.error.class.name).to eq(f.error.class) if f.error.class
        expect(resp.error.message).to eq(f.error.message) if f.error.message
      end
    end

    glob = File.expand_path(File.join(
      File.dirname(__FILE__), '..', 'fixtures', 'operations', '**', '*.yml'))

    Dir.glob(glob).group_by { |p| p.split('/')[-2] }.each do |svc_name, paths|
      describe(svc_name) do
        paths.each do |path|
          fixture_name = path.split('/')[-1][0..-5]

          it(fixture_name) do
            # load the fixture from disk
            f = OperationFixture.load(svc_name, fixture_name)

            # remove the plugin that raises errors
            Aws.service_classes[svc_name.to_sym].remove_plugin(
              Seahorse::Client::Plugins::RaiseResponseErrors)

            # build the service interface
            svc = Aws.send(svc_name, f.config)

            # build the request
            req = svc.build_request(f.operation, f.params)
            req.handler(f.handler, step: :send)


            # send the request
            resp = req.send_request

            request_assertions(f, resp.http_request)
            response_assertions(f, resp)

          end
        end
      end
    end
  end
end
