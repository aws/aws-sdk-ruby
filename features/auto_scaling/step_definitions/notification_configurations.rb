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

When /^I create a notification configuration for the group$/ do
  @notification_configuration = @auto_scaling_group.notification_configurations.create(:topic => @topic)
end

Then /^the group should have no notification configurations$/ do
  @auto_scaling_group.notification_configurations.to_a.should == []
end

Then /^the auto scaling group should have the notification configuration$/ do
  @auto_scaling_group.notification_configurations.should
    include(@notification_configuration)
end

When /^I delete the notification configuration$/ do
  @notification_configuration.delete
end
