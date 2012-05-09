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

      let(:signer) { double("signer",
                            :sign => "SIGNATURE",
                            :access_key_id => "KEY",
                            :session_token => "TOKEN") }

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

        it 'should set the access key ID on the request object' do
          request.add_authorization!(signer)
          request.access_key_id.should == "KEY"
        end

        it 'should add the date and x-amz-date headers before computing the string to sign' do
          now = Time.now
          Time.stub(:now).and_return(now)
          request.should_receive(:string_to_sign) do
            request.headers["date"].should == now.rfc822
            request.headers["x-amz-date"].should == now.rfc822
            "S2S"
          end
          request.add_authorization!(signer)
        end

        it 'should set the host header before computing the string to sign' do
          request.stub(:host).and_return("example.host")
          request.should_receive(:string_to_sign) do
            request.headers["host"].should == "example.host"
            "S2S"
          end
          request.add_authorization!(signer)
        end

        it 'should pass a SHA256 hash of the string to sign to the signer' do
          request.stub(:string_to_sign).and_return("S2S")
          signer.should_receive(:sign).
            # this is the SHA256 of "S2S"
            with("\xFE\xEC\xE7\xCB\x97\xD1\xEB\x10\xD3\xFE\xA6\xC8\xB7V\x8A\x1C\x99\nW2\x98\xDC\xD4\x98\tYT\xB1\xB2\xCE\x92v").
            and_return("SIGNATURE")
          request.add_authorization!(signer)
        end

        context 'x-amzn-authorization header' do

          let(:authz) do
            request.add_authorization!(signer)
            request.headers["x-amzn-authorization"]
          end

          it 'should start with "AWS3 "' do
            authz.should =~ /^AWS3 /
          end

          it 'should include the access key, signing algorithm, signature, and signed headers' do
            authz.should include("AWSAccessKeyId=KEY,"+
                                 "Algorithm=HmacSHA256,"+
                                 "SignedHeaders=h1;h2,"+
                                 "Signature=SIGNATURE")
          end

        end

        context 'x-amz-security-token' do

          it 'should be the session token from the signer before the string to sign is computed' do
            request.should_receive(:string_to_sign) do
              request.headers["x-amz-security-token"].should == "TOKEN"
              "S2S"
            end
            request.add_authorization!(signer)
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

      context '#string_to_sign' do

        before(:each) do
          request.stub(:canonical_headers).and_return("HEADERS")
          request.stub(:body).and_return("BODY")
          request.stub(:http_method).and_return("POST")
        end

        let(:string_to_sign) { request.send(:string_to_sign) }

        let(:lines) { string_to_sign.split("\n") }

        it 'should be five lines long' do
          lines.size.should == 5
        end

        it 'should have the request method in the first line' do
          lines[0].should == "POST"
        end

        it 'should have "/" in the second line' do
          lines[1].should == "/"
        end

        it 'should leave the third line blank' do
          lines[2].should == ""
        end

        it 'should have the canonical headers starting at the fourth line' do
          lines[3].should == "HEADERS"
        end

        it 'should have the request body as the last line' do
          lines[4].should == "BODY"
        end

        it 'should not end with a newline' do
          string_to_sign[-1,1].should_not == "\n"
        end

      end

    end

  end
end
