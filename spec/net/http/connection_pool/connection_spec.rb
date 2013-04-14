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

class Net::HTTP::ConnectionPool

  describe Connection do

    let(:pool) { Net::HTTP::ConnectionPool.new }

    context '#pool' do

      it 'returns the connection pool' do
        Connection.new(pool, 'host').pool.should == pool
      end

    end

    context '#host' do

      it 'returns the host' do
        Connection.new(pool, 'host').host.should == 'host'
      end

    end

    context '#port' do

      it 'defaults to port 80' do
        Connection.new(pool, 'host').port.should == 80
      end

      it 'can be set in the options' do
        Connection.new(pool, 'host', :port => 443).port.should == 443
      end

    end

    context '#ssl' do

      it 'defaults to false when port is 80' do
        Connection.new(pool, 'host', :port => 80).ssl.should == false
      end

      it 'defaults to true when port is 443' do
        Connection.new(pool, 'host', :port => 443).ssl.should == true
      end

      it 'can be set with port' do
        c = Connection.new(pool, 'host', :port => 80, :ssl => true)
        c.ssl.should == true
      end

    end

    context '#ssl?' do

      it 'returns the same value as #ssl' do
        c = Connection.new(pool, 'host', :ssl => false)
        c.ssl.should == false
        c.ssl?.should == false
        c = Connection.new(pool, 'host', :ssl => true)
        c.ssl.should == true
        c.ssl?.should == true
      end

    end

    context '#proxy_address' do

      it 'defaults to nil' do
        Connection.new(pool, 'host').proxy_address.should == nil
      end

      it 'can be set by :proxy_uri' do
        c = Connection.new(pool, 'host', :proxy_uri => 'http://proxy.com')
        c.proxy_address.should == 'proxy.com'
      end

      it 'can be set by :proxy_address' do
        c = Connection.new(pool, 'host', :proxy_address => 'proxy.com')
        c.proxy_address.should == 'proxy.com'
      end

    end

    context '#proxy_port' do

      it 'defaults to nil' do
        Connection.new(pool, 'host').proxy_port.should == nil
      end

      it 'can be set by :proxy_uri' do
        c = Connection.new(pool, 'host', :proxy_uri => 'http://proxy.com:88')
        c.proxy_port.should == 88
      end

      it 'can be set by :proxy_port' do
        c = Connection.new(pool, 'host', :proxy_port => 88)
        c.proxy_port.should == 88
      end

    end

    context '#proxy_user' do

      it 'defaults to nil' do
        Connection.new(pool, 'host').proxy_user.should == nil
      end

      it 'can be set by :proxy_uri' do
        c = Connection.new(pool, 'host', :proxy_uri => 'http://u:p@proxy.com')
        c.proxy_user.should == 'u'
      end

      it 'can be set by :proxy_user' do
        c = Connection.new(pool, 'host', :proxy_user => 'u')
        c.proxy_user.should == 'u'
      end

    end

    context '#proxy_password' do

      it 'defaults to nil' do
        Connection.new(pool, 'host').proxy_password.should == nil
      end

      it 'can be set by :proxy_uri' do
        c = Connection.new(pool, 'host', :proxy_uri => 'http://u:p@proxy.com')
        c.proxy_password.should == 'p'
      end

      it 'can be set by :proxy_password' do
        c = Connection.new(pool, 'host', :proxy_password => 'p')
        c.proxy_password.should == 'p'
      end

    end

    context '#connection_key' do

      it 'returns a suitable connection key' do
        c = Connection.new(pool, 'host', :port => 81, :ssl => true,
          :proxy_uri => 'http://u:p@proxy.com:82')
        c.key.should == 'host:81:true:true:::proxy.com:82:u:p'
      end

    end

    context '#proxy?' do

      it 'returns false if #proxy_address is blank' do
        Connection.new(pool, 'host').proxy?.should == false
      end

      it 'returns true if #proxy_address is set' do
        c = Connection.new(pool, 'host', :proxy_address => 'proxy.com')
        c.proxy?.should == true
      end

    end

    context 'read timeout' do

      it 'defaults to 60 seconds' do
        Connection.new(pool, 'host').read_timeout.should == 60
      end

      it 'can be set to something else' do
        c = Connection.new(pool, 'host', :read_timeout => 10)
        c.read_timeout.should == 10
      end

      it 'can be changed' do
        c = Connection.new(pool, 'host', :read_timeout => 30)
        c.read_timeout = 50
        c.read_timeout.should == 50
      end

    end

    context '#key' do

      it 'creates a key that represents the connection' do
        c = Connection.new(pool, 'host.com')
        c.key.should == "host.com:80:false:true::::::"
      end

      it 'defaults the port to 80 when ssl is not provided' do
        c = Connection.new(pool, 'host.com')
        c.key.should == "host.com:80:false:true::::::"
      end

      it 'defaults the port to 443 when ssl is not true' do
        c = Connection.new(pool, 'host.com', :ssl => true)
        c.key.should == "host.com:443:true:true::::::"
      end

      it 'defaults the port to 80 when ssl is not false' do
        c = Connection.new(pool, 'host.com', :ssl => false)
        c.key.should == "host.com:80:false:true::::::"
      end

      it 'defaults ssl to true when port is 443' do
        c = Connection.new(pool, 'host.com', :port => 443)
        c.key.should == "host.com:443:true:true::::::"
      end

      it 'defaults ssl to false when port 80' do
        c = Connection.new(pool, 'host.com', :port => 80)
        c.key.should == "host.com:80:false:true::::::"
      end

      it 'accepts both port as 80 and ssl true' do
        c = Connection.new(pool, 'host.com', :port => 80, :ssl => true)
        c.key.should == "host.com:80:true:true::::::"
      end

      it 'accepts both port as 80 and ssl true' do
        c = Connection.new(pool, 'host.com', :port => 443, :ssl => false)
        c.key.should == "host.com:443:false:true::::::"
      end

      it 'encodes ssl options' do
        c = Connection.new(pool, 'host.com',
          :ssl_verify_peer => false,
          :ssl_ca_file => 'file',
          :ssl_ca_path => 'path')
        c.key.should == "host.com:80:false:false:file:path::::"
      end

      it 'accepts a string proxy uri' do
        uri = 'http://u:p@proxy.com:88'
        c = Connection.new(pool, 'host.com', :proxy_uri => uri)
        c.key.should == "host.com:80:false:true:::proxy.com:88:u:p"
      end

      it 'accepts a URI::HTTP object for proxy uri' do
        uri = URI.parse('http://u:p@proxy.com:88')
        c = Connection.new(pool, 'host.com', :proxy_uri => uri)
        c.key.should == "host.com:80:false:true:::proxy.com:88:u:p"
      end

    end

    context '#request' do

      let(:request) { Net::HTTP::Get.new('/') }

      let(:session) { double('net-http-session').as_null_object }

      before(:each) do
        Net::HTTP.stub(:new).and_return(session)
      end

      it 'sets the read timeout before each request' do

        session.should_receive(:read_timeout=).with(44).ordered
        session.should_receive(:request).with(request).ordered
        session.should_receive(:read_timeout=).with(44).ordered
        session.should_receive(:request).with(request).ordered

        c = Connection.new(pool, 'host', :read_timeout => 44)
        c.request(request)
        c.request(request)

      end

      it 'sets the read timeout before each request' do

        session.should_receive(:read_timeout=).with(44).ordered
        session.should_receive(:request).with(request).ordered
        session.should_receive(:read_timeout=).with(55).ordered
        session.should_receive(:request).with(request).ordered

        c = Connection.new(pool, 'host', :read_timeout => 44)
        c.request(request)
        c.read_timeout = 55
        c.request(request)

      end


    end

  end
end
