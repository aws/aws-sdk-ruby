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

    describe Client do

      let(:test_credentials) do
        { :access_key_id => "access key id",
          :secret_access_key => "secret access key" }
      end

      let(:http_handler) { double("handler",
                                  :handle => true) }

      let(:client) do
        Client.new(test_credentials.merge(:http_handler => http_handler))
      end

      context '#describe_instance_attribute' do

        let(:opts) { { :instance_id => "i-123", :attribute => "foo" } }

        it 'should pass instance_id as InstanceId' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.params.map { |p| p.encoded }.should include("InstanceId=i-123")
          end
          client.describe_instance_attribute(opts)
        end

        it 'should pass attribute as Attribute' do
          http_handler.should_receive(:handle).with do |req, resp|
            req.params.map { |p| p.encoded }.should include("Attribute=foo")
          end
          client.describe_instance_attribute(opts)
        end

      end

      context '#describe_instances' do

        let(:method) { :describe_instances }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_instance_attribute' do

        let(:method) { :describe_instance_attribute }
        let(:opts) { { :instance_id => "i-123", :attribute => "foo" } }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_images' do

        let(:method) { :describe_images }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_image_attribute' do

        let(:method) { :describe_image_attribute }
        let(:opts) { { :image_id => "ami-123", :attribute => "foo" } }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_volumes' do

        let(:method) { :describe_volumes }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_security_groups' do

        let(:method) { :describe_security_groups }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_addresses' do

        let(:method) { :describe_addresses }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_key_pairs' do

        let(:method) { :describe_key_pairs }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_regions' do

        let(:method) { :describe_regions }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_availability_zones' do

        let(:method) { :describe_availability_zones }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_reserved_instances' do

        let(:method) { :describe_reserved_instances }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_reserved_instances_offerings' do

        let(:method) { :describe_reserved_instances_offerings }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_snapshots' do

        let(:method) { :describe_snapshots }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_snapshot_attribute' do

        let(:method) { :describe_snapshot_attribute }
        let(:opts) { { :snapshot_id => "snap-123", :attribute => "foo" } }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context '#describe_tags' do

        let(:method) { :describe_tags }
        let(:opts) { { } }
        it_should_behave_like "uses cached responses"
        it_should_behave_like "an aws http request", "POST"

      end

      context "error parsing" do

        it 'should raise the correct error class' do
          http_handler.stub(:handle) do |req, resp|
            resp.status = 400
            resp.body = "<Response><Errors><Error><Code>Foo</Code>"+
              "<Message>BAR</Message>"+
              "</Error></Errors></Response>"
          end
          lambda {
            client.describe_instances
          }.should raise_error(EC2::Errors::Foo, "BAR")
        end

      end

    end

  end
end
