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

require 'aws-sdk'

begin
  region = "us-west-2"
  elb_name = "your-elb-name"

  elb = AWS::ELB.new(region: region)
  instances = elb.load_balancers[elb_name].instances.health.map{|h| h.instance }

  running_instances =
    instances.select do |i|
      i.exists? && i.status == :running
    end

  running_instances.each{|i| puts i.id }

rescue AWS::ELB::Errors::ValidationError => e
  # elb_name is empty.
  puts e.inspect
rescue AWS::ELB::Errors::LoadBalancerNotFound => e
  # region is not specified.
  puts e.inspect
rescue AWS::ELB::Errors::AccessDenied => e
  # you don't have permission to access.
  puts e.inspect
rescue SocketError => e
  # region you specified is wrong.
  puts e.inspect
rescue => e
  puts e.inspect
  puts e.backtrace.join("\n")
end
