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

def resource_context &example_group_block

  example_group_class = context("as a core resource") do

    let(:resource) { new_resource({}) }

    context '#config' do

      let(:config) { AWS.config }

      it 'defaults to AWS.config' do
        resource.config.should eq(AWS.config)
      end

      it 'can be specified in the constructor' do
        config = double('configuration')
        new_resource(:config => config).config.should eq(config)
      end

    end

    context '#exists?' do

      it 'should define an #exists? method' do
        resource.should respond_to(:exists?)
      end

    end

    context '#inspect' do

      it 'should begin with the resouce class name' do
        resource.inspect.should match(/<#{resource.class.name} .*>/)
      end

      it 'should contain each of the resource identifier values' do
        resource.send(:resource_identifiers).each do |name,value|
          resource.inspect.should match(/#{value}/)
        end
      end

    end

  end

  example_group_class.class_eval(&example_group_block) if block_given?

end

# Must specify the following settings (via let(:...))
#
# * :client_name - configuration method that returns the client
# * :client_method - what client method is called to get the resource
# * :request_options - hash of options used to get the resource
# * new_resource - returns a new resource given a hash of options
# * stub_response - puts the response object data into the response
#
# Below is a sample usage
#
#   context 'attributes' do
#
#     let(:client_name) { :emr_client }
#     let(:client_method) { :describe_job_flows }
#     let(:request_options) {{}}
#
#     def new_resource options
#       JobFlow.new('id', options)
#     end
#
#     def stub_response resp, data
#       response.data[:job_flows] = [data.merge(:job_flow_id => 'id')]
#     end
#
#     it_should_behave_like "a resource attr", :name, :static => true
#     it_should_behave_like "a resource attr", :ami_version
#
#   end
#
# @param [Symbol] attr_name
# @param [Hash] options ({})
# @option optoins [Boolean] :static (false)
# @option optoins [Boolean] :mutable (false)
def attr_context attr_name, options = {}, &example_group_block

  example_group_class = context("##{attr_name}") do

    let(:resource) { new_resource(:config => config) }

    let(:config) { stub_config }

    let(:client) { config.send(client_name) }

    let(:response) { client.stub_for(client_method) }

    let(:value) { double('response-value') }

    let(:data) {{ attr_name => value }}

    before(:each) do
      stub_response(response, data)
      client.stub(client_method).and_return(response)
    end

    it 'should have an attribute accessor' do
      resource.should respond_to(attr_name)
    end

    if options[:mutable]

      it 'should have a mutator' do
        resource.should respond_to(:"#{attr_name}=")
      end

    else

      it 'should be read-only' do
        resource.should_not respond_to(:"#{attr_name}=")
      end

    end

    if options[:boolean]

      it "should be aliased as #{attr_name}?" do
        resource.method("#{attr_name}?").should eq(resource.method(attr_name))
      end

    end

    if options[:static]

      context 'as a static attribute' do

        it 'should be cached when passed to the constructor' do
          client.should_not_receive(client_method)
          resource = new_resource(attr_name => 'value', :config => config)
          resource.send(attr_name)
        end

        it 'should return the cached attribute when available' do
          value = double('static-value')
          resource = new_resource(attr_name => value, :config => config)
          resource.send(attr_name).should eq(value)
        end

        it 'should make a client request when the value it not available' do

          client.should_receive(client_method).
            with(request_options).
            exactly(1).times.
            and_return(response)

          # accessed 3 times, makes only 1 request
          resource.send(attr_name).should eq(value)
          resource.send(attr_name).should eq(value)
          resource.send(attr_name).should eq(value)

        end

      end

    else

      context 'as a non-static attribute' do

        it 'does not cache (potentially) stale constructor values' do

          client.should_receive(client_method).
            with(request_options).
            and_return(response)

          resource = new_resource(attr_name => 'stale', :config => config)
          resource.send(attr_name).should eq(value)

        end

        it 'makes a request for each access of the attribute' do

          client.should_receive(client_method).
            with(request_options).
            exactly(3).times.
            and_return(response)

          resource = new_resource(:config => config)
          resource.send(attr_name)
          resource.send(attr_name)
          resource.send(attr_name)

        end

        it 'should cache values inside memoization blocks' do

          client.should_receive(client_method).
            with(request_options).
            exactly(1).times.
            and_return(response)

          AWS.memoize do
            resource = new_resource(:config => config)
            resource.send(attr_name)
            resource.send(attr_name)
            resource.send(attr_name)
          end

        end

      end

    end

  end

  example_group_class.class_eval(&example_group_block) if block_given?

end
