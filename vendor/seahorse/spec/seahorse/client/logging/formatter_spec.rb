require 'spec_helper'
require 'pathname'

module Seahorse
  module  Client
    module Logging
      describe Formatter do

        let(:response) { Response.new }

        def format(pattern, options = {})
          Logging::Formatter.new(pattern, options).format(response)
        end

        describe '#format' do

          it 'provides a :client_class replacement' do
            response.context.client = String.new
            expect(format(':client_class')).to eq('String')
          end

          it 'provides a :operation replacement' do
            response.context.operation_name = 'operation-name'
            expect(format(':operation')).to eq('operation-name')
          end

          it 'provides a :request_params replacement' do
            response.context.params = {
              foo: 'bar',
              attributes: {
                'color' => 'red',
                'size' => 'large'
              },
              config: {
                nested: true,
                values: [1,2,3],
                file: File.open('Rakefile'),
                path: Pathname.new('Rakefile'),
                complex: double('obj', inspect: '"inspected"')
              },
              huge: '-' * 1000
            }
            formatted = format('{:request_params}', max_string_size: 20)
            size = File.size('Rakefile')
            expect(formatted).to eq(<<-FORMATTED.strip)
{foo:"bar",attributes:{"color"=>"red","size"=>"large"},config:{nested:true,values:[1,2,3],file:#<File:Rakefile (#{size} bytes)>,path:#<File:Rakefile (#{size} bytes)>,complex:"inspected"},huge:#<String "--------------------" ... (1000 bytes)>}
            FORMATTED
          end

          it 'provides a :time replacement' do
            now = Time.now
            response.context[:logging_started_at] = now - 1.54321
            response.context[:logging_completed_at] = now
            expect(format(':time')).to eq('1.54321')
          end

          it 'provides a :retries replacement' do
            response.context.retries = 3
            expect(format(':retries')).to eq('3')
          end

          it 'provides a :http_request_endpoint replacement' do
            response.context.http_request.endpoint =
              Http::Endpoint.new('http://foo.com:123')
            expect(format(':http_request_endpoint')).to eq('http://foo.com:123')
          end

          it 'provides a :http_request_scheme replacement' do
            response.context.http_request.endpoint =
              Http::Endpoint.new('http://foo.com')
            expect(format(':http_request_scheme')).to eq('http')
            response.context.http_request.endpoint =
              Http::Endpoint.new('https://foo.com')
            expect(format(':http_request_scheme')).to eq('https')
          end

          it 'provides a :http_request_host replacement' do
            response.context.http_request.endpoint =
              Http::Endpoint.new('http://foo.com')
            expect(format(':http_request_host')).to eq('foo.com')
          end

          it 'provides a :http_request_port replacement' do
            response.context.http_request.endpoint =
              Http::Endpoint.new('http://foo.com')
            expect(format(':http_request_port')).to eq('80')
            response.context.http_request.endpoint =
              Http::Endpoint.new('https://foo.com')
            expect(format(':http_request_port')).to eq('443')
            response.context.http_request.endpoint =
              Http::Endpoint.new('http://foo.com:123')
            expect(format(':http_request_port')).to eq('123')
          end

          it 'provides a :http_request_path replacement' do
            response.context.http_request.path = '/foo?bar=1'
            expect(format(':http_request_path')).to eq('/foo?bar=1')
          end

          it 'provides a :http_request_headers replacement' do
            response.context.http_request.headers = { 'foo' => 'bar' }
            expect(format(':http_request_headers')).to eq('{"foo"=>"bar"}')
          end

          it 'provides a :http_request_body replacement' do
            response.context.http_request.body = StringIO.new('abc')
            expect(format(':http_request_body')).to eq('"abc"')
            response.context.http_request.body = '-' * 1024 * 1024
            formatted = format(':http_request_body', max_string_size: 5)
            expect(formatted).to eq("#<String \"-----\" ... (1048576 bytes)>")
          end

          it 'provides a :http_response_status_code replacement' do
            response.context.http_response.status_code = 200
            expect(format(':http_response_status_code')).to eq('200')
          end

          it 'provides a :http_response_headers replacement' do
            response.context.http_response.headers['foo'] = 'bar'
            expect(format(':http_response_headers')).to eq('{"foo"=>"bar"}')
          end

          it 'provides a :http_response_body replacement' do
            response.context.http_response.body = StringIO.new('abc')
            expect(format(':http_response_body')).to eq('"abc"')
            response.context.http_response.body = '-' * 1024 * 1024
            formatted = format(':http_response_body', max_string_size: 5)
            expect(formatted).to eq("#<String \"-----\" ... (1048576 bytes)>")
          end

          it 'provides a :error_class replacement' do
            response.error = String.new
            expect(format(':error_class')).to eq('String')
          end

          it 'provides a :error_message replacement' do
            response.error = RuntimeError.new('foo')
            expect(format(':error_message')).to eq('foo')
          end

          it 'leaves placeholders intact that are not defined' do
            expect(format('abc :mno xyz')).to eq('abc :mno xyz')
          end

        end

        describe 'canned loggers' do

          before(:each) do
            now = Time.now
            response.context.client = String
            response.context.operation_name = 'operation_name'
            response.context.retries = 3
            response.context.params = { limit: 1 }
            response.error = RuntimeError.new('error-message')
            response.context.http_response.status_code = 200
            response.context[:logging_started_at] = now - 1.12345
            response.context[:logging_completed_at] = now
          end

          describe '.default' do

            it 'provides a basic logging format' do
              formatted = format(Formatter.default.pattern)
              expect(formatted).to eq(<<-EXAMPLE)
[Class 200 1.12345 3 retries] operation_name(limit:1) RuntimeError error-message
              EXAMPLE
            end

          end

          describe '.short' do

            it 'provides a basic logging format' do
              formatted = format(Formatter.short.pattern)
              expect(formatted).to eq(<<-EXAMPLE)
[Class 200 1.12345] operation_name RuntimeError
              EXAMPLE
            end

          end

          describe '.colored' do

            it 'provides a basic logging format' do
              formatted = format(Formatter.colored.pattern)
              expect(formatted).to eq(<<-EXAMPLE)
\e[1m\e[34m[Class 200 1.12345 3 retries]\e[0m\e[1m operation_name(limit:1) RuntimeError error-message\e[0m
              EXAMPLE
            end

          end
        end
      end
    end
  end
end
