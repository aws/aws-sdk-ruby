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

def create_pipeline
  id = "ruby-test-pipeline-#{Time.now.to_i}#{@pipelines.size}"
  desc = "Integration test P#{@pipelines.size + 1}"
  pipeline = @data_pipeline_client.create_pipeline :name => id,
    :unique_id => id, :description => desc
  @pipelines << pipeline
  @pipeline_id = pipeline[:pipeline_id]
  @pipeline = pipeline
end

When /^I create a(?:nother)? pipeline$/ do
  create_pipeline
end

Then /^the pipeline should exist$/ do
  step 'I describe the pipelines'
  step 'the "description" for pipeline 1 should be "Integration test P1"'
end

Then /^I describe the pipelines$/ do
  desc = @data_pipeline_client.describe_pipelines(
    :pipeline_ids => @pipelines.map {|x| x[:pipeline_id] })
  @describe_pipelines = desc[:pipeline_description_list]
end

Then /^the "(.+)" for pipeline (\d+) should be "(.+)"$/ do |key,num, desc|
  idx = num.to_i - 1
  pipe = @describe_pipelines.find {|x| x[:pipeline_id] == @pipelines[idx][:pipeline_id] }
  item = pipe[:fields].find {|f| f[:key] == key }
  item[:string_value].should eq(desc)
end

Then /^all pipelines should exist$/ do
  step 'I describe the pipelines'
  @pipelines.size.times do |i|
    step 'the "description" for pipeline ' +
         "#{i+1} should be \"Integration test P#{i+1}\""
  end
end

When /^I (add|validate) the following definition:$/ do |add_or_validate, table|
  @objects = []
  object = nil
  table.rows.each do |key, value|
    if key[0, 1] == '*'
      @objects << (object = {:fields => []})
      object[:id], object[:name] = key[1..-1], value
    elsif key[0, 1] == '<'
      object[:fields] << {:key => key[1..-1], :ref_value => value}
    else
      object[:fields] << {:key => key, :string_value => value}
    end
  end
  @objects.each {|o| o[:fields] = o[:fields].sort_by {|x| x[:key] } }

  begin
    meth = add_or_validate == 'add' ?
      :put_pipeline_definition : :validate_pipeline_definition
    @result = @data_pipeline_client.send(meth, :pipeline_id => @pipeline_id,
      :pipeline_objects => @objects)
  rescue => e
    @error = e
  end
end

Then /^I should get the same objects back$/ do
  objects = @data_pipeline_client.get_pipeline_definition :pipeline_id => @pipeline_id
  objects = objects[:pipeline_objects]
  objects.each {|o| o[:fields] = o[:fields].sort_by {|x| x[:key] } }
  @objects.should eq(objects)
end

And /^the objects should be valid$/ do
  valid = @data_pipeline_client.validate_pipeline_definition :pipeline_id => @pipeline_id,
    :pipeline_objects => @objects
  valid[:errored].should == false
end

Then /^validation errors for (.+?) should contain:$/ do |id, error|
  @result[:errored].should be_true
  @result[:validation_errors].should eq([
    {:errors => [error], :id => id}
  ])
end

Then /^I should get a(?:n)? (.+?) error$/ do |code|
  @error.code.should eq(code)
end
