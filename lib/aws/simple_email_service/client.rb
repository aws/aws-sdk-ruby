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
  class SimpleEmailService

    # Client class for Amazon Simple E-mail Service (SES).
    class Client < Core::Client

      API_VERSION = '2010-12-01'

      extend Core::QueryClient

      REGION_US_E1 = 'email.us-east-1.amazonaws.com'

      # @private
      CACHEABLE_REQUESTS = Set[]

      ## client methods ##

      # Calls the DeleteIdentity API operation.
      # @method delete_identity(options = {})
      # @param [Hash] options
      #   * +:identity+ - *required* - (String) The identity to be removed from
      #     the list of identities for the AWS Account.
      # @return [Core::Response]
      define_client_method :delete_identity, 'DeleteIdentity'

      # Calls the DeleteVerifiedEmailAddress API operation.
      # @method delete_verified_email_address(options = {})
      # @param [Hash] options
      #   * +:email_address+ - *required* - (String) An email address to be
      #     removed from the list of verified addresses.
      # @return [Core::Response]
      define_client_method :delete_verified_email_address, 'DeleteVerifiedEmailAddress'

      # Calls the GetIdentityNotificationAttributes API operation.
      # @method get_identity_notification_attributes(options = {})
      # @param [Hash] options
      #   * +:identities+ - *required* - (Array<String>) A list of one or more
      #     identities.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:notification_attributes+ - (Hash<String,Hash>)
      #     * +:bounce_topic+ - (String)
      #     * +:complaint_topic+ - (String)
      #     * +:forwarding_enabled+ - (Boolean)
      define_client_method :get_identity_notification_attributes, 'GetIdentityNotificationAttributes'

      # Calls the GetIdentityVerificationAttributes API operation.
      # @method get_identity_verification_attributes(options = {})
      # @param [Hash] options
      #   * +:identities+ - *required* - (Array<String>) A list of identities.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:verification_attributes+ - (Hash<String,Hash>)
      #     * +:verification_status+ - (String)
      #     * +:verification_token+ - (String)
      define_client_method :get_identity_verification_attributes, 'GetIdentityVerificationAttributes'

      # Calls the GetSendQuota API operation.
      # @method get_send_quota(options = {})
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:max_24_hour_send+ - (Numeric)
      #   * +:max_send_rate+ - (Numeric)
      #   * +:sent_last_24_hours+ - (Numeric)
      define_client_method :get_send_quota, 'GetSendQuota'

      # Calls the GetSendStatistics API operation.
      # @method get_send_statistics(options = {})
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:send_data_points+ - (Array<Hash>)
      #     * +:timestamp+ - (Time)
      #     * +:delivery_attempts+ - (Integer)
      #     * +:bounces+ - (Integer)
      #     * +:complaints+ - (Integer)
      #     * +:rejects+ - (Integer)
      define_client_method :get_send_statistics, 'GetSendStatistics'

      # Calls the ListIdentities API operation.
      # @method list_identities(options = {})
      # @param [Hash] options
      #   * +:identity_type+ - (String) The type of the identities to list.
      #     Possible values are "EmailAddress" and "Domain". If this parameter
      #     is omitted, then all identities will be listed.
      #   * +:next_token+ - (String) The token to use for pagination.
      #   * +:max_items+ - (Integer) The maximum number of identities per page.
      #     Possible values are 1-100 inclusive.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:identities+ - (Array<String>)
      #   * +:next_token+ - (String)
      define_client_method :list_identities, 'ListIdentities'

      # Calls the ListVerifiedEmailAddresses API operation.
      # @method list_verified_email_addresses(options = {})
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:verified_email_addresses+ - (Array<String>)
      define_client_method :list_verified_email_addresses, 'ListVerifiedEmailAddresses'

      # Calls the SendEmail API operation.
      # @method send_email(options = {})
      # @param [Hash] options
      #   * +:source+ - *required* - (String) The identity's email address.
      #   * +:destination+ - *required* - (Hash) The destination for this
      #     email, composed of To:, CC:, and BCC: fields.
      #     * +:to_addresses+ - (Array<String>) The To: field(s) of the
      #       message.
      #     * +:cc_addresses+ - (Array<String>) The CC: field(s) of the
      #       message.
      #     * +:bcc_addresses+ - (Array<String>) The BCC: field(s) of the
      #       message.
      #   * +:message+ - *required* - (Hash) The message to be sent.
      #     * +:subject+ - *required* - (Hash) The subject of the message: A
      #       short summary of the content, which will appear in the
      #       recipient's inbox.
      #       * +:data+ - *required* - (String) The textual data of the
      #         content.
      #       * +:charset+ - (String) The character set of the content.
      #     * +:body+ - *required* - (Hash) The message body.
      #       * +:text+ - (Hash) The content of the message, in text format.
      #         Use this for text-based email clients, or clients on
      #         high-latency networks (such as mobile devices).
      #         * +:data+ - *required* - (String) The textual data of the
      #           content.
      #         * +:charset+ - (String) The character set of the content.
      #       * +:html+ - (Hash) The content of the message, in HTML format.
      #         Use this for email clients that can process HTML. You can
      #         include clickable links, formatted text, and much more in an
      #         HTML message.
      #         * +:data+ - *required* - (String) The textual data of the
      #           content.
      #         * +:charset+ - (String) The character set of the content.
      #   * +:reply_to_addresses+ - (Array<String>) The reply-to email
      #     address(es) for the message. If the recipient replies to the
      #     message, each reply-to address will receive the reply.
      #   * +:return_path+ - (String) The email address to which bounce
      #     notifications are to be forwarded. If the message cannot be
      #     delivered to the recipient, then an error message will be returned
      #     from the recipient's ISP; this message will then be forwarded to
      #     the email address specified by the ReturnPath parameter.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:message_id+ - (String)
      define_client_method :send_email, 'SendEmail'

      # Calls the SendRawEmail API operation.
      # @method send_raw_email(options = {})
      # @param [Hash] options
      #   * +:source+ - (String) The identity's email address. If you specify
      #     the Source parameter, then bounce notifications and complaints will
      #     be sent to this email address. This takes precedence over any
      #     Return-Path header that you might include in the raw text of the
      #     message.
      #   * +:destinations+ - (Array<String>) A list of destinations for the
      #     message.
      #   * +:raw_message+ - *required* - (Hash) The raw text of the message.
      #     The client is responsible for ensuring the following: Message must
      #     contain a header and a body, separated by a blank line. All
      #     required header fields must be present. Each part of a multipart
      #     MIME message must be formatted properly. MIME content types must be
      #     among those supported by Amazon SES. Refer to the Amazon SES
      #     Developer Guide for more details. Content must be base64-encoded,
      #     if MIME requires it.
      #     * +:data+ - *required* - (String) The raw data of the message. The
      #       client must ensure that the message format complies with Internet
      #       email standards regarding email header fields, MIME types, MIME
      #       encoding, and base64 encoding (if necessary). For more
      #       information, go to theAmazon SES Developer Guide.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:message_id+ - (String)
      define_client_method :send_raw_email, 'SendRawEmail'

      # Calls the SetIdentityFeedbackForwardingEnabled API operation.
      # @method set_identity_feedback_forwarding_enabled(options = {})
      # @param [Hash] options
      #   * +:identity+ - *required* - (String) The identity for which to set
      #     feedback notification forwarding. Examples: user@example.com,
      #     example.com.
      #   * +:forwarding_enabled+ - *required* - (Boolean) Sets whether Amazon
      #     SES will forward feedback notifications as email. +true+ specifies
      #     that Amazon SES will forward feedback notifications as email, in
      #     addition to any Amazon SNS topic publishing otherwise specified.
      #     +false+ specifies that Amazon SES will publish feedback
      #     notifications only through Amazon SNS. This value can only be set
      #     to +false+ when topics are specified for both Bounce and Complaint
      #     topic types.
      # @return [Core::Response]
      define_client_method :set_identity_feedback_forwarding_enabled, 'SetIdentityFeedbackForwardingEnabled'

      # Calls the SetIdentityNotificationTopic API operation.
      # @method set_identity_notification_topic(options = {})
      # @param [Hash] options
      #   * +:identity+ - *required* - (String) The identity for which the
      #     topic will be set. Examples: user@example.com, example.com.
      #   * +:notification_type+ - *required* - (String) The type of feedback
      #     notifications that will be published to the specified topic.
      #   * +:sns_topic+ - (String) The Amazon Resource Name (ARN) of the
      #     Amazon Simple Notification Service (Amazon SNS) topic. If the
      #     parameter is ommited from the request or a null value is passed,
      #     the topic is cleared and publishing is disabled.
      # @return [Core::Response]
      define_client_method :set_identity_notification_topic, 'SetIdentityNotificationTopic'

      # Calls the VerifyDomainIdentity API operation.
      # @method verify_domain_identity(options = {})
      # @param [Hash] options
      #   * +:domain+ - *required* - (String) The domain to be verified.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:verification_token+ - (String)
      define_client_method :verify_domain_identity, 'VerifyDomainIdentity'

      # Calls the VerifyEmailAddress API operation.
      # @method verify_email_address(options = {})
      # @param [Hash] options
      #   * +:email_address+ - *required* - (String) The email address to be
      #     verified.
      # @return [Core::Response]
      define_client_method :verify_email_address, 'VerifyEmailAddress'

      # Calls the VerifyEmailIdentity API operation.
      # @method verify_email_identity(options = {})
      # @param [Hash] options
      #   * +:email_address+ - *required* - (String) The email address to be
      #     verified.
      # @return [Core::Response]
      define_client_method :verify_email_identity, 'VerifyEmailIdentity'

      ## end client methods ##

    end
  end
end
