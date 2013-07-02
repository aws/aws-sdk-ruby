# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

(queue_name,message) = ARGV
unless queue_name and message
  puts <<EOS
Usage: #{__FILE__} <QUEUE_NAME> <MESSAGE>
For example: #{__FILE__} myqueue mymessage
EOS
  exit 1
end

# Gets an instance of the SQS interface using the default configuration
sqs = AWS::SQS.new

puts "Creating queue '#{queue_name}' ..."
q = nil
begin
  # Creates new queue or gets erxisting queue
  q = sqs.queues.create queue_name
rescue AWS::SQS::Errors::InvalidParameterValue => e
  puts "Invalid queue name '#{queue_name}'. "+e.message
  exit 1
end

puts "Waiting for queue created on AWS"
loop do
  if q.exists?
    puts "Queue is created on AWS"
    break
  end
  sleep 1
end

# Send message to queue
puts "Sending message '#{message}' to queue ..."
m = q.send_message message
puts "A message is created on queue with id '#{m.id}'"

# Now get  the first message from queue
puts "Retrieving the first message from queue ..."
q.poll(:idle_timeout => 5) do |msg|
  puts "Retrieved the message '#{msg.body}'"
end

# Clear up
q.delete
puts "Deleted the queue '#{queue_name}'"
