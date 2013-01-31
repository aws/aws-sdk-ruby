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

When /^I create a job flow$/ do
  @job_flow_name = "ruby-integration-#{Time.now.to_i}"
  @job_flow = @emr.job_flows.create(@job_flow_name,
    :instances => {
      :instance_count => 2,
      :master_instance_type => 'm1.small',
      :slave_instance_type => 'm1.small',
    }
  )
  @created_job_flows << @job_flow
end

Then /^the job flow should exist$/ do
  @job_flow.exists?.should eq(true)
end

When /^I terminate the job flow$/ do
  @job_flow.terminate
end

Then /^the job flow state should eventually be "([^"]*)"$/ do |state|
  eventually do
    @job_flow.state.should eq(state)
  end
end

Then /^the job flow should be in the list of job flows$/ do
  @emr.job_flows.should include(@job_flow)
end

When /^I enable api termination protection$/ do
  @job_flow.enable_termination_protection
end

Then /^the job flow should have termination protected$/ do
  @job_flow.termination_protected.should eq(true)
end

When /^I disable api termination protection$/ do
  @job_flow.disable_termination_protection
end

Then /^the job flow should have termination unprotected$/ do
  @job_flow.termination_protected.should eq(false)
end
