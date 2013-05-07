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

module AWS
  class SQS

    # Client class for Amazon Simple Queue Service (SQS).
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method add_permission(options = {})
      # Calls the AddPermission API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:label` - *required* - (String) The unique identification of the
      #     permission you're setting (e.g., AliceSendMessage). Constraints:
      #     Maximum 80 characters; alphanumeric characters, hyphens (-), and
      #     underscores (_) are allowed.
      #   * `:aws_account_ids` - *required* - (Array<String>) The AWS account
      #     number of the principal who will be given permission. The principal
      #     must have an AWS account, but does not need to be signed up for
      #     Amazon SQS.
      #   * `:actions` - *required* - (Array<String>) The action the client
      #     wants to allow for the specified principal.
      # @return [Core::Response]

      # @!method change_message_visibility(options = {})
      # Calls the ChangeMessageVisibility API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:receipt_handle` - *required* - (String) The receipt handle
      #     associated with the message whose visibility timeout should be
      #     changed.
      #   * `:visibility_timeout` - *required* - (Integer) The new value (in
      #     seconds) for the message's visibility timeout.
      # @return [Core::Response]

      # @!method change_message_visibility_batch(options = {})
      # Calls the ChangeMessageVisibilityBatch API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:entries` - *required* - (Array<Hash>) A list of receipt handles
      #     of the messages for which the visibility timeout must be changed.
      #     * `:id` - *required* - (String) An identifier for this particular
      #       receipt handle. This is used to communicate the result. Note that
      #       the Ids of a batch request need to be unique within the request.
      #     * `:receipt_handle` - *required* - (String) A receipt handle.
      #     * `:visibility_timeout` - (Integer) The new value (in seconds) for
      #       the message's visibility timeout.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:successful` - (Array<Hash>)
      #     * `:id` - (String)
      #   * `:failed` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:sender_fault` - (Boolean)
      #     * `:code` - (String)
      #     * `:message` - (String)

      # @!method create_queue(options = {})
      # Calls the CreateQueue API operation.
      # @param [Hash] options
      #   * `:queue_name` - *required* - (String) The name for the queue to be
      #     created.
      #   * `:attributes` - (Hash<String,String>) A map of attributes with
      #     their corresponding values.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:queue_url` - (String)

      # @!method delete_message(options = {})
      # Calls the DeleteMessage API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:receipt_handle` - *required* - (String) The receipt handle
      #     associated with the message to delete.
      # @return [Core::Response]

      # @!method delete_message_batch(options = {})
      # Calls the DeleteMessageBatch API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:entries` - *required* - (Array<Hash>) A list of receipt handles
      #     for the messages to be deleted.
      #     * `:id` - *required* - (String) An identifier for this particular
      #       receipt handle. This is used to communicate the result. Note that
      #       the Ids of a batch request need to be unique within the request.
      #     * `:receipt_handle` - *required* - (String) A receipt handle.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:successful` - (Array<Hash>)
      #     * `:id` - (String)
      #   * `:failed` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:sender_fault` - (Boolean)
      #     * `:code` - (String)
      #     * `:message` - (String)

      # @!method delete_queue(options = {})
      # Calls the DeleteQueue API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      # @return [Core::Response]

      # @!method get_queue_attributes(options = {})
      # Calls the GetQueueAttributes API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:attribute_names` - (Array<String>) A list of attributes to
      #     retrieve information for.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:attributes` - (Hash<String,String>)

      # @!method get_queue_url(options = {})
      # Calls the GetQueueUrl API operation.
      # @param [Hash] options
      #   * `:queue_name` - *required* - (String) The name of the queue whose
      #     URL must be fetched.
      #   * `:queue_owner_aws_account_id` - (String) The AWS account number of
      #     the queue's owner.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:queue_url` - (String)

      # @!method list_queues(options = {})
      # Calls the ListQueues API operation.
      # @param [Hash] options
      #   * `:queue_name_prefix` - (String) A string to use for filtering the
      #     list results. Only those queues whose name begins with the
      #     specified string are returned.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:queue_urls` - (Array<String>)

      # @!method receive_message(options = {})
      # Calls the ReceiveMessage API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:attribute_names` - (Array<String>) A list of attributes that need
      #     to be returned along with each message. The set of valid attributes
      #     are [SenderId, ApproximateFirstReceiveTimestamp,
      #     ApproximateReceiveCount, SentTimestamp].
      #   * `:max_number_of_messages` - (Integer) The maximum number of
      #     messages to return. Amazon SQS never returns more messages than
      #     this value but may return fewer. All of the messages are not
      #     necessarily returned.
      #   * `:visibility_timeout` - (Integer) The duration (in seconds) that
      #     the received messages are hidden from subsequent retrieve requests
      #     after being retrieved by a ReceiveMessage request.
      #   * `:wait_time_seconds` - (Integer) The duration (in seconds) for
      #     which the call will wait for a message to arrive in the queue
      #     before returning. If a message is available, the call will return
      #     sooner than WaitTimeSeconds.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:messages` - (Array<Hash>)
      #     * `:message_id` - (String)
      #     * `:receipt_handle` - (String)
      #     * `:md5_of_body` - (String)
      #     * `:body` - (String)
      #     * `:attributes` - (Hash<String,String>)

      # @!method remove_permission(options = {})
      # Calls the RemovePermission API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:label` - *required* - (String) The identification of the
      #     permission to remove. This is the label added with the
      #     AddPermission operation.
      # @return [Core::Response]

      # @!method send_message(options = {})
      # Calls the SendMessage API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:message_body` - *required* - (String) The message to send.
      #   * `:delay_seconds` - (Integer) The number of seconds the message has
      #     to be delayed.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:md5_of_message_body` - (String)
      #   * `:message_id` - (String)

      # @!method send_message_batch(options = {})
      # Calls the SendMessageBatch API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:entries` - *required* - (Array<Hash>) A list of
      #     SendMessageBatchRequestEntrys.
      #     * `:id` - *required* - (String) An identifier for the message in
      #       this batch. This is used to communicate the result. Note that the
      #       the Ids of a batch request need to be unique within the request.
      #     * `:message_body` - *required* - (String) Body of the message.
      #     * `:delay_seconds` - (Integer) The number of seconds for which the
      #       message has to be delayed.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:successful` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:message_id` - (String)
      #     * `:md5_of_message_body` - (String)
      #   * `:failed` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:sender_fault` - (Boolean)
      #     * `:code` - (String)
      #     * `:message` - (String)

      # @!method set_queue_attributes(options = {})
      # Calls the SetQueueAttributes API operation.
      # @param [Hash] options
      #   * `:queue_url` - *required* - (String) The URL of the SQS queue to
      #     take action on.
      #   * `:attributes` - *required* - (Hash<String,String>) A map of
      #     attributes to set.
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2012-11-05')

      private

      def build_request *args
        request = super(*args)
        if url_param = request.params.find { |p| p.name == "QueueUrl" }
          url = URI.parse(url_param.value)
          request.host = url.host
          request.uri = url.request_uri
          if matches = request.host.match(/^sqs\.(.+?)\./)
            request.region = matches[1]
          end
        end
        request
      end

    end
  end
end
