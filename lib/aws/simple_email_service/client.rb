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
  class SimpleEmailService

    # Client class for Amazon Simple E-mail Service (SES).
    class Client < Core::QueryClient

      REGION_US_E1 = 'email.us-east-1.amazonaws.com'

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method delete_identity(options = {})
      # Calls the DeleteIdentity API operation.
      # @param [Hash] options
      #   * `:identity` - *required* - (String) The identity to be removed from
      #     the list of identities for the AWS Account.
      # @return [Core::Response]

      # @!method delete_verified_email_address(options = {})
      # Calls the DeleteVerifiedEmailAddress API operation.
      # @param [Hash] options
      #   * `:email_address` - *required* - (String) An email address to be
      #     removed from the list of verified addresses.
      # @return [Core::Response]

      # @!method get_identity_dkim_attributes(options = {})
      # Calls the GetIdentityDkimAttributes API operation.
      # @param [Hash] options
      #   * `:identities` - *required* - (Array<String>) A list of one or more
      #     verified identities - email addresses, domains, or both.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:dkim_attributes` - (Hash<String,Hash>)
      #     * `:dkim_enabled` - (Boolean)
      #     * `:dkim_verification_status` - (String)
      #     * `:dkim_tokens` - (Array<String>)

      # @!method get_identity_notification_attributes(options = {})
      # Calls the GetIdentityNotificationAttributes API operation.
      # @param [Hash] options
      #   * `:identities` - *required* - (Array<String>) A list of one or more
      #     identities.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:notification_attributes` - (Hash<String,Hash>)
      #     * `:bounce_topic` - (String)
      #     * `:complaint_topic` - (String)
      #     * `:forwarding_enabled` - (Boolean)

      # @!method get_identity_verification_attributes(options = {})
      # Calls the GetIdentityVerificationAttributes API operation.
      # @param [Hash] options
      #   * `:identities` - *required* - (Array<String>) A list of identities.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:verification_attributes` - (Hash<String,Hash>)
      #     * `:verification_status` - (String)
      #     * `:verification_token` - (String)

      # @!method get_send_quota(options = {})
      # Calls the GetSendQuota API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:max_24_hour_send` - (Numeric)
      #   * `:max_send_rate` - (Numeric)
      #   * `:sent_last_24_hours` - (Numeric)

      # @!method get_send_statistics(options = {})
      # Calls the GetSendStatistics API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:send_data_points` - (Array<Hash>)
      #     * `:timestamp` - (Time)
      #     * `:delivery_attempts` - (Integer)
      #     * `:bounces` - (Integer)
      #     * `:complaints` - (Integer)
      #     * `:rejects` - (Integer)

      # @!method list_identities(options = {})
      # Calls the ListIdentities API operation.
      # @param [Hash] options
      #   * `:identity_type` - (String) The type of the identities to list.
      #     Possible values are "EmailAddress" and "Domain". If this parameter
      #     is omitted, then all identities will be listed. Valid values
      #     include:
      #     * `EmailAddress`
      #     * `Domain`
      #   * `:next_token` - (String) The token to use for pagination.
      #   * `:max_items` - (Integer) The maximum number of identities per page.
      #     Possible values are 1-100 inclusive.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:identities` - (Array<String>)
      #   * `:next_token` - (String)

      # @!method list_verified_email_addresses(options = {})
      # Calls the ListVerifiedEmailAddresses API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:verified_email_addresses` - (Array<String>)

      # @!method send_email(options = {})
      # Calls the SendEmail API operation.
      # @param [Hash] options
      #   * `:source` - *required* - (String) The identity's email address.
      #   * `:destination` - *required* - (Hash) The destination for this
      #     email, composed of To:, CC:, and BCC: fields.
      #     * `:to_addresses` - (Array<String>) The To: field(s) of the
      #       message.
      #     * `:cc_addresses` - (Array<String>) The CC: field(s) of the
      #       message.
      #     * `:bcc_addresses` - (Array<String>) The BCC: field(s) of the
      #       message.
      #   * `:message` - *required* - (Hash) The message to be sent.
      #     * `:subject` - *required* - (Hash) The subject of the message: A
      #       short summary of the content, which will appear in the
      #       recipient's inbox.
      #       * `:data` - *required* - (String) The textual data of the
      #         content.
      #       * `:charset` - (String) The character set of the content.
      #     * `:body` - *required* - (Hash) The message body.
      #       * `:text` - (Hash) The content of the message, in text format.
      #         Use this for text-based email clients, or clients on
      #         high-latency networks (such as mobile devices).
      #         * `:data` - *required* - (String) The textual data of the
      #           content.
      #         * `:charset` - (String) The character set of the content.
      #       * `:html` - (Hash) The content of the message, in HTML format.
      #         Use this for email clients that can process HTML. You can
      #         include clickable links, formatted text, and much more in an
      #         HTML message.
      #         * `:data` - *required* - (String) The textual data of the
      #           content.
      #         * `:charset` - (String) The character set of the content.
      #   * `:reply_to_addresses` - (Array<String>) The reply-to email
      #     address(es) for the message. If the recipient replies to the
      #     message, each reply-to address will receive the reply.
      #   * `:return_path` - (String) The email address to which bounce
      #     notifications are to be forwarded. If the message cannot be
      #     delivered to the recipient, then an error message will be returned
      #     from the recipient's ISP; this message will then be forwarded to
      #     the email address specified by the ReturnPath parameter.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:message_id` - (String)

      # @!method send_raw_email(options = {})
      # Calls the SendRawEmail API operation.
      # @param [Hash] options
      #   * `:source` - (String) The identity's email address. If you specify
      #     the Source parameter, then bounce notifications and complaints will
      #     be sent to this email address. This takes precedence over any
      #     Return-Path header that you might include in the raw text of the
      #     message.
      #   * `:destinations` - (Array<String>) A list of destinations for the
      #     message.
      #   * `:raw_message` - *required* - (Hash) The raw text of the message.
      #     The client is responsible for ensuring the following: Message must
      #     contain a header and a body, separated by a blank line. All
      #     required header fields must be present. Each part of a multipart
      #     MIME message must be formatted properly. MIME content types must be
      #     among those supported by Amazon SES. Refer to the Amazon SES
      #     Developer Guide for more details. Content must be base64-encoded,
      #     if MIME requires it.
      #     * `:data` - *required* - (String) The raw data of the message. The
      #       client must ensure that the message format complies with Internet
      #       email standards regarding email header fields, MIME types, MIME
      #       encoding, and base64 encoding (if necessary). For more
      #       information, go to theAmazon SES Developer Guide.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:message_id` - (String)

      # @!method set_identity_dkim_enabled(options = {})
      # Calls the SetIdentityDkimEnabled API operation.
      # @param [Hash] options
      #   * `:identity` - *required* - (String) The identity for which DKIM
      #     signing should be enabled or disabled.
      #   * `:dkim_enabled` - *required* - (Boolean) Sets whether DKIM signing
      #     is enabled for an identity. Set to `true` to enable DKIM signing
      #     for this identity; `false` to disable it.
      # @return [Core::Response]

      # @!method set_identity_feedback_forwarding_enabled(options = {})
      # Calls the SetIdentityFeedbackForwardingEnabled API operation.
      # @param [Hash] options
      #   * `:identity` - *required* - (String) The identity for which to set
      #     feedback notification forwarding. Examples: user@example.com,
      #     example.com.
      #   * `:forwarding_enabled` - *required* - (Boolean) Sets whether Amazon
      #     SES will forward feedback notifications as email. `true` specifies
      #     that Amazon SES will forward feedback notifications as email, in
      #     addition to any Amazon SNS topic publishing otherwise specified.
      #     `false` specifies that Amazon SES will publish feedback
      #     notifications only through Amazon SNS. This value can only be set
      #     to `false` when topics are specified for both Bounce and Complaint
      #     topic types.
      # @return [Core::Response]

      # @!method set_identity_notification_topic(options = {})
      # Calls the SetIdentityNotificationTopic API operation.
      # @param [Hash] options
      #   * `:identity` - *required* - (String) The identity for which the
      #     topic will be set. Examples: user@example.com, example.com.
      #   * `:notification_type` - *required* - (String) The type of feedback
      #     notifications that will be published to the specified topic. Valid
      #     values include:
      #     * `Bounce`
      #     * `Complaint`
      #   * `:sns_topic` - (String) The Amazon Resource Name (ARN) of the
      #     Amazon Simple Notification Service (Amazon SNS) topic. If the
      #     parameter is ommited from the request or a null value is passed,
      #     the topic is cleared and publishing is disabled.
      # @return [Core::Response]

      # @!method verify_domain_dkim(options = {})
      # Calls the VerifyDomainDkim API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String) The name of the domain to be
      #     verified for Easy DKIM signing.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:dkim_tokens` - (Array<String>)

      # @!method verify_domain_identity(options = {})
      # Calls the VerifyDomainIdentity API operation.
      # @param [Hash] options
      #   * `:domain` - *required* - (String) The domain to be verified.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:verification_token` - (String)

      # @!method verify_email_address(options = {})
      # Calls the VerifyEmailAddress API operation.
      # @param [Hash] options
      #   * `:email_address` - *required* - (String) The email address to be
      #     verified.
      # @return [Core::Response]

      # @!method verify_email_identity(options = {})
      # Calls the VerifyEmailIdentity API operation.
      # @param [Hash] options
      #   * `:email_address` - *required* - (String) The email address to be
      #     verified.
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2010-12-01')

    end
  end
end
