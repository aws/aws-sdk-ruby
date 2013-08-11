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
require 'tempfile'

module AWS
  class S3

    describe Client do

      def with_http_handler &block
        client.with_http_handler do |req, resp|
          yield(req, resp)
        end
      end

      def should_add_param_as opt_name, param_name
        param = nil
        client.with_http_handler do |req, resp|
          param = req.querystring.match(/#{param_name}=(\w+)\b/)[1]
        end.send(method, opts.merge(opt_name => 'VALUE'))
        param.should == 'VALUE'
      end

      let(:test_credentials) do
        { :access_key_id => "access key id",
          :secret_access_key => "secret access key" }
      end

      let(:http_handler) {
        double("a handler", :handle => true, :handle_async => true)
      }

      let(:client) do
        Client.new(test_credentials.merge(:http_handler => http_handler))
      end

      it 'should be accessible from the configuration' do
        config = AWS.config.with(
                                 :access_key_id => 'foo',
                                 :secret_access_key => 'bar')
        config.s3_client.should be_a(S3::Client)
      end

      it_should_behave_like "an aws client", :list_buckets

      shared_examples_for "handles modeled exception" do |code, base|

        klass = S3::Errors.const_get(code)

      end

      shared_examples_for "an s3 error response with no body" do |params|

        status = params[:status]
        klass = params[:klass]
        kind = params[:kind]

        [nil, ''].each do |body|

          context "when the body is #{body.inspect}" do

            before(:each) do
              Kernel.stub(:sleep)
              http_handler.stub(:handle) do |req, resp|
                 resp.status = status
                 resp.body = body
              end
            end

            it "should raise an instance of #{klass}" do
              lambda { client.send(method, opts) }.
                should raise_error(klass)
            end
  
            it "should raise an instance of #{kind}" do
              lambda { client.send(method, opts) }.
                should raise_error(kind)
            end
  
          end
  
        end

      end

      context '#put_bucket_website' do

        let(:xml) { <<-XML.strip.xml_cleanup }
<WebsiteConfiguration xmlns=\"http://s3.amazonaws.com/doc/2006-03-01/\">
  <IndexDocument>
    <Suffix>index.html</Suffix>
  </IndexDocument>
  <ErrorDocument>
    <Key>error.html</Key>
  </ErrorDocument>
</WebsiteConfiguration>
        XML

        it 'does not serialize empty routing rules' do
          body = nil
          client.with_http_handler do |req, resp|
            body = req.body.xml_cleanup
          end.put_bucket_website(
            :bucket_name => 'bucket',
            :index_document => { :suffix => 'index.html' },
            :error_document => { :key => 'error.html' },
            :routing_rules => []
          )
          body.should eq(xml)
        end
      end

      context 'cors', :cors => true do
  
        let(:xml) { <<-XML.strip.xml_cleanup }
<CORSConfiguration>
  <CORSRule>
    <AllowedMethod>GET</AllowedMethod>
    <AllowedMethod>PUT</AllowedMethod>
    <AllowedOrigin>*</AllowedOrigin>
    <AllowedHeader>header-a</AllowedHeader>
    <AllowedHeader>header-b</AllowedHeader>
    <MaxAgeSeconds>123</MaxAgeSeconds>
    <ExposeHeader>header-c</ExposeHeader>
    <ExposeHeader>header-d</ExposeHeader>
  </CORSRule>
  <CORSRule>
    <AllowedMethod>POST</AllowedMethod>
    <AllowedOrigin>http://example.com</AllowedOrigin>
    <AllowedOrigin>http://foo.com</AllowedOrigin>
  </CORSRule>
</CORSConfiguration>
        XML

        let(:rules) {
          [
            {
              :allowed_methods => %w(GET PUT),
              :allowed_origins => %w(*),
              :allowed_headers => %w(header-a header-b),
              :max_age_seconds => 123,
              :expose_headers => %w(header-c header-d),
            },{
              :allowed_methods => %w(POST),
              :allowed_origins => %w(http://example.com http://foo.com),
              :allowed_headers => [],
              :expose_headers => [],
            }
          ]
        }

        def get_request method, params
          request = nil
          client.with_http_handler do |req, resp|
            request = req
          end.send(method, params)
          request
        end

        def stub_response method, params, resp_data
          client.with_http_handler do |req,resp|
            resp.status = resp_data[:status] || 200
            (resp_data[:headers] || {}).each_pair do |k,v|
              resp.headers[k] = v
            end
            resp.body = resp_data[:body]
          end.send(method, params)
        end

        context '#put_bucket_cors' do

          it 'make a put request to the cors subresource' do

            request = get_request(:put_bucket_cors, {
              :bucket_name => 'bucket-name',
              :rules => rules,
            })

            request.http_method.should eq('PUT')
            request.querystring.should eq('cors')
            request.headers['content-md5'].should eq(client.send(:md5, request.body))
            request.body.xml_cleanup.should eq(xml)

          end

        end

        context '#get_bucket_cors' do

          it 'make a get request to the cors subresource' do
            req = get_request(:get_bucket_cors, :bucket_name => 'bucket')
            req.http_method.should eq('GET')
            req.querystring.should eq('cors')
            req.bucket.should eq('bucket')
            req.body.should eq(nil)
          end

          it 'returns the parsed xml response' do
            resp = stub_response(:get_bucket_cors,
              {
                :bucket_name => 'bucket',
              }, {
                :status => 200,
                :headers => {},
                :body => xml,
              }
            )
            resp.data.should eq(:rules => rules)
          end

        end

        context '#delete_bucket_cors' do

          it 'make a delete request to the cors subresource' do
            req = get_request(:delete_bucket_cors, :bucket_name => 'bucket')
            req.http_method.should eq('DELETE')
            req.querystring.should eq('cors')
            req.bucket.should eq('bucket')
            req.body.should eq(nil)
          end

        end

      end

      context 'tagging', :tagging => true do

        let(:xml) { <<-XML.strip }
<Tagging>
  <TagSet>
    <Tag>
      <Key>foo</Key>
      <Value>bar</Value>
    </Tag>
    <Tag>
      <Key>abc</Key>
      <Value>xyz</Value>
    </Tag>
  </TagSet>
</Tagging>
        XML

        def get_request method, params
          request = nil
          client.with_http_handler do |req, resp|
            request = req
          end.send(method, params)
          request
        end

        def stub_response method, params, resp_data
          client.with_http_handler do |req,resp|
            resp.status = resp_data[:status] || 200
            (resp_data[:headers] || {}).each_pair do |k,v|
              resp.headers[k] = v
            end
            resp.body = resp_data[:body]
          end.send(method, params)
        end

        context '#put_bucket_tagging' do

          it 'make a put request to the tagging subresource' do

            request = get_request(:put_bucket_tagging, {
              :bucket_name => 'bucket-name',
              :tags => { 'foo' => 'bar', :abc => 'xyz' }, # mixed key types
            })

            request.http_method.should eq('PUT')
            request.querystring.should eq('tagging')

            # the array is differently sorted on Ruby 1.8
            unless RUBY_VERSION =~ /^1.8/
              request.headers['content-md5'].should eq(client.send(:md5, xml))
              request.body.should eq(xml)
            end

          end

        end

        context '#get_bucket_tagging' do

          it 'make a get request to the tagging subresource' do
            req = get_request(:get_bucket_tagging, :bucket_name => 'bucket')
            req.http_method.should eq('GET')
            req.querystring.should eq('tagging')
            req.bucket.should eq('bucket')
            req.body.should eq(nil)
          end

          it 'returns the parsed xml response' do
            resp = stub_response(:get_bucket_tagging,
            {
              :bucket_name => 'bucket',
            }, {
              :status => 200,
              :headers => {},
              :body => xml,
            })

            resp.data.should eq({
              :tags => { 'foo' => 'bar', 'abc' => 'xyz' }
            })
          end

        end

        context '#delete_bucket_tagging' do

          it 'make a delete request to the tagging subresource' do
            req = get_request(:delete_bucket_tagging, :bucket_name => 'bucket')
            req.http_method.should eq('DELETE')
            req.querystring.should eq('tagging')
            req.bucket.should eq('bucket')
            req.body.should eq(nil)
          end

        end

      end

      shared_examples_for "an s3 http request" do |verb|

        it_should_behave_like "an aws http request", verb

        context 'exceptions' do

          before(:each) do
            Kernel.stub(:sleep)
            http_handler.stub(:handle) do |req, resp|
              resp.status = status_code
              resp.body = error_xml
            end
          end

          let(:error_xml) do
            "<Error><Code>NoSuchBucket</Code>" +
              "<Message>Something bad happened</Message>" +
              "</Error>"
          end

          let(:status_code) { 400 }

          it 'should raise modeled exceptions for unsuccessful requests' do
            lambda { client.send(method, opts) }.
              should raise_error(Errors::NoSuchBucket,
                                 "Something bad happened")
          end

          it_should_behave_like("an s3 error response with no body",
                                :status => 304,
                                :klass => Errors::NotModified,
                                :kind => Errors::ClientError)

          it_should_behave_like("an s3 error response with no body",
                                :status => 400,
                                :klass => Errors::BadRequest,
                                :kind => Errors::ClientError)

          it_should_behave_like("an s3 error response with no body",
                                :status => 404,
                                :klass => Errors::NoSuchKey,
                                :kind => Errors::ClientError)

        end

      end

      shared_examples_for "accepts mfa credentials" do

        it 'adds no header when mfa is nil' do
          req_headers = nil
          opts.delete(:mfa)
          client.with_http_handler do |req, resp|
            req_headers = req.headers
          end.send(method, opts)
          req_headers['x-amz-mfa'].should == nil
        end

        it 'adds a header when mfa is passed' do
          req_headers = nil
          client.with_http_handler do |req, resp|
            req_headers = req.headers
          end.send(method, opts.merge(:mfa => '123456 7890'))
          req_headers['x-amz-mfa'].should == '123456 7890'
        end

      end

      shared_examples_for "accepts version id" do

        it 'adds no param wheren version_id is nil' do
          querystring = false
          opts.delete(:version_id)
          client.with_http_handler do |req, resp|
            querystring = req.querystring
          end.send(method, opts)
          querystring.should == nil
        end

        it 'adds a params when version_id is passed' do
          version_id = nil
          client.with_http_handler do |req, resp|
            version_id = req.querystring.match(/versionId=(\w+)\b/)[1]
          end.send(method, opts.merge(:version_id => 'VERSION'))
          version_id.should == 'VERSION'
        end

      end

      shared_examples_for "returns version id" do

        it 'defaults version ids to nil' do
          resp = client.send(method, opts)
          resp[:version_id].should be(nil)
        end

        it 'populates the version when present' do
          resp = client.with_http_handler do |req, resp|
            resp.headers['x-amz-version-id'] = ['foo']
          end.send(method,opts)
          resp[:version_id].should eq('foo')
        end

      end

      shared_examples_for "returns etag" do

        it 'should return the etag as a string' do
          response = client.with_http_handler do |req, resp|
            resp.headers['ETag'] = ['abcxyz']
          end.send(method, opts)
          response[:etag].should eq('abcxyz')
        end

      end

      shared_examples_for "returns last_modified" do

        it 'should return the last_modified time as a Time object' do
          response = client.with_http_handler do |req, resp|
            resp.headers['Last-Modified'] = ['Fri, 29 Jul 2011 22:16:13 -0000']
          end.send(method, opts)
          response.last_modified.should == Time.utc(2011, 7, 29, 22, 16, 13)
        end

      end

      shared_examples_for "returns server_side_encryption" do

        it 'should return the server_side_encryption method as a symbol' do
          response = client.with_http_handler do |req, resp|
            resp.headers['x-amz-server-side-encryption'] = ['AES256']
          end.send(method, opts)
          response.server_side_encryption.should == :aes256
        end

      end

      shared_examples_for "requires bucket_name" do

        it 'raises argument error for blank bucket name' do
          lambda {
            client.send(method, opts.merge(:bucket_name => ''))
          }.should raise_error(ArgumentError, /bucket_name/)
        end

        it 'raises argument error missing bucket name' do
          lambda {
            client.send(method, opts.merge(:bucket_name => nil))
          }.should raise_error(ArgumentError, /bucket_name/)
        end

        it 'uses the hostname s3.amazonaws.com' do
          request_host = nil
          client = with_http_handler do |req, response|
            request_host = req.host
          end
          client.send(method, opts.merge(:bucket_name => 'dns_incompat'))
          request_host.should == 's3.amazonaws.com'
        end

        it 'puts dns incompatible bucket name in the uri' do
          request_uri = nil
          client = with_http_handler do |req, response|
            request_uri = req.uri
          end
          client.send(method, opts.merge(:bucket_name => 'dns_incompat'))
          request_uri.should match(/^\/dns_incompat/)
        end

        it 'puts dns compat bucket name in the host' do
          request_host = nil
          client = with_http_handler do |req, response|
            request_host = req.host
          end
          client.send(method, opts.merge(:bucket_name => 'dns-compat'))
          request_host.should == 'dns-compat.s3.amazonaws.com'
        end

        it 'puts dns compat bucket name in the uri when forced to' do
          request_uri = nil
          request_host = nil
          client = with_http_handler do |req, response|
            request_uri = req.uri
            request_host = req.host
          end
          client.config.stub(:s3_force_path_style?).and_return(true)
          client.send(method, opts.merge(:bucket_name => 'dns-compat'))
          request_host.should == 's3.amazonaws.com'
          request_uri.should match(/^\/dns-compat/)
        end

      end

      shared_examples_for "a subresource request" do |sub_resource|

        it 'should use the subresource' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.uri.should match(/\?#{sub_resource}/)
          end
          client.send(method, opts)
        end

      end

      shared_examples_for "requires key" do

        it 'should raise an argument error for a missing key' do
          lambda {
            client.send(method, opts.merge(:key => nil))
          }.should raise_error(ArgumentError, /key/)
        end

        it 'should include the key in the path' do
          request_path = nil
          client = with_http_handler do |req, resp|
            request_path = req.path
          end
          client.send(method, opts.merge(:key => 'some/key'))
          request_path.should match(/\/some\/key/)
        end

        it 'should not strip leading slashes from keys' do
          request_path = nil
          client = with_http_handler do |req, resp|
            request_path = req.path
          end
          client.send(method, opts.merge(:key => '/some/key'))
          request_path.should == '//some/key'
        end

      end

      shared_examples_for "accepts simplified ACL header options" do

        def headers_for acl_opts
          headers = nil
          client = with_http_handler do |req, resp|
            headers = req.headers
          end
          client.send(method, opts.merge(acl_opts))
          headers
        end

        it 'accpets :grant_read' do
          headers_for(:grant_read => 'abc')['x-amz-grant-read'].should == 'abc'
        end

        it 'accpets :grant_write' do
          headers_for(:grant_write => 'abc')['x-amz-grant-write'].should == 'abc'
        end

        it 'accpets :grant_read_acp' do
          headers_for(:grant_read_acp => 'abc')['x-amz-grant-read-acp'].should == 'abc'
        end

        it 'accpets :grant_write_acp' do
          headers_for(:grant_read_acp => 'abc')['x-amz-grant-read-acp'].should == 'abc'
        end

        it 'accpets :grant_write_acp' do
          headers_for(:grant_full_control => 'abc')['x-amz-grant-full-control'].should == 'abc'
        end

        it 'accpets :grant_write_acp' do
          headers = headers_for({
            :grant_read => 'a',
            :grant_write => 'b',
            :grant_read_acp => 'c',
            :grant_write_acp => 'd',
            :grant_full_control => 'e',
          })
          headers['x-amz-grant-read'].should == 'a'
          headers['x-amz-grant-write'].should == 'b'
          headers['x-amz-grant-read-acp'].should == 'c'
          headers['x-amz-grant-write-acp'].should == 'd'
          headers['x-amz-grant-full-control'].should == 'e'
        end

      end

      shared_examples_for "accepts an ACL" do

        let(:opts_without_acl) do
          o = opts.dup
          o.delete(:acl)
          o
        end

        it 'moves the :acl option to the body if it is xml' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.body.should == '<xml/>'
          end
          client.send(method, opts_without_acl.merge(:acl => '<xml/>'))
        end

        it 'should raise an argument error for a missing acl' do
          lambda {
            client.send(method, opts_without_acl)
          }.should raise_error(ArgumentError, /acl/)
        end

        it 'should send the acl in the request body' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.body.should == opts[:acl]
          end
          client.send(method, opts)
        end

        context 'ACL as object with to_xml' do

          it 'should send the result of to_xml on the acl' do
            obj = Object.new
            obj.stub(:to_xml).and_return("<foo/>")
            http_handler.should_receive(:handle).with do |req, resp|
              req.body.should == "<foo/>"
            end
            client.send(method, opts.merge(:acl => obj))
          end

        end

      end

      shared_examples_for "sends option as header" do |option_name, header|

        it "sends #{option_name.inspect} as #{header}" do
          http_handler.should_receive(:handle) do |req, resp|
            req.headers[header].should == 'foo'
          end
          my_opts = opts.dup
          my_opts[option_name] = 'foo'
          client.send(method, my_opts)
        end

        it "does not send a #{header} header when #{option_name.inspect} is not provided" do
          http_handler.should_receive(:handle) do |req, resp|
            req.headers.should_not have_key(header)
          end
          my_opts = opts.dup
          my_opts.delete(option_name)
          client.send(method, my_opts)
        end

      end

      shared_examples_for "accepts input data" do

        let(:no_data_opts) do
          no_data = opts.dup
          no_data.delete(:data)
          no_data
        end

        let(:block_form_opts) { no_data_opts.merge(:content_length => 100) }

        context "data" do

          it 'is required' do
            lambda {
              client.send(method, no_data_opts)
            }.should raise_error(ArgumentError, /data/)
          end

          it 'is rejected from blocks with no args' do
            lambda {
              client.send(method, block_form_opts) {}
            }.should raise_error(ArgumentError, /data/)
          end

          it 'is accepted as a string' do
            lambda {
              client.send(method, opts.merge(:data => 'foo'))
            }.should_not raise_error
          end

          it 'accepts a pathname' do
            lambda {
              pathname = Pathname.new(__FILE__)
              client.send(method, opts.merge(:data => pathname))
            }.should_not raise_error
          end

          it 'is accepted as a tempfile' do
            lambda {
              client.send(method, opts.merge(:data => Tempfile.new('foo')))
            }.should_not raise_error
          end

          it 'is accepted as a file' do
            lambda {
              client.send(method, opts.merge(:data => File.open(__FILE__)))
            }.should_not raise_error
          end

          it 'is accepted as an io object' do
            lambda {
              io = StringIO.new('sample data')
              client.send(method, opts.merge(:data => io))
            }.should_not raise_error
          end

          it 'is accepted from any obj responding to #read(length) and #eof?' do
            data = double('data', :read => '', :eof? => true, :length => 0)
            lambda {
              client.send(method, opts.merge(:data => data))
            }.should_not raise_error
          end

          context 'strings' do

            it 'get passed through to the request body' do
              data = 'string data'
              request_body = nil
              client = with_http_handler do |req, resp|
                request_body = req.body
              end
              client.send(method, opts.merge(:data => data))
              request_body.should == data
            end

            it 'is forced to binary encoding if it responds to #force_encoding' do
              data = 'string data'
              data.stub(:bytesize).and_return(12)
              data.should_receive(:force_encoding)
              http_handler.should_receive(:handle).with do |req, resp|
                req.body.should == data
              end
              client.send(method, opts.merge(:data => data))
            end

          end

          context 'file names' do

            def expect_file_body(path)

              file = double("file")
              file.stub(:path).and_return(path)
              file.stub(:read).and_return('')
              file.stub(:eof?).and_return(true)

              File.should_receive(:open).with(path, *file_opts).and_return(file)
              File.should_receive(:size).with(path).and_return(12)
              http_handler.should_receive(:handle).with do |req, resp|
                req.body_stream.should be(file)
                req.headers["Content-Length"].should == 12
              end
            end

            context 'no encoding support' do

              before(:each) do
                Object.stub(:const_defined?).with(:Encoding).
                  and_return(false)
              end

              let(:file_opts) { ["rb"] }

              it 'get passed as the opened file' do
                expect_file_body("hello.txt")
                client.send(method, no_data_opts.merge(:file => "hello.txt"))
              end

              it 'works the same for Pathname objects' do
                expect_file_body("hello.txt")
                client.send(method, opts.merge(:data => Pathname.new("hello.txt")))
              end

            end

            context 'encoding support' do

              before(:each) do
                Object.stub(:const_defined?).with(:Encoding).
                  and_return(true)
              end

              let(:file_opts) { ["rb", { :encoding => "BINARY" }] }

              it 'get passed as the opened file' do
                expect_file_body("hello.txt")
                client.send(method, no_data_opts.merge(:file => "hello.txt"))
              end

              it 'works the same for Pathname objects' do
                expect_file_body("hello.txt")
                client.send(method, opts.merge(:data => Pathname.new("hello.txt")))
              end

            end

          end

          context 'content length' do

            def should_determine_content_length_for data, length
              content_length_header = nil
              client = with_http_handler do |req, resp|
                content_length_header = req.headers['Content-Length']
              end
              client.send(method, opts.merge(:data => data))
              content_length_header.should == length
            end

            it 'gets calculated on strings' do
              data = 'a string'
              should_determine_content_length_for(data, data.length)
            end

            it 'gets calculated on pathnames' do
              data = Pathname.new(__FILE__)
              should_determine_content_length_for(data, File.size(data))
            end

            it 'gets calculated on files' do
              data = File.open(__FILE__, 'r')
              should_determine_content_length_for(data, File.size(data.path))
            end

            it 'gets calculated on objects that responds to #length' do
              data = double('data', :read => 'ab', :eof? => false, :length => 2)
              should_determine_content_length_for(data, data.length)
            end

            it 'gets calculated on objects that responds to #size' do
              data = double('data', :read => 'ab', :eof? => false, :size => 2)
              should_determine_content_length_for(data, data.size)
            end

            it 'gets calculated on objects that respond to #bytesize' do
              data = [35843 ,222, 333].pack('U*')
              data.stub(:force_encoding)
              should_determine_content_length_for(data, 7)
            end

            it 'is accepted as an option' do
              content_length = nil
              client = with_http_handler do |req, resp|
                content_length = req.headers['Content-Length']
              end
              client.send(method, opts.merge(:content_length => 123))
              content_length.should == 123
            end

            it 'is required for io-like objects without size' do
              data = double('data', :read => '', :eof? => true)
              lambda {
                client.send(method, no_data_opts.merge(:data => data))
              }.should raise_error(ArgumentError, /content_length/)
            end

          end

          it_should_behave_like "sends option as header", :content_md5, "Content-MD5"

        end

      end

      shared_examples_for "sends metadata headers" do |accepts_file_data|

        # copy_object doesn't require support for these headers
        if accepts_file_data
          it_should_behave_like "sends option as header",
            :cache_control, "Cache-Control"
          it_should_behave_like("sends option as header",
            :content_disposition, "Content-Disposition")
          it_should_behave_like("sends option as header",
            :content_encoding, "Content-Encoding")
          it_should_behave_like("sends option as header",
            :content_type, "Content-Type")
          it_should_behave_like("sends option as header",
            :expires, "Expires")
        end

        it_should_behave_like("sends option as header",
                              :acl, "x-amz-acl")
        it_should_behave_like("sends option as header",
                              :storage_class, "x-amz-storage-class")
        it_should_behave_like("sends option as header",
                              :server_side_encryption, "x-amz-server-side-encryption")

        it 'converts canned acl symbols to strings' do
          http_handler.should_receive(:handle) do |req, resp|
            req.headers["x-amz-acl"].should == "public-read-write"
          end
          opts[:acl] = :public_read_write
          client.send(method, opts)
        end

        it 'converts storage class symbols to strings' do
          http_handler.should_receive(:handle) do |req, resp|
            req.headers["x-amz-storage-class"].should == "REDUCED_REDUNDANCY"
          end
          opts[:storage_class] = :reduced_redundancy
          client.send(method, opts)
        end

        it 'converts server side encryption symbols to strings' do
          http_handler.should_receive(:handle) do |req, resp|
            req.headers["x-amz-server-side-encryption"].should == "AES256"
          end
          opts[:server_side_encryption] = :aes256
          client.send(method, opts)
        end

        context "custom metadata" do

          it 'should prefix metadata with x-amz-meta- in the headers' do
            color_header = nil
            client = with_http_handler do |req, resp|
              color_header = req.headers['x-amz-meta-Color']
            end
            opts[:metadata] = { 'Color' => 'red' }
            client.send(method, opts)
            color_header.should == 'red'
          end

        end

      end

      shared_examples_for 'formats date header' do |option_name, header|

        it "formats Time values" do
          http_handler.should_receive(:handle) do |req, resp|
            req.headers[header].should == Time.parse("Mon, 13 Jun 2011 15:42:31 -0700").rfc2822
          end
          my_opts = opts.dup
          my_opts[option_name] = Time.parse("2011-06-13 15:42:31 -0700")
          client.send(method, my_opts)
        end

        it "formats DateTime values" do
          http_handler.should_receive(:handle) do |req, resp|
            req.headers[header].should == Time.parse("Mon, 13 Jun 2011 15:42:31 -0700").rfc2822
          end
          my_opts = opts.dup
          my_opts[option_name] = DateTime.parse("2011-06-13 15:42:31 -0700")
          client.send(method, my_opts)
        end

      end

      context '#create_bucket' do

        let(:method) { :create_bucket }

        let(:opts) { { :bucket_name => 'foo' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'PUT'

        it_should_behave_like "accepts simplified ACL header options"

        it 'is aliased as create_bucket' do
          client.method(:create_bucket).should == client.method(:put_bucket)
        end

        it 'raises argument error for invalid bucket names' do
          lambda {
            client.send(method, opts.merge(:bucket_name => 'bad name'))
          }.should raise_error(ArgumentError, /bucket_name/)
        end

        it 'adds location constraints to request body' do
          r = client.send(:create_bucket, opts.merge(:location => 'EU'))
          r.http_request.body.should
            match("<LocationConstraint>EU</LocationConstraint>")
        end

        it 'accepts :acl as a symbol converting it to a string with dashes' do
          resp = client.create_bucket(opts.merge(:acl => :foo_bar_yuck))
          resp.http_request.headers['x-amz-acl'].should == 'foo-bar-yuck'
        end

      end

      context '#list_buckets' do

        let(:method) { :list_buckets }

        let(:opts) { {} }

        it_should_behave_like "an s3 http request", 'GET'

      end

      context '#delete_bucket' do

        let(:method) { :delete_bucket }

        let(:opts) { { :bucket_name => 'foo' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'DELETE'

      end

      context '#set_bucket_lifecycle_configuration' do
      end

      context '#get_bucket_lifecycle_configuration' do
      end

      context '#delete_bucket_lifecycle_configuration' do
      end

      context '#set_bucket_policy' do

        let(:method) { :set_bucket_policy }

        let(:opts) { { :bucket_name => 'foo', :policy => '{}' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'PUT'

        it_should_behave_like "a subresource request", 'policy'

        it 'should raise an argument error for a missing policy' do
          lambda {
            client.set_bucket_policy(:bucket_name => 'foo')
          }.should raise_error(ArgumentError, /policy/)
        end

        it 'should raise an argument error for invalid JSON' do
          lambda {
            client.set_bucket_policy(:bucket_name => 'foo',
                                     :policy => '{')
          }.should raise_error(ArgumentError, /invalid JSON/)
        end

        it 'should raise an argument error for an object whose to_json method returns invalid JSON' do
          obj = Object.new
          Core::MetaUtils.extend_method(obj, :to_json) { "{" }
          lambda {
            client.set_bucket_policy(:bucket_name => 'foo',
                                     :policy => obj)
          }.should raise_error(ArgumentError, /invalid JSON/)
        end

        it 'should send the policy in the request body' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.body.should == opts[:policy]
          end
          client.set_bucket_policy(opts)
        end

        it 'should convert the policy to JSON before sending it' do
          policy = Object.new
          policy.stub(:to_json).and_return("{}")
          http_handler.should_receive(:handle).with do |req, resp|
            req.body.should == "{}"
          end
          client.set_bucket_policy(opts.merge(:policy => policy))
        end

      end

      context '#get_bucket_versioning' do

        let(:method) { :get_bucket_versioning }

        let(:opts) { { :bucket_name => 'foo' } }

        it_should_behave_like "an s3 http request", 'GET'

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "a subresource request", 'versioning'

      end

      context '#get_bucket_location' do

        let(:method) { :get_bucket_location }

        let(:opts) { { :bucket_name => 'foo' } }

        it_should_behave_like "an s3 http request", 'GET'

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "a subresource request", 'location'

        it 'returns nil for missing location constraint' do
          new_client = client.with_http_handler do |req, resp|
            resp.body = <<-XML.strip
              <?xml version="1.0" encoding="UTF-8"?>
              <LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/"/>
            XML
          end
          r = new_client.get_bucket_location(:bucket_name => 'foo')
          r.location_constraint.should be_nil
        end

        it 'returns strings for buckets with location constraints' do
          new_client = client.with_http_handler do |req, resp|
            resp.body = <<-XML.strip
              <?xml version="1.0" encoding="UTF-8"?>
              <LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/">EU</LocationConstraint>
            XML
          end
          r = new_client.get_bucket_location(:bucket_name => 'foo')
          r.location_constraint.should == 'EU'
        end

      end

      context '#set_bucket_versioning' do

        let(:method) { :set_bucket_versioning }

        let(:opts) { { :bucket_name => 'foo', :state => :enabled } }

        it_should_behave_like "an s3 http request", 'PUT'

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "a subresource request", 'versioning'

        it 'should accept enabled and suspended as strings and symbols' do
          lambda {
            client.set_bucket_versioning(opts.merge(:state => :enabled))
            client.set_bucket_versioning(opts.merge(:state => :suspended))
            client.set_bucket_versioning(opts.merge(:state => 'enabled'))
            client.set_bucket_versioning(opts.merge(:state => 'suspended'))
          }.should_not raise_error
        end

        it 'should not accept other states' do
          lambda {
            client.set_bucket_versioning(opts.merge(:state => :foo))
          }.should raise_error(ArgumentError, /versioning state/)
        end

        it 'should make a request with a versioning configuration' do
          req_body = nil
          client.with_http_handler do |req, resp|
            req_body = req.body
          end.set_bucket_versioning(opts)
          req_body.should match(/<VersioningConfiguration/)
        end

        it 'should make a request with the proper xml namespace' do
          req_body = nil
          client.with_http_handler do |req, resp|
            req_body = req.body
          end.set_bucket_versioning(opts)
          req_body.should match(S3::Client::XMLNS)
        end

        it 'should make a request with the proper state' do
          req_body = nil
          client.with_http_handler do |req, resp|
            req_body = req.body
          end.set_bucket_versioning(opts.merge(:state => :suspended))
          req_body.should match(/<Status>Suspended<\/Status>/)
        end

        it 'should include the x-amz-mfa header for MFA versioning requests' do
          req_headers = req_body = nil
          client.with_http_handler do |req, resp|
            req_body = req.body
            req_headers = req.headers
          end.set_bucket_versioning(opts.merge(:state      => :enabled,
                                               :mfa_delete => :enabled,
                                               :mfa        => '123456 7890'
                                              ))
          req_body.should match(/<MfaDelete>Enabled<\/MfaDelete>/)
          req_headers['x-amz-mfa'].should == '123456 7890'
        end
      end

      context '#get_bucket_policy' do

        let(:method) { :get_bucket_policy }

        let(:opts) { { :bucket_name => 'foo' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'GET'

        it_should_behave_like "a subresource request", 'policy'

        it_should_behave_like 'parses response'

      end

      context '#list_object_versions' do

        let(:method) { :list_object_versions }

        let(:opts) { { :bucket_name => 'foo' } }

        it_should_behave_like "an s3 http request", 'GET'

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "a subresource request", 'versions'

        it 'should add :delimiter as a "delimiter"' do
          should_add_param_as(:delimiter, 'delimiter')
        end

        it 'should add :key_marker as a "key-marker"' do
          should_add_param_as(:key_marker, 'key-marker')
        end

        it 'should add :max_keys as a "max-keys"' do
          should_add_param_as(:max_keys, 'max-keys')
        end

        it 'should add :prefix as a "prefix"' do
          should_add_param_as(:prefix, 'prefix')
        end

        it 'should add :version_id_marker as a "version-id-marker"' do
          should_add_param_as(:version_id_marker, 'version-id-marker')
        end

      end

      context '#delete_bucket_policy' do

        let(:method) { :delete_bucket_policy }

        let(:opts) { { :bucket_name => 'foo' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'DELETE'

        it_should_behave_like "a subresource request", 'policy'

      end

      context '#set_bucket_acl' do

        let(:method) { :set_bucket_acl }

        let(:opts) { { :bucket_name => 'foo', :acl => '<acl/>' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'PUT'

        it_should_behave_like "a subresource request", 'acl'

        it_should_behave_like "accepts an ACL"

        it_should_behave_like "accepts simplified ACL header options"

        it 'is aliased as put_bucket_acl' do
          client.method(:put_bucket_acl).should ==
            client.method(:set_bucket_acl)
        end

      end

      context '#get_bucket_acl' do

        let(:method) { :get_bucket_acl }

        let(:opts) { { :bucket_name => 'foo' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'GET'

        it_should_behave_like "a subresource request", 'acl'

      end

      context '#set_object_acl' do

        let(:method) { :set_object_acl }

        let(:opts) { { :bucket_name => 'foo', :key => 'bar', :acl => '<acl/>' } }

        it 'is aliased as put_object_acl' do
          client.method(:put_object_acl).should ==
            client.method(:set_object_acl)
        end

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "requires key"

        it_should_behave_like "an s3 http request", 'PUT'

        it_should_behave_like "a subresource request", 'acl'

        it_should_behave_like "accepts an ACL"

        it_should_behave_like "accepts simplified ACL header options"

        it 'should accept a canned ACL as a symbol' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.headers["x-amz-acl"].should == "public-read"
          end
          client.send(method, opts.merge(:acl => :public_read))
        end

      end

      context '#get_object_acl' do

        let(:method) { :get_object_acl }

        let(:opts) { { :bucket_name => 'foo', :key => 'bar' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "requires key"

        it_should_behave_like "an s3 http request", 'GET'

        it_should_behave_like "a subresource request", 'acl'

        it 'should read the headers on success' do
          r = client.with_http_handler do |req, resp|
            resp.headers['content-type'] = ['text/plain']
            resp.headers['content-encoding'] = ['gzip']
            resp.headers['cache-control'] = ['max-age=1296000']
            resp.headers['expires'] = ['Sat, 22 Mar 2014 14:14:21 GMT']
            resp.headers['accept-ranges'] = ['bytes']
            resp.headers['x-amz-meta-Color'] = ['red']
            resp.headers['x-amz-meta-foo'] = 'bar'
          end.head_object(opts)
          r[:content_type].should eq('text/plain')
          r[:content_encoding].should eq('gzip')
          r[:cache_control].should eq('max-age=1296000')
          r[:accept_ranges].should eq('bytes')
          r[:meta].should eq('Color' => 'red', 'foo' => 'bar')
        end

      end

      context '#put_object' do

        let(:method) { :put_object }

        let(:opts)    { {:bucket_name => 'foo', :key => 'some/key', :data => 'HELLO'} }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'PUT'

        it_should_behave_like "accepts simplified ACL header options"

        it_should_behave_like "requires key"

        it_should_behave_like "returns version id"

        it_should_behave_like "returns etag"

        it_should_behave_like "returns server_side_encryption"

        it_should_behave_like "returns last_modified"

        it_should_behave_like "sends metadata headers", true

        it_should_behave_like "accepts input data"

      end

      context '#copy_object' do

        let(:method) { :copy_object }

        let(:opts) {{
          :bucket_name => 'foo',
          :key => 'some/key',
          :copy_source => 'bar'
        }}

        it_should_behave_like "accepts simplified ACL header options"

        it_should_behave_like "an s3 http request", 'PUT'

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "requires key"

        it_should_behave_like "returns version id"

        it_should_behave_like "returns etag"

        it_should_behave_like "returns last_modified"

        it_should_behave_like "returns server_side_encryption"

        it_should_behave_like "sends metadata headers", false

        it_should_behave_like "sends option as header", :content_type, "Content-Type"

        it 'requires :copy_source' do
          opts.delete(:copy_source)
          lambda { client.copy_object(opts) }.
            should raise_error(ArgumentError, /copy_source/)
        end

        it 'sends :copy_source url-encoded as the x-amz-copy-source header' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.headers["x-amz-copy-source"].should == "foo%20bar"
          end
          client.copy_object(opts.merge(:copy_source => "foo bar"))
        end

        it 'only escapes path elements in :copy_source' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.headers["x-amz-copy-source"].should == "foo/bar%20baz"
          end
          client.copy_object(opts.merge(:copy_source => "foo/bar baz"))
        end

      end

      context '#get_object' do

        let(:method) { :get_object }

        let(:opts) { { :bucket_name => 'foo', :key => 'some/key' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'GET'

        it_should_behave_like "accepts version id"

        it_should_behave_like "returns version id"

        it_should_behave_like "returns server_side_encryption"

        it_should_behave_like "sends option as header", :range, "Range"
        it_should_behave_like "sends option as header", :if_modified_since, "If-Modified-Since"
        it_should_behave_like "sends option as header", :if_unmodified_since, "If-Unmodified-Since"
        it_should_behave_like "sends option as header", :if_match, "If-Match"
        it_should_behave_like "sends option as header", :if_none_match, "If-None-Match"

        it_should_behave_like "formats date header", :if_modified_since, "If-Modified-Since"
        it_should_behave_like "formats date header", :if_unmodified_since, "If-Unmodified-Since"

        context ':range option' do
          it 'calculates the correct range for an inclusive Range object' do
            http_handler.should_receive(:handle).with do |req, resp|
              req.headers["range"].should == "bytes=3-10"
            end
            client.get_object(opts.merge(:range => (3..10)))
          end

          it 'calculates the correct range for an exclusive Range object' do
            http_handler.should_receive(:handle).with do |req, resp|
              req.headers["range"].should == "bytes=3-9"
            end
            client.get_object(opts.merge(:range => (3...10)))
          end
        end

        context 'response' do

          let(:body) { "FOO DATA" }

          it 'should return the response body from the data method' do
            http_handler.stub(:handle) do |req, resp|
              resp.body = body
            end
            client.get_object(opts).data[:data].should == "FOO DATA"
          end

          it 'should read the response body on success' do
            got_handle = nil
            got_resp = nil
            http_handler.stub(:handle_async) do |req, resp, handle|
              got_resp = resp
              got_handle = handle
            end
            r = client.get_object(opts.merge(:async => true))
            got_resp.body = body
            got_resp.status = 200
            got_handle.signal_success
            r.data[:data].should == "FOO DATA"
          end

        end

      end

      context '#head_object' do

        let(:method) { :head_object }

        let(:opts) { { :bucket_name => 'foo', :key => 'some/key' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'HEAD'

        it_should_behave_like "accepts version id"

        it_should_behave_like "returns version id"

        it_should_behave_like "returns etag"

        it_should_behave_like "returns last_modified"

        it_should_behave_like "returns server_side_encryption"

        context 'response' do

          it 'should return x-amz-meta- header elements in a hash' do
            client = with_http_handler do |req, resp|
              # and it should also deal with singular values
              resp.headers['x-amz-meta-foo'] = 'bar'
              # and it should also deal with singular values in arrays
              resp.headers['x-amz-meta-Color'] = ['red']
            end
            resp = client.head_object(opts)
            resp.meta.should == {
              'foo' => 'bar',
              'Color' => 'red',
            }
          end

          it 'should read the headers on success' do
            r = client.with_http_handler do |req, resp|
              resp.headers['content-type'] = ['text/plain']
              resp.headers['content-encoding'] = ['gzip']
              resp.headers['cache-control'] = ['max-age=1296000']
              resp.headers['expires'] = ['Sat, 22 Mar 2014 14:14:21 GMT']
              resp.headers['accept-ranges'] = ['bytes']
              resp.headers['x-amz-meta-Color'] = ['red']
              resp.headers['x-amz-meta-foo'] = 'bar'
            end.head_object(opts)
            r[:content_type].should eq('text/plain')
            r[:content_encoding].should eq('gzip')
            r[:cache_control].should eq('max-age=1296000')
            r[:expires].should eq('Sat, 22 Mar 2014 14:14:21 GMT')
            r[:accept_ranges].should eq('bytes')
            r[:meta].should eq('Color' => 'red', 'foo' => 'bar')
          end

          it 'should return the content-type as a string' do
            response = client.with_http_handler do |req, resp|
              resp.headers['ETag'] = ['abcxyz']
            end.head_object(opts)
            response.etag.should == 'abcxyz'
          end

          it 'should return the content length header as an integer' do
            response = client.with_http_handler do |req, resp|
              resp.headers['content-length'] = ['12345']
            end.head_object(opts)
            response.content_length.should == 12345
          end

          it 'defaults expiration date and rule id to nil' do
            r = client.with_http_handler do |req, resp|
              resp.headers['x-amz-expiration'] = nil
            end.head_object(opts)
            r[:expiration_date].should be(nil)
            r[:expiration_rule_id].should be(nil)
          end

          it 'parses x-amz-expiration headers' do
            r = client.with_http_handler do |req, resp|
              resp.headers['x-amz-expiration'] =
                ["expiry-date=\"Fri, 27 Jan 2012 00:00:00 GMT\", rule-id=\"temp-rule\""]
            end.head_object(opts)
            r.expiration_date.should be_a(DateTime)
            r.expiration_date.to_s.should == "2012-01-27T00:00:00+00:00"
            r.expiration_rule_id.should be_a(String)
            r.expiration_rule_id.should == 'temp-rule'
          end

          it 'defaults restore_expiration_date and progress to nil' do
            r = client.with_http_handler do |req, resp|
              resp.headers['x-amz-restore'] = nil
            end.head_object(opts)
            r[:restore_expiration_date].should be(nil)
            r[:restore_in_progress].should be(false)
          end

          it 'parses x-amz-restore headers' do
            r = client.with_http_handler do |req, resp|
              resp.headers['x-amz-restore'] =
                ['x-amz-restore: ongoing-request="false", expiry-date="Fri, 27 Jan 2012 00:00:00 GMT"']
            end.head_object(opts)
            r.restore_expiration_date.should be_a(DateTime)
            r.restore_expiration_date.to_s.should == "2012-01-27T00:00:00+00:00"
            r.restore_in_progress.should == false

            r = client.with_http_handler do |req, resp|
              resp.headers['x-amz-restore'] =
                ['x-amz-restore: ongoing-request="true", expiry-date="Fri, 27 Jan 2012 00:00:00 GMT"']
            end.head_object(opts)
            r.restore_in_progress.should == true
          end

          it 'parses x-amz-restore headers while restore is in-progress' do
            r = client.with_http_handler do |req, resp|
              resp.headers['x-amz-restore'] =
                ['x-amz-restore: ongoing-request="true"']
            end.head_object(opts)
            r.restore_in_progress.should == true
          end

        end

      end

      context '#delete_object' do

        let(:method) { :delete_object }

        let(:opts) { { :bucket_name => 'foo', :key => 'some/key' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'DELETE'

        it_should_behave_like "requires key"

        it_should_behave_like "returns version id"

        it_should_behave_like "accepts version id"

        it_should_behave_like "accepts mfa credentials"
      end

      context '#delete_objects' do

        let(:method) { :delete_object }

        let(:opts) { { :bucket_name => 'foo', :key => 'some/key' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "accepts mfa credentials"

        #it_should_behave_like "an s3 http request", 'POST'

      end

      context '#list_objects' do

        let(:method) { :list_objects }

        let(:opts) { { :bucket_name => 'foo' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'GET'

        it 'should add :delimiter as a "delimiter"' do
          should_add_param_as(:delimiter, 'delimiter')
        end

        it 'should add :key_marker as a "key-marker"' do
          should_add_param_as(:marker, 'marker')
        end

        it 'should add :max_keys as a "max-keys"' do
          should_add_param_as(:max_keys, 'max-keys')
        end

        it 'should add :prefix as a "prefix"' do
          should_add_param_as(:prefix, 'prefix')
        end

      end

      context '#initiate_multipart_upload' do

        let(:method) { :initiate_multipart_upload }

        let(:opts) { { :bucket_name => 'foo', :key => 'bar' } }

        it_should_behave_like "accepts simplified ACL header options"

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "requires key"

        it_should_behave_like "an s3 http request", 'POST'

        it_should_behave_like "a subresource request", 'uploads'

        it_should_behave_like "sends metadata headers", true

        it_should_behave_like "returns server_side_encryption"

      end

      context '#list_multipart_uploads' do

        let(:method) { :list_multipart_uploads }

        let(:opts) { { :bucket_name => 'foo' } }

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "an s3 http request", 'GET'

        it_should_behave_like "a subresource request", 'uploads'

        it 'should add :delimiter as a "delimiter"' do
          should_add_param_as(:delimiter, 'delimiter')
        end

        it 'should add :key_marker as a "key-marker"' do
          should_add_param_as(:key_marker, 'key-marker')
        end

        it 'should add :max_keys as a "max-keys"' do
          should_add_param_as(:max_keys, 'max-keys')
        end

        it 'should add :upload_id_marker as a "upload-id-marker"' do
          should_add_param_as(:upload_id_marker, 'upload-id-marker')
        end

        it 'should add :max_uploads as a "max-uploads"' do
          should_add_param_as(:max_uploads, 'max-uploads')
        end

        it 'should add :prefix as a "prefix"' do
          should_add_param_as(:prefix, 'prefix')
        end

      end

      shared_examples_for "accepts upload_id" do

        it 'requires upload_id' do
          opts.delete(:upload_id)
          lambda { client.send(method, opts) }.
            should raise_error(ArgumentError, /upload_id/)
        end

        it 'sends :upload_id as uploadId' do
          should_add_param_as(:upload_id, 'uploadId')
        end

      end

      context '#upload_part' do

        let(:method) { :upload_part }

        let(:opts) do
          { :bucket_name => 'foo',
            :key => 'bar',
            :upload_id => 'abc123',
            :part_number => 21,
            :data => "HELLO" }
        end

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "requires key"

        it_should_behave_like "an s3 http request", 'PUT'

        it_should_behave_like "accepts input data"

        it_should_behave_like "accepts upload_id"

        it_should_behave_like "returns etag"

        it_should_behave_like "returns last_modified"

        it_should_behave_like "returns server_side_encryption"

        it 'requires part_number' do
          opts.delete(:part_number)
          lambda { client.upload_part(opts) }.
            should raise_error(ArgumentError, /part_number/)
        end

        it 'sends :part_number as partNumber' do
          should_add_param_as(:part_number, 'partNumber')
        end

      end

      context '#complete_multipart_upload' do

        let(:method) { :complete_multipart_upload }

        let(:opts) do
          { :bucket_name => 'foo',
            :key => 'bar',
            :upload_id => 'abc123',
            :parts =>
            [{ :part_number => 1,
               :etag => 'foo' }] }
        end

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "requires key"

        it_should_behave_like "an s3 http request", 'POST'

        it_should_behave_like "accepts upload_id"

        it_should_behave_like "returns version id"

        it_should_behave_like "returns server_side_encryption"

        context 'errors in the response body' do

          let(:error_response) do
            "<Error><Code>AccessDenied</Code><Message>Access Denied</Message></Error>"
          end

          before(:each) do
            Kernel.stub!(:sleep)
            http_handler.stub(:handle) do |req, resp|
              resp.body = error_response
            end
          end

          it 'should retry' do
            http_handler.should_receive(:handle).exactly(4).times do |req, resp|
              resp.body = error_response
            end
            client.complete_multipart_upload(opts) rescue nil
          end

          it 'should raise a modeled exception' do
            lambda do
              client.complete_multipart_upload(opts)
            end.should raise_error(Errors::AccessDenied, /Access Denied/)
          end

        end

        it 'requires parts' do
          no_parts = opts.dup
          no_parts.delete(:parts)
          lambda { client.complete_multipart_upload(no_parts) }.
            should raise_error(ArgumentError, /parts/)
        end

        it 'requires at least one part' do
          lambda do
            client.complete_multipart_upload(opts.merge(:parts => []))
          end.should raise_error(ArgumentError, /must contain at least one entry/)
        end

        context 'each part' do

          it 'must be a hash' do
            my_opts = opts.merge(:parts => [12])
            lambda { client.complete_multipart_upload(my_opts) }.
              should raise_error(ArgumentError, /must be an array of hashes/)
          end

          it 'requires a part number' do
            my_opts = opts.merge(:parts => [{ :etag => 'foo' }])
            lambda { client.complete_multipart_upload(my_opts) }.
              should raise_error(ArgumentError, /must contain part_number for each part/)
          end

          it 'requires an etag' do
            my_opts = opts.merge(:parts => [{ :part_number => 1 }])
            lambda { client.complete_multipart_upload(my_opts) }.
              should raise_error(ArgumentError, /must contain etag for each part/)
          end

          context 'each part number' do

            it 'must be greater than 0' do
              my_opts = opts.merge(:parts => [{ :part_number => 0,
                                                :etag => 'foo' }])
              lambda { client.complete_multipart_upload(my_opts) }.
                should raise_error(ArgumentError, /must not have part numbers less than 1/)
            end

          end

        end

        it 'sends :parts as an XML request body' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.body.xml_cleanup.should == "<CompleteMultipartUpload>"+
              "<Part><PartNumber>1</PartNumber><ETag>foo</ETag></Part>"+
              "<Part><PartNumber>2</PartNumber><ETag>bar</ETag></Part>"+
              "</CompleteMultipartUpload>"
          end
          my_opts = opts.merge(:parts => [{ :part_number => 1,
                                            :etag => 'foo' },
                                          { :part_number => 2,
                                            :etag => 'bar' }])
          client.complete_multipart_upload(my_opts)
        end

        it 'converts the part number to an integer' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.body.xml_cleanup.should == "<CompleteMultipartUpload>"+
              "<Part><PartNumber>1</PartNumber><ETag>foo</ETag></Part>"+
              "</CompleteMultipartUpload>"
          end
          my_opts = opts.merge(:parts => [{ :part_number => "1",
                                            :etag => 'foo' }])
          client.complete_multipart_upload(my_opts)
        end

        it 'escapes XML characters in the etag' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.body.xml_cleanup.should == "<CompleteMultipartUpload>"+
              "<Part><PartNumber>1</PartNumber><ETag>foo&amp;bar</ETag></Part>"+
              "</CompleteMultipartUpload>"
          end
          my_opts = opts.merge(:parts => [{ :part_number => 1,
                                            :etag => 'foo&bar' }])
          client.complete_multipart_upload(my_opts)
        end

      end

      context '#abort_multipart_upload' do

        let(:method) { :abort_multipart_upload }

        let(:opts) do
          { :bucket_name => 'foo',
            :key => 'bar',
            :upload_id => 'abc123' }
        end

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "requires key"

        it_should_behave_like "an s3 http request", 'DELETE'

        it_should_behave_like "accepts upload_id"

      end

      context '#list_parts' do

        let(:method) { :list_parts }

        let(:opts) do
          { :bucket_name => 'foo',
            :key => 'bar',
            :upload_id => 'abc123' }
        end

        it_should_behave_like "requires bucket_name"

        it_should_behave_like "requires key"

        it_should_behave_like "an s3 http request", 'GET'

        it_should_behave_like "accepts upload_id"

        it 'sends :max_parts as max-parts' do
          should_add_param_as(:max_parts, 'max-parts')
        end

        it 'sends :part_number_marker as part-number-marker' do
          should_add_param_as(:part_number_marker, 'part-number-marker')
        end

      end

      context '#valid_bucket_name?' do

        def should_pass(name)
          client.valid_bucket_name?(name).should be_true
        end

        def should_fail(name)
          client.valid_bucket_name?(name).should be_false
        end

        context 'accepts letters and' do
          it('should accept lowercasename'){ should_pass('lowercasename') }
          it('should accept MixedCaseName'){ should_pass('MixedCaseName') }
        end

        context 'accepts numbers and' do
          it('should accept 123456'){ should_pass('123456') }
        end

        context 'accepts names between 3 and 255 characters and' do
          it('should accept abc'){ should_pass('abc') }
          it('should reject ab'){ should_fail('ab') }
          it('should accept a 255 char long name'){ should_pass('n'*255) }
          it('should reject a 256 char long name'){ should_fail('n'*256) }
        end

        context 'accepts names with dots and' do
          it('should accept sample.name'){ should_pass('sample.name') }
          it('should accept sample.'){ should_pass('sample.') }
          it('should accept .sample'){ should_pass('.sample') }
        end

        context 'accepts names with underscores and' do
          it('should accept sample_name'){ should_pass('sample_name') }
          it('should accept sample_'){ should_pass('sample_') }
          it('should accept _sample'){ should_pass('_sample') }
        end

        context 'accepts names with dashes and' do
          it('should accept sample-name'){ should_pass('sample-name') }
          it('should accept sample-'){ should_pass('sample-') }
          it('should accept -sample'){ should_pass('-sample') }
        end

        context 'accepts names that look like ip addresses and' do
          it('should accept 1.a.3.4'){ should_pass('1.a.3.4') }
          it('should accept 1.2.3.4'){ should_pass('1.2.3.4') }
        end

        it 'only accepts A-Z a-z 0-9 . _ - characters' do
          valid = ('A'..'Z').to_a + ('a'..'z').to_a + ('0'..'9').to_a + ['.', '_', '-']
          invalid = (1..255).collect{|n| n.chr } - valid
          invalid.each{|bad_char| should_fail("abc#{bad_char}") }
        end

        let (:valid_names) { ["foo",
                              "1234",
                              "a1.b2-c3_d4",
                              "r"*255,
                              ".bla",
                              "-bla",
                              "_bla",
                              "1.2.3.4"] }

        let (:invalid_names) { ["it",
                                "r"*256,
                                "it!"] }

        it 'should return true for valid names' do
          valid_names.each do |name|
            name.should satisfy { client.valid_bucket_name?(name) }
          end
        end

        it 'should return false for invalid names' do
          invalid_names.each do |name|
            name.should_not satisfy { client.valid_bucket_name?(name) }
          end
        end

      end

      context '#dns_compatible_bucket_name?' do

        def should_pass(name)
          client.dns_compatible_bucket_name?(name).should be_true
        end

        def should_fail(name)
          client.dns_compatible_bucket_name?(name).should be_false
        end

        it 'should reject names that are not valid bucket names' do
          client.stub(:valid_bucket_name?).with('hook').and_return(false)
          should_fail('hook')
        end

        it('should accept a 63 char long name') { should_pass('n'*63) }
        it('should reject a 64 char long name') { should_fail('n'*64) }
        it('should reject names with _') { should_fail('abc_xyz') }
        it('should reject names ending with -') { should_fail('abc-') }
        it('should reject names ending with .') { should_fail('abc.') }
        it('should reject names containing ..') { should_fail('abc..xyz') }
        it('should reject names containing .-') { should_fail('abc.-xyz') }
        it('should reject names containing -.') { should_fail('abc-.xyz') }
        it('should reject names containing upper case') { should_fail('abC')}

        let (:compatible_names) { ["myawsbucket",
                                   "my.aws.bucket",
                                   "myawsbucket.1",
                                   "foo",
                                   "1234",
                                   "a1.b2-c3.d4",
                                   "r"*63] }

        let (:incompatible_names) { [".myawsbucket",
                                     "myawsbucket.",
                                     "my..awsbucket",
                                     "it",
                                     "r"*64,
                                     "it!",
                                     ".bla",
                                     "-bla",
                                     "_bla",
                                     "1.2.3.4",
                                     "a-.b",
                                     "a..b",
                                     "a-",
                                     "a_b"] }

        it 'should return true for various compatible names' do
          compatible_names.each do |name|
            name.should satisfy { client.dns_compatible_bucket_name?(name) }
          end
        end

        it 'should return false for various incompatible names' do
          incompatible_names.each do |name|
            name.should_not satisfy { client.dns_compatible_bucket_name?(name) }
          end
        end

      end

      it 'retries request timeout errors' do
        resp = Core::Response.new
        resp.http_response = Core::Http::Response.new
        resp.http_response.status = 400
        resp.error = AWS::S3::Errors::RequestTimeout.new
        Client.new.send(:retryable_error?, resp).should be(true)
      end

    end

  end
end
