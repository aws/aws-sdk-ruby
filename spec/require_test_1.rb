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

$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

# Running these tests as separate process to isolate code loading order issues

require 'aws-sdk'

print "Service specific config options available before service autoloaded: "
AWS.config(:ec2_region => 'us-west-2')
AWS.config.ec2_region
puts "ok"
exit 0
