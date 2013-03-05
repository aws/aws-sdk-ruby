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

    describe S3Object do

      it_behaves_like 'an S3 model object', Bucket.new('foobucket'), 'foo'

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('foobucket', :config => config, :s3_client => client) }

      let(:object) { S3Object.new(bucket, 'foo') }

      it_behaves_like('it has an ACL',
                      :set_method => :put_object_acl,
                      :get_method => :get_object_acl,
                      :options => {
                        :bucket_name => "foobucket",
                        :key => "foo"
                      }) do
        let(:model_obj) { object }
      end

      it 'should have a key' do
        object.key.should == "foo"
      end

      it 'should have a bucket' do
        object.bucket.should == bucket
      end

      context '#inspect' do

        it 'should include the object bucket and key' do
          object.inspect.should ==
            "<AWS::S3::S3Object:foobucket/foo>"
        end

      end

      context '#==' do

        context 'same class' do

          it 'should return true if the bucket and key match' do
            object.should == described_class.new(bucket, "foo")
          end

          it 'should return false if the bucket does not match' do
            object.should_not == described_class.new(Bucket.new("barbucket"),
                                                     "foo")
          end

          it 'should return false if the ID does not match' do
            object.should_not == described_class.new(bucket, "bar")
          end

        end

        context 'different class' do

          it 'should return false' do
            imposter_class = Class.new(DelegateClass(described_class)) do
              define_method(:bucket) { bucket }
              define_method(:key) { "foo" }
            end
            object.should_not == imposter_class.new(object)
          end

        end

      end

      context '#exists?' do

        it 'should call head_object' do
          client.should_receive(:head_object).
            with(:bucket_name => "foobucket",
                 :key => "foo").and_return(client.stub_for(:head_object))
          object.exists?
        end

        it 'should return true if the request is successful' do
          object.exists?.should be_true
        end

        it 'should return false if a NoSuchKey error is raised' do
          client.stub(:head_object).
            and_raise(Errors::NoSuchKey.new(double("req"),
                                            double("resp",
                                                   :status => 404,
                                                   :body => '')))
          object.exists?.should be_false
        end

        it 'should not intercept other kinds of errors' do
          client.stub(:head_object).and_raise("FOO")
          lambda { object.exists? }.should raise_error("FOO")
        end

      end

      context '#write' do

        context ':reduced_redundancy' do

          it 'converts this options to :storage_class when true' do
            client.should_receive(:put_object).
              with(hash_including(:storage_class => 'REDUCED_REDUNDANCY')).
              and_return(client.stub_for(:put_object))
            object.write "data", :reduced_redundancy => true
          end

          it 'omits :storage_class when false' do
            client.should_receive(:put_object).
              with(hash_not_including(:storage_class)).
              and_return(client.stub_for(:put_object))
            object.write "data", :reduced_redundancy => false
          end

          it 'omits :storage_class not specified' do
            client.should_receive(:put_object).
              with(hash_not_including(:storage_class)).
              and_return(client.stub_for(:put_object))
            object.write "data", :reduced_redundancy => false
          end

        end

        context 'with no arguments' do

          it 'should raise an argument error' do
            lambda {
              object.write
            }.should raise_error(ArgumentError)
          end

        end

        context 'with a string' do

          it 'should call put_object with the bucket, key and data' do
            client.should_receive(:put_object).with do |options|
              options[:bucket_name].should eq('foobucket')
              options[:key].should eq('foo')
              options[:data].should be_a(StringIO)
              options[:data].read.should eq('HELLO')
              options
            end.and_return(client.stub_for(:put_object))
            object.write("HELLO")
          end

        end

        context 'with a file path' do

          it 'should call put_object with the bucket, key and data' do

            f = Tempfile.new("test")
            f.write "abc"
            f.rewind

            # 1.9 supports encoding, 1.8 does not
            if Object.const_defined?(:Encoding)
              File.should_receive(:open).
                with(f.path, 'rb', :encoding => "BINARY").
                and_return(f)
            else
              File.should_receive(:open).with(f.path, 'rb').and_return(f)
            end

            client.should_receive(:put_object).
              with(:bucket_name => "foobucket",
                   :key => "foo",
                   :content_length => 3,
                   :data => f).
              and_return(client.stub_for(:put_object))

            object.write(:file => f.path)

          end

          it 'should raise an error if there is a data argument' do
            lambda do
              object.write("HELLO", :file => "HELLO")
            end.should raise_error(ArgumentError, /data passed multiple ways/)
          end

        end

        context 'with a data option' do

          it 'should call put_object with the bucket, key and data' do

            io = double('io', :size => 5)
            StringIO.should_receive(:new).
              with('HELLO').
              and_return(io)

            client.should_receive(:put_object).
              with(:bucket_name => "foobucket",
                   :key => "foo",
                   :data => io,
                   :content_length => 5).
              and_return(client.stub_for(:put_object))
            object.write(:data => "HELLO")
          end

        end

        context 'low-level options' do

          context 'with data' do

            it 'should pass the content_md5 option' do
              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo",
                     :data => instance_of(StringIO),
                     :content_length => 5,
                     :content_md5 => "62HurZDjuJnGvL4nrFgWYA==").
              and_return(client.stub_for(:put_object))
              object.write("HELLO", :content_md5 => "62HurZDjuJnGvL4nrFgWYA==")
            end

          end

          context 'with no data' do

            it 'should pass the content_md5 option' do
              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo",
                     :data => instance_of(StringIO),
                     :content_length => 0,
                     :content_md5 => "62HurZDjuJnGvL4nrFgWYA==").
              and_return(client.stub_for(:put_object))
              object.write('', :content_md5 => "62HurZDjuJnGvL4nrFgWYA==")
            end

          end

          context 'with acl options' do

            it 'should convert symbolized canned acls to strings' do
              client.should_receive(:put_object).with(hash_including({
                :acl => :public_read,
              })).and_return(client.stub_for(:put_object))
              object.write('data', :acl => :public_read)
            end

            it 'passes :grant_* options along to the client' do
              client.should_receive(:put_object).with(hash_including({
                :grant_read => 'read',
                :grant_write => 'write',
                :grant_read_acp => 'read-acp',
                :grant_write_acp => 'read-acp',
                :grant_full_control => 'full-control',
              })).and_return(client.stub_for(:put_object))
              object.write('data',
                :grant_read => 'read',
                :grant_write => 'write',
                :grant_read_acp => 'read-acp',
                :grant_write_acp => 'read-acp',
                :grant_full_control => 'full-control')
            end

          end

          context ':server_side_encryption' do

            it 'should not pass the option by default' do
              client.should_receive(:put_object).
                with(hash_not_including(:server_side_encryption)).
                and_return(client.stub_for(:put_object))
              object.write("HELLO")
            end

            it 'should pass the value from configuration if present' do
              client.should_receive(:put_object).
                with(hash_including(:server_side_encryption => :aes256)).
                and_return(client.stub_for(:put_object))
              object.config.stub(:s3_server_side_encryption => :aes256)
              object.write("HELLO")
            end

            it 'should not pass the option if it is overridden to nil' do
              client.should_receive(:put_object).
                with(hash_not_including(:server_side_encryption)).
                and_return(client.stub_for(:put_object))
              object.config.stub(:s3_server_side_encryption => :aes256)
              object.write("HELLO", :server_side_encryption => nil)
            end

            it 'should allow overriding the config with a different value' do
              client.should_receive(:put_object).
                with(hash_including(:server_side_encryption => :foobar)).
                and_return(client.stub_for(:put_object))
              object.config.stub(:s3_server_side_encryption => :aes256)
              object.write("HELLO", :server_side_encryption => :foobar)
            end

          end

        end

        context 'large data' do

          let(:upload) { double("upload",
                                :add_part => nil) }

          before(:each) do
            object.stub(:multipart_upload).and_yield(upload)
          end

          it 'should perform a multipart upload' do
            object.should_receive(:multipart_upload).and_yield(upload)
            object.write("HELLO", :multipart_threshold => 3)
          end

          it 'should not perform a multipart upload with :single_request' do
            object.should_not_receive(:multipart_upload)
            client.should_receive(:put_object).
              and_return(client.stub_for(:put_object))
            object.write("HELLO",
                         :single_request => true,
                         :multipart_threshold => 3)
          end

          it 'should pass additional options to the multipart_upload call' do
            object.should_receive(:multipart_upload).
              with(:metadata => { "color" => "red" },
                   :data => instance_of(StringIO)).
              and_yield(upload)
            object.write("HELLO",
                         :metadata => { "color" => "red" },
                         :multipart_threshold => 3)
          end

          it 'should default to the multipart threshold from the config' do
            config.stub(:s3_multipart_threshold).and_return(3)
            object.should_receive(:multipart_upload).and_yield(upload)
            object.write("HELLO")
          end

          context 'string' do

            it 'should split the upload into parts' do
              upload.should_receive(:add_part).ordered.with("aa")
              upload.should_receive(:add_part).ordered.with("bb")
              object.write("aabb",
                           :multipart_threshold => 2,
                           :multipart_min_part_size => 2)
            end

            it 'should default to the configured multipart_min_part_size' do
              config.stub(:s3_multipart_min_part_size).and_return(2)
              upload.should_receive(:add_part).ordered.with("aa")
              upload.should_receive(:add_part).ordered.with("bb")
              object.write("aabb",
                           :multipart_threshold => 2)
            end

          end

          context 'stream' do

            it 'should split the upload into parts' do
              upload.should_receive(:add_part).ordered.with("aa")
              upload.should_receive(:add_part).ordered.with("bb")
              object.write(StringIO.new("aabb"),
                           :multipart_threshold => 2,
                           :multipart_min_part_size => 2)
            end

          end

          context 'file' do

            it 'should split the upload into parts' do
              upload.should_receive(:add_part).ordered.with("aa")
              upload.should_receive(:add_part).ordered.with("bb")
              f = Tempfile.new("foo")
              f.write("aabb")
              f.close
              object.write(:file => f.path,
                           :multipart_threshold => 2,
                           :multipart_min_part_size => 2)
            end

          end

        end

        context 'return value' do

          let(:return_value) { object.write("HELLO") }

          let(:resp) { client.new_stub_for(:put_object) }

          before(:each) do
            resp
            client.stub(:put_object).and_return(resp)
          end

          it 'should be the object if no version ID is returned' do
            return_value.should be(object)
          end

          it 'should be an object version with the returned version ID' do
            resp.data[:version_id] = "abc123"
            return_value.should be_an(ObjectVersion)
            return_value.config.should be(config)
            return_value.object.should be(object)
            return_value.version_id.should == "abc123"
          end

        end

      end

      context '#multipart_upload' do

        before(:each) do
          client.stub(:initiate_multipart_upload).
            and_return(double("response",
                              :upload_id => "abc123"))
          client.stub(:abort_multipart_upload)
        end

        it 'should initiate a multipart upload' do
          client.should_receive(:initiate_multipart_upload).
            with(:bucket_name => "foobucket",
                 :key => "foo").
            and_return(double("response",
                              :upload_id => "abc123"))
          object.multipart_upload { |upload| }
        end

        it 'should pass additional options to the initiate call' do
          client.should_receive(:initiate_multipart_upload).
            with(hash_including(:content_type => "application/json")).
            and_return(double("response",
                              :upload_id => "abc123"))
          object.multipart_upload(:content_type =>
                                  "application/json") { |upload| }
        end

        context ':server_side_encryption' do

          it 'should not pass the option by default' do
            client.should_receive(:initiate_multipart_upload).
              with(hash_not_including(:server_side_encryption)).
              and_return(double("response",
                                :upload_id => "abc123"))
            object.multipart_upload { |upload| }
          end

          it 'should pass the value from configuration if present' do
            client.should_receive(:initiate_multipart_upload).
              with(hash_including(:server_side_encryption => :aes256)).
              and_return(double("response",
                                :upload_id => "abc123"))
            object.config.stub(:s3_server_side_encryption => :aes256)
            object.multipart_upload { |upload| }
          end

          it 'should not pass the option if it is overridden to nil' do
            client.should_receive(:initiate_multipart_upload).
              with(hash_not_including(:server_side_encryption)).
              and_return(double("response",
                                :upload_id => "abc123"))
            object.config.stub(:s3_server_side_encryption => :aes256)
            object.multipart_upload(:server_side_encryption => nil) { |upload| }
          end

          it 'should allow overriding the config with a different value' do
            client.should_receive(:initiate_multipart_upload).
              with(hash_including(:server_side_encryption => :foobar)).
              and_return(double("response",
                                :upload_id => "abc123"))
            object.config.stub(:s3_server_side_encryption => :aes256)
            object.multipart_upload(:server_side_encryption =>
                                    :foobar) { |upload| }
          end

        end

        it 'should pass the config' do
          object.multipart_upload.config.should be(config)
        end

        it 'should abort the upload if no parts are added' do
          client.should_receive(:abort_multipart_upload).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :upload_id => "abc123")
          object.multipart_upload {|upload|}
        end

        it 'should abort the upload if an error is raised', :foo => true do

          client.should_receive(:abort_multipart_upload).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :upload_id => "abc123")

          e = StandardError.new('error')

          # after aborting the upload, the error should be re-raised
          begin
            object.multipart_upload do |upload|
              upload.add_part('part')
              raise e
            end
          rescue => error
            error.should eq(e)
          end

        end

        it 'does not abort the upload if an exception is raised' do
          begin
            client.should_not_receive(:abort_multipart_upload)
            object.multipart_upload {|upload| raise Exception.new }
          rescue Exception
            nil
          end
        end

        it 'should not abort the upload if initialization failed' do
          client.should_not_receive(:abort_multipart_upload)
          client.stub(:initiate_multipart_upload).
            and_raise("FOO")
          lambda do
            object.multipart_upload { |upload| }
          end.should raise_error("FOO")
        end

        it 'should complete the upload using the completed parts' do
          client.should_receive(:complete_multipart_upload).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :upload_id => "abc123",
                 :parts => [{ :part_number => 1,
                              :etag => "abc123" },
                            { :part_number => 2,
                              :etag => "def456" }]).
            and_return(client.stub_for(:complete_multipart_upload))
          object.multipart_upload do |upload|
            upload.stub(:completed_parts).
              and_return([{ :part_number => 1,
                            :etag => "abc123" },
                          { :part_number => 2,
                            :etag => "def456" }])
          end
        end

        it 'should yield a MultipartUpload object' do
          obj = double("obj")
          obj.should_receive(:call).with(an_instance_of(MultipartUpload))
          object.multipart_upload { |upload| obj.call(upload) }
        end

        it 'should pass the upload ID to the upload object' do
          object.multipart_upload do |upload|
            upload.upload_id.should == "abc123"
          end
        end

        it 'should pass the S3Object to the upload object' do
          object.multipart_upload do |upload|
            upload.object.should == object
          end
        end

        context 'return value with a block' do

          let(:return_value) do
            object.multipart_upload do |u|
              u.stub(:completed_parts).and_return(completed_parts)
            end
          end

          let(:completed_parts) { [{ :part_number => 1,
                                     :etag => "abc123" },
                                   { :part_number => 2,
                                     :etag => "def456" }] }

          let(:resp) { client.new_stub_for(:complete_multipart_upload) }

          before(:each) do
            resp
            client.stub(:complete_multipart_upload).and_return(resp)
          end

          it 'should be the object if no version ID is returned' do
            return_value.should be(object)
          end

          it 'should be an object version with the returned version ID' do
            resp.data[:version_id] = 'abc123'
            return_value.should be_an(ObjectVersion)
            return_value.config.should be(config)
            return_value.object.should be(object)
            return_value.version_id.should == "abc123"
          end

          context 'when no parts were uploaded' do

            let(:completed_parts) { [] }

            it 'should be nil' do
              return_value.should be_nil
            end

          end

        end

        context 'without a block' do

          it 'should return the upload object' do
            object.multipart_upload.should be_a(MultipartUpload)
          end

          it 'should not complete or abort the upload' do
            client.should_not_receive(:complete_multipart_upload)
            client.should_not_receive(:abort_multipart_upload)
          end

        end

      end

      context '#multipart_uploads' do

        it 'should return an upload collection' do
          uploads = object.multipart_uploads
          uploads.should be_an(ObjectUploadCollection)
          uploads.object.should be(object)
          uploads.config.should be(config)
        end

      end

      context '#delete' do

        it 'should call delete_object' do
          client.should_receive(:delete_object).with(:bucket_name => "foobucket",
                                                     :key => "foo")
          object.delete
        end

        it 'should pass along additional options' do
          client.should_receive(:delete_object).
            with(:bucket_name => "foobucket", :key => "foo", :version_id => 'vid')
          object.delete(:version_id => 'vid')
        end

      end

      context '#read' do

        let(:response) { client.stub_for(:get_object) }

        before(:each) do
          response.data[:data] = 'HELLO'
          client.stub(:get_object).and_return(response)
        end

        it 'should call get_object with the bucket name and key' do
          client.should_receive(:get_object).with(:bucket_name => "foobucket",
                                                  :key => "foo")
          object.read
        end

        it 'returns the object data from #get_object' do
          object.read.should == "HELLO"
        end

        it 'returns the #get_object response data if given a block' do
          resp = object.read do |chunk|
            # reading the data in chunks
          end
          resp.should be(response.data)
        end

      end

      context '#metadata' do

        it 'should return a metadata object' do
          object.metadata.should be_a(ObjectMetadata)
        end

        it 'should pass the object and config to the constructor' do
          ObjectMetadata.should_receive(:new).
            with(object, hash_including(:config => config))
          object.metadata
        end

      end

      context '#head' do

        it 'returns the response from a head_object request' do
          head = double('head-object-response')
          client.stub(:head_object).and_return(head)
          object.head.should == head
        end

        it 'accepts a version_id' do
          response = double('versioned-head-object-response')
          client.should_receive(:head_object).
            with(hash_including(:version_id => '1234')).
            and_return(response)
          object.head(:version_id => '1234')
        end

      end

      context '#etag' do
        it 'returns #etag from the head response' do
          head = { :etag => 'myetag' }
          client.stub(:head_object).and_return(head)
          object.etag.should eq('myetag')
        end
      end

      context '#last_modified' do
        it 'returns #last_modified from the head response' do
          now = Time.now
          head = { :last_modified => now }
          client.stub(:head_object).and_return(head)
          object.last_modified.should eq(now)
        end
      end

      context '#content_length' do
        it 'returns #content_length from the head response' do
          head = { :content_length => 123 }
          client.stub(:head_object).and_return(head)
          object.content_length.should eq(123)
        end
      end

      context '#content_type' do
        it 'returns #content_type from the head response' do
          head = { :content_type => 'text/plain' }
          client.stub(:head_object).and_return(head)
          object.content_type.should eq('text/plain')
        end
      end

      context '#server_side_encryption' do
        it 'returns #server_side_encryption from the head response' do
          head = { :server_side_encryption => :aes256 }
          client.stub(:head_object).and_return(head)
          object.server_side_encryption.should eq(:aes256)
        end
      end

      context '#server_side_encryption?' do

        it 'should return true if server_side_encryption is not nil' do
          object.stub(:server_side_encryption => 'foo')
          object.server_side_encryption?.should be_true
        end

        it 'should return false if server_side_encryption is nil' do
          object.stub(:server_side_encryption => nil)
          object.server_side_encryption?.should be_false
        end

      end

      context '#restore_in_progress?' do
        it 'returns true if the object is being restored' do
          head = { :restore_in_progress => true }
          client.stub(:head_object).and_return(head)
          object.restore_in_progress?.should be(true)
        end

        it 'returns false if the object is not an archive copy' do
          head = { :restore_in_progress => false }
          client.stub(:head_object).and_return(head)
          object.restore_in_progress?.should be(false)
        end
      end

      context '#restore_expiration_date' do
        it 'returns the expiration date if it is an archive copy' do
          time = Time.now
          head = { :restore_expiration_date => time }
          client.stub(:head_object).and_return(head)
          object.restore_expiration_date.should eq(time)
        end
      end

      context '#restored_object?' do
        it 'returns false if the object is not an archive copy' do
          head = { :restore_expiration_date => nil }
          client.stub(:head_object).and_return(head)
          object.restored_object?.should be(false)
        end
      end

      context '#versions' do

        it 'returns a versioned object collection' do
          object.versions.should be_an(ObjectVersionCollection)
        end

      end

      context '#url_for' do

        let(:http_request) { Request.new }

        let(:credential_provider) {
          Core::CredentialProviders::StaticProvider.new({
            :access_key_id => "ACCESS_KEY",
            :secret_access_key => "SECRET",
          })
        }

        before(:each) do
          http_request.stub(:canonicalized_resource).and_return("/foo/bar")
          config.stub(:credential_provider).and_return(credential_provider)
          Request.stub(:new).and_return(http_request)
        end

        it 'should return an HTTPS URI object' do
          object.url_for(:get).should be_a(URI::HTTPS)
        end

        it 'should return an HTTP URI object if :secure is false' do
          object.url_for(:get, :secure => false).should be_a(URI::HTTP)
        end

        it 'should construct an S3 http request object' do
          Request.should_receive(:new).and_return(http_request)
          object.url_for(:get)
        end

        it 'should set the bucket' do
          http_request.should_receive(:bucket=).with("foobucket")
          object.url_for(:get)
        end

        it 'should set the key' do
          http_request.should_receive(:key=).with("foo")
          object.url_for(:get)
        end

        it 'should set the endpoint according to the configuration' do
          object.config.stub(:s3_endpoint).and_return("foo.com")
          http_request.should_receive(:host=).with("foo.com")
          object.url_for(:get)
        end

        it 'should include the version id when provided' do
          http_request.stub(:add_param)
          http_request.should_receive(:add_param).
            with('versionId', 'version-id-string')
          object.url_for(:read, :version_id => 'version-id-string')
        end

        context 'federated sessions' do

          let(:credential_provider) {
            Core::CredentialProviders::StaticProvider.new({
              :access_key_id => "ACCESS_KEY",
              :secret_access_key => "SECRET",
              :session_token => "SESSION_TOKEN",
            })
          }

          it 'adds the security token to the request' do
            http_request.stub(:add_param)
            http_request.should_receive(:add_param).
              with('x-amz-security-token', 'SESSION_TOKEN')
            object.url_for(:get)
          end

        end

        shared_examples_for "presigned url request parameter" do |name, param|

          it "should add #{name.inspect} as #{param}" do
            http_request.stub(:add_param)
            http_request.should_receive(:add_param).with(param, "value")
            object.url_for(:get, Hash[[[name, "value"]]])
          end

          it "should make #{param} part of the string to sign" do
            http_request.should_receive(:canonicalized_resource) do
              http_request.params.map { |p| p.to_s }.
                should include("#{param}=value")
            end
            object.url_for(:get, Hash[[[name, "value"]]])
          end

        end

        it_should_behave_like("presigned url request parameter",
                              :response_content_type, "response-content-type")

        it_should_behave_like("presigned url request parameter",
                              :response_content_language, "response-content-language")

        it_should_behave_like("presigned url request parameter",
                              :response_expires, "response-expires")

        it_should_behave_like("presigned url request parameter",
                              :response_cache_control, "response-cache-control")

        it_should_behave_like("presigned url request parameter",
                              :response_content_disposition, "response-content-disposition")

        it_should_behave_like("presigned url request parameter",
                              :response_content_encoding, "response-content-encoding")


        it 'should add a parameter for the access key' do
          object.url_for(:get).query.split("&").
            should include("AWSAccessKeyId=ACCESS_KEY")
        end

        it 'should add a parameter for the expiration timestamp' do
          Time.stub(:now).and_return(Time.parse("2011-05-23 17:39:04 -0700"))
          object.url_for(:get).query.split("&").
            should include("Expires=1306201144")
        end

        it 'should accept an object that responds to #to_int' do
          Time.stub(:now).and_return(10)
          seconds = double('seconds', :to_int => 10)
          object.url_for(:get, :expires => seconds).
            query.split("&").should include("Expires=20")
        end

        it 'should accept a Time object for :expires' do
          object.url_for(:get, :expires =>
                               Time.parse("2011-05-23 18:39:04 -0700")).
            query.split("&").should include("Expires=1306201144")
        end

        it 'should accept a DateTime object for :expires' do
          object.url_for(:get, :expires =>
                               DateTime.parse("2011-05-23 18:39:04 -0700")).
            query.split("&").should include("Expires=1306201144")
        end

        it 'should accept an integer offset for :expires' do
          Time.stub(:now).and_return(Time.parse("2011-05-23 18:39:00 -0700"))
          object.url_for(:get, :expires => 4).
            query.split("&").should include("Expires=1306201144")
        end

        it 'should accept a string date/time for :expires' do
          object.url_for(:get, :expires => "2011-05-23 18:39:04 -0700").
            query.split("&").should include("Expires=1306201144")
        end

        it 'should use the request host in the URL' do
          http_request.stub(:host).and_return("foo.com")
          object.url_for(:get).host.should == "foo.com"
        end

        it 'should use the request path in the URL' do
          http_request.stub(:path).and_return("/foobar")
          object.url_for(:get).path.should == "/foobar"
        end

        it 'should use the request querystring in the URL' do
          http_request.stub(:querystring).and_return("something=itsvalue")
          object.url_for(:get).query.should == "something=itsvalue"
        end

        it 'should default to the general use_ssl parameter for urls' do
          config.stub(:use_ssl?).and_return true
          object.url_for(:get).scheme.should == "https"
          config.stub(:use_ssl?).and_return false
          object.url_for(:get).scheme.should == "http"
        end

        it 'should prefer :secure over the general use_ssl parameter for urls' do
          config.stub(:use_ssl?).and_return true
          object.url_for(:get, :secure => false).scheme.should == "http"
          config.stub(:use_ssl?).and_return false
          object.url_for(:get, :secure => true).scheme.should == "https"
        end

        it 'should default to the :s3_port value for urls' do
          config.stub(:s3_port).and_return nil
          object.url_for(:get).port.should == 443
          config.stub(:s3_port).and_return 8080
          object.url_for(:get).port.should == 8080
        end

        it 'should prefer :port over the general :s3_port parameter for urls' do
          config.stub(:s3_port).and_return 8080
          object.url_for(:get, :port => 80).port.should == 80
        end

        it 'should default to the general :s3_force_path_style value for urls' do
          config.stub(:s3_force_path_style).and_return false
          url = object.url_for(:get)
          url.host.should == "foobucket.s3.amazonaws.com"
          url.path.should_not =~ /^\/foobucket\//

          config.stub(:s3_force_path_style).and_return true
          url = object.url_for(:get)
          url.host.should == "s3.amazonaws.com"
          url.path.should =~ /^\/foobucket\//
        end

        it 'should prefer :force_path_style over the general :s3_force_path_style parameter for urls' do
          config.stub(:s3_force_path_style).and_return true
          url = object.url_for(:get, :force_path_style => false)
          url.host.should == "foobucket.s3.amazonaws.com"
          url.path.should_not =~ /^\/foobucket\//
        end
      end

      context '#public_url' do

        let(:url) { object.public_url }

        it 'should be an HTTPS URI' do
          url.should be_a(URI::HTTPS)
        end

        it 'should be an HTTP URI if secure is false' do
          object.public_url(:secure => false).should be_a(URI::HTTP)
        end

        context 'dns compatible bucket' do

          it 'should use the subdomain-style host' do
            url.to_s.
              should == "https://foobucket.s3.amazonaws.com/foo"
          end

        end

        context 'dns incompatible bucket' do

          let(:bucket) { Bucket.new("foo..bar", :config => config) }

          it 'should use the path-style url' do
            url.to_s.
              should == "https://s3.amazonaws.com/foo..bar/foo"
          end

        end

      end

      context '#presigned_post' do

        it 'should return a PresignedPost for the object' do
          post = object.presigned_post
          post.should be_a(PresignedPost)
          post.bucket.should be(object.bucket)
          post.key.should == object.key
          post.config.should be(config)
        end

        it 'should pass additional options' do
          PresignedPost.should_receive(:new).
            with(object.bucket,
                 :key => object.key,
                 :foo => "bar")
          object.presigned_post(:foo => "bar")
        end

      end

      context '#reduced_redundancy=' do

        def expect_copy_with_storage_class(sc)
          client.should_receive(:copy_object).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :copy_source => "foobucket/foo",
                 :metadata_directive => "COPY",
                 :storage_class => sc)
        end

        context 'set to true' do

          it 'should set :storage_class to "REDUCED_REDUNDANCY"' do
            expect_copy_with_storage_class("REDUCED_REDUNDANCY")
            object.reduced_redundancy = true
          end

        end

        context 'set to false' do

          it 'should set :storage_class to "STANDARD"' do
            expect_copy_with_storage_class("STANDARD")
            object.reduced_redundancy = false
          end

        end

        it 'should return the assigned value' do
          object.send(:reduced_redundancy=, "foo").should == "foo"
        end

      end

    end

  end
end
