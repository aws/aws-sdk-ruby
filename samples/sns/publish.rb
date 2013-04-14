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


require File.expand_path(File.dirname(__FILE__) + '/../samples_config')

# Topic's arn can be found in AWS Management, under Topic Details.
(topic_arn, message) = ARGV
unless topic_arn && message
  puts "Usage: upload.rb <TOPIC_ARN> <MESSAGE>"
  exit 1
end

# Get an instance of the SNS interface using the default configuration
sns = AWS::SNS.new

# Find the topic by using the topic's arn
t = sns.topics[topic_arn]
puts "Now publishing to '#{t.name}' topic the following message:"
puts "\"#{message}\""

# Publish the message to the topic
t.publish(message)

puts "\nMessage published"
