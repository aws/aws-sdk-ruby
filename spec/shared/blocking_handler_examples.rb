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

module AWS
  module Http

    shared_examples_for "a blocking HTTP handler" do

      context '#handle' do

        let(:request) { Request.new }

        let(:response) { Response.new }

        it 'should use the request host' do
          request.should_receive(:host)
          handler.handle(request, response)
        end

        it 'should accept HEAD, GET, PUT, POST and DELETE requests' do
          lambda {
            %w(HEAD GET PUT POST DELETE).each do |verb|
              request.http_method = verb
              handler.handle(request, response)
            end
          }.should_not raise_error
        end

        it 'should not accept non standard request methods' do
          lambda {
            request.http_method = 'FOO'
            handler.handle(request, response)
          }.should raise_error(/FOO/)
        end

        it 'should use the request method' do
          request.should_receive(:http_method).and_return('GET')
          handler.handle(request, response)
        end

        it 'should use the request uri' do
          request.should_receive(:uri).and_return('/')
          handler.handle(request, response)
        end

        it 'should use the request body' do
          request.should_receive(:body)
          handler.handle(request, response)
        end

        it 'should use the request headers' do
          request.should_receive(:headers).and_return({})
          handler.handle(request, response)
        end

      end

    end

  end
end
