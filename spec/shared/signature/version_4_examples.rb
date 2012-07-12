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
require 'time'

module AWS
  shared_examples_for "an authorize v4 request" do

    let(:request) { described_class.new }

    let(:credentials) {
      AWS::Core::CredentialProviders::StaticProvider.new({
        :access_key_id => 'akid',
        :secret_access_key => 'secret',
      })
    }

    let(:now) { Time.parse('2012-01-01') }

    before(:each) do
      Time.stub(:now).and_return(now)
      request.host = 'hostname'
      request.region = 'region-name'
      request.stub(:body).and_return('body')
      request.stub(:service).and_return('service-name')
    end

    context '#add_authorization!' do

      it 'sets the content type form-urlencoded by default' do
        request.headers['content-type'].should eq(nil)
        request.add_authorization!(credentials)
        request.headers['content-type'].should 
          eq('application/x-www-form-urlencoded')
      end

      it 'populates the host header' do
        request.headers['host'].should eq(nil)
        request.add_authorization!(credentials)
        request.headers['host'].should eq('hostname')
      end

      it 'populates the date header' do
        request.headers['x-amz-date'].should eq(nil)
        request.add_authorization!(credentials)
        request.headers['x-amz-date'].should 
          eq(now.utc.strftime("%Y%m%dT%H%M%SZ"))
      end

      it 'omits the security token header when session token not provided' do
        credentials.session_token.should eq(nil)
        request.add_authorization!(credentials)
        request.headers['x-amz-security-token'].should eq(nil)
      end

      it 'populates the security token header when session token is provided' do
        credentials.stub(:session_token).and_return('SESSION')
        request.add_authorization!(credentials)
        request.headers['x-amz-security-token'].should eq('SESSION')
      end

      it 'popualtes the authorization header' do
        request.headers['authorization'].should eq(nil)
        request.add_authorization!(credentials)
        request.headers['authorization'].should eq("AWS4-HMAC-SHA256 Credential=akid/20120101/region-name/service-name/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=58ba42aa064264dc8b8d056d1e1a174679d2fcfa545bb860145b23ee20342346")
      end

      it 'includes the session token in the signature when present' do
        credentials.stub(:session_token).and_return('SESSION')
        request.add_authorization!(credentials)
        request.headers['authorization'].should eq("AWS4-HMAC-SHA256 Credential=akid/20120101/region-name/service-name/aws4_request, SignedHeaders=content-type;host;x-amz-date;x-amz-security-token, Signature=c6345f040b0b32469729beb2f57fb706b133e65ef32f8bc2a18aee77c51c8991")
      end

    end
  end
end
