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

module AWS::Core

  shared_examples_for "an aws query request" do

    let(:request) { described_class.new }

  end

  shared_examples_for "an authorize v2 request" do

    let(:request) { described_class.new }

    before(:each) do
      request.host = 'hostname.com'
    end

    context '#string_to_sign' do

      let(:string_to_sign) { request.send(:string_to_sign) }

      let(:lines) { string_to_sign.split(/\n/, 4) }

      it 'first line should match the request http method' do
        lines[0].should == request.http_method
      end

      it 'second line should match the host' do
        lines[1].should == request.host
      end

      it 'third line should match the path' do
        lines[2].should == request.path
      end

      it '4th line should be sorted encoded key/value pairs' do
        request.add_param('xyz', 'mno')
        request.add_param('abc', 'a c')
        string_to_sign.split(/\n/)[3].should == 'abc=a%20c&xyz=mno'
      end

    end

    context '#add_authorization!' do

      let(:credential_provider) {
        CredentialProviders::StaticProvider.new({
          :access_key_id => 'KEY',
          :secret_access_key => 'secret',
        })
      }

      it 'adds a signature version param' do
        request.add_authorization!(credential_provider)
        request.body.should =~ /SignatureVersion=2/
      end

      it 'adds a signature method param' do
        request.add_authorization!(credential_provider)
        request.body.should =~ /SignatureMethod=HmacSHA256/
      end

      it 'adds a signature param' do
        request.add_authorization!(credential_provider)
        request.body.should match("AWSAccessKeyId=KEY&Signature=Se10W1eBHf09PwK7gAdetObg5bzUuo8vNxrIaCDgwJw%3D&SignatureMethod=HmacSHA256&SignatureVersion=2")
      end

      it 'adds the access key id param' do
        request.add_authorization!(credential_provider)
        request.body.should =~ /AWSAccessKeyId=KEY/
      end

    end

  end

  shared_examples_for "an authorize v2 request with a session token" do

    let(:request) { described_class.new }

    context '#add_authorization!' do

      context 'no configured session token' do

        let(:credential_provider) {
          CredentialProviders::StaticProvider.new({
            :access_key_id => 'KEY',
            :secret_access_key => 'secret',
          })
        }

        it 'should not add the SecurityToken parameter' do
          request.add_authorization!(credential_provider)
          request.params.map { |p| p.name }.
            should_not include("SecurityToken")
        end

      end

      context 'has a session token configured' do

        let(:credential_provider) {
          CredentialProviders::StaticProvider.new({
            :access_key_id => 'KEY',
            :secret_access_key => 'secret',
            :session_token => 'TOKEN',
          })
        }

        it 'should add the SecurityToken parameter prior to computing the signature' do
          request.add_authorization!(credential_provider)
          request.body.should match("AWSAccessKeyId=KEY&SecurityToken=TOKEN&Signature=zou0VOLN0m%2Fkrb1O0jIuNHmUYu49w%2Fn3sr8PbOv4J5U%3D&SignatureMethod=HmacSHA256&SignatureVersion=2")
        end

      end

    end

  end

  shared_examples_for "an authorize v3 request" do

    let(:request) { described_class.new }

    let(:credential_provider) {
      CredentialProviders::StaticProvider.new({
        :access_key_id => 'KEY',
        :secret_access_key => 'SECRET',
      })
    }

    context '#string_to_sign' do

      it 'should return a httpdate formatted time sting' do
        now = Time.now
        Time.stub(:now).and_return(now)
        request.string_to_sign.should == now.httpdate
      end

    end

    context '#add_authorization!' do

      it 'adds a signature string to the headers' do
        request.add_authorization!(credential_provider)
        request.headers['x-amzn-authorization'].should ==
          "AWS3-HTTPS AWSAccessKeyId=KEY,Algorithm=HmacSHA256,Signature=SIGN"
      end

    end

  end

end
