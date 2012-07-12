# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
require 'dummy_server'

describe Net::HTTP::ConnectionPool do

  let(:pool) { described_class.new }

  context '#initialize' do

    context ':idle_timeout' do

      it 'defaults to to 60 seconds' do
        pool.idle_timeout.should == 60
      end

      it 'can be set as a number' do
        described_class.new(:idle_timeout => 123).idle_timeout. == 123
      end

    end

    context '#http_wire_trace' do

      it 'defaults to false' do
        pool.http_wire_trace.should eq(false)
      end

      it 'can be set to true' do
        pool = described_class.new(:http_wire_trace => true)
        pool.http_wire_trace.should eq(true)
      end

    end

    context '#logger' do

      it 'defaults to nil' do
        pool.logger.should eq(nil)
      end

      it 'defaults to a $stdout logger when :http_wire_trace set to true' do
        logger = double('standard-out-logger')
        Logger.should_receive(:new).with($stdout).and_return(logger)
        pool = described_class.new(:http_wire_trace => true)
        pool.logger.should == logger
      end

      it 'can be set to any logger, does not affect wire trace logging' do
        logger = double('logger')
        pool = described_class.new(:logger => logger)
        pool.http_wire_trace.should eq(false)
        pool.logger.should eq(logger)
      end

      it 'can be set with :http_wire_trace, overriding default stdout logger' do
        logger = double('logger')
        pool = described_class.new(:logger => logger, :http_wire_trace => true)
        pool.http_wire_trace.should eq(true)
        pool.logger.should eq(logger)
      end

    end

    context ':open_timeout' do

      let(:session) { double('net-http-session').as_null_object }

      before(:each) do
        Net::HTTP.stub(:new).and_return(session)
      end

      it 'defaults to 15 seconds' do
        pool.open_timeout.should == 15
      end

      it 'can be set as a number' do
        described_class.new(:open_timeout => 123).open_timeout == 123
      end

      it 'is set on http session before calling start' do
        session.should_receive(:open_timeout=).ordered.with(15)
        session.should_receive(:start).ordered
        pool.connection_for('host.com').request(Net::HTTP::Get.new('/'))
      end

    end


    context '#connection_for' do

      it 'returns a Connection object' do
        connection = pool.connection_for('host')
        connection.should be_a(described_class::Connection)
      end

      it 'returns a connection with the connection pool' do
        pool.connection_for('host').pool.should == pool
      end

      it 'returns a connection with the correct host' do
        pool.connection_for('host').host.should == 'host'
      end

      it 'returns a connection with the correct options' do

        c = pool.connection_for('host', 
          :port => 88, 
          :ssl => true,
          :read_timeout => 55,
          :proxy_uri => 'http://u:p@proxy.com:89')

        c.host.should == 'host'
        c.port.should == 88
        c.ssl?.should == true
        c.proxy_address.should == 'proxy.com'
        c.proxy_port.should == 89
        c.proxy_user.should == 'u'
        c.proxy_password.should == 'p'
        c.read_timeout.should == 55

      end

    end

    context '#request' do

      let(:http_session) { double('net-http-session').as_null_object }

      let(:connection) { pool.connection_for('host') }

      let(:request) { Net::HTTP::Get.new('/') }

      let(:alter_time) {
        the_future = Time.now + 60 * 60 * 24 * 365
        Time.stub(:now).and_return(the_future)
      }

      before(:each) do
        Net::HTTP.stub(:new).and_return(http_session)
      end

      it 'makes an http request' do
        http_session.should_receive(:request).with(request)
        pool.request(connection, request)
      end

      context 'cleaning up old sessions' do
        
        let(:long_ago) { Time.now - pool.idle_timeout - 10 }

        def get_session pool
          a_session = nil
          pool.send(:session_for,connection) do |session|
            a_session = session
          end
          a_session
        end
        
        it 'cleans up sessions that have sat idle longer than allowed' do

          pool.request(connection, request)

          alter_time

          session = pool.instance_variable_get("@pool").first
          session.should_receive(:finish)

          pool.request(connection, request)

        end

        it 'does not return cleaned up sessions' do

          s1 = double('session-1').as_null_object
          s2 = double('session-2').as_null_object
          Net::HTTP.should_receive(:new).ordered.and_return(s1)
          Net::HTTP.should_receive(:new).ordered.and_return(s2)

          pool.request(connection, request)
          alter_time
          pool.request(connection, request)

        end

      end

    end

  end

end
