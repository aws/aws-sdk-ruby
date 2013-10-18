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

describe AWS::Core::Http::ConnectionPool do

  def pool options = {}
    AWS::Core::Http::ConnectionPool.new(options)
  end

  let(:endpoint) { 'http://foo.com' }

  let(:http_session) { double('http-session').as_null_object }

  before(:each) do
    http_session.stub(:last_used).and_return(Time.now)
    Net::HTTP.stub(:new).and_return(http_session)
  end

  after(:each) { pool.empty! }

  context '.for' do

    it 'returns a connection pool' do
      pool.should be_a(AWS::Core::Http::ConnectionPool)
    end

    it 'returns a new pool for different options' do
      p1 = pool(:http_read_timeout => 10)
      p2 = pool(:http_read_timeout => 20)
      p1.should_not be(p2)
    end

    it 'returns the same pool when called with the same options' do
      p1 = pool(:http_read_timeout => 10)
      p2 = pool(:http_read_timeout => 10)
      p1.should be(p2)
    end

  end

  context '.pools' do

    it 'returns an array of connection pools' do
      pool = pool()
      pools = AWS::Core::Http::ConnectionPool.pools
      pools.should be_an(Array)
      pools.should include(pool)
    end

  end

  context '#options' do

    it 'returns the options used to construct the pool' do
      p1 = pool(:http_read_timeout => 10)
      p2 = pool(:http_read_timeout => 10)
      p1.options.should eq(p2.options)
      p1.options[:http_read_timeout].should eq(10)
    end

    it 'retuns a frozen hash' do
      pool.options.frozen?.should be(true)
    end

  end

  context '#proxy_uri' do

    it 'defaults to an empty generic uri' do
      proxy = pool.proxy_uri
      proxy.to_s.should eq('')
      proxy.host.should eq(nil)
      proxy.port.should eq(nil)
      proxy.user.should eq(nil)
      proxy.password.should eq(nil)
    end

    it 'can be set as a string in the constructor' do
      pool = pool(:proxy_uri => 'http://foo.com:123')
      pool.proxy_uri.should eq(URI.parse('http://foo.com:123'))
    end

    it 'can be set as a URI::HTTP in the constructor' do
      proxy = URI.parse('http://foo.com:123')
      pool = pool(:proxy_uri => proxy)
      pool.proxy_uri.should eq(proxy)
    end

  end

  context '#http_continue_timeout' do

    it 'defaults to nil' do
      pool.http_continue_timeout.should be(nil)
    end

    it 'can be set to a positive number' do
      pool = pool(:http_continue_timeout => 2)
      pool.http_continue_timeout.should eq(2)
    end

  end

  context '#http_idle_timeout' do

    it 'defaults to 15' do
      pool.http_idle_timeout.should eq(15)
    end

    it 'can be set to a positive number' do
      pool = pool(:http_idle_timeout => 30)
      pool.http_idle_timeout.should eq(30)
    end

  end

  context '#http_open_timeout' do

    it 'defaults to 15' do
      pool.http_open_timeout.should eq(15)
    end

    it 'can be set to a positive number' do
      pool = pool(:http_open_timeout => 30)
      pool.http_open_timeout.should eq(30)
    end

  end

  context '#http_read_timeout' do

    it 'defaults to 60' do
      pool.http_read_timeout.should eq(60)
    end

    it 'can be set to a positive number' do
      pool = pool(:http_read_timeout => 30)
      pool.http_read_timeout.should eq(30)
    end

  end

  context '#http_wire_trace' do

    it 'defaults to false' do
      pool.http_wire_trace.should be(false)
    end

    it 'can be set to true' do
      pool(:http_wire_trace => true).http_wire_trace.should be(true)
    end

    it 'is aliased as #http_wire_trace?' do
      pool = pool(:http_wire_trace => true)
      pool.http_wire_trace?.should eq(pool.http_wire_trace)
    end

  end

  context '#logger' do

    it 'defaults to nil when #http_wire_trace is false' do
      pool.logger.should be(nil)
    end

    it 'defaults to a $stdout logger when #http_wire_trace is true' do
      logger = double('logger')
      Logger.should_receive(:new).with($stdout).and_return(logger)
      pool = pool(:http_wire_trace => true)
      pool.logger.should be(logger)
    end

    it 'can be specified in the constructor' do
      logger = double('logger')
      pool(:logger => logger, :http_wire_trace => true).logger.should be(logger)
    end

    it 'is ignored when wire tracing is not enabled' do
      logger = double('logger')
      pool(:logger => logger).logger.should be(nil)
    end

  end

  context '#ssl_verify_peer' do

    it 'defaults to true' do
      pool.ssl_verify_peer.should be(true)
    end

    it 'can be disabled' do
      pool(:ssl_verify_peer => false).ssl_verify_peer.should be(false)
    end

    it 'is aliased as #ssl_verify_peer?' do
      pool = pool(:ssl_verify_peer => false)
      pool.ssl_verify_peer?.should eq(pool.ssl_verify_peer)
    end

  end

  context '#ssl_ca_file' do

    it 'defaults to nil' do
      pool.ssl_ca_file.should be(nil)
    end

    it 'can be set in the constructor' do
      pool(:ssl_ca_file => 'ssl-ca-file').ssl_ca_file.should eq('ssl-ca-file')
    end

  end

  context '#ssl_ca_path' do

    it 'defaults to nil' do
      pool.ssl_ca_path.should be(nil)
    end

    it 'can be set in the constructor' do
      pool(:ssl_ca_path => 'ssl-ca-path').ssl_ca_path.should eq('ssl-ca-path')
    end

  end

  context '#session_for' do

    it 'creates and yields a session' do
      yielded = false
      pool.session_for(endpoint) do |session|
        session.should be(http_session)
        yielded = true
      end
      yielded.should be(true)
    end

    it 'builds the session with the endpoint' do
      Net::HTTP.should_receive(:new).with('foo.com', 80)
      pool.session_for(endpoint) {|session|}
    end

    it 'builds the session with the proxy uri' do
      proxy = 'http://user:pass@proxy.com:123'
      Net::HTTP.should_receive(:new).
        with('foo.com', 80, 'proxy.com', 123, 'user', 'pass').
        and_return(http_session)
      pool(:proxy_uri => proxy).session_for(endpoint) {|session|}
    end

    it 'enables debug output when :http_wire_trace is true' do
      pool = pool(:http_wire_trace => true)
      http_session.should_receive(:set_debug_output).with(pool.logger)
      pool.session_for(endpoint) {|session|}
    end

    it 'sets the http open timeout' do
      pool = pool(:http_open_timeout => 123)
      http_session.should_receive(:open_timeout=).with(123)
      pool.session_for(endpoint) {|session|}
    end

    it 'uses ssl for HTTPS endpoints' do
      http_session.should_receive(:use_ssl=).with(true)
      pool.session_for('https://foo.com') {|session|}
    end

    it 'enables peer certificate verification for HTTPS endpoints' do
      http_session.should_receive(:verify_mode=).with(OpenSSL::SSL::VERIFY_PEER)
      pool.session_for('https://foo.com') {|session|}
    end

    it 'can disable peer certificate verification for HTTPS endpoints' do
      http_session.should_receive(:verify_mode=).with(OpenSSL::SSL::VERIFY_NONE)
      pool = pool(:ssl_verify_peer => false)
      pool.session_for('https://foo.com') {|session|}
    end

    it 'sets the ca file when configured' do
      pool = pool(:ssl_ca_file => 'ca-file')
      http_session.should_receive(:ca_file=).with('ca-file')
      pool.session_for('https://foo.com') {|session|}
    end

    it 'sets the ca path when configured' do
      http_session.should_receive(:ca_path=).with('ca-path')
      pool = pool(:ssl_ca_path => 'ca-path')
      pool.session_for('https://foo.com') {|session|}
    end

    it 'does not attempt SSL for HTTP endpoints' do
      http_session.should_receive(:use_ssl=).with(false)
      pool.session_for('http://foo.com') {|session|}
    end

    it 'starts the session' do
      http_session.should_receive(:start)
      pool.session_for(endpoint) {|session|}
    end

  end

  context '#request' do

    it 'sends the request, yielding the response' do
      request = double('http-request')
      response = double('http-response')
      http_session.should_receive(:request).and_return(response)
      yielded = false
      pool.request(endpoint, request) do |http_response|
        response.should be(http_response)
        yielded = true
      end
      yielded.should be(true)
    end

    it 'attemps to close the session if an error is raised' do
      http_session.should_receive(:finish)
      begin
        pool.request(endpoint, double('http-request')) do |http_response|
          raise 'oops'
        end
      rescue
        # nothing to do
      end
    end

    it 'removes the http session from the pool if an error is raised' do
      begin
        pool.request(endpoint, double('http-request')) do |http_response|
          raise 'oops'
        end
      rescue
        # nothing to do
      end
      pool.size.should be(0)
    end

  end

  context '#size' do

    it 'returns the pool size (number of sessions)' do
      pool = pool()
      pool.session_for('http://foo1.com') {|session|}
      pool.session_for('https://foo1.com') {|session|}
      pool.session_for('http://foo2.com') {|session|}
      pool.session_for('https://foo2.com') {|session|}
      pool.size.should eq(4)
    end

    it 'maintains multiple connections to a single endpoint' do
      pool = pool()
      pool.session_for(endpoint) do |session|
        pool.session_for(endpoint) do |session|
          pool.session_for(endpoint) do |session|
            # nesting calls to session for so the same session is
            # not re-used, still checked out of the pool
          end
        end
      end
      pool.size.should eq(3)
    end

  end

  context '#clean!' do

    it 'removes stale sessions from the pool' do
      http_session.stub(:last_used).and_return(Time.now - 3600)
      pool = pool()
      pool.session_for('http://foo1.com') {|session|}
      pool.session_for('https://foo1.com') {|session|}
      pool.session_for('http://foo2.com') {|session|}
      pool.session_for('https://foo2.com') {|session|}
      pool.clean!
      pool.size.should eq(0)
    end

  end

  context '#empty!' do

    it 'removes all sessions from the pool' do
      http_session.should_receive(:finish)
      pool.session_for('http://foo.com') {|session|}
      pool.empty!
      pool.size.should eq(0)
    end

  end

end
