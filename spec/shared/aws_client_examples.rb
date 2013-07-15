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

require 'timeout'

module AWS::Core

  shared_examples_for "an aws client" do |sample_method|

    context '#initialize' do

      it 'accepts a config' do
        config = double('config').as_null_object
        new_client = client.class.new(:config => config)
        new_client.config.should == config
      end

    end

    context '#with_options' do

      it 'should return a new client' do
        new_client = client.with_options(:max_retries => 2)
        new_client.should_not == client
      end

      it 'should modify the config on the new client' do
        client.with_options(:max_retries => 2).config.max_retries.should == 2
      end

      it 'should not modify the config on the old client' do
        client.with_options(:max_retries => 2)
        client.config.max_retries.should == 3
      end

    end

    context '#with_http_handler' do

      it 'should yield request and response objects when a request is made' do
        recorded_request = nil
        recorded_response = nil
        client.with_http_handler { |req, resp|
          recorded_request = req
          recorded_response = resp
        }.send(sample_method)
        recorded_request.should be_a_kind_of(Http::Request)
        recorded_response.should be_a(Http::Response)
      end

      it 'should be able to call super to access previous definition' do
        called_super = false
        called_derived = false
        client.with_http_handler { |req, resp|
          called_super = true
        }.with_http_handler { |req, resp|
          called_derived = true
          super(req, resp)
        }.send(sample_method)

        called_super.should be_true
        called_derived.should be_true
      end

      it 'should set the http_response member to the same instance that was passed to the block' do
        http_response = nil
        response = client.with_http_handler { |req, resp|
          http_response = resp
        }.send(sample_method)
        response.http_response.should be(http_response)
      end

      it 'should set the http_request member to the same instance that was passed to the block' do
        http_request = nil
        response = client.with_http_handler { |req, resp|
          http_request = req
        }.send(sample_method)
        response.http_request.should be(http_request)
      end

      it 'should pass along exceptions raised from the block' do
        error = StandardError.new("FOO")
        begin
          client.with_http_handler { |req, resp|
            raise error
          }.send(sample_method)
        rescue => e
          e.should be(error)
        else
          fail
        end
      end

    end

  end

  # method - the service method, put_bucket, delete_bucket, etc
  # opts - a hash of valid options for the method
  # http_verb - expected http method, PUT, GET, POST or DELETE
  shared_examples_for "an aws http request" do |http_verb|

    #it_should_behave_like "supports async option"

    before(:each) do
      Kernel.stub!(:sleep)
    end

    let(:server_error_client) {
      client.with_http_handler do |request, response|
        response.status = 500
      end
    }

    it 'with the proper http verb' do
      request_method = nil
      client.with_http_handler{|request, response|
        request_method = request.http_method
      }.send(method, opts)
      request_method.should == http_verb
    end

    it 'should set use_ssl to the current config use_ssl? value' do

      use_ssl = double('use_ssl_state')

      use_ssl_state = nil
      new_client = client.with_http_handler{|request, response|
        use_ssl_state = request.use_ssl?
      }
      new_client.config.stub(:use_ssl?).and_return(use_ssl)
      new_client.send(method, opts)
      use_ssl_state.should == use_ssl

    end

    it 'populates the response with the request options' do
      resp = client.send(method, opts)
      resp.request_options.should == opts
    end

    it 'raises client errors for errors that can not be retried' do
      lambda {
        client.with_http_handler{|request, response|
          response.status = 405 # method not allowed
        }.send(method, opts)
      }.should raise_error(AWS::Errors::ClientError)
    end

    it 'raises client errors for 4xx response codes with a nil response body' do
      lambda {
        client.with_http_handler{|request, response|
          response.status = 405 # method not allowed
          response.body = nil
        }.send(method, opts)
      }.should raise_error(AWS::Errors::ClientError)
    end

    it 'does not retry client errors' do
      handler = double("handler")
      handler.should_receive(:handle).once do |request, response|
        response.status = 405
      end
      client.with_http_handler(handler).send(method, opts) rescue nil
    end

    it 'retry requests that respond with 500' do
      requests_made = 0
      statuses = [500, 200]
      client.with_http_handler{|req, resp|
        resp.status = statuses.shift
        requests_made += 1
      }.send(method, opts)
      requests_made.should == 2
    end

    it 'retry requests that respond with 503' do
      requests_made = 0
      statuses = [503, 200]
      client.with_http_handler{|req, resp|
        resp.status = statuses.shift
        requests_made += 1
      }.send(method, opts)
      requests_made.should == 2
    end

    it 'retry throttled requests that respond with 400' do
      requests_made = 0
      statuses = [400, 200]
      bodies = ["<FOO><Code>Throttling</Code></FOO>", "<bar/>"]
      client.with_http_handler{|req, resp|
        resp.status = statuses.shift
        resp.body = bodies.shift
        requests_made += 1
      }.send(method, opts)
      requests_made.should == 2
    end

    it 'retry timeout errors' do
      timed_out = false
      requests_made = 0
      client.with_http_handler{|req, resp|
        requests_made += 1
        if timed_out
          resp.status = 200
          resp.body = "<ok/>"
        else
          timed_out = true
          resp.timeout = Timeout::Error.new
        end
      }.send(method, opts)
      requests_made.should == 2
    end

    it 'should retry at most 3 times' do
      requests_made = 0
      begin
        client.with_http_handler{|req, resp|
          resp.status = 500
          requests_made += 1
        }.send(method, opts)
      rescue AWS::Errors::ServerError
      end
      requests_made.should == 4
    end

    it 'should build a new request for each retry' do
      requests = (1..4).map { |i| client.send(:new_request) }
      expect_requests = requests.dup
      client.stub(:new_request) { requests.shift }
      http_handler.should_receive(:handle).exactly(4).times do |req, resp|
        resp.status = 500
        req.should be(expect_requests.shift)
      end
      begin
        client.send(method, opts)
      rescue AWS::Errors::ServerError
      end
    end

    it 'should retry more times if configured' do
      requests_made = 0
      new_client = client.with_http_handler{|req, resp|
        resp.status = 500
        requests_made += 1
      }
      new_client.config.stub(:max_retries).and_return(5)
      begin
        new_client.send(method, opts)
      rescue AWS::Errors::ServerError
      end
      requests_made.should == 6
    end

    it 'should re-raise the server error after retries fail' do
      lambda {
        client.with_http_handler{|req, resp|
          resp.status = 500
        }.send(method, opts)
      }.should raise_error(AWS::Errors::ServerError)
    end

    it 'should raise a network error after retries fail due to timeout' do
      err = Timeout::Error.new
      raised = false
      begin
        client.with_http_handler{|req, resp|
          resp.timeout = err
        }.send(method, opts)
      rescue Exception => e
        e.should be(err)
        raised = true
      end
      raised.should be(true)
    end

    it 'should raise a network error after retries fail' do
      err = StandardError.new('oops')
      raised = false
      begin
        client.with_http_handler{|req, resp|
          resp.timeout = err
        }.send(method, opts)
      rescue Exception => e
        e.should be(err)
        raised = true
      end
      raised.should be(true)
    end

    it 'should sleep between retries' do
      Kernel.should_receive(:sleep).exactly(3).times
      begin
        client.with_http_handler{|req, resp|
          resp.status = 500
        }.send(method, opts);
      rescue
      end
    end

    it 'it backs off exponentially' do
      Kernel.should_receive(:sleep).with(0.3).with(0.6).with(1.2)
      begin
        client.with_http_handler{|req, resp|
          resp.status = 500
        }.send(method, opts)
      rescue
      end
    end

    it 'it uses a randomized scaling factor for throttled requests' do
      Kernel.stub!(:rand) { 0.5 }
      Kernel.should_receive(:sleep).with(0.55).with(1.1).with(2.2)
      begin
        client.with_http_handler{|req, resp|
          resp.status = 500
          resp.body = "<FOO><Code>Throttling</Code></FOO>"
        }.send(method, opts)
      rescue
      end
    end

    context 'user_agent' do

      let(:stub_client) { client.with_options(options) }

      let(:options) { { :stub_requests => true } }

      let(:user_agent) do
        response = stub_client.send(method, opts)
        response.http_request.headers['user-agent']
      end

      it 'should set the user_agent header' do
        user_agent.should match(/^aws-sdk-ruby/)
      end

      it 'should prefix the user agent when configured' do
        options[:user_agent_prefix] = "PREFIX"
        user_agent.should match(/^PREFIX/)
      end

      context 'memoization status' do

        it 'should not include "memoizing" if memoization is disabled' do
          AWS.stub(:memoizing?).and_return(false)
          user_agent.should_not include("memoizing")
        end

        it 'should include "memoizing" if memoization is enabled' do
          AWS.stub(:memoizing?).and_return(true)
          user_agent.should include("memoizing")
        end

      end

    end

    context 'endpoint' do

      it 'should default the endpoint given in the client config' do
        stub_client = client.with_options(:s3_endpoint => 'xyz.com',
                                          :simple_db_endpoint => 'xyz.com',
                                          :ec2_endpoint => 'xyz.com',
                                          :stub_requests => true)
        response = stub_client.send(method, opts)
        response.http_request.host.should match('xyz.com')
      end

    end

    context 'user agent' do

      let(:http_handler) { double("handler") }

      let(:client_with_handler) do
        client.with_http_handler(http_handler)
      end

      it 'should send a user-agent header' do
        http_handler.should_receive(:handle).with do |req, resp|
          req.headers["user-agent"].
            should =~ %r{aws-sdk-ruby/#{AWS::VERSION} [a-z]+/[0-9.]+ \w+}
        end
        client_with_handler.send(method, opts)
      end

    end

    context 'stubbing' do

      let(:stub_client) { client.with_options(:stub_requests => true) }

      it 'should not call handle' do
        called = false
        stub_client.with_http_handler do |req, resp|
          called = true
        end.send(method, opts)
        called.should == false
      end

    end

    context 'logging' do

      let(:service) { described_class.to_s.gsub(/^AWS::/, '') }

      let(:logger) { double('logger') }

      let(:logging_client) {
        client.class.new(:config => client.config.with(:logger => logger))
      }

      it 'should log the client request' do
        logger.should_receive(:info)
        logging_client.send(method, opts)
      end

      it 'should log server errors' do
        logger.should_receive(:info)
        begin
          logging_client.with_http_handler do |req,resp|
            resp.status = 502
            resp.body = 'Service busy'
          end.send(method, opts)
        rescue AWS::Errors::ServerError
        end
      end

    end

    context 'signing' do

      let(:fake_request) { client.send(:new_request) }

      before(:each) do
        fake_request
        client.stub(:new_request).and_return(fake_request)
      end

      it 'should call add_authorization! on the request' do
        fake_request.
          should_receive(:add_authorization!).
          with(client.credential_provider)
        client.send(method, opts)
      end

      it 'should call add_authorization! with the credential provider' do

        credential_provider = double("credential_provider",
           :access_key_id => "foo",
           :secret_access_key => "bar",
           :session_token => "yuck")

        client.stub(:credential_provider).and_return(credential_provider)

        fake_request.
          should_receive(:add_authorization!).
          with(credential_provider)

        client.send(method, opts)

      end

    end

    context 'caching enabled' do

      let(:response) { Response.new(Http::Request.new,
                                    Http::Response.new) }

      let(:cache) { double("cache",
                           :cached => nil,
                           :add => nil) }

      before(:each) do
        client.stub(:new_response).and_return(response)
        AWS.stub(:response_cache).and_return(cache)
      end

      it 'should add the low-level response object to the cache' do
        cache.should_receive(:add).with(response)
        client.send(method, opts)
      end

      it 'should not cache on failure' do
        client.stub(:populate_error) do |resp|
          resp.error = StandardError.new("FOO")
        end
        cache.should_not_receive(:add)
        lambda { client.send(method, opts) }.should raise_error("FOO")
      end

      context 'asynchronous' do

        before(:each) do
          client.config.http_handler.stub(:handle_async)
        end

        it 'should add the response on success' do
          handle = nil
          client.config.http_handler.stub(:handle_async) do |req, resp, h|
            resp.status = 200
            handle = h
          end
          client.send(method, opts.merge(:async => true))
          cache.should_receive(:add).with(response)
          handle.signal_success
        end

        it 'should not cache on failure' do
          cache.should_not_receive(:add)
          client.send(method, opts.merge(:async => true)).signal_failure
        end

      end

    end

  end

  shared_examples_for 'supports async option' do

    let(:async_opts) { opts.merge(:async => true) }

    context 'asynchronous' do

      let(:obj) { double("an object") }
      let(:handle) { client.send(method, async_opts) }

      before(:each) do
        client.config.http_handler.stub(:handle_async) do |req, resp, handle|
          @handler_request = req
          @handler_response = resp
          resp.status = 200
          @handler_handle = handle
        end
        handle # forces the above to run
      end

      it 'should call handle_async on the handler' do
        client.config.http_handler.should_receive(:handle_async)
        client.config.http_handler.should_not_receive(:handle)
        client.send(method, async_opts)
      end

      it 'should return a kind of async handle' do
        client.config.http_handler.stub(:handle_async)
        client.send(method, async_opts).should be_kind_of(AsyncHandle)
      end

      it 'should call the success callback on handler success' do
        handle.on_success { obj.success }
        obj.should_receive(:success)
        @handler_handle.signal_success
      end

      it 'should call the failure callback on handler failure' do
        handle.on_failure { obj.failure }
        obj.should_receive(:failure)
        @handler_handle.signal_failure
      end

      it 'should make an error available on handler failure' do
        @handler_handle.signal_failure
        handle.error.should be_a(StandardError)
      end

      it 'should call the failure callback on service failure' do
        obj.should_receive(:failure).once
        handle.on_failure { obj.failure }
        @handler_response.status = 500
        @handler_handle.signal_failure
      end

      it 'should retry service errors' do

        new_client = client.with_http_handler do |req, resp|
          resp.status = 500
        end

        http_handler = new_client.config.http_handler
        Kernel.should_receive(:sleep).with(0.3).with(0.6).with(1.2)

        response = new_client.send(method, async_opts)

        complete = false
        response.on_complete do |status|
          complete = true
          status.should == :failure
          response.error.should be_a(AWS::Errors::ServerError)
        end

        sleep 0.001 until complete

      end

      it 'should retry timeouts' do

        new_client = client.with_http_handler do |req, resp|
          resp.timeout = TimeoutError.new
        end

        http_handler = new_client.config.http_handler
        Kernel.should_receive(:sleep).with(0.3).with(0.6).with(1.2)

        response = new_client.send(method, async_opts)

        complete = false
        response.on_complete do |status|
          complete = true
          status.should == :failure
          response.error.should be_a(TimeoutError)
        end

        sleep 0.001 until complete

      end

      it 'should build a new request for each retry' do
        seen_requests = []
        new_client = client.with_http_handler do |req, resp|
          resp.timeout = TimeoutError.new
          seen_requests << req
        end

        Kernel.stub(:sleep)

        response = new_client.send(method, async_opts)

        complete = false
        response.on_complete do |status|
          complete = true
          seen_requests.uniq.size.should == 4
        end

        sleep 0.001 until complete

      end

    end

  end

  shared_examples_for 'parses response' do

    let(:response_body) { "foo response" }

    it 'should parse the response body' do
      http_handler.stub(:handle) do |req, resp|
        resp.status = 200
        resp.body = response_body
      end
      client.send(method, opts)
    end

    context 'asynchronous' do

      it 'should parse the response body on completion' do
        http_resp = nil
        handler_handle = nil
        http_handler.stub(:handle_async) do |req, resp, handle|
          http_resp = resp
          http_resp.stub(:body) { fail "read body before it was ready" }
          handler_handle = handle
        end

        resp = client.send(method, opts.merge(:async => true))

        http_resp.stub(:body).and_return(response_body)
        http_resp.status = 200
        handler_handle.signal_success
      end

    end

  end

end
