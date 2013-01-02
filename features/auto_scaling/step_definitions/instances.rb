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

Then /^eventually there should be an auto scaling instance$/ do
  eventually do
    @auto_scaling_group.auto_scaling_instances.count.should > 0
  end
  @auto_scaling_instance = @auto_scaling_group.auto_scaling_instances.first
end

Then /^the auto scaling instance should exist$/ do
  @auto_scaling_instance.exists?.should == true
end

Then /^the auto scaling should have a matching ec(\d+) instance$/ do |arg1|
  @auto_scaling_instance.ec2_instance.exists?.should == true
end

Then /^the auto scaling should have the correct launch configuration$/ do
  @auto_scaling_instance.launch_configuration.should == @launch_configuration
end
