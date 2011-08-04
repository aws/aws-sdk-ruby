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
require 'aws/default_signer'

module AWS

  describe DefaultSigner do

    context '#intialize' do

      it 'requires an access key and secret_access_key' do
        lambda { DefaultSigner.new }.should raise_error(ArgumentError)
      end

      it 'accepts 2 params' do
        lambda { DefaultSigner.new('foo', 'bar') }.should_not raise_error
      end

    end
      
    it 'provides access to access_key_id' do
      DefaultSigner.new('foo', 'bar').access_key_id.should == 'foo'
    end

    it 'provides access to secret_access_key' do
      DefaultSigner.new('foo', 'bar').secret_access_key.should == 'bar'
    end

    it 'provides access to session_token' do
      DefaultSigner.new('foo', 'bar', 'baz').session_token.should == 'baz'
    end

    context '#sign' do

      it 'requires a string to sign' do
        lambda{ 
          DefaultSigner.new('foo', 'bar').sign
        }.should raise_error(ArgumentError)
      end

      it 'should build a sha256 hmac digest' do
        OpenSSL::HMAC.should_receive(:digest).
          with(OpenSSL::Digest::Digest.new('sha256'), anything, anything).
          and_return('hmac')
        DefaultSigner.new('foo', 'bar').sign('yuck')
      end

      it 'should build an hmac digets using the secret access key' do
        secret = 'secret'
        OpenSSL::HMAC.should_receive(:digest).
          with(anything, secret, anything).
          and_return('hmac')
        DefaultSigner.new('foo', secret).sign('string to sign')
      end

      it 'should build an hmac digets using the string to sign' do
        string_to_sign = 'string to sign'
        OpenSSL::HMAC.should_receive(:digest).
          with(anything, anything, string_to_sign).
          and_return('hmac')
        DefaultSigner.new('foo', 'bar').sign(string_to_sign)
      end

      it 'should base64 encode an hmac sha256 digest' do
        hmac = 'sha256 hmac'
        OpenSSL::HMAC.stub(:digest).and_return(hmac)
        Base64.should_receive(:encode64).with(hmac).and_return('encoded')
        DefaultSigner.new('foo', 'bar').sign('yuck')
      end

      it 'should strip whitespace from the encoded digest' do
        Base64.stub(:encode64).and_return("encoded\n")
        DefaultSigner.new('foo', 'bar').sign('yuck').should == 'encoded'
      end

    end


    context 'samples' do

      let(:signer) { 
        DefaultSigner.new(
          "0PN5J17HBGZHT7JJ3X82",
          "uV3F3YluFJax1cknvbcGwgjvx4QpvB+leU8dUj2o"
        ) 
      }

      let(:example_signatures) do
        [{ :string_to_sign => <<END.strip,
GET


Tue, 27 Mar 2007 19:36:42 +0000
/johnsmith/photos/puppy.jpg
END
           :signature => "zzTmSK1cr02yZmrr8u9LjF7U2zTiPoANPv+ayUIrxqw=" },
         { :string_to_sign => <<END.strip,
PUT

image/jpeg
Tue, 27 Mar 2007 21:15:45 +0000
/johnsmith/photos/puppy.jpg
END
           :signature => "93MRuLdrrXEIPVPS22umXdNVp2gOFQtAlsN9QDA2zX8=" },
         { :string_to_sign => <<END.strip,
GET


Tue, 27 Mar 2007 19:42:41 +0000
/johnsmith/
END
           :signature => "MKvpLKH6ojCSBhhG16T4NwPPsMLBTU4r0CWQ81Tqwt4=" },
         { :string_to_sign => <<END.strip,
GET


Tue, 27 Mar 2007 19:44:46 +0000
/johnsmith/?acl
END
           :signature => "KGr9c1NT6qWRBicKjrNTenNEXrk0tkVqLzaZaGsAYP8=" },
         { :string_to_sign => <<END.strip,
DELETE



x-amz-date:Tue, 27 Mar 2007 21:20:26 +0000
/johnsmith/photos/puppy.jpg
END
           :signature => "jzCguZRh2xc/mAXomk9y0UyGpfXkr0GOU50J7LELVxU=" },
         { :string_to_sign => <<END.strip,
PUT
4gJE4saaMU4BqNR0kLY+lw==
application/x-download
Tue, 27 Mar 2007 21:06:08 +0000
x-amz-acl:public-read
x-amz-meta-checksumalgorithm:crc32
x-amz-meta-filechecksum:0x02661779
x-amz-meta-reviewedby:joe@johnsmith.net,jane@johnsmith.net
/static.johnsmith.net/db-backup.dat.gz
END
           :signature => "9L0movyZIJkpubKOJ4tuBpA3m851rI8seCnXSGwjSis=" },
         { :string_to_sign => <<END.strip,
GET


Wed, 28 Mar 2007 01:49:49 +0000
/dictionary/fran%C3%A7ais/pr%c3%a9f%c3%a8re
END
           :signature => "WrsTf3SwgvLE3FyvXuzXGb+YcYR5wmdnhZzVrKHckC4=" }]
      end

      it 'should work for the static examples in the S3 GSG' do
        example_signatures.each do |ex|
          signer.sign(ex[:string_to_sign]).should == ex[:signature]
        end
      end

    end

  end

end
