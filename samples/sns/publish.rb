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