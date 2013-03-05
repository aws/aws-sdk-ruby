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
    describe CORSRuleCollection do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('bucket-name', :config => config) }

      let(:cors) { CORSRuleCollection.new(bucket) }

      context '#set' do

        it 'accepts an array of hashes' do

          rules = [{ :id => 'abc' }, { :id => 'xyz' }]

          client.should_receive(:put_bucket_cors).with(
            :bucket_name => bucket.name,
            :rules => rules)

          cors.set(rules)

        end

        it 'accepts cors rule objects' do

          rule1 = CORSRule.new
          rule2 = CORSRule.new

          client.should_receive(:put_bucket_cors).with(
            :bucket_name => bucket.name,
            :rules => [rule1.to_h, rule2.to_h])

          cors.set(rule1, rule2)

        end

        it 'accepts a collection' do

          resp = double('resp', :data => {
            :rules => [
              {
                :allowed_methods => ['GET'],
                :allowed_origins => ['*'],
              },{
                :allowed_methods => ['PUT'],
                :allowed_origins => ['http://example.com'],
              },
            ]
          })

          client.should_receive(:get_bucket_cors).
            exactly(2).times.
            with(:bucket_name => bucket.name).
            and_return(resp)

          client.should_receive(:put_bucket_cors).with(
            :bucket_name => bucket.name,
            :rules => cors.map(&:to_h))

          cors.set(cors)

        end

        it 'clears the rules when passed an empty array' do
          client.should_receive(:delete_bucket_cors)
          cors.set([])
        end

      end

      context '#add' do

        it 'calls set with self' do
          rules = double('rules')
          cors.should_receive(:set).with(cors, rules)
          cors.add(rules)
        end

      end

      context '#delete_if' do

        it 'calls set with the rules that do not return true' do

          resp = double('resp', :data => {
            :rules => [
              {
                :allowed_methods => ['GET'],
                :allowed_origins => ['*'],
              },{
                :allowed_methods => ['PUT'],
                :allowed_origins => ['http://example.com'],
              },
            ]
          })
          client.stub(:get_bucket_cors).and_return(resp)

          client.should_receive(:put_bucket_cors).with(
            :bucket_name => bucket.name,
            :rules => [
              {
                :allowed_methods => ['PUT'],
                :allowed_origins => ['http://example.com'],
              },
            ]
          )

          cors.delete_if{|rule| rule.allowed_origins.include?('*') }

        end

      end

      context '#clear' do

        it 'calls #delete_bucket_cors on the client' do

          client.should_receive(:delete_bucket_cors).
            with(:bucket_name => bucket.name)

          cors.clear

        end

      end

      context '#each' do

        it 'yields rules' do

          rules = [
            {
              :allowed_methods => ['GET'],
              :allowed_origins => ['*'],
            },{
              :allowed_methods => ['PUT'],
              :allowed_origins => ['http://example.com'],
            },
          ]

          resp = double('resp', :data => { :rules => rules })

          client.stub(:get_bucket_cors).and_return(resp)

          cors.map(&:to_h).should eq(rules)

        end

      end

    end
  end
end
