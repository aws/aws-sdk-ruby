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


Given /^I create a elastic transcoder pipeline$/ do

  step 'I create a new bucket'
  step 'I create an IAM policy'
  step 'I create an IAM role'
  step 'I add the IAM policy to the role'

  @pipeline_name = "ruby-integration-#{Time.now.to_i}"

  @response = @elastic_transcoder_client.create_pipeline({
    :name => @pipeline_name,
    :input_bucket => @bucket_name,
    :output_bucket => @bucket_name,
    :role => @iam_role_arn,
    :notifications => {
      :progressing => '',
      :completed => '',
      :warning => '',
      :error => '',
    },
  })
  @pipeline_id = @response[:pipeline][:id]
  @transcoder_pipeline_ids << @pipeline_id
end

Given /^I list pipelines$/ do
  @response = @elastic_transcoder_client.list_pipelines
end

Then /^the list should contain the pipeline$/ do
  ids = @response[:pipelines].map{|pipeline| pipeline[:id] }
  ids.should include(@pipeline_id)
end

Then /^I pause the pipeline$/ do
  @elastic_transcoder_client.update_pipeline_status({
    :id => @pipeline_id,
    :status => 'Paused',
  })
end

Then /^I read the pipeline$/ do
  @response = @elastic_transcoder_client.read_pipeline({
    :id => @pipeline_id,
  })
end

Then /^the pipeline status should be "(.*?)"$/ do |status|
  @response[:pipeline][:status].should eq(status)
end

Given /^I create a pipeline with invalid parameters$/ do
  begin
    @elastic_transcoder_client.create_pipeline({
      :name => 'pipeline-name',
      :input_bucket => 'bucket-name',
      :output_bucket => 'bucket-name',
      :role => 'bad-arn',
      :notifications => {
        :progressing => '',
        :completed => '',
        :warning => '',
        :error => '',
      },
    })
  rescue => error
    @error = error
  end
end

Then /^the error code should be "(.*?)"$/ do |code|
  @error.code.should eq(code)
end
