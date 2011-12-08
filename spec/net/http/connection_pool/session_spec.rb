# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

class Net::HTTP::ConnectionPool

  describe Session do

    let(:pool) { Net::HTTP::ConnectionPool.new }

    let(:connection) { Net::HTTP::ConnectionPool::Connection.new(pool, 'host') }

    let(:http_session) { double('net-http-session').as_null_object }

    let(:open_timeout) { 10 }

    let(:get_session) { Session.for(connection, open_timeout) }

    before(:each) do
      Net::HTTP.stub(:new).and_return(http_session)
    end

    context '#http_session' do

      it 'returns the raw http sessoin' do
        get_session.http_session.should == http_session
      end

    end

    context '#key' do

      it 'returns the connection key' do
        get_session.key.should == connection.key
      end

    end

    context 'timestamps' do
      
      let(:now) { Time.at(123456789) }

      before(:each) do
        Time.stub(:now).and_return(now)
      end

      it 'defaults #created_at to now' do
        get_session.created_at.should == now
      end

      it 'defaults #last_used_at to nil' do
        get_session.last_used_at.should == nil
      end

      it 'updates #last_used_at to now after calling #request' do
        session = get_session
        session.last_used_at.should == nil
        session.request('get-request')
        session.last_used_at.should == now
      end

    end

    context '#request' do

      let(:request) { Net::HTTP::Get.new('/') }

      it 'passes arguments to the session#request' do
        http_session.should_receive(:request).with(request)
        get_session.request(request)
      end

      it 'passes multiple arguments and block arguments' do
        block = lambda{}
        http_session.should_receive(:request).with('a', 'b', 'c', &block)
        get_session.request('a', 'b', 'c', &block)
      end

    end

    context '#cleanup' do
    end

    context '::for' do

      it 'returns a Session' do
        get_session.should be_a(Session)
      end

      it 'calls start on the session' do
        http_session.should_receive(:start)
        get_session
      end

      it 'sets the http open timeout before starting the session' do
        http_session.should_receive(:open_timeout=).ordered.with(open_timeout)
        http_session.should_receive(:start).ordered
        get_session
      end

      it 'constructs an http session from the connection' do

        Net::HTTP.should_receive(:new).
          with(connection.host, connection.port).
          and_return(http_session)

        get_session

      end

      it 'does not enable ssl unless requested' do
        http_session.should_receive(:use_ssl=).with(false)
        get_session
      end

      it 'passes proxy options to the session constructor' do

        Net::HTTP.should_receive(:new).
          with('host.com', 123, 'proxy.com', 8088, 'u', 'p').
          and_return(http_session)

        connection = pool.connection_for('host.com', :port => 123,
          :proxy_uri => 'http://u:p@proxy.com:8088/')

        Session.for(connection, open_timeout) 

      end

      it 'enables peer verification by defualt' do

        http_session.should_receive(:use_ssl=).with(true)
        http_session.should_receive(:verify_mode=).
          with(OpenSSL::SSL::VERIFY_PEER)
        http_session.should_not_receive(:ca_file=)
        http_session.should_not_receive(:ca_path=)

        connection = pool.connection_for('host.com', :ssl => true)

        Session.for(connection, open_timeout) 

      end

      it 'accepts a certificate authority file' do

        http_session.should_receive(:use_ssl=).with(true)
        http_session.should_receive(:verify_mode=).
          with(OpenSSL::SSL::VERIFY_PEER)
        http_session.should_receive(:ca_file=).with('ca-file')
        http_session.should_not_receive(:ca_path=)

        connection = pool.connection_for('host.com', :port => 443,
          :ssl_ca_file => 'ca-file')

        Session.for(connection, open_timeout) 

      end

      it 'accepts a certificate authority path' do

        http_session.should_receive(:use_ssl=).with(true)
        http_session.should_receive(:verify_mode=).
          with(OpenSSL::SSL::VERIFY_PEER)
        http_session.should_not_receive(:ca_file=)
        http_session.should_receive(:ca_path=).with('ca-path')

        connection = pool.connection_for('host.com', :ssl => true,
          :ssl_ca_path => 'ca-path')

        Session.for(connection, open_timeout) 

      end

      it 'allows ssl without peer verification' do

        http_session.should_receive(:use_ssl=).with(true)
        http_session.should_receive(:verify_mode=).
          with(OpenSSL::SSL::VERIFY_NONE)
        http_session.should_not_receive(:ca_file=)
        http_session.should_not_receive(:ca_path=)

        connection = pool.connection_for('host.com', 
          :ssl => true, 
          :ssl_verify_peer => false)

        Session.for(connection, open_timeout) 

      end

    end

  end

end
