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

module AWS
  module Core
    describe LogFormatter do

      let(:http_request) { Http::Request.new }

      let(:http_response) { Http::Response.new }

      let(:response) {
        resp = Response.new(http_request, http_response)
        resp.config = double('config', :proxy_uri => nil)
        resp
      }

      context '#pattern' do

        it 'it set in the constructor' do
          LogFormatter.new('pattern').pattern.should == 'pattern'
        end

      end

      context '#max_string_size' do

        it 'defaults to 1000' do
          LogFormatter.new('pattern').max_string_size.should == 1000
        end

        it 'can be overridden in the constructor' do
          formatter = LogFormatter.new('pattern', :max_string_size => 50)
          formatter.max_string_size.should == 50
        end

      end

      context '#format' do

        def message_for pattern, options = {}
          LogFormatter.new(pattern, options).format(response)
        end

        it 'returns the pattern string' do
          message_for('pattern').should == 'pattern'
        end

        context 'substitutions' do

          it 'returns unknown substitutions unmodified' do
            message_for(':fake_placeholder').should == ':fake_placeholder'
          end

          it 'replaces :service with the request class service name' do
            http_request.stub_chain(:class, :name).and_return('AWS::EC2::Request')
            message_for(':service').should == 'EC2'
          end

          it 'replaces :region with the request region' do
            http_request.region = 'us-west-1'
            message_for(':region').should == 'us-west-1'
          end

          it 'replaces :operation with the response request type' do
            response.request_type = :describe_images
            message_for(':operation').should == 'describe_images'
          end

          it 'replaces :retry_count with the response retry count' do
            response.retry_count = 3
            message_for(':retry_count').should == "3"
          end

          context ':duration' do

            it 'replaces :duration with the response duration' do
              response.duration = 1.234567
              message_for(':duration').should == "1.234567"
            end

            it 'rounds precision at 6 decimal places' do
              response.duration = 1.234678901234456789
              message_for(':duration').should == "1.234679"
            end

            it 'purnes trailing zeros from the decimal part' do
              response.duration = 1.2
              message_for(':duration').should == "1.2"
            end

            it 'shows the full integer part' do
              response.duration = 123456789.9
              message_for(':duration').should == '123456789.9'
            end

          end

          context 'replaces :error_class' do

            it 'returns an empty string if there is no error' do
              response.error = nil
              message_for(':error_class').should == ''
            end

            it 'returns the class name when an error is present' do
              error = AWS::S3::Errors::NoSuchKeyError.new('msg')
              response.error = error
              message_for(':error_class').should ==
                'AWS::S3::Errors::NoSuchKeyError'
            end

          end

          context ':error_message' do

            it 'returns an empty string if there is no error' do
              response.error = nil
              message_for(':error_message').should == ''
            end

            it 'returns the error message when an error is present' do
              error = AWS::S3::Errors::NoSuchKeyError.new('error-msg')
              response.error = error
              message_for(':error_message').should == 'error-msg'
            end

          end

          context ':http_request_method' do

            it 'replaces :http_request_method with the http verb' do
              http_request.http_method = 'GET'
              message_for(':http_request_method').should == 'GET'
            end

            it 'accepts alternative methods' do
              http_request.http_method = 'PUT'
              message_for(':http_request_method').should == 'PUT'
            end

          end

          context ':http_request_protocol' do

            it 'replaces :http_request_protocol with https when ssl is enabled' do
              http_request.use_ssl = true
              message_for(':http_request_protocol').should == 'https'
            end

            it 'replaces :http_request_protocol with http when ssl is disabled' do
              http_request.use_ssl = false
              message_for(':http_request_protocol').should == 'http'
            end

          end

          it 'replaces :http_request_host with the http request host' do
            http_request.host = 'domain.com'
            message_for(':http_request_host').should == 'domain.com'
          end

          it 'replaces :http_request_port with the http request port' do
            http_request.port = 123
            message_for(':http_request_port').should == '123'
          end

          it 'replaces :http_request_uri with the http request uri' do
            uri = '/foo/bar?abc=xyz'
            http_request.stub(:uri).and_return(uri)
            message_for(':http_request_uri').should == uri
          end

          it 'replaces :http_request_body with the http request body' do
            http_request.stub(:body).and_return('body')
            message_for(':http_request_body').should == 'body'
          end

          it 'replaces :http_request_headers with the inspected headers' do
            headers = { :abc => '123', :mno => 'xyz' }
            http_request.headers = headers
            message_for(':http_request_headers').should == headers.inspect
          end

          it 'replaces :http_request_proxy_uri with the http request proxy uri' do
            proxy = URI.parse('http://proxy.com')
            response.config.stub(:proxy_uri).and_return(proxy)
            message_for(':http_request_proxy_uri').should == proxy.to_s
          end

          it 'replaces :http_response_status with the http response status code' do
            http_response.status = 404
            message_for(':http_response_status').should == '404'
          end

          it 'replaces :http_response_headers with the inspected response headers' do
            headers = { :abc => '123', :mno => 'xyz' }
            http_response.headers = headers
            message_for(':http_response_headers').should == headers.inspect
          end

          it 'replaces :http_response_body with the http response body' do
            http_response.body = 'body'
            message_for(':http_response_body').should == 'body'
          end

          context ':options' do

            it 'replaces :options with an empty string when nil' do
              response.request_options = nil
              message_for(':options').should == ''
            end

            it 'replaces :options with the inspected client request options' do
              response.request_options = { :foo => 'bar' }
              message_for(':options').should == ':foo=>"bar"'
            end

            it 'truncates strings that exceede the max size' do
              string = '0' * 1024 * 1024
              response.request_options = { :foo => string }
              msg = message_for(':options', :max_string_size => 10)
              msg.should == ":foo=>#<String \"0000000000\" ... (1048576 bytes)>"
            end

            it 'summarizes files and gives their size' do
              file = File.open(__FILE__, 'r')
              response.request_options = { :foo => file }
              msg = message_for(':options')
              msg.should == ":foo=>#<File:#{__FILE__} (#{File.size(__FILE__)} bytes)>"
            end

            it 'summarizes pathnames and gives their size' do
              path = Pathname.new(__FILE__)
              response.request_options = { :foo => path }
              msg = message_for(':options')
              msg.should == ":foo=>#<File:#{path} (#{File.size(path)} bytes)>"
            end

            it 'handles nested hashes' do
              data = { :foo => { :bar => :yuck }}
              response.request_options = data
              message_for(':options').should == ":foo=>{:bar=>:yuck}"
            end

            it 'handles nested arrays' do
              data = { :foo => [{ :a => 1 }, { :b => 2 }]}
              response.request_options = data
              message_for(':options').should == ":foo=>[{:a=>1},{:b=>2}]"
            end

            it 'inspects all other objects' do
              value = double('value')
              value.should_receive(:inspect).and_return('"value"')
              response.request_options = { :foo => value }
              message_for(':options').should == ':foo=>"value"'
            end

          end

        end
      end
    end
  end
end
