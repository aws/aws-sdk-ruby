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

Given /^I have a metric$/ do
  @namespace = 'ruby-integreation-tests'
  @metric_name = "test-#{Time.now.to_i}"
  @metric = AWS::CloudWatch::Metric.new(@namespace, @metric_name)
end

Given /^I put data for the metric$/ do
  @metric.put_data([
    { :value => 2, :unit => 'Count' },
    { :value => 3, :unit => 'Count' },
    { :value => 4, :unit => 'Count' },
    { :value => 5, :unit => 'Count' },
    { :value => 6, :unit => 'Count' },
  ])
end

Then /^I should be able to get statistics for the metric$/ do
  eventually do
    now = Time.now
    @statistics = @metric.statistics({
      :start_time => now - 3600,
      :end_time => now,
      :statistics => ['Average'],
      :unit => 'Count',
    })
    @statistics.metric.should eq(@metric)
    @statistics.datapoints.should_not be_empty
  end
end
