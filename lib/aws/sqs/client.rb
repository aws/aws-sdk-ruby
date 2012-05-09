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
  class SQS

    # Client class for Amazon Simple Queue Service (SQS).
    class Client < Core::Client

      API_VERSION = '2011-10-01'

      extend Core::Client::QueryXML

      # @private
      CACHEABLE_REQUESTS = Set[]

      ## client methods ##

      # Calls the AddPermission API operation.
      # @method add_permission(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:label+ - *required* - (String) The unique identification of the
      #   permission you're setting (e.g., AliceSendMessage). Constraints:
      #   Maximum 80 characters; alphanumeric characters, hyphens (-), and
      #   underscores (_) are allowed.
      # * +:aws_account_ids+ - *required* - (Array<String>) The AWS account
      #   number of the principal who will be given permission. The principal
      #   must have an AWS account, but does not need to be signed up for
      #   Amazon SQS.
      # * +:actions+ - *required* - (Array<String>) The action the client wants
      #   to allow for the specified principal.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :add_permission, 'AddPermission'

      # Calls the ChangeMessageVisibility API operation.
      # @method change_message_visibility(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:receipt_handle+ - *required* - (String) The receipt handle
      #   associated with the message whose visibility timeout should be
      #   changed.
      # * +:visibility_timeout+ - *required* - (Integer) The new value (in
      #   seconds) for the message's visibility timeout.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :change_message_visibility, 'ChangeMessageVisibility'

      # Calls the ChangeMessageVisibilityBatch API operation.
      # @method change_message_visibility_batch(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:entries+ - *required* - (Array<Hash>) A list of receipt handles of
      #   the messages for which the visibility timeout must be changed.
      #   * +:id+ - *required* - (String) An identifier for this particular
      #     receipt handle. This is used to communicate the result. Note that
      #     the Ids of a batch request need to be unique within the request.
      #   * +:receipt_handle+ - *required* - (String) A receipt handle.
      #   * +:visibility_timeout+ - (Integer) The new value (in seconds) for
      #     the message's visibility timeout.
      #
      # === Response Structure:
      #
      # * +:successful+ - (Array<Hash>)
      #   * +:id+ - (String)
      # * +:failed+ - (Array<Hash>)
      #   * +:id+ - (String)
      #   * +:sender_fault+ - (Boolean)
      #   * +:code+ - (String)
      #   * +:message+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :change_message_visibility_batch, 'ChangeMessageVisibilityBatch'

      # Calls the CreateQueue API operation.
      # @method create_queue(options = {})
      #
      # === Options:
      #
      # * +:queue_name+ - *required* - (String) The name for the queue to be
      #   created.
      # * +:attributes+ - (Hash<String,String>) A map of attributes with their
      #   corresponding values.
      #
      # === Response Structure:
      #
      # * +:queue_url+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_queue, 'CreateQueue'

      # Calls the DeleteMessage API operation.
      # @method delete_message(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:receipt_handle+ - *required* - (String) The receipt handle
      #   associated with the message to delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_message, 'DeleteMessage'

      # Calls the DeleteMessageBatch API operation.
      # @method delete_message_batch(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:entries+ - *required* - (Array<Hash>) A list of receipt handles for
      #   the messages to be deleted.
      #   * +:id+ - *required* - (String) An identifier for this particular
      #     receipt handle. This is used to communicate the result. Note that
      #     the Ids of a batch request need to be unique within the request.
      #   * +:receipt_handle+ - *required* - (String) A receipt handle.
      #
      # === Response Structure:
      #
      # * +:successful+ - (Array<Hash>)
      #   * +:id+ - (String)
      # * +:failed+ - (Array<Hash>)
      #   * +:id+ - (String)
      #   * +:sender_fault+ - (Boolean)
      #   * +:code+ - (String)
      #   * +:message+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :delete_message_batch, 'DeleteMessageBatch'

      # Calls the DeleteQueue API operation.
      # @method delete_queue(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_queue, 'DeleteQueue'

      # Calls the GetQueueAttributes API operation.
      # @method get_queue_attributes(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:attribute_names+ - (Array<String>) A list of attributes to retrieve
      #   information for.
      #
      # === Response Structure:
      #
      # * +:attributes+ - (Hash<String,String>)
      #
      # @return [Core::Response]
      #
      define_client_method :get_queue_attributes, 'GetQueueAttributes'

      # Calls the GetQueueUrl API operation.
      # @method get_queue_url(options = {})
      #
      # === Options:
      #
      # * +:queue_name+ - *required* - (String) The name of the queue whose URL
      #   must be fetched.
      # * +:queue_owner_aws_account_id+ - (String) The AWS account number of
      #   the queue's owner.
      #
      # === Response Structure:
      #
      # * +:queue_url+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :get_queue_url, 'GetQueueUrl'

      # Calls the ListQueues API operation.
      # @method list_queues(options = {})
      #
      # === Options:
      #
      # * +:queue_name_prefix+ - (String) A string to use for filtering the
      #   list results. Only those queues whose name begins with the specified
      #   string are returned.
      #
      # === Response Structure:
      #
      # * +:queue_urls+ - (Array<String>)
      #
      # @return [Core::Response]
      #
      define_client_method :list_queues, 'ListQueues'

      # Calls the ReceiveMessage API operation.
      # @method receive_message(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:attribute_names+ - (Array<String>) A list of attributes to retrieve
      #   information for.
      # * +:max_number_of_messages+ - (Integer) The maximum number of messages
      #   to return. Amazon SQS never returns more messages than this value but
      #   may return fewer. All of the messages are not necessarily returned.
      # * +:visibility_timeout+ - (Integer) The duration (in seconds) that the
      #   received messages are hidden from subsequent retrieve requests after
      #   being retrieved by a ReceiveMessage request.
      #
      # === Response Structure:
      #
      # * +:messages+ - (Array<Hash>)
      #   * +:message_id+ - (String)
      #   * +:receipt_handle+ - (String)
      #   * +:md5_of_body+ - (String)
      #   * +:body+ - (String)
      #   * +:attributes+ - (Hash<String,String>)
      #
      # @return [Core::Response]
      #
      define_client_method :receive_message, 'ReceiveMessage'

      # Calls the RemovePermission API operation.
      # @method remove_permission(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:label+ - *required* - (String) The identification of the permission
      #   to remove. This is the label added with the AddPermission operation.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :remove_permission, 'RemovePermission'

      # Calls the SendMessage API operation.
      # @method send_message(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:message_body+ - *required* - (String) The message to send.
      # * +:delay_seconds+ - (Integer) The number of seconds the message has to
      #   be delayed.
      #
      # === Response Structure:
      #
      # * +:md5_of_message_body+ - (String)
      # * +:message_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :send_message, 'SendMessage'

      # Calls the SendMessageBatch API operation.
      # @method send_message_batch(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:entries+ - *required* - (Array<Hash>) A list of
      #   SendMessageBatchRequestEntrys.
      #   * +:id+ - *required* - (String) An identifier for the message in this
      #     batch. This is used to communicate the result. Note that the the
      #     Ids of a batch request need to be unique within the request.
      #   * +:message_body+ - *required* - (String) Body of the message.
      #   * +:delay_seconds+ - (Integer) The number of seconds for which the
      #     message has to be delayed.
      #
      # === Response Structure:
      #
      # * +:successful+ - (Array<Hash>)
      #   * +:id+ - (String)
      #   * +:message_id+ - (String)
      #   * +:md5_of_message_body+ - (String)
      # * +:failed+ - (Array<Hash>)
      #   * +:id+ - (String)
      #   * +:sender_fault+ - (Boolean)
      #   * +:code+ - (String)
      #   * +:message+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :send_message_batch, 'SendMessageBatch'

      # Calls the SetQueueAttributes API operation.
      # @method set_queue_attributes(options = {})
      #
      # === Options:
      #
      # * +:queue_url+ - *required* - (String) The URL of the SQS queue to take
      #   action on.
      # * +:attributes+ - *required* - (Hash<String,String>) A map of
      #   attributes to set.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :set_queue_attributes, 'SetQueueAttributes'

      ## end client methods ##

    end
  end
end
