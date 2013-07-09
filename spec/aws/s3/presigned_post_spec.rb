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
require 'json'

module AWS
  class S3

    describe PresignedPost do

      it_behaves_like 'an S3 model object', Bucket.new("foo")

      let(:config) { stub_config }

      let(:credential_provider) { config.credential_provider }

      let(:bucket) { Bucket.new("foo", :config => config) }

      let(:post) { described_class.new(bucket) }

      def policy_conditions(post)
        JSON.load(Base64.decode64(post.policy))["conditions"]
      end

      context '#initialize' do

        it 'should store the bucket' do
          post.bucket.should be(bucket)
        end

        it 'should store :secure' do
          described_class.new(bucket, :secure => false).
            secure?.should be_false
        end

        it 'should store :metadata' do
          described_class.new(bucket,
                              :metadata => { :foo => "bar" }).
            metadata.should == { :foo => "bar" }
        end

        it 'should store :expires' do
          time = Time.now
          described_class.new(bucket, :expires => time).
            expires.should == time
        end

        it 'should store the content length range' do
          described_class.new(bucket,
                              :content_length => 1..2).
            content_length.should == (1..2)
        end

        it 'should convert an integer to a range' do
          described_class.new(bucket,
                              :content_length => 1).
            content_length.should == (1..1)
        end

        it 'should store ignored fields' do
          described_class.new(bucket,
                              :ignore => ["foo", "bar"]).
            ignored_fields.should == ["foo", "bar"]
        end

        it 'should coerce ignored fields to an array' do
          described_class.new(bucket,
                              :ignore => "foo").
            ignored_fields.should == ["foo"]
        end

        context ':server_side_encryption option' do

          let(:config) do
            stub_config.with(:s3_server_side_encryption => :aes256)
          end

          it 'should use the configured value by default' do
            described_class.new(bucket).
              fields["x-amz-server-side-encryption"].
              should == "AES256"
          end

          it 'should allow the configured value to be overridden with nil' do
            described_class.new(bucket,
                                :server_side_encryption => nil).
              fields["x-amz-server-side-encryption"].
              should be_nil
          end

        end

      end

      context '#where' do

        it 'should accept :key' do
          lambda { post.where(:key) }.should_not raise_error
        end

        it 'should accept :content_length' do
          lambda { post.where(:content_length) }.should_not raise_error
        end

        it 'should accept x-amz-meta- fields' do
          lambda { post.where("x-amz-meta-foo") }.should_not raise_error
        end

        it 'should accept arbitrary fields' do
          lambda { post.where("not-actually-anything") }.should_not raise_error
        end

        shared_examples_for "POST policy condition preserves fields" do |*args|

          except = args.first

          it 'should preserve the bucket' do
            post.bucket.should be(original_post.bucket)
          end unless except == :bucket

          it 'should preserve the metadata' do
            post.metadata.should == original_post.metadata
          end unless except == :metadata

          it 'should preserve the key' do
            post.key.should == original_post.key
          end unless except == :key

          it 'should preserve the content length range' do
            post.content_length.should == original_post.content_length
          end unless except == :content_length

          it 'should preserve special fields' do
            post.fields["acl"].should == original_post.fields["acl"]
          end unless except == :acl

          it 'should preserve secure?' do
            post.secure?.should == original_post.secure?
          end unless except == :secure?

          it 'should preserve expires' do
            post.expires.should == original_post.expires
          end unless except == :expires

          it 'should preserve ignored_fields' do
            post.ignored_fields.should == original_post.ignored_fields
          end unless except == :ignored_fields

        end

        let(:original_options) { {
            :secure => true,
            :expires => 12,
            :metadata => { :foo => "bar" },
            :content_length => 1..2,
            :key => "foobar",
            :acl => :public_read,
            :server_side_encryption => :aes256,
            :ignore => ["foo", "bar"],
            "arbitrary-param" => "~"
          } }

        let(:original_post) { described_class.new(bucket, original_options) }

        it 'should include arbitrary fields and capitalize them' do
          original_post.fields.should include("Arbitrary-Param")
        end
        
        context 'equality condition' do

          let(:post) { original_post.where(:expires_header).is("foobar") }

          let(:conditions) { policy_conditions(post) }

          it 'should add the condition' do
            conditions.should include({ "Expires" => "foobar" })
          end

          it 'should not modify the original' do
            original_post.where(:expires_header).is("foobar")
            policy_conditions(original_post).
              should_not include({ "Expires" => "foobar" })
          end

          it_should_behave_like "POST policy condition preserves fields"

        end

        context 'starts with condition' do

          let(:post) { original_post.where(:acl).starts_with("public") }

          let(:conditions) { policy_conditions(post) }

          it 'should add the condition' do
            conditions.should include(["starts-with", "$acl", "public"])
          end

          it 'should not modify the original' do
            original_post.where(:acl).starts_with("public")
            policy_conditions(original_post).
              should_not include(["starts-with", "$acl", "public"])
          end

          it 'should apply the x-amz-security token condition when appropriate' do
            credential_provider.stub(:session_token).and_return('abc')
            policy_conditions(original_post).
              should include({ "x-amz-security-token" => "abc" })
          end

          it 'should also include arbitrary conditions as well' do
            arbitrary_post = post.where(:arbitrary).starts_with("a")
            arbitrary_cond = policy_conditions(arbitrary_post)
            arbitrary_cond.should include(["starts-with", "$Arbitrary", "a"])
          end

          it_should_behave_like "POST policy condition preserves fields"

        end

        context 'range condition' do

          let(:post) do
            original_post.where(:content_length).in(3..4)
          end

          let(:conditions) { policy_conditions(post) }

          it 'should override the content length' do
            post.content_length.should == (3..4)
          end

          it 'should not modify the original' do
            original_post.content_length.should == (1..2)
          end

          it_should_behave_like("POST policy condition preserves fields",
                                :content_length)

        end

        context 'single-value range condition (syntactic sugar)' do

          let(:post) do
            original_post.where(:content_length).is(3)
          end

          let(:conditions) { policy_conditions(post) }

          it 'should override the content length' do
            post.content_length.should == (3..3)
          end

          it 'should not modify the original' do
            original_post.content_length.should == (1..2)
          end

          it_should_behave_like("POST policy condition preserves fields",
                                :content_length)

        end

      end

      context '#where_metadata' do

        it 'should call #where with the metadata field name' do
          post.should_receive(:where).with("x-amz-meta-foo")
          post.where_metadata(:foo)
        end

      end

      context '#metadata' do

        it 'should be an empty hash by default' do
          post.metadata.should == {}
        end

      end

      context '#ignored_fields' do

        it 'should be an empty array by default' do
          post.ignored_fields.should == []
        end

      end

      context '#url' do

        it 'should be an HTTPS URI' do
          post.url.should be_a(URI::HTTPS)
        end

        it 'should be an HTTP URI if secure is false' do
          post.stub(:secure?).and_return(false)
          post.url.should be_a(URI::HTTP)
        end

        context 'dns compatible bucket' do

          it 'should use the subdomain-style host' do
            post.url.host.should == "foo.s3.amazonaws.com"
            post.url.path.should == "/"
          end

        end

        context 'dns incompatible bucket' do

          let(:bucket) { Bucket.new("foo..bar", :config => config) }

          it 'should use the path-style url' do
            post.url.host.should == "s3.amazonaws.com"
            post.url.path.should == "/foo..bar"
          end

        end

      end

      context '#policy' do

        it 'should be valid Base64-encoded JSON' do
          lambda { policy }.
            should_not raise_error
        end

        it 'should strip newlines from the encoded policy' do
          Base64.stub(:encode64).and_return("ONE\nTWO\n")
          post.policy.should == "ONETWO"
        end

        let(:policy) { JSON.load(Base64.decode64(post.policy)) }

        it 'should expire an hour from now by default' do
          Time.stub(:now).
            and_return(Time.parse("2011-05-24T17:51:04-07:00"))
          policy["expiration"].should == "2011-05-25T01:51:04Z"
        end

        context 'when :expires is provided' do

          it 'should support Time' do
            post.stub(:expires).
              and_return(Time.parse("2011-05-25T01:51:04Z"))
            policy["expiration"].should == "2011-05-25T01:51:04Z"
          end

          it 'should support DateTime' do
            post.stub(:expires).
              and_return(DateTime.parse("2011-05-25T01:51:04Z"))
            policy["expiration"].should == "2011-05-25T01:51:04Z"
          end

          it 'should support an integer offset' do
            Time.stub(:now).
              and_return(Time.parse("2011-05-25T01:51:04Z"))
            post.stub(:expires).and_return(60)
            policy["expiration"].should == "2011-05-25T01:52:04Z"
          end

          it 'should support a parseable date/time string' do
            post.stub(:expires).and_return("2011-05-26 10:18:21 -0700")
            policy["expiration"].should == "2011-05-26T17:18:21Z"
          end

        end

        it 'should contain a conditions array' do
          policy["conditions"].should be_an(Array)
        end

        context 'conditions array' do

          let(:conditions) { policy["conditions"] }

          it 'should contain an entry allowing any key by default' do
            post.stub(:key).and_return(nil)
            conditions.should include(["starts-with", "$key", ""])
          end

          it 'should contain an entry specifying the key if provided' do
            post.stub(:key).and_return("bar")
            conditions.should include({ "key" => "bar" })
          end

          it 'should restrict the key prefix if it includes a filename variable' do
            post.stub(:key).and_return("foo${filename}bar")
            conditions.
              should include(["starts-with", "$key", "foo"])
          end

          it 'should contain an entry specifying the bucket' do
            conditions.should include({ "bucket" => bucket.name })
          end

          it 'should contain an entry for each metadata key' do
            post.metadata.merge!(:foo => "bar",
                                 :bla => "baz")
            conditions.
              should include({ "x-amz-meta-foo" => "bar" })
            conditions.
              should include({ "x-amz-meta-bla" => "baz" })
          end

          it 'should stringify metadata values' do
            post.metadata.merge!(:foo => 12)
            conditions.
              should include({ "x-amz-meta-foo" => "12" })
          end

          it 'should contain an entry for the content length range' do
            post.stub(:content_length).and_return(1..2)
            conditions.
              should include(["content-length-range", 1, 2])
          end

          it 'should subtract one from the end of an exclusive range' do
            post.stub(:content_length).and_return(1...2)
            conditions.
              should include(["content-length-range", 1, 1])
          end

          it 'should add an entry for each ignored field' do
            post.ignored_fields << "foo"
            post.ignored_fields << "bar"
            conditions.should include(["starts-with", "$foo", ""])
            conditions.should include(["starts-with", "$bar", ""])
          end

        end

      end

      context '#fields' do

        it 'should include AWSAccessKeyId' do
          post.fields["AWSAccessKeyId"].should == credential_provider.access_key_id
        end

        it 'should include key if provided' do
          post.stub(:key).and_return("bar")
          post.fields["key"].should == "bar"
        end

        it 'should include policy' do
          post.stub(:policy).and_return("POLICY")
          post.fields["policy"].should == "POLICY"
        end

        it 'should properly transform acl names' do
          described_class.new(bucket,
                              :acl => :public_read).
            fields["acl"].should == "public-read"
        end

        it 'should properly transform the server side encryption algorithm' do
          described_class.new(bucket,
                              :server_side_encryption => :aes256).
            fields["x-amz-server-side-encryption"].should == "AES256"
        end

        it 'should contain an entry for each metadata key' do
          post.metadata.merge!(:foo => "bar",
                               :bla => "baz")
          post.fields.values_at("x-amz-meta-foo",
                                "x-amz-meta-bla").
            should == ["bar", "baz"]
        end

        context 'signature' do

          let(:signer) { Core::Signer }

          before(:each) do
            signer.stub(:sign).and_return("SIGNATURE")
          end

          it 'should use the signer to compute the signature' do
            post.fields["signature"].should == "SIGNATURE"
          end

          it 'should sign the policy' do
            post.stub(:policy).and_return("POLICY")
            signer.should_receive(:sign).
              with("SECRET_ACCESS_KEY", "POLICY", "sha1").and_return("SIGNATURE")
            post.fields
          end

        end

      end

      shared_examples_for "presigned post special field" do |field, option|

        let(:post) do
          described_class.new(bucket,
                              Hash[[[option, field_value]]])
        end

        let(:field_value) { "value" }

        context '#where' do

          it "should accept :#{option}" do
            lambda { post.where(option) }.should_not raise_error
          end

        end

        context '#fields' do

          it "should include :#{option} as #{field}" do
            fields = post.fields
            fields.should include(field)
            fields[field].should == "value"
          end

        end

        context '#policy' do

          let(:policy) { JSON.load(Base64.decode64(post.policy)) }

          it "should include a condition for #{field}" do
            policy["conditions"].
              should include(Hash[[[field, "value"]]])
          end

          context 'non-string value' do

            let(:field_value) { 12 }

            it 'should be stringified' do
              policy["conditions"].
                should include(Hash[[[field, "12"]]])
            end

          end

        end

      end

      it_behaves_like "presigned post special field", "acl", :acl
      it_behaves_like("presigned post special field",
                      "x-amz-server-side-encryption", :server_side_encryption)
      it_behaves_like("presigned post special field",
                      "Cache-Control", :cache_control)
      it_behaves_like("presigned post special field",
                      "Content-Type", :content_type)
      it_behaves_like("presigned post special field",
                      "Content-Disposition", :content_disposition)
      it_behaves_like("presigned post special field",
                      "Content-Encoding", :content_encoding)
      it_behaves_like("presigned post special field",
                      "Expires", :expires_header)
      it_behaves_like("presigned post special field",
                      "success_action_redirect", :success_action_redirect)
      it_behaves_like("presigned post special field",
                      "success_action_status", :success_action_status)
      it_behaves_like("presigned post special field",
                      "Filename", :filename)

    end

  end
end
