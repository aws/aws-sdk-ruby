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
    describe ReservedInstances do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:reservation) { ReservedInstances.new('id', :config => config) }

      it_should_behave_like "an ec2 resource object"

      let(:describe_call) { :describe_reserved_instances }

      let(:describe_opts) { { :reserved_instances_ids => ["id"] } }

      let(:response_id_field) { :reserved_instances_id }

      let(:resource_id) { 'id' }

      let(:instance) { reservation }

      def stub_member(response, member)
        response.data[:reserved_instances_set] = [member]
      end

      it_should_behave_like "a tagged ec2 item" do
        let(:taggable) { reservation }
        def stub_tags(resp, tags)
          stub_member(resp, :reserved_instances_id => "id", :tag_set => tags)
        end
      end

      it_should_behave_like "it has reserved instance attributes" do

        context '#start' do
          let(:attribute) { :start }
          let(:response_field) { attribute }
          let(:response_value) { Time.parse("Fri May 13 21:31:58 UTC 2011") }
          let(:translated_value) { response_value }
          it_should_behave_like "ec2 resource attribute accessor (describe call)"
        end

        context '#instance_count' do
          let(:attribute) { :instance_count }
          let(:response_field) { attribute }
          let(:response_value) { 2 }
          let(:translated_value) { response_value }
          it_should_behave_like "ec2 resource attribute accessor (describe call)"
        end

      end

    end
  end
end
