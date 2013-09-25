# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'spec_helper'

module Aws
  describe 'Aws' do
    class OperationFixture

      Request = Struct.new(:method, :host, :headers, :path, :body)
      Response = Struct.new(:status_code, :headers, :body)

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
        @params = data['params'] || {}
        @data = data['data'] || {}

        req = data['request'] || {}
        resp = data['response'] || {}

        @request = data['request'] || {}
        @request = Request.new
        @request.method = req['method']
        @request.host = req['host']
        @request.headers = header_hash(req['headers'])
        @request.path = req['path']
        @request.body = req['body'] || ''

        @response = Response.new
        @response.status_code = resp['status_code'] || 200
        @response.headers = header_hash(resp['headers'])
        @response.body =
          Seahorse::Client::Http::PlainStringIO.new(resp['body'] || '')
      end

      attr_reader :operation, :config, :params, :request, :response, :data

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
        context.http_response.status_code = f.response.status_code
        context.http_response.headers = f.response.headers
        context.http_response.body = f.response.body
        Seahorse::Client::Response.new(context: context).signal_complete
      end

    end

    def request_assertions(f, http_req)
      expect(http_req.endpoint.host).to eq(f.request.host)
      expect(http_req.http_method).to eq(f.request.method)
      expect(http_req.path).to eq(f.request.path)
      f.request.headers.each_pair do |header, value|
        expect(http_req.headers[header]).to eq(value.to_s)
      end
      expect(http_req.body.read).to eq(f.request.body)
    end

    def response_assertions(f, resp)
      expect(resp.data.to_hash).to eq(f.data.to_h)
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

            # build a service client
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
