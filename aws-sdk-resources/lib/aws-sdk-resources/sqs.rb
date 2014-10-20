module Aws
  module SQS
    class Queue
      class << self

        private

        def queue_str_attr(method_name, options = {})
          name = options[:name] || attr_name(method_name)
          define_method(method_name) do
            attributes[name]
          end
        end

        def queue_int_attr(method_name, options = {})
          name = options[:name] || attr_name(method_name)
          define_method(method_name) do
            if value = attributes[name]
              value.to_i
            end
          end
        end

        def queue_time_attr(method_name, options = {})
          name = options[:name] || attr_name(method_name)
          define_method(method_name) do
            if value = attributes[name]
              Time.at(value.to_i)
            end
          end
        end

        def attr_name(method_name)
          method_name.to_s.split('_').map { |s| s[0].upcase + s[1..-1] }.join
        end

      end

      # @return [String] the queue's policy.
      queue_str_attr :policy

      # @return [Integer] the visibility timeout for the queue. For more information about visibility timeout, see [Visibility Timeout](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html) in the Amazon SQS Developer Guide.
      queue_int_attr :visibility_timeout

      # @return [Integer] the limit of how many bytes a message can contain before
      #   Amazon SQS rejects it.
      queue_int_attr :maximum_message_size

      # @return [Integer] the number of seconds Amazon SQS retains a message.
      queue_int_attr :message_retention_period

      # @return [Integer] the approximate number of visible messages in a queue.
      #   For more information, see [Resources Required to Process Messages](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/ApproximateNumber.html) in the Amazon SQS Developer Guide.
      queue_int_attr :approximate_number_of_messages

      # @return [Integer] returns the approximate number of messages that are not timed-out and not deleted. For more information, see [Resources Required to Process Messages](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/ApproximateNumber.html) in the Amazon SQS Developer Guide.
      queue_int_attr :approximate_number_of_messages_not_visible

      # @return [Time] the time when the queue was created.
      queue_time_attr :created_timestamp

      # @return [Time] the time when the queue was last changed.
      queue_time_attr :last_modified_timestamp

      # @return [String] the queue's Amazon resource name (ARN).
      queue_str_attr :arn, name: 'QueueArn'

      alias queue_arn arn

      # @return [Integer] returns the approximate number of messages that
      #   are pending to be added to the queue.
      queue_int_attr :approximate_number_of_messages_delayed

      # @return [Integer] the default delay on the queue in seconds.
      queue_int_attr :delay_seconds

      # @return [Integer] the time for which a {Client#receive_message} call
      #   will wait for a message to arrive.
      queue_int_attr :receive_message_wait_time_seconds

      # @return [String] the parameters for dead letter queue functionality of
      #   the source queue. For more information about RedrivePolicy and dead
      #   letter queues, see [Using Amazon SQS Dead Letter Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html)
      #   in the Amazon SQS Developer Guide.
      queue_str_attr :redrive_policy

    end
  end
end
