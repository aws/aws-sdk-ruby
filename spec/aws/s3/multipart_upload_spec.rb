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

module AWS
  class S3

    describe MultipartUpload do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('foobucket', :config => config) }

      let(:object) { S3Object.new(bucket, 'foo', :config => config) }

      let(:upload) do
        MultipartUpload.new(object, "abc123")
      end

      before(:each) do
        client.stub_for(:initiate_multipart_upload).
          stub(:upload_id).and_return("abc123")
      end

      context '#initialize' do

        it 'should store the upload id' do
          described_class.new(object, "abc123").id.should == "abc123"
        end

        it 'should store the object' do
          described_class.new(object, "abc123").object.should be(object)
        end

      end

      context '#bucket' do

        it 'returns the object bucket' do
          upload.bucket.should be(bucket)
        end

      end

      context '#inspect' do

        it 'should include the object key and upload id' do
          upload.inspect.should ==
            "<AWS::S3::MultipartUpload:foobucket/foo:abc123>"
        end

      end

      context '#==' do

        context 'same class' do

          it 'should return true if the object and ID match' do
            upload.should == described_class.new(object, "abc123")
          end

          it 'should return false if the object does not match' do
            upload.should_not == described_class.new(S3Object.new(bucket, "bar"),
                                                 "abc123")
          end

          it 'should return false if the ID does not match' do
            upload.should_not == described_class.new(object, "123abc")
          end

        end

        context 'different class' do

          it 'should return false' do
            imposter_class = Class.new(DelegateClass(described_class)) do
              define_method(:object) { object }
              define_method(:id) { "abc123" }
            end
            upload.should_not == imposter_class.new(upload)
          end

        end

      end

      context '#exists?' do

        it 'should call list_parts' do
          client.should_receive(:list_parts).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :upload_id => "abc123")
          upload.exists?
        end

        it 'should return false if NoSuchUpload is raised' do
          client.stub(:list_parts).
            and_raise(S3::Errors::NoSuchUpload.new(double("req"),
                                                   double("resp",
                                                          :body => "FOO",
                                                          :status => 404)))
          upload.exists?.should be_false
        end

        it 'should not rescue other client errors' do
          client.stub(:list_parts).
            and_raise(Errors::ClientError.new(double("req"),
                                              double("resp",
                                                     :body => "BAR",
                                                     :status => 404)))
          lambda { upload.exists? }.should raise_error(Errors::ClientError)
        end

        it 'should return true if nothing is raised' do
          client.stub(:list_parts)
          lambda { upload.exists? }.should_not raise_error
        end

      end

      context '#initiator' do

        let(:resp) { client.new_stub_for(:list_parts) }

        let(:initiator) { double("initiator") }

        before(:each) do
          resp.stub(:initiator).and_return(initiator)
          client.stub(:list_parts).and_return(resp)
        end

        it 'should call list_parts' do
          client.should_receive(:list_parts).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :upload_id => "abc123")
          upload.initiator
        end

        it 'should return the response object for the initiator' do
          upload.initiator.should be(initiator)
        end

      end

      context '#owner' do

        let(:resp) { client.new_stub_for(:list_parts) }

        let(:owner) { double("owner") }

        before(:each) do
          resp.stub(:owner).and_return(owner)
          client.stub(:list_parts).and_return(resp)
        end

        it 'should call list_parts' do
          client.should_receive(:list_parts).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :upload_id => "abc123")
          upload.owner
        end

        it 'should return the response object for the owner' do
          upload.owner.should be(owner)
        end

      end

      context '#storage_class' do

        let(:resp) { client.new_stub_for(:list_parts) }

        before(:each) do
          resp.stub(:storage_class).and_return("REDUCED_REDUNDANCY")
          client.stub(:list_parts).and_return(resp)
        end

        it 'should call list_parts' do
          client.should_receive(:list_parts).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :upload_id => "abc123")
          upload.storage_class
        end

        it 'should return the symbol-ized storage class' do
          upload.storage_class.should == :reduced_redundancy
        end

      end

      context '#reduced_redundancy?' do

        it 'should return true when the storage class is :reduced_redundancy' do
          upload.stub(:storage_class).and_return(:reduced_redundancy)
          upload.reduced_redundancy?.should be_true
        end

        it 'should return false when the storage class is something else' do
          upload.stub(:storage_class).and_return(:foo)
          upload.reduced_redundancy?.should be_false
        end

      end

      context '#abort' do

        it 'should call abort_multipart_upload' do
          client.should_receive(:abort_multipart_upload).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :upload_id => "abc123")
          upload.abort
        end

        it 'should set aborted?' do
          upload.abort
          upload.aborted?.should be_true
        end

      end

      context '#add_part' do

        it 'should call upload_part' do
          client.should_receive(:upload_part).
            with(:bucket_name => "foobucket",
                 :key => "foo",
                 :part_number => 1,
                 :upload_id => "abc123",
                 :data => "HELLO").
            and_return(client.stub_for(:upload_part))
          upload.add_part("HELLO")
        end

        it 'should call upload_part with monotonically increasing part numbers' do
          client.should_receive(:upload_part).
            with(hash_including(:part_number => 1,
                                :data => "ONE")).
            and_return(client.stub_for(:upload_part))
          client.should_receive(:upload_part).
            with(hash_including(:part_number => 2,
                                :data => "TWO")).
            and_return(client.stub_for(:upload_part))
          client.should_receive(:upload_part).
            with(hash_including(:part_number => 3,
                                :data => "THREE")).
            and_return(client.stub_for(:upload_part))
          upload.add_part("ONE")
          upload.add_part("TWO")
          upload.add_part("THREE")
        end

        it 'should use the part number specified in the options' do
          client.should_receive(:upload_part).
            with(hash_including(:part_number => 12)).
            and_return(client.stub_for(:upload_part))
          upload.add_part("HELLO", :part_number => 12)
        end

        it 'should accept a file using a hash argument' do
          client.should_receive(:upload_part).
            with(hash_including(:file => "hello.txt")).
            and_return(client.stub_for(:upload_part))
          upload.add_part(:file => "hello.txt")
        end

        it 'should use the part number specified in the options for a file path upload' do
          client.should_receive(:upload_part).
            with(hash_including(:part_number => 12,
                                :file => "hello.txt")).
            and_return(client.stub_for(:upload_part))
          upload.add_part(:file => "hello.txt", :part_number => 12)
          upload.completed_parts.map { |p| p[:part_number] }.
            should include(12)
        end

        it 'should return a part object with the correct part number' do
          part = upload.add_part("FOO", :part_number => 12)
          part.should be_an(UploadedPart)
          part.part_number.should == 12
          part.upload.should be(upload)
          part.config.should be(config)
        end

      end

      context '#parts' do

        it 'should construct an UploadedPartCollection' do
          parts = upload.parts
          parts.should be_an(UploadedPartCollection)
          parts.upload.should be(upload)
          parts.config.should be(config)
        end

      end

      context '#completed_parts' do

        it 'should return the parts sorted by part number' do
          upload.add_part("TWO", :part_number => 2)
          upload.add_part("ONE", :part_number => 1)
          upload.completed_parts.should ==
            [{ :part_number => 1, :etag => "abc123" },
             { :part_number => 2, :etag => "abc123" }]
        end

        it 'should remove duplicate part uploads' do
          upload.add_part("TWO", :part_number => 2)
          upload.add_part("TWO", :part_number => 2)
          upload.add_part("ONE", :part_number => 1)
          upload.completed_parts.should ==
            [{ :part_number => 1, :etag => "abc123" },
             { :part_number => 2, :etag => "abc123" }]
        end

      end

      context '#close' do

        context 'no parts uploaded' do

          it 'should abort the upload' do
            upload.should_receive(:abort)
            upload.close
          end

        end

        context 'parts uploaded' do

          before(:each) do
            upload.stub(:completed_parts).
              and_return([{ :part_number => 1, :etag => "abc123" },
                          { :part_number => 2, :etag => "abc123" }])
          end

          it 'should complete the upload' do
            upload.should_receive(:complete)
            upload.close
          end

          it 'should not complete or abort an aborted upload' do
            upload.abort
            upload.should_not_receive(:abort)
            upload.should_not_receive(:complete)
            upload.close
          end

        end

      end

      context '#complete' do

        context 'local parts list' do

          before(:each) do
            upload.stub(:completed_parts).
              and_return([{ :part_number => 1, :etag => "abc123" },
                          { :part_number => 2, :etag => "abc123" }])
          end

          it 'should complete the upload using the completed parts' do
            client.should_receive(:complete_multipart_upload).
              with(:bucket_name => "foobucket",
                   :key => "foo",
                   :upload_id => "abc123",
                   :parts => [{ :part_number => 1,
                                :etag => "abc123" },
                              { :part_number => 2,
                                :etag => "abc123" }]).
              and_return(client.stub_for(:complete_multipart_upload))
            upload.complete
          end

          it 'returns an S3Object when version_id is not present' do
            resp = client.stub_for(:complete_multipart_upload)
            client.stub(:complete_multipart_upload).and_return(resp)
            upload.complete.should be(upload.object)
          end

          it 'returns an ObjectVersion when version_id is present' do
            resp = client.stub_for(:complete_multipart_upload)
            resp.data[:version_id] = 'version-id'
            client.stub(:complete_multipart_upload).and_return(resp)
            obj = upload.complete
            obj.should be_a(ObjectVersion)
            obj.object.should be(upload.object)
            obj.version_id.should eq('version-id')
          end

          context 'no parts uploaded' do

            it 'should raise an error' do
              upload.stub(:completed_parts).and_return([])
              lambda { upload.complete }.
                should raise_error("no parts uploaded")
            end

          end

        end

        context 'remote parts list' do

          let(:resp) { client.new_stub_for(:list_parts) }

          let(:response_parts) { [double("part 1",
                                         :etag => 'abc123',
                                         :part_number => 1),
                                  double("part 2",
                                         :etag => '123abc',
                                         :part_number => 2)] }

          before(:each) do
            resp.stub(:parts).and_return(response_parts)
            client.stub(:list_parts).and_return(resp)
          end

          it 'should call list_parts' do
            client.should_receive(:list_parts).
              with(:bucket_name => "foobucket",
                   :key => "foo",
                   :upload_id => "abc123",
                   :max_parts => 1000).
              and_return(resp)
            upload.complete(:remote_parts)
          end

          it 'should call complete_multipart_upload' do
            client.should_receive(:complete_multipart_upload).
              with(:bucket_name => "foobucket",
                   :key => "foo",
                   :upload_id => "abc123",
                   :parts => [{ :part_number => 1,
                                :etag => "abc123" },
                              { :part_number => 2,
                                :etag => "123abc" }]).
              and_return(client.stub_for(:complete_multipart_upload))
            upload.complete(:remote_parts)
          end

          context 'no parts uploaded' do

            it 'should raise an error' do
              resp.stub(:parts).and_return([])
              lambda { upload.complete(:remote_parts) }.
                should raise_error("no parts uploaded")
            end

          end

        end

        context 'list of part numbers' do

          let(:resp) { client.new_stub_for(:list_parts) }

          let(:response_parts) { [double("part 1",
                                         :etag => 'abc123',
                                         :part_number => 1),
                                  double("part 2",
                                         :etag => '123abc',
                                         :part_number => 2),
                                  double("part 3",
                                         :etag => '123abc',
                                         :part_number => 3)] }

          before(:each) do
            resp.stub(:parts).and_return(response_parts)
            client.stub(:list_parts).and_return(resp)
          end

          it 'should call list_parts' do
            client.should_receive(:list_parts).
              with(:bucket_name => "foobucket",
                   :key => "foo",
                   :upload_id => "abc123",
                   :max_parts => 1000).
              and_return(resp)
            upload.complete(1, 3)
          end

          it 'should complete with only the specified parts' do
            client.should_receive(:complete_multipart_upload).
              with(:bucket_name => "foobucket",
                   :key => "foo",
                   :upload_id => "abc123",
                   :parts => [{ :part_number => 1,
                                :etag => "abc123" },
                              { :part_number => 3,
                                :etag => "123abc" }]).
              and_return(client.stub_for(:complete_multipart_upload))
            upload.complete(1, 3)
          end

          it 'should put the part numbers in ascending order' do
            client.should_receive(:complete_multipart_upload).
              with(:bucket_name => "foobucket",
                   :key => "foo",
                   :upload_id => "abc123",
                   :parts => [{ :part_number => 1,
                                :etag => "abc123" },
                              { :part_number => 3,
                                :etag => "123abc" }]).
              and_return(client.stub_for(:complete_multipart_upload))
            upload.complete(3, 1)
          end

          it 'should accept an array of part numbers' do
            client.should_receive(:complete_multipart_upload).
              with(:bucket_name => "foobucket",
                   :key => "foo",
                   :upload_id => "abc123",
                   :parts => [{ :part_number => 1,
                                :etag => "abc123" },
                              { :part_number => 3,
                                :etag => "123abc" }]).
              and_return(client.stub_for(:complete_multipart_upload))
            upload.complete([3, 1])
          end

          it 'should accept part objects from the same upload' do
            client.should_receive(:complete_multipart_upload).
              with(:bucket_name => "foobucket",
                   :key => "foo",
                   :upload_id => "abc123",
                   :parts => [{ :part_number => 1,
                                :etag => "abc123" },
                              { :part_number => 3,
                                :etag => "123abc" }]).
              and_return(client.stub_for(:complete_multipart_upload))
            upload.complete(upload.parts[3],
                            upload.parts[1])
          end

          it 'should raise an error for parts from a different upload' do
            lambda do
              upload.complete(UploadedPart.new(MultipartUpload.new(object,
                                                                   "123abc"),
                                               1))
            end.should raise_error(ArgumentError,
                                   "cannot complete an upload with parts "+
                                   "from a different upload")
          end

          it 'should raise an error for non-number, non-part arguments' do
            lambda do
              upload.complete(:foo)
            end.should raise_error(ArgumentError,
                                   "expected number or UploadedPart")
          end

        end

      end

    end

  end
end
