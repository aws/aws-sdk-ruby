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

module AWS::Core

  shared_examples_for "uses cached responses" do

    let(:http_handler) { double("http handler") }

    let(:config) { AWS.config.with(:access_key_id => "AKID",
                                   :secret_access_key => "SECRET",
                                   :session_token => "TOKEN",
                                   :http_handler => http_handler) }

    let(:client) { described_class.new(:config => config) }

    context 'when the cache is active' do

      let(:cache) { double("cache",
                           :cached => nil,
                           :cached= => nil,
                           :add => nil) }

      before(:each) do
        AWS.stub(:response_cache).and_return(cache)
        cached_response.http_response.status = 200
      end

      let(:cached_response) { Response.new(Http::Request.new,
                                           Http::Response.new) }

      it 'should not make a request if a matching response is in the cache' do
        cache.stub(:cached).and_return(cached_response)
        http_handler.should_not_receive(:handle)
        client.send(method, opts)
      end

      it 'should make a request if no response is cached' do
        http_handler.should_receive(:handle) do |req, resp|
          resp.status = 200
          resp.body = "<foo/>"
        end
        client.send(method, opts) rescue nil
      end

      it 'should use a response class whose cache key includes the access key ID' do
        cache.should_receive(:cached) do |resp|
          resp.cache_key.should include("AKID")
          nil
        end
        http_handler.stub(:handle)
        client.send(method, opts) rescue nil
      end

      it 'should log the response including a [CACHED] tag' do
        logger = double("logger")
        cache.stub(:cached).and_return(cached_response)
        logger.should_receive(:info)
        client.with_options(:logger => logger).
          send(method, opts)
      end

    end

  end

end
