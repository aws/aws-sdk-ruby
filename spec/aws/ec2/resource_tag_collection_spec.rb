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
  class EC2

    describe ResourceTagCollection do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:resource) { ResourceObject.new("resource-id",
                                          :resource_type => "resource-object",
                                          :config => config) }

      let(:collection) { ResourceTagCollection.new(resource, :config => config) }

      it_should_behave_like "an ec2 model object", ResourceObject.new("resource-id")

      it_should_behave_like "enumerable"

      def stub_tags(resp, tags)
        resp.data[:tag_index] = tags.inject({}) do |hash,tag|
          key = []
          key << tag[:resource_type]
          key << tag[:resource_id]
          key << tag[:key]
          hash.merge(key.join(':') => tag)
        end
        resp.data[:tag_set] = tags
      end

      context '#[]' do

        let(:resp) { client.stub_for(:describe_tags) }

        before(:each) do
          stub_tags(resp, [
            {
              :resource_type => "resource-object",
              :resource_id => "resource-id",
              :key => "foo",
              :value => "bar",
            },
          ])
          client.stub(:describe_tags).and_return(resp)
        end

        it 'should call describe_tags' do
          client.should_receive(:describe_tags).
            with(:filters => [{ :name => "key",
                                :values => ["foo"] },
                              { :name => "resource-type",
                                :values => ["resource-object"] },
                              { :name => "resource-id",
                                :values => ["resource-id"] }]).
            and_return(resp)
          collection["foo"]
        end

        it 'should return the tag value' do
          collection["foo"].should == "bar"
        end

        it 'accepts method missing calls that proxy to #[]' do
          collection.foo.should == 'bar'
        end

        it 'should accept a symbol' do
          collection[:foo].should == "bar"
        end

        it 'should return nil if the tag does not exist' do
          stub_tags(resp, [])
          collection["foo"].should be_nil
        end

        context 'tags are cached' do

          before(:each) do
            resource.stub(:cached_tags).and_return("foo" => "bar")
            client.should_not_receive(:describe_tags)
          end

          it 'should return the cached value for the key' do
            collection["foo"].should == "bar"
          end

          it 'should work for symbol keys' do
            collection[:foo].should == "bar"
          end

          it 'should return nil if the tag does not have a value' do
            collection[:bar].should be_nil
          end

        end

      end

      context 'existence tests' do

        context 'tag exists' do

          let(:resp) { client.stub_for(:describe_tags) }

          before(:each) do
            stub_tags(resp, [{
              :resource_type => "resource-object",
              :resource_id => "resource-id",
              :key => "foo",
              :value => "bar",
            }])
            client.stub(:describe_tags).and_return(resp)
          end

          context '#empty?' do

            it 'should call describe_tags' do
              client.should_receive(:describe_tags).
                with(:filters => [{ :name => "resource-id",
                                    :values => ["resource-id"] },
                                  { :name => "resource-type",
                                    :values => ["resource-object"] }])
              collection.empty?
            end

            it 'should be false' do
              collection.empty?.should be_false
            end

          end

          context '#has_key?' do

            it 'should call describe_tags' do
              client.should_receive(:describe_tags).
                with(:filters => [{ :name => "resource-id",
                                    :values => ["resource-id"] },
                                  { :name => "resource-type",
                                    :values => ["resource-object"] },
                                  { :name => "key",
                                    :values => ["foo"] }])
              collection.has_key?("foo")
            end

            it 'should accept a symbol' do
              client.should_receive(:describe_tags).
                with(:filters => [{ :name => "resource-id",
                                    :values => ["resource-id"] },
                                  { :name => "resource-type",
                                    :values => ["resource-object"] },
                                  { :name => "key",
                                    :values => ["foo"] }])
              collection.has_key?(:foo)
            end

            it 'should be true' do
              collection.has_key?("foo").should be_true
            end

          end

          context '#has_value?' do

            it 'should call describe_tags' do
              client.should_receive(:describe_tags).
                with(:filters => [{ :name => "resource-id",
                                    :values => ["resource-id"] },
                                  { :name => "resource-type",
                                    :values => ["resource-object"] },
                                  { :name => "value",
                                    :values => ["foo"] }])
              collection.has_value?("foo")
            end

            it 'should be true' do
              collection.has_value?("foo").should be_true
            end

          end

        end

        context 'tag does not exist' do

          context '#empty?' do

            it 'should be true' do
              collection.empty?.should be_true
            end

          end

          context '#has_key?' do

            it 'should be false' do
              collection.has_key?("foo").should be_false
            end

          end

          context '#has_value?' do

            it 'should be false' do
              collection.has_value?("foo").should be_false
            end

          end

        end

        context 'resource has cached tags' do

          before(:each) do
            client.should_not_receive(:describe_tags)
            resource.stub(:cached_tags).and_return("foo" => "bar")
          end

          it 'should be empty if the cache is empty' do
            resource.stub(:cached_tags).and_return({})
            collection.empty?.should be_true
          end

          it 'should use the cached keys' do
            collection.has_key?("foo").should be_true
            collection.has_key?(:foo).should be_true
            collection.has_key?("bar").should be_false
          end

          it 'should use the cached values' do
            collection.has_value?("bar").should be_true
            collection.has_value?("baz").should be_false
          end

        end

      end

      context '#[]=' do

        it 'should call create_tags' do
          client.should_receive(:create_tags).
            with(:resources => ["resource-id"],
                 :tags => [{ :key => "foo",
                             :value => "bar" }])
          collection["foo"] = "bar"
        end

        it 'should accept a symbol key' do
          client.should_receive(:create_tags).
            with(:resources => ["resource-id"],
                 :tags => [{ :key => "foo",
                             :value => "bar" }])
          collection[:foo] = "bar"
        end

        it 'should delete the tag when a nil value is assigned' do
          collection.should_receive(:delete).with(:foo)
          collection.should_not_receive(:create_tags)
          collection[:foo] = nil
        end

      end

      context '#add' do

        before(:each) do
          client.should_receive(:create_tags).
            with(:resources => ["resource-id"],
                 :tags => [{ :key => "foo",
                             :value => "" }])
        end

        it 'should call create_tags' do
          collection.add("foo")
        end

        it 'should accept a symbol' do
          collection.add(:foo)
        end

      end

      context '#set' do

        before(:each) do
          client.should_receive(:create_tags).with do |opts|
            opts[:resources].should == ["resource-id"]
            opts[:tags].should include({ :key => "k1",
                                         :value => "v1" })
            opts[:tags].should include({ :key => "k2",
                                         :value => "v2" })
            opts[:tags].size.should == 2
          end
        end

        it 'should call create_tags' do
          collection.set("k1" => "v1",
                         "k2" => "v2")
        end

        it 'should accept symbol keys' do
          collection.set(:k1 => "v1",
                         :k2 => "v2")
        end

      end

      context '#method_missing' do

        context 'setter methods' do

          it 'calls #[]= with the method name' do
            collection.should_receive(:[]=).with("foo", "bar")
            collection.foo = 'bar'
          end

        end

      end

      context '#delete' do

        it 'should call delete_tags' do
          client.should_receive(:delete_tags).
            with(:resources => ["resource-id"],
                 :tags => [{ :key => "foo" },
                           { :key => "bar" }])
          collection.delete("foo", "bar")
        end

        it 'should accept symbols' do
          client.should_receive(:delete_tags).
            with(:resources => ["resource-id"],
                 :tags => [{ :key => "foo" },
                           { :key => "bar" }])
          collection.delete(:foo, :bar)
        end

        it 'should do nothing with no arguments' do
          client.should_not_receive(:delete_tags)
          collection.delete
        end

      end

      context '#clear' do

        it 'should call delete_tags' do
          client.should_receive(:delete_tags).
            with(:resources => ["resource-id"])
          collection.clear
        end

      end

      context 'enumeration methods' do

        let(:resp) { client.new_stub_for(:describe_tags) }

        before(:each) do
          stub_tags(resp, [
            {
              :resource_type => "resource-object",
              :resource_id => "resource-id",
              :key => "foo",
              :value => "bar",
            }, {
              :resource_type => "resource-object",
              :resource_id => "resource-id",
              :key => "baz",
              :value => "bla",
            },
          ])
          client.stub(:describe_tags).and_return(resp)
        end

        context '#each' do

          it 'should yield pairs to a arity-1 block' do
            collection.to_a.should == [["foo", "bar"],
                                       ["baz", "bla"]]
          end

          it 'should yield keys and values to a arity-2 block' do
            received = []
            collection.each do |key, value|
              received << [key, value]
            end
            received.should == [["foo", "bar"],
                                ["baz", "bla"]]
          end

        end

        context '#values_at' do

          def expect_filters(client)
            client.should_receive(:describe_tags).
              with(:filters => [{ :name => "resource-id",
                                  :values => ["resource-id"] },
                                { :name => "resource-type",
                                  :values => ["resource-object"] },
                                { :name => "key",
                                  :values => ["foo", "baz"] }])
          end

          it 'should filter by keys and resources' do
            expect_filters(client).and_return(resp)
            collection.values_at("foo", "baz")
          end

          it 'should accept symbols' do
            expect_filters(client).and_return(resp)
            collection.values_at(:foo, :baz)
          end

          it 'should return the values in an array' do
            collection.values_at("foo", "baz").
              should == ["bar", "bla"]
          end

          it 'should return values in the right order' do
            collection.values_at(:baz, :foo).
              should == ["bla", "bar"]
          end

          it 'should return nil for values that do not exist' do
            collection.values_at(:foo, :something).
              should == ["bar", nil]
          end

        end

        context '#to_h' do

          it 'should return keys mapped to values' do
            collection.to_h.should == {
              "foo" => "bar",
              "baz" => "bla"
            }
          end

        end

        context 'resource has cached tags' do

          before(:each) do
            resource.stub(:cached_tags).and_return("foo" => "bar")
            client.should_not_receive(:describe_tags)
          end

          context '#each' do
            it 'should iterate over the cached tags' do
              collection.to_a.should == [["foo", "bar"]]
            end
          end

          context '#values_at' do

            it 'should fetch values from the cached hash' do
              collection.values_at("foo", "bar").
                should == ["bar", nil]
            end

            it 'should work for symbol keys' do
              collection.values_at(:foo, :bar).
                should == ["bar", nil]
            end

          end

          context '#to_h' do

            it 'should return the cached tags' do
              collection.to_h.should == { "foo" => "bar" }
            end

          end

        end

      end

    end

  end
end
