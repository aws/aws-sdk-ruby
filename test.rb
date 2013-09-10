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

require 'bundler/setup'
require 'aws-sdk-core'
require 'pp'

pp Aws.ec2.client.describe_instances.data
pp Aws.swf.client.list_domains(registration_status: 'DEPRECATED').data
pp Aws.dynamo_db.client.list_tables.data
