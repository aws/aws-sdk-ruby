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

      let(:lines) { request.string_to_sign.split(/\n/, 4) }
      
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
        request.string_to_sign.split(/\n/)[3].should == 'abc=a%20c&xyz=mno'
      end

    end

    context '#add_authorization!' do

      let(:signer) { DefaultSigner.new('KEY', 'secret') }

      before(:each) do
        signer.stub(:sign).and_return('SIGNATURE')
      end

      it 'sets the access key ID' do
        request.add_authorization!(signer)
        request.access_key_id.should == "KEY"
      end

      it 'adds a signature version param' do
        request.add_authorization!(signer)
        request.get_param('SignatureVersion').value.should == '2'
      end

      it 'adds a signature method param' do
        request.add_authorization!(signer)
        request.get_param('SignatureMethod').value.should == 'HmacSHA256'
      end

      it 'adds a signature param' do
        request.add_authorization!(signer)
        request.get_param('Signature').value.should == 'SIGNATURE'
      end

      it 'adds the access key id param' do
        request.add_authorization!(signer)
        request.get_param('AWSAccessKeyId').value.should == 'KEY'
      end

    end

  end

  shared_examples_for "an authorize v2 request with a session token" do

    let(:request) { described_class.new }

    context '#add_authorization!' do

      let(:signer) { DefaultSigner.new('KEY', 'secret') }

      before(:each) do
        signer.stub(:sign).and_return('SIGNATURE')
      end

      context 'signer does not support a session token' do

        it 'should not add the SecurityToken parameter' do
          request.add_authorization!(signer)
          request.params.map { |p| p.name }.
            should_not include("SecurityToken")
        end

      end

      context 'signer does not have a session token configured' do

        it 'should not add the SecurityToken parameter' do
          signer.stub(:session_token)
          request.add_authorization!(signer)
          request.params.map { |p| p.name }.
            should_not include("SecurityToken")
        end

      end

      context 'signer has a session token configured' do

        it 'should add the SecurityToken parameter prior to computing the signature' do
          signer.stub(:session_token).and_return("TOKEN")
          signer.should_receive(:sign) do |*args|
            request.get_param("SecurityToken").value.should == "TOKEN"
            "SIGNATURE"
          end
          request.add_authorization!(signer)
        end

      end

    end

  end

  shared_examples_for "an authorize v3 request" do

    let(:request) { described_class.new }

    let(:signer) { DefaultSigner.new('KEY', 'SECRET') }

    before(:each) do
      signer.stub(:sign).and_return('SIGNATURE')
    end

    context '#string_to_sign' do
      
      it 'should return a rfc822 formatted time sting' do
        now = Time.now
        Time.stub(:now).and_return(now)
        request.string_to_sign.should == now.rfc822
      end

    end

    context '#add_authorization!' do

      it 'adds a signature string to the headers' do
        signer.stub(:sign).and_return('SIGN')
        request.add_authorization!(signer)
        request.headers['x-amzn-authorization'].should ==
          "AWS3-HTTPS AWSAccessKeyId=KEY,Algorithm=HmacSHA256,Signature=SIGN"
      end

    end

  end

end
