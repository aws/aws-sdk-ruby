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

module AWS
  class S3

    describe Bucket do

      it_behaves_like 'an S3 model object', 'foo'

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { S3::Bucket.new("mybucket", :config => config) }

      it_behaves_like('it has an ACL',
                      :set_method => :set_bucket_acl,
                      :get_method => :get_bucket_acl,
                      :options => { :bucket_name => "mybucket" }) do
        let(:model_obj) { bucket }
      end

      context '#url' do

        context 'with dns safe name' do
          it 'should put the bucket name in the host' do
            bucket = Bucket.new('bucket-name', :config => config)
            bucket.url.should == "http://bucket-name.s3.amazonaws.com/"
          end
        end

        context 'with dns compat name but not for requests' do
          it 'should put the bucket name in the path' do
            bucket = Bucket.new('bucket_name', :config => config)
            bucket.url.should == "http://s3.amazonaws.com/bucket_name/"
          end
        end

        context 'with non-dns safe name' do
          it 'should put the bucket name in the path' do
            bucket = Bucket.new('my.bucket.name', :config => config)
            bucket.url.should == "http://my.bucket.name.s3.amazonaws.com/"
          end
        end

      end

      context '#empty?' do

        it 'returns true if the bucket has no versions' do
          bucket.stub(:versions).and_return([])
          bucket.empty?.should == true
        end

        it 'returns true if the bucket has no versions' do
          bucket.stub(:versions).and_return(['1'])
          bucket.empty?.should == false
        end

      end

      context '#delete' do

        it 'should call delete_bucket on the client with the bucket name' do
          client.should_receive(:delete_bucket).
            with(:bucket_name => "mybucket")
          bucket.delete
        end

      end

      context '#delete!' do

        let(:response) { client.stub_for(:delete_objects) }
        
        it 'should delete the bucket objects in batches' do 

          key = { :key => 'key', :version_id => "null" }

          versions1 = (1..1000).collect{|n| key }
          versions2 = (1..1000).collect{|n| key }
          versions3 = (1..500).collect{|n| key }

          versions = double('version-collection')
          versions.should_receive(:each_batch).
            and_yield(versions1).
            and_yield(versions2).
            and_yield(versions3)

          bucket.stub(:versions).and_return(versions)
          
          client.should_receive(:delete_objects).ordered.with(
            :bucket_name => bucket.name, :quiet => true, 
            :objects => versions1).
            and_return(response)

          client.should_receive(:delete_objects).ordered.with(
            :bucket_name => bucket.name, :quiet => true, 
            :objects => versions2).
            and_return(response)

          client.should_receive(:delete_objects).ordered.with(
            :bucket_name => bucket.name, :quiet => true, 
            :objects => versions3).
            and_return(response)
              
          bucket.delete!

        end

      end

      context '#owner' do

        let(:response) do
          double("list_buckets response",
                 :owner => double("owner",
                                  :id => "abc123",
                                  :display_name => "foo"),
                 :buckets => [])
        end

        it 'should call list_buckets on the client' do
          client.should_receive(:list_buckets).with(no_args).and_return(response)
          bucket.owner
        end

        context 'returned object' do

          before(:each) do
            client.stub(:list_buckets).and_return(response)
          end

          it 'should use the owner id from the response' do
            bucket.owner.id.should == "abc123"
          end

          it 'should use the display name from the response' do
            bucket.owner.display_name.should == "foo"
          end

        end

        context 'when hydrated' do

          let(:owner) { double("an owner") }

          let(:bucket) { S3::Bucket.new("mybucket",
                                        :config => config,
                                        :owner => owner) }

          it 'should not call list_buckets on the client' do
            client.should_not_receive(:list_buckets)
            bucket.owner
          end

          it 'should return the hydrated value' do
            bucket.owner.should == owner
          end

        end

      end

      context 'versioning' do

        let(:response) { double('response', :status => :enabled) }

        before(:each) do
          bucket.client.stub(:get_bucket_versioning).and_return(response)
        end

        context '#versions' do
          
          it 'returns a bucket version collection' do
            bucket.versions.should be_a(BucketVersionCollection)
          end
          
          it 'returns collection with the correct bucket' do
            bucket.versions.bucket.should == bucket
          end
          
          it 'returns collection with the correct client' do
            bucket.versions.client.should == bucket.client
          end

        end

        context '#enable_versioning' do

          it 'calls set_bucket_versioning with :enabled' do
            bucket.client.should_receive(:set_bucket_versioning).
              with(:bucket_name => bucket.name, :state => :enabled)
            bucket.enable_versioning
          end

        end

        context '#suspend_versioning' do

          it 'calls set_bucket_versioning with :suspended' do
            bucket.client.should_receive(:set_bucket_versioning).
              with(:bucket_name => bucket.name, :state => :suspended)
            bucket.suspend_versioning
          end

        end

        context '#versioning_enabled?' do

          it 'calls get_bucket_versioning with the bucket name' do
            bucket.client.should_receive(:get_bucket_versioning).
              with(:bucket_name => bucket.name)
            bucket.versioning_enabled?
          end
          
          it 'returns true if bucket versioning is :enabled' do
            response.stub(:status).and_return(:enabled)
            bucket.versioning_enabled?.should == true
          end

          it 'returns false if bucket versioning is :suspended' do
            response.stub(:status).and_return(:suspended)
            bucket.versioning_enabled?.should == false
          end

          it 'returns false if bucket versioning is nil' do
            response.stub(:status).and_return(:nil)
            bucket.versioning_enabled?.should == false
          end

          it 'provides a #versioned? alias' do
            bucket.method(:versioned?).should == 
              bucket.method(:versioning_enabled?)
          end

        end

        context '#versioning_state' do

          it 'calls get_bucket_versioning with the bucket name' do
            bucket.client.should_receive(:get_bucket_versioning).
              with(:bucket_name => bucket.name)
            bucket.versioning_state
          end
          
          it 'returns the status from get_bucket_versioning' do
            response.stub(:status).and_return('fake status')
            bucket.versioning_state.should == 'fake status'
          end

        end

      end

      context '#objects' do

        it 'should return an object collection' do
          bucket.objects.should be_an(S3::ObjectCollection)
        end

        it 'should return a collection with the correct bucket' do
          bucket.objects.bucket.should == bucket
        end

        it 'should return a collection with the correct config' do
          bucket.objects.config.should == bucket.config
        end

      end

      context '#multipart_uploads' do

        it 'should return a multipart uploads collection' do
          bucket.multipart_uploads.should be_an(S3::MultipartUploadCollection)
        end

        it 'should return a collection with the correct bucket' do
          bucket.multipart_uploads.bucket.should be(bucket)
        end

        it 'should return a collection with the correct config' do
          bucket.multipart_uploads.config.should be(config)
        end

      end

      context '#inspect' do

        it 'should contain the bucket name' do
          Bucket.new('foo').inspect.should match(/foo/)
        end

      end

      context '#eql?' do
        
        it 'should identify the same bucket correctly' do
          bucket = Bucket.new('a')
          bucket.eql?(bucket).should be_true
        end
        
        it 'should identify buckets with the same name correctly' do
          bucket = Bucket.new('a')
          another_bucket_same_name = Bucket.new('a')
          bucket.eql?(another_bucket_same_name).should be_true
        end

        it 'should identify differnt buckets correctly' do
          bucket_a = Bucket.new('a')
          bucket_b = Bucket.new('b')
          bucket_a.eql?(bucket_b).should be_false
        end

      end

      context '#exists?' do

        it 'should return true we can get bucket versioning for it' do
          bucket.stub(:versioned?).and_return(false)
          bucket.exists?.should == true
        end

        it 'should return false if bucket versioning returns a 404' do
          resp = double('resp', :body => 'error', :status => 404)
          error = Errors::NoSuchBucket.new('request', resp)
          bucket.stub(:versioned?).and_raise(error)
          bucket.exists?.should == false
        end

        it 'should not trap other errors' do
          bucket.stub(:versioned?).and_raise(StandardError.new('foo'))
          lambda {
            bucket.exists?
          }.should raise_error('foo')
        end

      end

      context '#as_tree' do

        let(:objects) { [] }

        let(:tree) { double("tree") }

        before(:each) do
          objects.stub(:as_tree).and_return(tree)
          bucket.stub(:objects).and_return(objects)
        end

        it 'should call as_tree on the object collection' do
          objects.should_receive(:as_tree).and_return(tree)
          bucket.as_tree.should be(tree)
        end

        it 'should pass additional options to ObjectCollection#as_tree' do
          objects.should_receive(:as_tree).
            with(:foo => "bar")
          bucket.as_tree(:foo => "bar")
        end

      end

      context '#policy=' do

        it 'should call set_bucket_policy on the client' do
          client.should_receive(:set_bucket_policy).
            with(:bucket_name => "mybucket",
                 :policy => "{}")
          bucket.policy = "{}"
        end

      end

      context '#policy' do

        let(:policy) { S3::Policy.new }

        let(:no_policy_error) do
          Errors::NoSuchBucketPolicy.new(double("req"),
                                         double("resp",
                                                :body => "",
                                                :status => 404))
        end

        before(:each) do
          client.stub(:get_bucket_policy).
            and_return(double("response",
                              :policy => policy))
          client.stub(:set_bucket_policy)
        end

        it 'should call get_bucket_policy on the client' do
          client.should_receive(:get_bucket_policy).
            with(:bucket_name => "mybucket").
            and_return(double("response",
                              :policy => S3::Policy.new))
          bucket.policy
        end

        it 'should return the policy' do
          bucket.policy.should be(policy)
        end

        it 'should add a #change method' do
          bucket.policy.should respond_to(:change)
        end

        it 'should return nil when there is no policy' do
          client.stub(:get_bucket_policy).
            and_raise(no_policy_error)
          bucket.policy.should be_nil
        end

        context '#change' do

          it 'should yield the policy object' do
            obj = Object.new
            obj.should_receive(:call).with(policy)
            bucket.policy.change { |p| obj.call(p) }
          end

          it 'should set the policy after the block is done' do
            client.should_receive(:set_bucket_policy).
              with(:bucket_name => "mybucket",
                   :policy => policy)
            bucket.policy.change { |p| }
          end

        end

        it 'should add a #delete method' do
          bucket.policy.should respond_to(:delete)
        end

        context '#delete' do

          it 'should call delete_bucket_policy on the client' do
            client.should_receive(:delete_bucket_policy).
              with(:bucket_name => "mybucket")
            bucket.policy.delete
          end

        end

        context '#location_constraint' do

          it 'returns the location_constraint' do
            resp = double('resp', :location_constraint => 'EU')
            client.should_receive(:get_bucket_location).
              with(:bucket_name => bucket.name).
              and_return(resp)
            bucket.location_constraint.should == 'EU'
          end

        end

        context '#presigned_post' do

          it 'returns a PresignedPost object' do
            post = bucket.presigned_post
            post.bucket.should be(bucket)
            post.config.should be(config)
          end

          it 'should pass additional options' do
            PresignedPost.should_receive(:new).
              with(bucket, :foo => "bar")
            bucket.presigned_post(:foo => "bar")
          end

        end

      end

    end

  end
end
