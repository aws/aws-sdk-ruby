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
require 'mock_ec2_metadata_server'

module AWS
  module Core
    module CredentialProviders

      describe DefaultProvider do
        before do
          ENV.stub(:[]) { nil } # Stub out all environment variables
        end

        it 'raises an error when no credentials are present' do
          lambda {
            DefaultProvider.new().credentials
          }.should raise_error(Errors::MissingCredentialsError)
        end

        it 'provides a default chain of providers' do
          provider = DefaultProvider.new
          provider.providers[0].should be_a(StaticProvider)
          provider.providers[1].should be_a(ENVProvider)
          provider.providers[1].prefix.should == 'AWS'
          provider.providers[2].should be_a(ENVProvider)
          provider.providers[2].prefix.should == 'AMAZON'
          provider.providers[3].should be_a(EC2Provider)
        end

        it 'passes static credentials to a static credential provider' do
          creds = {:access_key_id => 'akid', :secret_access_key => 'secret'}
          provider = DefaultProvider.new(creds)
          provider.providers.first.credentials.should == creds
        end

        it 'enumerates providers asking for credentials' do

          creds = {:access_key_id => 'akid', :secret_access_key => 'secret'}

          p1 = double('provider-1')
          p2 = double('provider-2')

          p1.should_receive(:credentials).and_raise(Errors::MissingCredentialsError)
          p2.should_receive(:credentials).and_return(creds)

          provider = DefaultProvider.new
          provider.providers.clear
          provider.providers << p1
          provider.providers << p2
          provider.credentials.should == creds

        end

        it 'refreshes its provider chain' do
          p1 = double('provider-1')
          p1.should_receive(:refresh)

          provider = DefaultProvider.new
          provider.providers.clear
          provider.providers << p1
          provider.refresh
        end

        it 'should not cache credentials as EC2Provider may refresh the credentials when the security token is expired' do
          dp = DefaultProvider.new
          ec2_provider = dp.providers[0] = EC2Provider.new
          ec2_provider.stub(:credentials => {
                              :access_key_id => 'akid-1',
                              :secret_access_key => 'secret-1',
                              :session_token => 'token-1'
                            })
          dp.credentials.should == {
            :access_key_id => 'akid-1',
            :secret_access_key => 'secret-1',
            :session_token => 'token-1'
          }
          ec2_provider.stub(:credentials => {
                              :access_key_id => 'akid-2',
                              :secret_access_key => 'secret-2',
                              :session_token => 'token-2'
                            })
          dp.credentials.should == {
            :access_key_id => 'akid-2',
            :secret_access_key => 'secret-2',
            :session_token => 'token-2'
          }
        end

        it 'should not hide real error of fetching credentials' do
          dp = DefaultProvider.new
          ec2_provider = dp.providers[0] = EC2Provider.new
          ec2_provider.stub(:credentials) do
            raise "Something wrong"
          end
          lambda {
            dp.credentials
          }.should raise_error('Something wrong')
        end
      end

      describe StaticProvider do

        it 'raises an error when no credentials are present' do
          lambda {
            StaticProvider.new({}).credentials
          }.should raise_error(Errors::MissingCredentialsError)
        end

        it 'returns credentials when provided' do
          creds = {:access_key_id => 'akid', :secret_access_key => 'secret'}
          provider = StaticProvider.new(creds)
          provider.credentials.should == creds
        end

        it 'returns credentials with session tokens when provided' do
          creds = {
            :access_key_id => 'akid',
            :secret_access_key => 'secret',
            :session_token => 'session' }
          provider = StaticProvider.new(creds)
          provider.credentials.should == creds
        end

        it 'ommits nil values from credentials' do
          creds = {
            :access_key_id => 'akid',
            :secret_access_key => 'secret',
            :session_token => nil }
          provider = StaticProvider.new(creds)
          provider.credentials.should == {
            :access_key_id => 'akid',
            :secret_access_key => 'secret' }
        end

        it 'protects static credetials from downstream changes' do
          creds = {
            :access_key_id => 'akid',
            :secret_access_key => 'secret',
            :session_token => 'session' }
          provider = StaticProvider.new(creds)
          provider.credentials.delete(:access_key_id)
          provider.credentials.should == {
            :access_key_id => 'akid',
            :secret_access_key => 'secret',
            :session_token => 'session' }
        end

        it 'raises an error if you pass an unexpected option' do
          lambda {
            StaticProvider.new(:foo => 'bar')
          }.should raise_error(ArgumentError, /:foo/)
        end

      end

      describe ENVProvider do

        let(:env_variables) {{
          'AWS_ACCESS_KEY_ID' => 'akid',
          'AWS_SECRET_ACCESS_KEY' => 'secret',
        }}

        let(:mock_credential_file) { File.expand_path('../../../mock-credential-file.txt', __FILE__) }

        before(:each) do
          ENV.stub(:[]).and_return{|key| env_variables[key] }
        end

        it 'returns the prefix it was constructed with' do
          ENVProvider.new('AWS').prefix.should == 'AWS'
          ENVProvider.new('AMAZON').prefix.should == 'AMAZON'
        end

        it 'raises an error when no credentials are present' do
          lambda {
            ENVProvider.new('AMAZON').credentials
          }.should raise_error(Errors::MissingCredentialsError)
        end

        it 'returns credentials when provided' do
          ENVProvider.new('AWS').credentials.should == {
            :access_key_id => 'akid',
            :secret_access_key => 'secret',
          }
        end

        it 'returns credentials with session tokens when provided' do
          env_variables['AWS_SESSION_TOKEN'] = 'token'
          ENVProvider.new('AWS').credentials.should == {
            :access_key_id => 'akid',
            :secret_access_key => 'secret',
            :session_token => 'token',
          }
        end

        it 'ommits nil values from credentials' do
          env_variables['AWS_SESSION_TOKEN'] = nil
          ENVProvider.new('AWS').credentials.should == {
            :access_key_id => 'akid',
            :secret_access_key => 'secret',
          }
        end

        it 'reads credentials from {PREFIX}_CREDENTIAL_FILE environment variable' do
          env_variables['AMAZON_CREDENTIAL_FILE'] = mock_credential_file
          ENVProvider.new('AMAZON').credentials.should == {
            :access_key_id => 'cred_file_key',
            :secret_access_key => 'cred_file_secret',
          }
        end

        it 'preferences {PREFIX}_CREDENTIAL_FILE environment data when merging it in' do
          env_variables['AWS_CREDENTIAL_FILE'] = mock_credential_file
          env_variables['AWS_SESSION_TOKEN'] = 'token'
          ENVProvider.new('AWS').credentials.should == {
            :access_key_id => 'cred_file_key',
            :secret_access_key => 'cred_file_secret',
            :session_token => 'token',
          }
        end

        it 'does not access/cache credentials until asked' do
          provider = ENVProvider.new('AWS')
          env_variables['AWS_ACCESS_KEY_ID'] = 'new-akid'
          env_variables['AWS_SECRET_ACCESS_KEY'] = 'new-secret'
          env_variables['AWS_SESSION_TOKEN'] = 'new-token'
          provider.credentials.should == {
            :access_key_id => 'new-akid',
            :secret_access_key => 'new-secret',
            :session_token => 'new-token',
          }
        end

        it 'protects static credentials from downstream changes' do
          provider = ENVProvider.new('AWS')
          provider.credentials.delete(:access_key_id)
          provider.credentials.should == {
            :access_key_id => 'akid',
            :secret_access_key => 'secret' }
        end

      end

      describe CredentialFileProvider do

        let(:mock_credential_file) { File.expand_path('../../../mock-credential-file.txt', __FILE__) }

        it 'raises an error when no credentials are present' do
          lambda {
            CredentialFileProvider.new('/no/file/here').credentials
          }.should raise_error(Errors::MissingCredentialsError)
        end

        it 'reads credentials from a credential file' do
          provider = CredentialFileProvider.new(mock_credential_file)
          provider.credentials.should == {
            :access_key_id => 'cred_file_key',
            :secret_access_key => 'cred_file_secret' }
        end

        it 'should return an empty hash from a bad file' do
          provider = CredentialFileProvider.new('/no/file/here')
          provider.get_credentials.should == {}
        end

        it 'protects static credentials from downstream changes' do
          provider = CredentialFileProvider.new(mock_credential_file)
          provider.credentials.delete(:access_key_id)
          provider.credentials.should == {
            :access_key_id => 'cred_file_key',
            :secret_access_key => 'cred_file_secret' }
        end

      end

      describe EC2Provider do

        let(:provider) { EC2Provider.new }

        before(:all) do
          @mock_server = MockEC2MetadataServer.new
          @mock_server.start
          sleep 1
        end

        before(:each) do
          @mock_server.request_count = 0
        end

        after(:all) do
          @mock_server.stop
        end

        before(:each) do
          provider.ip_address = @mock_server.ip_address
          provider.port = @mock_server.port
        end

        context 'timeouts' do

          it 'has a short default timeouts' do
            provider.http_open_timeout.should == 1
            provider.http_read_timeout.should == 1
          end

          it 'accepts alternate timeout values' do
            provider = EC2Provider.new({
              :http_open_timeout => 2,
              :http_read_timeout => 1.5,
            })
            provider.http_open_timeout.should == 2
            provider.http_read_timeout.should == 1.5
          end

          it 'uses the timeouts when request credentials' do

            profiles = "profile-name\n"
            creds = <<-CREDS.strip
              {
                "Code": "Success",
                "LastUpdated": "2012-05-23T12:25:27-07:00",
                "Type": "AWS-HMAC",
                "AccessKeyId": "akid-3",
                "SecretAccessKey": "secret-3",
                "Token": "token-3",
                "Expiration": "2012-05-23T13:25:27-07:00"
              }
            CREDS

            resp1 = double('http-resp', :code => '200', :body => profiles)
            resp2 = double('http-resp', :code => '200', :body => creds)

            http = double('http')
            http.should_receive(:open_timeout=).with(2)
            http.should_receive(:read_timeout=).with(3)
            http.should_receive(:start)
            http.stub(:request).and_return(resp1, resp2)
            http.should_receive(:finish)

            Net::HTTP.stub(:new).and_return(http)

            EC2Provider.new({
              :http_open_timeout => 2,
              :http_read_timeout => 3,
            }).credentials.should == {
              :access_key_id  => "akid-3",
              :secret_access_key => "secret-3",
              :session_token => "token-3",
            }

          end

        end

        it 'fetches credentials from the metadata service' do
          provider.credentials.should == {
            :access_key_id => 'akid-1',
            :secret_access_key => 'secret-1',
            :session_token => 'token-1',
          }
        end

        it 'caches credentials' do
          exptected = {
            :access_key_id => 'akid-1',
            :secret_access_key => 'secret-1',
            :session_token => 'token-1',
          }
          provider.credentials.should == exptected
          provider.credentials.should == exptected
        end

        it 'makes a new request for creds when refresh is called' do
          provider.credentials.should == {
            :access_key_id => 'akid-1',
            :secret_access_key => 'secret-1',
            :session_token => 'token-1',
          }
          provider.refresh
          provider.credentials.should == {
            :access_key_id => 'akid-2',
            :secret_access_key => 'secret-2',
            :session_token => 'token-2',
          }
          provider.refresh
          provider.credentials.should == {
            :access_key_id => 'akid-3',
            :secret_access_key => 'secret-3',
            :session_token => 'token-3',
          }
        end

        it 'refresh the credentials when cached one is expired' do
          provider.credentials.should == {
            :access_key_id => 'akid-1',
            :secret_access_key => 'secret-1',
            :session_token => 'token-1',
          }
          provider.credentials_expiration = Time.now - 5 * 60
          provider.credentials.should == {
            :access_key_id => 'akid-2',
            :secret_access_key => 'secret-2',
            :session_token => 'token-2',
          }
        end
      end

      describe SessionProvider do

        let(:long_term_creds) {{
          :access_key_id => 'akid',
          :secret_access_key => 'secret',
        }}

        it 'can be constructed via SessionProvider.for' do
          provider = SessionProvider.for(long_term_creds)
          provider.should be_a(SessionProvider)
        end

        it 'can not be constructed via SessionProvider.new' do
          lambda {
            SessionProvider.new(long_term_creds)
          }.should raise_error(NoMethodError)
        end

        it 'accepts long term credentials' do
          lambda {
            SessionProvider.for(long_term_creds)
          }.should_not raise_error
        end

        it 'raises an error if you pass an unexpected option' do
          lambda {
            SessionProvider.for(long_term_creds.merge(:foo => 'bar'))
          }.should raise_error(ArgumentError, /:foo/)
        end

        it 'raises an argument error when given a session token' do
          lambda {
            SessionProvider.for(long_term_creds.merge(:session_token => 'token'))
          }.should raise_error(ArgumentError, /:session_token/)
        end

        it 'constructs a new sts session and returns those credentials' do

          session_creds = {
            :access_key_id => 'session-akid',
            :secret_access_key => 'session-secret',
            :session_token => 'session-token' }

          AWS::STS.stub_chain(:new, :new_session, :credentials).
            and_return(session_creds)

          provider = SessionProvider.for(long_term_creds)
          provider.credentials.should == session_creds

        end

        it 'uses the long term credentials to request an sts session' do

          session_creds = {
            :access_key_id => 'session-akid',
            :secret_access_key => 'session-secret',
            :session_token => 'session-token' }

          sts = double('sts')
          sts.stub_chain(:new_session, :credentials).and_return(session_creds)

          AWS::STS.should_receive(:new).
            with(long_term_creds.merge(:use_ssl => true)).
            and_return(sts)

          SessionProvider.for(long_term_creds).credentials

        end

        it 'requests a new sts session when it receives #refresh' do

          session_creds = (1..3).map do |n|
            {
              :access_key_id => "session-akid-#{n}",
              :secret_access_key => "session-secret-#{n}",
              :session_token => "session-token-#{n}",
            }
          end

          AWS::STS.stub_chain(:new, :new_session, :credentials).
            and_return(*session_creds)

          provider = SessionProvider.for(long_term_creds)

          provider.credentials.should == session_creds[0]
          provider.credentials.should == session_creds[0]
          provider.credentials.should == session_creds[0]

          provider.refresh

          provider.credentials.should == session_creds[1]
          provider.credentials.should == session_creds[1]
          provider.credentials.should == session_creds[1]

          provider.refresh

          provider.credentials.should == session_creds[2]
          provider.credentials.should == session_creds[2]
          provider.credentials.should == session_creds[2]

        end

      end

    end
  end
end
