# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module AWS
  class SNS
    module FromAutoScaling
      def self.extended base
        base.origin = :autoscaling
      end

      def applicable? sns
        sns['Subject'] =~ /.*autoscaling:.*/i
      end

      module_function :applicable?

      def body
        return @body if defined? @body
        @body = self.parse_from self.raw['Message']
      end

      def event
        return @event if defined? @event
        e = body['Event']
        @event = case
          when e =~ /EC2_INSTANCE_TERMINATE/ then :ec2_instance_terminate
          when e =~ /EC2_INSTANCE_TERMINATE_ERROR/ then :ec2_instance_terminate_error
          when e =~ /EC2_INSTANCE_LAUNCH/ then :ec2_instance_launch
          when e =~ /EC2_INSTANCE_LAUNCH_ERROR/ then :ec2_instance_launch_error
          when e =~ /TEST_NOTIFICATION/ then :test_notification
          else :unknown
        end
      end

      def group_name
        body['AutoScalingGroupName']
      end

      def status_code
        body['StatusCode']
      end

      def instance_id
        body['EC2InstanceId']
      end
    end
  end
end
