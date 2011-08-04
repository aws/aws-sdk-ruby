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
require 'aws/configuration'

module AWS

  describe Configuration do

    context '::add_parameter_type' do

      class DummyParamClass
        attr_reader :opts
        def initialize(opts = {})
          @opts = opts
        end
      end

      let(:config_class) do
        Class.new(Configuration) do
          add_parameter_type DummyParamClass, :dummy
        end
      end

      let(:dummy_value) { double("my dummy implementation") }

      let(:config) { config_class.new }

      let(:config_with_dummy) { config.with(:dummy => dummy_value) }

      it 'should add an accessor for the parameter' do
        config_with_dummy.dummy.should == dummy_value
      end

      it 'should inherit the value from a previous config' do
        config_with_dummy.with(:access_key_id => "foo").
          dummy.should == dummy_value
      end

      it 'should construct an instance of the class' do
        config.dummy.should be_a(DummyParamClass)
      end

      it 'should pass the config to the constructor' do
        DummyParamClass.should_receive(:new).with(:config => config)
        config.dummy
      end

      it 'should memoize the parameter value' do
        config.dummy.should == config.dummy
      end

      context 'with dependencies' do

        let(:config_class) do
          Class.new(Configuration) do
            add_parameter_type DummyParamClass, :dummy1
            add_parameter_type(DummyParamClass,
                               :dummy2,
                               :needs => [:dummy1])
            add_parameter_type(DummyParamClass,
                               :dummy3,
                               :needs => [:access_key_id])
            add_parameter_type(DummyParamClass,
                               :dummy4,
                               :needs => [:dummy3])
          end
        end

        let(:config) { config_class.new }

        context 'require plain config value' do

          it 'should rebuild when the required parameter changes' do
            c1 = config.with(:access_key_id => 'foo')
            d3 = c1.dummy3
            c1.with(:access_key_id => 'bar').dummy3.should_not be(d3)
          end

          it 'should pass the new parameter value when it changes' do
            c1 = config.with(:access_key_id => 'foo')
            c1.dummy3
            c1.with(:access_key_id => 'bar').dummy3.
              opts[:access_key_id].should == "bar"
          end

          it 'should rebuild properly with downstream dependencies' do
            c1 = config.with(:access_key_id => 'foo')
            c1.dummy4
            c1.with(:access_key_id => 'bar').dummy4.
              opts[:dummy3].opts[:access_key_id].should == 'bar'
          end

          it 'should not rebuild if the config value is overridden' do
            d3 = double("d3")
            c1 = config.with(:access_key_id => 'foo',
                             :dummy3 => d3)
            c1.dummy3.should be(d3)
            c1.with(:access_key_id => 'bar').dummy3.should be(d3)
          end

          it 'does not call on dependent keys for overridden values' do
            d3 = double("d3")
            c1 = config.with(:access_key_id => 'foo',
                             :dummy3 => d3)
            c1.should_not_receive(:access_key_id)
            c1.dummy3
          end

        end

        context 'require other parameter class' do

          it 'should fill in the required parameter' do
            dummy1 = double("dummy 1")
            DummyParamClass.should_receive(:new).
              and_return(dummy1)
            DummyParamClass.should_receive(:new).with(:dummy1 => dummy1,
                                                      :config => config)
            config.dummy2
          end

          it 'should memoized the required parameter' do
            got_dummy1 = nil
            DummyParamClass.stub(:new) do |*opts|
              return unless opts
              opts = opts.first
              got_dummy1 = opts[:dummy1] if opts
            end
            config.dummy2
            config.dummy1.should == got_dummy1
          end

        end

      end

    end

    context '#with' do

      let(:config) { Configuration.new }

      let(:explicit_signer) { double("my signer implementation") }

      let(:explicit_client) { double("my client implementation") }

      let(:config_with_signer) { config.with(:signer => explicit_signer) }

      let(:config_with_credentials) do
        config.with(:access_key_id => 'foo',
                    :secret_access_key => 'bar')
      end

      let(:config_with_session_credentials) do
        config.with(:access_key_id => 'foo',
                    :secret_access_key => 'bar',
                    :session_token => 'baz')
      end

      class DummyClient; end

      context '#signer' do

        it 'should have an accessor for the access key id' do
          config_with_credentials.access_key_id.should == 'foo'
        end

        it 'should have an accessor for the secret access key' do
          config_with_credentials.secret_access_key.should == 'bar'
        end

        it 'should work with strings as well as symbols' do
          config.with("access_key_id" => "foo").access_key_id.should == "foo"
        end

        it 'should not change the original configuration' do
          config_with_credentials.with(:access_key_id => 'foo2', :secret_access_key => 'bar2')
          config_with_credentials.access_key_id.should == 'foo'
        end

        it 'should inherit credentials from the original configuration' do
          config_with_credentials.with(:access_key_id => 'foo2').
            secret_access_key.should == "bar"
        end

        it 'should construct a default signer given credentials' do
          config_with_credentials.signer.should be_a(DefaultSigner)
        end

        it 'should memoize the signer' do
          config_with_credentials.signer.should == config_with_credentials.signer
        end

        it 'should pass credentials to the default signer' do
          signer = config_with_credentials.signer
          signer.access_key_id.should == "foo"
          signer.secret_access_key.should == "bar"
        end

        it 'should raise an error when asking for a signer given no credentials' do
          lambda { config.signer }.should raise_error("Missing credentials")
        end

        it 'should return the explicitly configured signer' do
          config_with_signer.signer.should == explicit_signer
        end

        context 'with session credentials' do

          it 'should pass the session token to the signer' do
            config_with_session_credentials.signer.
              session_token.should == "baz"
          end

        end

      end

      context '#http_handler' do

        let(:explicit_handler) { double("my http handler") }

        let(:config_with_handler) { config.with(:http_handler => explicit_handler) }

        it 'should have an accessor for the http handler' do
          config_with_handler.http_handler.should == explicit_handler
        end

        it 'should not change the original configuration' do
          config_with_handler.with(:http_handler => double("another handler"))
          config_with_handler.http_handler.should == explicit_handler
        end

        it 'should inherit the handler from a previous configuration' do
          config_with_handler.with(:access_key_id => "bar").
            http_handler.should == explicit_handler
        end

        it 'should construct a default handler' do
          #config.http_handler.should be_a(Http::BuiltinHandler)
          config.http_handler.should be_a(Http::HTTPartyHandler)
        end

        it 'should memoize the handler' do
          config.http_handler.should == config.http_handler
        end

      end

      context '#logger' do
        
        it 'should default to nil' do
          config.logger.should be_nil
        end

        it 'should return the logger passed to init' do
          Configuration.new(:logger => 'logger').logger.should == 'logger'
        end

        it 'passes through with' do
          config.with(:logger => 'logger').logger.should == 'logger'
        end

      end

      context '#use_ssl?' do
        
        it 'defaults to true' do
          config.use_ssl?.should == true
        end

        it 'can be set to false' do
          config.with(:use_ssl => false).use_ssl?.should == false
        end

      end

      context '#max_retries' do
        
        it 'defualts to 3' do
          config.max_retries.should == 3
        end

        it 'can be changed' do
          config.with(:max_retries => 4).max_retries.should == 4
        end

      end

      context '#user_agent_prefix' do
        
        it 'defaults to nil' do
          config.user_agent_prefix.should == nil
        end

        it 'can be changed' do
          config.with(:user_agent_prefix => 'myapp').
            user_agent_prefix.should == 'myapp'
        end

      end

      context '#proxy_uri' do

        it 'defaults to nil' do
          config.proxy_uri.should == nil
        end

        it 'accepts a string' do
          config.with(:proxy_uri => 'http://myproxy.com').
            proxy_uri.to_s.should == 'http://myproxy.com'
        end

        it 'parses the strings' do 
          c = config.with(:proxy_uri => 'https://user:pass@myproxy.com:411/abc?xyz')
          c.proxy_uri.scheme.should == 'https'
          c.proxy_uri.host.should == 'myproxy.com'
          c.proxy_uri.path.should == '/abc'
          c.proxy_uri.query.should == 'xyz'
          c.proxy_uri.user.should == 'user'
          c.proxy_uri.password.should == 'pass'
          c.proxy_uri.port.should == 411
        end

        it 'returns strings as uri objects' do
          config.with(:proxy_uri => 'http://myproxy.com').
            proxy_uri.should == URI.parse('http://myproxy.com')
        end

        it 'accepts a uri object' do
          config.with(:proxy_uri => URI.parse('http://myproxy.com')).
            proxy_uri.to_s.should == 'http://myproxy.com'
        end

        it 'passes :proxy_api from the config to the request' do

          cfg = config.with(
            :access_key_id => 'abc',
            :secret_access_key => 'xyz',
            :proxy_uri => 'https://myproxy.com/abc?xyz')

          proxy_uri = nil
          s3_client = S3::Client.new(:config => cfg).with_http_handler do |req,resp|
            proxy_uri = req.proxy_uri
          end

          AWS::S3.new(:s3_client => s3_client).buckets['foo'].exists?

          proxy_uri.should == URI.parse('https://myproxy.com/abc?xyz')

        end
        
      end

      context '#ec2_endpoint' do

        it 'defaults to s3.amazonaws.com' do
          config.ec2_endpoint.should == 'ec2.amazonaws.com'
        end

        it 'can be changed' do
          config.with(:ec2_endpoint => 'abc').ec2_endpoint.should == 'abc'
        end

      end

      context '#s3_endpoint' do

        it 'defaults to s3.amazonaws.com' do
          config.s3_endpoint.should == 's3.amazonaws.com'
        end

        it 'can be changed' do
          config.with(:s3_endpoint => 'abc').s3_endpoint.should == 'abc'
        end

      end

      context '#sns_endpoint' do

        it 'defaults to sns.us-east-1.amazonaws.com' do
          config.sns_endpoint.should == 'sns.us-east-1.amazonaws.com'
        end

        it 'can be changed' do
          config.with(:sns_endpoint => 'abc').sns_endpoint.should == 'abc'
        end

      end

      context '#simple_db_endpoint' do

        it 'defaults to simple_db.amazonaws.com' do
          config.simple_db_endpoint.should == 'sdb.amazonaws.com'
        end

        it 'can be changed' do
          config.with(:simple_db_endpoint => 'abc').
            simple_db_endpoint.should == 'abc'
        end

      end

      context '#simple_db_consistent_reads?' do

        it 'defaults to false' do
          config.simple_db_consistent_reads?.should == false
        end

        it 'can be changed to true' do
          new_config = config.with(:simple_db_consistent_reads => true)
          new_config.simple_db_consistent_reads?.should == true
        end

      end

      context '#stub_requests?' do
        
        it 'defaults to false' do
          config.stub_requests?.should == false
        end

        it 'can be set to true' do
          config.with(:stub_requests => true).stub_requests?.should == true
        end

      end

      context '#ssl_verify_peer?' do

        it 'defaults to true' do
          config.ssl_verify_peer?.should == true
        end

        it 'can be set to false' do
          config.with(:ssl_verify_peer => false).ssl_verify_peer?.should == false
        end

      end

      context '#ssl_ca_file' do

        it 'defaults to a readable file' do
          File.readable?(config.ssl_ca_file).should be_true
          File.read(config.ssl_ca_file).
            should include("Bundle of CA Root Certificates")
        end

        it 'can be set to another path' do
          config.with(:ssl_ca_file => "foobar.txt").
            ssl_ca_file.should == "foobar.txt"
        end

      end

    end

  end

end
