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
  class AutoScaling
    describe TagCollection do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:tags) { TagCollection.new(:config => config) }

      context '#filter' do

        let(:response) { client.stub_for(:describe_tags) }

        it 'filters the describe call' do
          client.should_receive(:describe_tags).with(:filters =>[
            { :name => 'key', :values => ['abc'] },
          ]).and_return(response)
          tags.filter(:key, 'abc').to_a
        end

        it 'accepts multiple filter values per filter' do
          client.should_receive(:describe_tags).with(:filters =>[
            { :name => 'key', :values => %w(abc mno xyz) },
          ]).and_return(response)
          tags.filter(:key, 'abc', 'mno', 'xyz').to_a
        end

        it 'accepts multiple filter values as an array' do
          client.should_receive(:describe_tags).with(:filters =>[
            { :name => 'key', :values => %w(abc mno xyz) },
          ]).and_return(response)
          tags.filter(:key, ['abc', 'mno', 'xyz']).to_a
        end

        it 'can be chained' do
          client.should_receive(:describe_tags).with(:filters =>[
            { :name => 'key', :values => %w(abc) },
            { :name => 'value', :values => %w(xyz) },
          ]).and_return(response)
          tags.filter(:key, 'abc').filter(:value, 'xyz').to_a
        end

        it 'converts symbol filternames into strings' do
          client.should_receive(:describe_tags).with(:filters =>[
            { :name => 'auto-scaling-group', :values => %w(name) },
            { :name => 'propagate-at-launch', :values => %w(true false) },
          ]).and_return(response)
          tags.
            filter(:auto_scaling_group, 'name').
            filter(:propagate_at_launch, true, false).
            to_a
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { tags }
        let(:client_method)   { :describe_tags }
        let(:next_token_key)  { :next_token }
        let(:limit_key)       { :max_records }
        let(:request_options) {{}}

        def stub_next_token(response, token)
          response.data[:next_token] = token
        end

        def stub_n_members response, n
          response.data[:tags] = (1..n).map{|i|
            {
              :resource_type => 'auto-scaling-group',
              :resource_id => 'as-group-name',
              :key => "tag-#{n}",
              :propagate_at_launch => true,
            }
          }
        end

        it 'yields tag objects' do

          tag_details = [
            {
              :resource_type => 'auto-scaling-group',
              :resource_id => 'as-group-name',
              :key => "tag-1",
              :propagate_at_launch => true,
            },
            {
              :resource_type => 'auto-scaling-group',
              :resource_id => 'as-group-name',
              :key => "tag-2",
              :key => "value-2",
              :propagate_at_launch => false,
            },
          ]

          response.data[:tags] = tag_details

          tags.to_a.should == tag_details.map{|details|
            Tag.new(details.merge(:config => config))
          }

          tags.count.should == 2

          tags.each do |tag|
            tag.resource.should == Group.new('as-group-name', :config => config)
          end

        end

      end

    end
  end
end
