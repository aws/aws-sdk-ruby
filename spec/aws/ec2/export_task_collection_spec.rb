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
    describe ExportTaskCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { ExportTask }

        let(:client_method) { :describe_export_tasks }

        def stub_two_members(resp)
          resp.data[:export_task_set] = [
            { :export_task_id => 'et-123' },
            { :export_task_id => 'et-321' },
          ]
        end

        it_should_behave_like "ec2 collection array access"

        let(:export_tasks) { collection }

        context '#each' do

          it 'yields export tasks' do
            export_tasks.count.should == 2
            export_tasks.map(&:id).should == %w(et-123 et-321)
            export_tasks.all?{|t| t.should be_a(ExportTask) }
          end

        end

        context '#[]' do

          it 'returns an export task' do
            export_tasks['id'].should be_a(ExportTask)
          end

          it 'returns an export task with the proper id' do
            export_tasks['id'].export_task_id.should == 'id'
          end

          it 'returns an export task with the proper config' do
            export_tasks['id'].config.should == config
          end

        end
      end
    end
  end
end
