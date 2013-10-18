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
    describe ExportTask do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:task) { ExportTask.new('eid-12345', :config => config) }

      let(:resp) { client.stub_for(:describe_export_tasks) }

      let(:data) {{ :export_task_id => task.id }}

      it_should_behave_like "an ec2 resource object"

      context 'attributes' do

        before(:each) do
          resp.data[:export_task_set] << data
          client.should_receive(:describe_export_tasks).and_return(resp)
        end

        it 'should return the nested instance_id' do
          data[:instance_export] = { :instance_id => 'i-12345' }
          task.instance_id.should == 'i-12345'
        end

        it 'returns the nested target environment' do
          data[:instance_export] = { :target_environment => 'env' }
          task.target_environment.should == 'env'
        end

        it 'returns the description' do
          data[:description] = 'abc'
          task.description.should == 'abc'
        end

        it 'returns the state as a symbol' do
          data[:state] = 'abc'
          task.state.should == :abc
        end

        it 'returns the status_message' do
          data[:status_message] = 'abc'
          task.status_message.should == 'abc'
        end

        it 'returns the nested disk image format' do
          data[:export_to_s3] = { :disk_image_format => 'format' }
          task.disk_image_format.should == 'format'
        end

        it 'returns the nested container format' do
          data[:export_to_s3] = { :container_format => 'format' }
          task.container_format.should == 'format'
        end

        it 'returns the nested s3 bucket name' do
          data[:export_to_s3] = { :s3_bucket => 'bucket-name' }
          task.s3_bucket_name.should == 'bucket-name'
        end

        it 'returns the nested s3 key' do
          data[:export_to_s3] = { :s3_key => 'key' }
          task.s3_key.should == 'key'
        end

        context '#instance' do

          before(:each) do
            data[:instance_export] = { :instance_id => 'i-12345' }
          end

          it 'returns an instance object' do
            task.instance.should be_an(Instance)
          end

          it 'returns an instance with the proper id' do
            task.instance.id.should == 'i-12345'
          end

          it 'returns an instance with the proper config' do
            task.instance.config.should == config
          end

        end

        context '#s3_bucket' do

          before(:each) do
            data[:export_to_s3] = { :s3_bucket => 'bucket-name' }
          end

          it 'returns a bucket object' do
            task.s3_bucket.should be_an(S3::Bucket)
          end

          it 'returns a bucket with the proper name' do
            task.s3_bucket.name.should == 'bucket-name'
          end

          it 'returns a bucket with the proper config' do
            task.s3_bucket.config.should == config
          end

        end

        context '#s3_object' do

          before(:each) do
            data[:export_to_s3] = { :s3_bucket => 'bucket-name', :s3_key => 'key' }
          end

          it 'returns an s3 object' do
            task.s3_object.should be_an(S3::S3Object)
          end

          it 'returns an s3 object with the proper key' do
            task.s3_object.key.should == 'key'
          end

          it 'returns an s3 object with the proper bucket' do
            task.s3_object.bucket.name.should == 'bucket-name'
          end

          it 'returns an s3 object with the proper config' do
            task.s3_object.config.should == config
          end

        end

      end

      context '#cancel' do

        it 'calls #cancel_export_task' do
          client.should_receive(:cancel_export_task).
            with(:export_task_id => task.id)
          task.cancel
        end

      end

    end
  end
end
