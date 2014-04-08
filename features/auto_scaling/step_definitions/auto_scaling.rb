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

Before("@auto_scaling") do

  @as = AWS::AutoScaling.new
  @as_client = @as.client

  @created_launch_configurations = []
  @created_auto_scaling_groups = []

end

After("@auto_scaling") do

  @created_auto_scaling_groups.each do |group|
    begin
      group.delete!
    rescue AWS::AutoScaling::Errors::ValidationError
      # already deleted
    end
  end

  @created_launch_configurations.each do |launch_config|
    begin
      launch_config.delete
    rescue AWS::AutoScaling::Errors::ValidationError
      # throws a name validation error when it cant find a launch
      # configuration with the given name -- already deleted
    end
  end

end
