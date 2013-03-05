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
require 'uri'

module AWS
  class CloudFormation
    describe StackCollection do

      let(:config) { stub_config }

      let(:client) { config.cloud_formation_client }

      let(:stacks) { StackCollection.new(:config => config) }

      context '#create' do

        let(:resp) { client.stub_for(:create_stack) }

        before(:each) do
          resp.data[:stack_id] = 'stack-id'
          client.stub(:create_stack).and_return(resp)
        end

        it 'calls #create_stack on the client' do

          client.should_receive(:create_stack).with(
            :stack_name => 'name',
            :template_body => 'template',
            :disable_rollback => false)

          stacks.create('name', 'template')

        end

        it 'accepts arbitrary options' do

          client.should_receive(:create_stack).with(
            :stack_name => 'name',
            :template_body => 'template',
            :disable_rollback => false,
            :foo => 'bar',
            :abc => 'xyz')

          stacks.create('name', 'template', :foo => 'bar', :abc => 'xyz')

        end

        context 'template param' do

          it 'accepts the template as url string' do

            url = 'http://s3.amazon.com/bucket_name/key'

            client.should_receive(:create_stack).with(
              :stack_name => 'name',
              :template_url => url,
              :disable_rollback => false)

            stacks.create('name', url)

          end

          it 'accepts the template as a http uri' do

            uri = URI.parse('http://s3.amazon.com/bucket_name/key')

            client.should_receive(:create_stack).with(
              :stack_name => 'name',
              :template_url => uri.to_s,
              :disable_rollback => false)

            stacks.create('name', uri)

          end

          it 'accepts the template as a https uri' do

            uri = URI.parse('https://s3.amazon.com/bucket_name/key')

            client.should_receive(:create_stack).with(
              :stack_name => 'name',
              :template_url => uri.to_s,
              :disable_rollback => false)

            stacks.create('name', uri)

          end

          it 'accepts the template as a s3 object' do

            obj = S3.new(:config => config).buckets['bucket'].objects['key']
            obj.stub(:read).and_return('template')

            client.should_receive(:create_stack).with(
              :stack_name => 'name',
              :template_body => obj.read,
              :disable_rollback => false)

            stacks.create('name', obj)

          end

          it 'calls #to_json on other template params' do

            template = double('template')
            template.should_receive(:to_json).and_return('template')

            client.should_receive(:create_stack).with(
              :stack_name => 'name',
              :template_body => 'template',
              :disable_rollback => false)

            stacks.create('name', template)

          end

        end

        context ':capabilities option' do

          it 'passes capabilities to #create_stack' do

            client.should_receive(:create_stack).with(hash_including(
              :capabilities => %w(a b c)))

            stacks.create('name', 'template', :capabilities => %w(a b c))

          end

        end

        context ':disable_rollback option' do

          it 'defaults to false' do

            client.should_receive(:create_stack).with(hash_including(
              :disable_rollback => false))

            stacks.create('name', 'template')

          end

          it 'can be set to true' do

            client.should_receive(:create_stack).with(hash_including(
              :disable_rollback => true))

            stacks.create('name', 'template', :disable_rollback => true)

          end

        end

        context ':notify option' do

          it 'can be set via :notification_arns' do
            client.should_receive(:create_stack).with(hash_including(
              :notification_arns => %w(a b c)))
            stacks.create('name', 'template', :notification_arns => %w(a b c))
          end

          it 'accepts a topic arn string' do

            client.should_receive(:create_stack).with(hash_including(
              :notification_arns => %w(topic-arn)))

            stacks.create('name', 'template', :notify => 'topic-arn')

          end

          it 'accepts a list of topic arn strings' do

            client.should_receive(:create_stack).with(hash_including(
              :notification_arns => %w(t1 t2 t3)))

            stacks.create('name', 'template', :notify => %w(t1 t2 t3))

          end

          it 'accepts an sns topic' do

            topic = SNS::Topic.new('topic-arn', :config => config)

            client.should_receive(:create_stack).with(hash_including(
              :notification_arns => %w(topic-arn)))

            stacks.create('name', 'template', :notify => topic)

          end

          it 'accepts an array of sns topics' do

            t1 = SNS::Topic.new('t1-arn', :config => config)
            t2 = SNS::Topic.new('t1-arn', :config => config)

            client.should_receive(:create_stack).with(hash_including(
              :notification_arns => [t1.arn, t2.arn]))

            stacks.create('name', 'template', :notify => [t1, t2])

          end

        end

        context ':parameters option' do

          it 'accepts a hash of options' do

            params = {
              :k1 => 'v1',
              :k2 => 'v2',
            }

            client.should_receive(:create_stack).with {|opts|
              opts[:parameters].sort_by{|p| p[:parameter_key] }.should == [
                { :parameter_key => 'k1', :parameter_value => 'v1' },
                { :parameter_key => 'k2', :parameter_value => 'v2' },
              ]
              opts
            }.and_return(resp)

            stacks.create('name', 'template', :parameters => params)

          end

        end

        context ':timeout_in_minutes option' do

          it 'passes this option along' do
            client.should_receive(:create_stack).with(hash_including(
              :timeout_in_minutes => 5))
            stacks.create('name', 'template', :timeout_in_minutes => 5)
          end

          it 'can be provided as :timeout' do
            client.should_receive(:create_stack).with(hash_including(
              :timeout_in_minutes => 5))
            stacks.create('name', 'template', :timeout => 5)
          end

        end

        context 'returns' do

          it 'returns a stack' do
            stacks.create('name', 'template').should be_a(Stack)
          end

          it 'returns a stack with the proper config' do
            stacks.create('name', 'template').config.should == config
          end

          it 'returns a stack with the proper name' do
            stacks.create('name', 'template').name.should == 'name'
          end

          it 'returns a stack with the stack id as returned by create call' do
            stacks.create('name', 'template').stack_id.should == 'stack-id'
          end

        end

      end

      context '#[]' do

        it 'returns a stack' do
          stacks['name'].should be_a(Stack)
        end

        it 'returns a stack with the proper name' do
          stacks['name'].name.should == 'name'
        end

        it 'returns a stack with the proper config' do
          stacks['name'].config.should == config
        end

      end

      it_behaves_like "a pageable collection" do

        let(:collection)      { stacks }
        let(:client_method)   { :describe_stacks }
        let(:request_options) {{}}

        def stub_n_members response, n
          response.data[:stacks] = (1..n).map{|i|
            { :stack_name => "stack-#{i}" }
          }
        end

      end

    end
  end
end
