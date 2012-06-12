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

module AWS
  class DynamoDB

    describe Request do

      let(:request) { described_class.new }

      let(:credential_provider) {
        Core::CredentialProviders::StaticProvider.new({
          :access_key_id => 'KEY',
          :secret_access_key => 'SECRET',
          :session_token => 'TOKEN',
        })
      }

      context '#uri' do

        it 'should return /' do
          request.add_param("Foo", "bar")
          request.uri.should == "/"
        end

      end

      context '#add_authorization!' do

        before(:each) do
          request.stub(:string_to_sign).and_return("S2S")
          request.stub(:headers_to_sign).and_return(["h1", "h2"])
        end

        it 'should add the date and x-amz-date headers before computing the string to sign' do
          now = Time.now
          Time.stub(:now).and_return(now)
          request.should_receive(:string_to_sign) do
            request.headers["date"].should == now.rfc822
            request.headers["x-amz-date"].should == now.rfc822
            "S2S"
          end
          request.add_authorization!(credential_provider)
        end

        it 'should set the host header before computing the string to sign' do
          request.stub(:host).and_return("example.host")
          request.should_receive(:string_to_sign) do
            request.headers["host"].should == "example.host"
            "S2S"
          end
          request.add_authorization!(credential_provider)
        end

        context 'x-amzn-authorization header' do

          let(:authz) do
            request.add_authorization!(credential_provider)
            request.headers["x-amzn-authorization"]
          end

          it 'should start with "AWS3 "' do
            authz.should =~ /^AWS3 /
          end

        end

        context 'x-amz-security-token' do

          it 'should be the session token from the credentials' do
            request.should_receive(:string_to_sign) do
              request.headers["x-amz-security-token"].should == "TOKEN"
              "S2S"
            end
            request.add_authorization!(credential_provider)
          end

        end

      end

      context '#headers_to_sign' do

        # to simplify tests, remove the default headers
        before(:each) { request.headers.clear }

        it 'should include any headers starting with x-amz, and capitalize them like Net::HTTP does' do
          request.headers["x-amz-foo"] = "value"
          request.send(:headers_to_sign).should == ["x-amz-foo"]
        end

        it 'should include content-encoding and host' do
          request.headers["content-encoding"] = "value"
          request.headers["host"] = "value"
          request.send(:headers_to_sign).sort.should == ["content-encoding", "host"]
        end

        it 'should not include other headers' do
          request.headers["foo"] = "value"
          request.send(:headers_to_sign).should == []
        end

      end

      context '#canonical_headers' do

        before(:each) do
          # to simplify tests, remove the default headers
          request.headers.clear
          request.stub(:headers_to_sign) { request.headers.keys }
        end

        it 'should format each header as header-name:value' do
          request.headers["header-name"] = "VALUE"
          request.send(:canonical_headers).should == "header-name:VALUE\n"
        end

        it 'should concatenate the headers in alphabetical order joined by newlines' do
          request.headers["alien"] = "v1"
          request.headers["zoo"] = "v2"
          request.send(:canonical_headers).should == "alien:v1\nzoo:v2\n"
        end

        it 'should strip whitespace around the name and value' do
          request.headers[" header "] = " value "
          request.send(:canonical_headers).should == "header:value\n"
        end

        it 'should use the headers returned by headers_to_sign' do
          request.stub(:headers_to_sign).and_return(["Foo", "Bar"])
          request.headers["foo"] = "v1"
          request.headers["bar"] = "v2"
          request.headers["baz"] = "v3"
          request.send(:canonical_headers).should == "bar:v2\nfoo:v1\n"
        end

      end

    end

  end
end
