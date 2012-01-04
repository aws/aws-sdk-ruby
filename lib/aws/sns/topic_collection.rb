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

    class TopicCollection

      include Core::Model
      include Enumerable


      # Creates and returns a new SNS Topic.
      # @return [Topic] Returns a new topic with the given name.
      def create name
        response = client.create_topic(:name => name)
        Topic.new(response.topic_arn, :config => config)
      end

      # @param [String] topic_arn An AWS SNS Topic ARN.  It should be
      #   formatted something like:
      #
      #     arn:aws:sns:us-east-1:123456789012:TopicName
      # 
      # @return [Topic] Returns a topic with the given Topic ARN.
      def [] topic_arn
        unless topic_arn =~ /^arn:aws:sns:/
          raise ArgumentError, "invalid topic arn `#{topic_arn}`"
        end
        Topic.new(topic_arn, :config => config)
      end

      # Yields once for each topic.
      # @yieldparam [Topic] topic
      # @return [nil]
      def each &block

        next_token = nil

        begin
          
          list_options = next_token ? { :next_token => next_token } : {} 
          response = client.list_topics(list_options)

          response.topics.each do |t|
            topic = Topic.new(t.topic_arn, :config => config)
            yield(topic)
          end

        end while(next_token = response.next_token)
        nil

      end

    end
  end
end
