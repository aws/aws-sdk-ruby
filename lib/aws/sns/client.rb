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
  class SNS

    # Client class for Amazon Simple Notifications Service (SNS).
    class Client < Core::QueryClient

      API_VERSION = '2010-03-31'

      # @api private
      CACHEABLE_REQUESTS = Set[]

    end

    class Client::V20100331 < Client

      # client methods #

      # @!method add_permission(options = {})
      # Calls the AddPermission API operation.
      # @param [Hash] options
      #
      #   * `:topic_arn` - *required* - (String)
      #   * `:label` - *required* - (String)
      #   * `:aws_account_id` - *required* - (Array<String>)
      #   * `:action_name` - *required* - (Array<String>)
      # @return [Core::Response]

      # @!method confirm_subscription(options = {})
      # Calls the ConfirmSubscription API operation.
      # @param [Hash] options
      #
      #   * `:topic_arn` - *required* - (String)
      #   * `:token` - *required* - (String)
      #   * `:authenticate_on_unsubscribe` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:subscription_arn` - (String)

      # @!method create_platform_application(options = {})
      # Calls the CreatePlatformApplication API operation.
      # @param [Hash] options
      #
      #   * `:name` - (String)
      #   * `:platform` - (String)
      #   * `:attributes` - (Hash<String,String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:platform_application_arn` - (String)

      # @!method create_platform_endpoint(options = {})
      # Calls the CreatePlatformEndpoint API operation.
      # @param [Hash] options
      #
      #   * `:platform_application_arn` - (String)
      #   * `:token` - (String)
      #   * `:custom_user_data` - (String)
      #   * `:attributes` - (Hash<String,String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:endpoint_arn` - (String)

      # @!method create_topic(options = {})
      # Calls the CreateTopic API operation.
      # @param [Hash] options
      #
      #   * `:name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:topic_arn` - (String)

      # @!method delete_endpoint(options = {})
      # Calls the DeleteEndpoint API operation.
      # @param [Hash] options
      #
      #   * `:endpoint_arn` - (String)
      # @return [Core::Response]

      # @!method delete_platform_application(options = {})
      # Calls the DeletePlatformApplication API operation.
      # @param [Hash] options
      #
      #   * `:platform_application_arn` - (String)
      # @return [Core::Response]

      # @!method delete_topic(options = {})
      # Calls the DeleteTopic API operation.
      # @param [Hash] options
      #
      #   * `:topic_arn` - *required* - (String)
      # @return [Core::Response]

      # @!method get_endpoint_attributes(options = {})
      # Calls the GetEndpointAttributes API operation.
      # @param [Hash] options
      #
      #   * `:endpoint_arn` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:attributes` - (Hash<String,String>)

      # @!method get_platform_application_attributes(options = {})
      # Calls the GetPlatformApplicationAttributes API operation.
      # @param [Hash] options
      #
      #   * `:platform_application_arn` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:attributes` - (Hash<String,String>)

      # @!method get_subscription_attributes(options = {})
      # Calls the GetSubscriptionAttributes API operation.
      # @param [Hash] options
      #
      #   * `:subscription_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:attributes` - (Hash<String,String>)

      # @!method get_topic_attributes(options = {})
      # Calls the GetTopicAttributes API operation.
      # @param [Hash] options
      #
      #   * `:topic_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:attributes` - (Hash<String,String>)

      # @!method list_endpoints_by_platform_application(options = {})
      # Calls the ListEndpointsByPlatformApplication API operation.
      # @param [Hash] options
      #
      #   * `:platform_application_arn` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:endpoints` - (Array<Hash>)
      #     * `:endpoint_arn` - (String)
      #     * `:attributes` - (Hash<String,String>)
      #   * `:next_token` - (String)

      # @!method list_platform_applications(options = {})
      # Calls the ListPlatformApplications API operation.
      # @param [Hash] options
      #
      #   * `:next_token` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:platform_applications` - (Array<Hash>)
      #     * `:platform_application_arn` - (String)
      #     * `:attributes` - (Hash<String,String>)

      # @!method list_subscriptions(options = {})
      # Calls the ListSubscriptions API operation.
      # @param [Hash] options
      #
      #   * `:next_token` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:subscriptions` - (Array<Hash>)
      #     * `:subscription_arn` - (String)
      #     * `:owner` - (String)
      #     * `:protocol` - (String)
      #     * `:endpoint` - (String)
      #     * `:topic_arn` - (String)
      #   * `:next_token` - (String)

      # @!method list_subscriptions_by_topic(options = {})
      # Calls the ListSubscriptionsByTopic API operation.
      # @param [Hash] options
      #
      #   * `:topic_arn` - *required* - (String)
      #   * `:next_token` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:subscriptions` - (Array<Hash>)
      #     * `:subscription_arn` - (String)
      #     * `:owner` - (String)
      #     * `:protocol` - (String)
      #     * `:endpoint` - (String)
      #     * `:topic_arn` - (String)
      #   * `:next_token` - (String)

      # @!method list_topics(options = {})
      # Calls the ListTopics API operation.
      # @param [Hash] options
      #
      #   * `:next_token` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:topics` - (Array<Hash>)
      #     * `:topic_arn` - (String)
      #   * `:next_token` - (String)

      # @!method publish(options = {})
      # Calls the Publish API operation.
      # @param [Hash] options
      #
      #   * `:topic_arn` - (String)
      #   * `:target_arn` - (String)
      #   * `:message` - *required* - (String)
      #   * `:subject` - (String)
      #   * `:message_structure` - (String)
      #   * `:attributes` - (Hash<String,String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:message_id` - (String)

      # @!method remove_permission(options = {})
      # Calls the RemovePermission API operation.
      # @param [Hash] options
      #
      #   * `:topic_arn` - *required* - (String)
      #   * `:label` - *required* - (String)
      # @return [Core::Response]

      # @!method set_endpoint_attributes(options = {})
      # Calls the SetEndpointAttributes API operation.
      # @param [Hash] options
      #
      #   * `:endpoint_arn` - (String)
      #   * `:attributes` - (Hash<String,String>)
      # @return [Core::Response]

      # @!method set_platform_application_attributes(options = {})
      # Calls the SetPlatformApplicationAttributes API operation.
      # @param [Hash] options
      #
      #   * `:platform_application_arn` - (String)
      #   * `:attributes` - (Hash<String,String>)
      # @return [Core::Response]

      # @!method set_subscription_attributes(options = {})
      # Calls the SetSubscriptionAttributes API operation.
      # @param [Hash] options
      #
      #   * `:subscription_arn` - *required* - (String)
      #   * `:attribute_name` - *required* - (String)
      #   * `:attribute_value` - (String)
      # @return [Core::Response]

      # @!method set_topic_attributes(options = {})
      # Calls the SetTopicAttributes API operation.
      # @param [Hash] options
      #
      #   * `:topic_arn` - *required* - (String)
      #   * `:attribute_name` - *required* - (String)
      #   * `:attribute_value` - (String)
      # @return [Core::Response]

      # @!method subscribe(options = {})
      # Calls the Subscribe API operation.
      # @param [Hash] options
      #
      #   * `:topic_arn` - *required* - (String)
      #   * `:protocol` - *required* - (String)
      #   * `:endpoint` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:subscription_arn` - (String)

      # @!method unsubscribe(options = {})
      # Calls the Unsubscribe API operation.
      # @param [Hash] options
      #
      #   * `:subscription_arn` - *required* - (String)
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2010-03-31')

    end
  end
end
