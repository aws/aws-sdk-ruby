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
require 'digest/md5'

module AWS
  class S3
    describe Request do

      let(:request) { Request.new }

      context '#key' do

        it 'accepts a key' do
          request.key = 'key'
          request.key.should == 'key'
        end

      end

      context '#bucket' do

        it 'accepts a bucket' do
          request.bucket = 'key'
          request.bucket.should == 'key'
        end

      end

      context '#path' do

        it 'defaults to /' do
          request.path.should == '/'
        end

        it 'is / for dns compat bucket names with no key' do
          request.bucket = 'bucket'
          request.path.should == '/'
        end

        it 'includes dns incompatable bucket names' do
          request.bucket = 'foo_bar'
          request.path.should == '/foo_bar'
        end

        it 'includes keys but not dns compat bucket name' do
          request.bucket = 'bucket'
          request.key = 'key'
          request.path.should == '/key'
        end

        it 'combines keys and dns-incompatible bucket names' do
          request.bucket = 'foo_bar'
          request.key = 'key'
          request.path.should == '/foo_bar/key'
        end

        it 'should URI-encode the key' do
          request.bucket = "foo_bar"
          request.key = "key with spaces"
          request.path.should == "/foo_bar/key%20with%20spaces"
        end

        if String.instance_methods.include?(:encoding)

          it 'should URI-encode the key' do
            request.bucket = "foo_bar"
            request.key = "key\u1234"
            request.path.should == "/foo_bar/key%E1%88%B4"
          end

        end

        it 'should not URI-encode path separators in the key' do
          request.bucket = "foo_bar"
          request.key = "key/foo bla"
          request.path.should == "/foo_bar/key/foo%20bla"
        end

        it 'should not remove prefixed slashes' do
          request.bucket = 'foo_bar' #not uri safe
          request.key = '//double/slashes/'
          request.path.should == '/foo_bar///double/slashes/'
        end

        it 'should not remove prefixed slashes' do
          request.bucket = 'foo' #uri safe
          request.key = '//double/slashes/'
          request.path.should == '///double/slashes/'
        end

        it 'should accept a path of only slashes' do
          request.bucket = 'foo_bar' #not uri safe
          request.key = '////'
          request.path.should == '/foo_bar/////'
        end

        it 'should accept a path of only slashes' do
          request.bucket = 'foo' #uri safe
          request.key = '////'
          request.path.should == '/////'
        end

        it 'should preserve a trailing slash in the key' do
          request.bucket = "foo_bar"
          request.key = "key/foo bla/"
          request.path.should == "/foo_bar/key/foo%20bla/"
        end

      end

      context '#uri' do

        it 'contains the path followed by the querystring params' do
          request.bucket = 'foo_bar'
          request.key = 'key'
          request.add_param('k', 'v')
          request.uri.should == '/foo_bar/key?k=v'
        end

        it 'omits dns compat bucket names' do
          request.bucket = 'foo'
          request.key = 'key'
          request.add_param('k', 'v')
          request.uri.should == '/key?k=v'
        end

      end

      context '#host' do

        it 'should contain dns compat bucket names and endpoint' do
          request = Request.new
          request.bucket = 'my-bucket'
          request.host = 's3.com'
          request.host.should == 'my-bucket.s3.com'
        end

        it 'should not contain dns compat bucket names that have periods' do
          request = Request.new
          request.bucket = 'my.bucket'
          request.host = 's3.com'
          request.host.should == 's3.com'
        end

      end


      context '#add_authorization!' do

        let(:credential_provider) {
          Core::CredentialProviders::StaticProvider.new({
            :access_key_id => 'KEY',
            :secret_access_key => 'SECRET',
            :session_token => 'TOKEN',
          })
        }

        context 'credentials does not provide a session token' do

          it 'should not add the x-amz-security-token header' do
            credential_provider.stub(:session_token).and_return(nil)
            request.add_authorization!(credential_provider)
            request.headers.
              should_not include("x-amz-security-token")
          end

        end

        context 'signer has a session token configured' do

          it 'should add the x-amz-security-token header prior to computing the signature' do
            Core::Signer.should_receive(:sign) do |*args|
              request.headers["x-amz-security-token"].should == "TOKEN"
              "SIGNATURE"
            end
            request.add_authorization!(credential_provider)
          end

        end

      end

      context '#string_to_sign' do

        let(:verb) { 'PUT' }
        let(:body) { 'hello world' }
        let(:md5) { Digest::MD5.hexdigest(body) }
        let(:content_type) { 'text/plain' }
        let(:date) { Time.now.httpdate }

        let(:request) {
          req = Request.new
          req.bucket = 'some_bucket'
          req.key = 'some/path'
          req.http_method = verb
          req.body = body
          req.headers['Content-MD5'] = md5
          req.headers['Content-Type'] = content_type
          req.headers['Date'] = date
          req.headers['x-amz-meta-Color'] = 'red'
          req.headers['x-amz-meta-Users'] = 'Fred,Barney'
          req.add_param('acl')
          req.add_param('policy')
          req
        }

        let(:signing_string_lines) { request.string_to_sign.split(/\n/) }

        it 'line 1 is the http verb' do
          signing_string_lines[0].should == verb
        end

        it 'line 2 is the content md5' do
          signing_string_lines[1].should == md5
        end

        it 'line 3 is the content type' do
          signing_string_lines[2].should == content_type
        end

        it 'line 4 is the date' do
          signing_string_lines[3].should == date
        end

        it 'lines 5 till the end -1 are the canonicalized amazon headers' do
          everything_else = Array(signing_string_lines[4..-2]).join("\n")
          everything_else.should == request.canonicalized_headers
        end

        it 'the last line is the canonicalized resource' do
          signing_string_lines[-1].should == request.canonicalized_resource
        end

      end

      context '#canonicalized resource' do

        it 'should begin with a slash' do
          Request.new.canonicalized_resource.should match(/^\//)
        end

        it 'should begin with the bucket if it is not dns compat' do
          req = Request.new
          req.bucket = 'dns_incompat'
          req.key = 'some/path'
          req.canonicalized_resource.should == '/dns_incompat/some/path'
        end

        it 'should begin with the path if the host is dns compat' do
          req = Request.new
          req.bucket = 'dns-compat'
          req.key = 'a/key'
          req.canonicalized_resource.should match(/^\/dns-compat\/a\/key$/)
        end

        it 'should sort sub resources' do
          req = Request.new
          req.add_param('versions')
          req.add_param('acl')
          req.canonicalized_resource.should == "/?acl&versions"
        end

        it 'should include parameters controlling the response headers' do
          req = Request.new
          req.add_param('response-expires', 'tomorrow')
          req.add_param('response-content-type', 'foo')
          req.canonicalized_resource.
            should == "/?response-content-type=foo&response-expires=tomorrow"
        end

      end

      context '(S3 developer guide examples)' do

        let(:request) { Request.new }

        it 'should produce the right string for GET object' do
          request.http_method = "GET"
          request.bucket = "johnsmith"
          request.key = "photos/puppy.jpg"
          request.headers["Date"] = "Tue, 27 Mar 2007 19:36:42 +0000"
          request.string_to_sign.should == <<END.strip
GET


Tue, 27 Mar 2007 19:36:42 +0000
/johnsmith/photos/puppy.jpg
END
        end

        it 'should produce the right string for PUT object' do
          request.http_method = "PUT"
          request.bucket = "johnsmith"
          request.key = "photos/puppy.jpg"
          request.headers["Date"] = "Tue, 27 Mar 2007 21:15:45 +0000"
          request.headers["Content-Type"] = "image/jpeg"
          request.string_to_sign.should == <<END.strip
PUT

image/jpeg
Tue, 27 Mar 2007 21:15:45 +0000
/johnsmith/photos/puppy.jpg
END
        end

        it 'should produce the right string for GET bucket' do
          request.http_method = "GET"
          request.bucket = "johnsmith"
          request.add_param('prefix', 'photos')
          request.add_param('max-keys', 50)
          request.add_param('marker', 'puppy')
          request.headers["Date"] = "Tue, 27 Mar 2007 19:42:41 +0000"
          request.string_to_sign.should == <<END.strip
GET


Tue, 27 Mar 2007 19:42:41 +0000
/johnsmith/
END
        end

        it 'places dns compat names into the path when they contain .' do
          request.http_method = "GET"
          request.bucket = "my.bucket.name"
          request.headers["Date"] = "Tue, 27 Mar 2007 19:42:41 +0000"
          request.string_to_sign.should == <<END.strip
GET


Tue, 27 Mar 2007 19:42:41 +0000
/my.bucket.name
END
        end


        it 'should produce the right string for GET service' do
          request.http_method = "GET"
          request.headers["Date"] = "Wed, 28 Mar 2007 01:29:59 +0000"
          request.string_to_sign.should == <<END.strip
GET


Wed, 28 Mar 2007 01:29:59 +0000
/
END
        end

        it 'should add a Date header if not provided' do
          fake_date = 'Mon, 1 Jan 1234 12:34:56 +0000'
          Time.stub_chain(:now, :httpdate).and_return(fake_date)
          request.string_to_sign
          request.headers['Date'].should == fake_date
        end

        it 'should omit the date line when provided via x-amz-date' do
          request.http_method = 'DELETE'
          request.bucket = 'johnsmith'
          request.key = 'photos/puppy.jpg'
          request.headers["Date"] = 'Tue, 27 Mar 2007 21:20:27 +0000'
          request.headers['User-Agent'] = 'dotnet'
          request.headers['X-Amz-Date'] = 'Tue, 27 Mar 2007 21:20:26 +0000'
          request.headers['X-Amz-abc'] = 'xyz'
          request.string_to_sign.should == <<END.strip
DELETE



x-amz-abc:xyz
x-amz-date:Tue, 27 Mar 2007 21:20:26 +0000
/johnsmith/photos/puppy.jpg
END
        end
      end
    end
  end
end
