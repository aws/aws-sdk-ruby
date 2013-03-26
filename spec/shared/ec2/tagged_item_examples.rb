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

    shared_examples_for 'a tagged ec2 item' do

      context '#add_tag' do

        it 'adds a tag' do

          client.should_receive(:create_tags).
            with({
              :resources => [taggable.id],
              :tags => [{ :key => 'tag-key', :value => '' }]
            })

          taggable.add_tag('tag-key')

        end

        it 'returns a tag object' do
          tag = taggable.add_tag('webserver')
          tag.should be_a(Tag)
          tag.key.should == 'webserver'
          tag.config.should == taggable.config
        end

        it 'accepts an optional tag value' do
          client.should_receive(:create_tags).
            with({:resources => [taggable.id],
                  :tags => [{ :key => 'stage', :value => 'production' }]
            })

          tag = taggable.add_tag('stage', :value => 'production')
          tag.key.should == 'stage'
        end

      end

      context '#clear_tags' do

        it 'deletes all tags with the taggable id' do
          client.should_receive(:delete_tags).with({
            :resources => [taggable.id] })
          taggable.clear_tags
        end

      end

      context '#tags' do

        it 'returns a resource tag collection' do
          taggable.tags.should be_a(ResourceTagCollection)
        end

        it 'should pass the resource and config' do
          ResourceTagCollection.should_receive(:new).
            with(taggable, :config => config)
          taggable.tags
        end

      end

      context '#cached_tags' do

        context 'when caching is disabled' do
          it 'should return nil' do
            taggable.cached_tags.should be_nil
          end
        end

        context 'when caching is enabled' do

          let(:cache) { double("cache") }

          let(:resp) { client.new_stub_for(describe_call) }

          before(:each) do
            AWS.stub(:response_cache).and_return(cache)
            cache.stub(:select).and_return([resp])
          end

          it 'should query describe_instances responses' do
            cache.should_receive(:select).with(describe_call).
              and_return([resp])
            taggable.cached_tags
          end

          it 'should return nil if no matching instance is found' do
            taggable.cached_tags.should == nil
          end

          context 'when instance data is cached' do

            it 'should return a hash' do
              stub_tags(resp, [
                { :key => "foo", :value => "bar" },
                { :key => "FOO", :value => "BAR" },
              ])
              taggable.cached_tags.should == { "foo" => "bar", "FOO" => "BAR" }
            end

          end

        end

      end

    end

  end
end
