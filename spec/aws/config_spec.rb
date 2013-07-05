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

describe AWS do
  context 'configuration' do

    def config options = {}
      AWS.config.with(options)
    end

    context 'options' do

      AWS::SERVICES.values.map(&:method_name).each do |option|

        context(option.inspect) do

          it 'defaults to an empty hash' do
            config.send(option).should eq({})
          end

          it 'can be changed' do
            cfg = config.with(option => { 'abc' => 'xyz' })
            cfg.send(option).should eq({'abc' => 'xyz'})
          end

        end

      end

      context ':access_key_id' do

        it 'defaults to nil' do
          config.access_key_id.should == nil
        end

        it 'can updated' do
          config(:access_key_id => 'abc').access_key_id.should == 'abc'
        end

      end

      context ':secret_access_key' do

        it 'defaults to nil' do
          config.secret_access_key.should == nil
        end

        it 'can updated' do
          config(:secret_access_key => 'abc').secret_access_key.should == 'abc'
        end

      end

      context ':session_token' do

        it 'defaults to nil' do
          config.session_token.should == nil
        end

        it 'can updated' do
          config(:session_token => 'abc').session_token.should == 'abc'
        end

      end

      context ':credential_provider' do

        it 'defaults to an AWS::Core::CredentialProviders::DefaultProvider' do
          config.credential_provider.should
            be_a(AWS::Core::CredentialProviders::DefaultProvider)
        end

        it 'is constructed with the static credentials from config' do

          provider = config({
            :access_key_id => 'a',
            :secret_access_key => 'b',
            :session_token => 'c',
          }).credential_provider

          provider.access_key_id.should == 'a'
          provider.secret_access_key.should == 'b'
          provider.session_token.should == 'c'

        end

        it 'returns the same credential provider when secrets do not change' do
          provider1 = config.credential_provider
          provider2 = config.credential_provider
        end

        it 'constructs a new provider when the akid changes' do
          provider1 = config.credential_provider
          provider2 = config(:access_key_id => 'new').credential_provider
          provider1.should_not eq(provider2)
        end

        it 'constructs a new provider when the secret access key changes' do
          provider1 = config.credential_provider
          provider2 = config(:secret_access_key => 'new').credential_provider
          provider1.should_not eq(provider2)
        end

        it 'constructs a new provider when the session token changes' do
          provider1 = config.credential_provider
          provider1 = config.credential_provider
          provider2 = config(:session_token => 'new').credential_provider
          provider1.should_not eq(provider2)
        end

      end

      context ':http_open_timeout' do

        it 'defaults to 15' do
          config.http_open_timeout.should == 15
        end

        it 'can be changed' do
          timeout = config(:http_open_timeout => 20).http_open_timeout
          timeout.should eq(20)
        end

      end

      context ':http_read_timeout' do

        it 'defaults to 15' do
          config.http_read_timeout.should == 60
        end

        it 'can be changed' do
          timeout = config(:http_read_timeout => 20).http_read_timeout
          timeout.should eq(20)
        end

      end

      context ':http_idle_timeout' do

        it 'defaults to 5' do
          config.http_idle_timeout.should == 5
        end

        it 'can be changed' do
          timeout = config(:http_idle_timeout => 20).http_idle_timeout
          timeout.should eq(20)
        end

      end

      context ':http_handler' do

        it 'defaults to a NetHttpHandler' do
          handler = config.http_handler
          handler.should be_a(AWS::Core::Http::NetHttpHandler)
          handler.pool.http_open_timeout.should eq(config.http_open_timeout)
          handler.pool.http_idle_timeout.should eq(config.http_idle_timeout)
        end

        it 'uses the configured timeouts, logger and wire logging' do

          logger = double('logger')

          cfg = config(
            :http_open_timeout => 12,
            :http_idle_timeout => 34,
            :http_wire_trace => true,
            :logger => logger)

          handler = cfg.http_handler
          handler.pool.http_open_timeout.should eq(12)
          handler.pool.http_idle_timeout.should eq(34)
          handler.pool.logger.should eq(logger)

        end

        it 'returns the same handler if open and idle timeout dont change' do
          handler1 = config.http_handler
          handler2 = config.http_handler
          handler1.should eq(handler2)
        end

        it 'constructs a new http handler when open timeout changes' do
          handler1 = config.http_handler
          handler2 = config(:http_open_timeout => 12).http_handler
          handler1.should_not eq(handler2)
        end

        it 'constructs a new http handler when idle timeout changes' do
          handler1 = config.http_handler
          handler2 = config(:http_idle_timeout => 12).http_handler
          handler1.should_not eq(handler2)
        end

        it 'constructs a new http handler when logger changes' do
          handler1 = config.http_handler
          handler2 = config(:logger => 'new-logger').http_handler
          handler1.should_not eq(handler2)
        end

        it 'constructs a new http handler when http wire trace changes' do
          handler1 = config.http_handler
          handler2 = config(:http_wire_trace => true).http_handler
          handler1.should_not eq(handler2)
        end

      end

      context ':http_wire_trace' do

        it 'defaults to false' do
          config.http_wire_trace.should eq(false)
        end

        it 'can be set to true' do
          config(:http_wire_trace => true).http_wire_trace.should eq(true)
        end

        it 'is aliased with a question mark' do
          config.method(:http_wire_trace).should
            eq(config.method(:http_wire_trace?))
        end

      end

      context ':logger' do

        it 'defaults to nil by default' do
          config.logger.should be(nil)
        end

        it 'accepts a new logger' do
          logger = double('logger')
          config(:logger => logger).logger.should eq(logger)
        end

      end

      context ':log_level' do

        it 'defaults to :info by default' do
          config.log_level.should eq(:info)
        end

        it 'can be changed' do
          config(:log_level => :debug).log_level.should eq(:debug)
        end

      end

      context ':log_formatter' do

        it 'defaults to the default log formatter' do
          config.log_formatter.should eq(AWS::Core::LogFormatter.default)
        end

        it 'can be changed' do
          formatter = double('log-formatter')
          config(:log_formatter => formatter).log_formatter.should eq(formatter)
        end

      end

      context ':max_retries' do

        it 'defaults to 3' do
          config.max_retries.should eq(3)
        end

        it 'can be changed' do
          config(:max_retries => 4).max_retries.should eq(4)
        end

      end

      context ':proxy_uri' do

        it 'defaults to nil' do
          config.proxy_uri.should eq(nil)
        end

        it 'can be changed' do
          proxy = URI.parse('http://foo.bar:1234')
          config(:proxy_uri => proxy).proxy_uri.should eq(proxy)
        end

        it 'parses strings as uris can be changed' do
          proxy = 'http://foo.bar:1234'
          config(:proxy_uri => proxy).proxy_uri.should
            eq(URI.parse(proxy))
        end

      end

      context ':ssl_verify_peer' do

        it 'defaults to true' do
          config.ssl_verify_peer.should eq(true)
        end

        it 'can be set to false' do
          config(:ssl_verify_peer => false).ssl_verify_peer.should eq(false)
        end

        it 'is aliases with a question mark' do
          config.method(:ssl_verify_peer).should
            eq(config.method(:ssl_verify_peer?))
        end

      end

      context ':ssl_ca_file' do

        it 'defaults to the bundled ca cert bundle' do
          config.ssl_ca_file.should
            eq(File.expand_path(File.dirname(__FILE__) + "/../../ca-bundle.crt"))
        end

        it 'can be changed' do
          config(:ssl_ca_file => '/a/b/c').ssl_ca_file.should eq('/a/b/c')
        end

      end

      context ':ssl_ca_path' do

        it 'defaults to nil' do
          config.ssl_ca_path.should eq(nil)
        end

        it 'can be changed' do
          config(:ssl_ca_path => '/a/b/c').ssl_ca_path.should eq('/a/b/c')
        end

      end

      context ':stub_requests' do

        it 'defaults to false' do
          config.stub_requests.should eq(false)
        end

        it 'can be changed to true' do
          c = config(:stub_requests => true)
          c.stub_requests.should eq(true)
          c.stub_requests?.should eq(true)
        end

      end

      context ':use_ssl' do

        it 'defaults to true' do
          config.use_ssl.should eq(true)
        end

        it 'can be changed to false' do
          c = config(:use_ssl => false)
          c.use_ssl.should eq(false)
          c.use_ssl?.should eq(false)
        end

      end

      context ':user_agent_prefix' do

        it 'defaults to nil' do
          config.user_agent_prefix.should eq(nil)
        end

        it 'can be changed' do
          config(:user_agent_prefix => 'p').user_agent_prefix.should eq('p')
        end

      end

    end
  end
end
