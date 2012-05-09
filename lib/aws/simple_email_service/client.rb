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

      extend Core::Client::QueryXML

      REGION_US_E1 = 'email.us-east-1.amazonaws.com'

      # @private
      CACHEABLE_REQUESTS = Set[]

      ## client methods ##

      # Calls the DeleteVerifiedEmailAddress API operation.
      # @method delete_verified_email_address(options = {})
      #
      # === Options:
      #
      # * +:email_address+ - *required* - (String) An email address to be
      #   removed from the list of verified addreses.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_verified_email_address, 'DeleteVerifiedEmailAddress'

      # Calls the GetSendQuota API operation.
      # @method get_send_quota(options = {})
      #
      # === Options:
      #
      # This method accepts no options.
      #
      # === Response Structure:
      #
      # * +:max_24_hour_send+ - (Numeric)
      # * +:max_send_rate+ - (Numeric)
      # * +:sent_last_24_hours+ - (Numeric)
      #
      # @return [Core::Response]
      #
      define_client_method :get_send_quota, 'GetSendQuota'

      # Calls the GetSendStatistics API operation.
      # @method get_send_statistics(options = {})
      #
      # === Options:
      #
      # This method accepts no options.
      #
      # === Response Structure:
      #
      # * +:send_data_points+ - (Array<Hash>)
      #   * +:timestamp+ - (Time)
      #   * +:delivery_attempts+ - (Integer)
      #   * +:bounces+ - (Integer)
      #   * +:complaints+ - (Integer)
      #   * +:rejects+ - (Integer)
      #
      # @return [Core::Response]
      #
      define_client_method :get_send_statistics, 'GetSendStatistics'

      # Calls the ListVerifiedEmailAddresses API operation.
      # @method list_verified_email_addresses(options = {})
      #
      # === Options:
      #
      # This method accepts no options.
      #
      # === Response Structure:
      #
      # * +:verified_email_addresses+ - (Array<String>)
      #
      # @return [Core::Response]
      #
      define_client_method :list_verified_email_addresses, 'ListVerifiedEmailAddresses'

      # Calls the SendEmail API operation.
      # @method send_email(options = {})
      #
      # === Options:
      #
      # * +:source+ - *required* - (String) The sender's email address.
      # * +:destination+ - *required* - (Hash) The destination for this email,
      #   composed of To:, CC:, and BCC: fields.
      #   * +:to_addresses+ - (Array<String>) The To: field(s) of the message.
      #   * +:cc_addresses+ - (Array<String>) The CC: field(s) of the message.
      #   * +:bcc_addresses+ - (Array<String>) The BCC: field(s) of the
      #     message.
      # * +:message+ - *required* - (Hash) The message to be sent.
      #   * +:subject+ - *required* - (Hash) The subject of the message: A
      #     short summary of the content, which will appear in the recipient's
      #     inbox.
      #     * +:data+ - *required* - (String) The textual data of the content.
      #     * +:charset+ - (String) The character set of the content.
      #   * +:body+ - *required* - (Hash) The message body.
      #     * +:text+ - (Hash) The content of the message, in text format. Use
      #       this for text-based email clients, or clients on high-latency
      #       networks (such as mobile devices).
      #       * +:data+ - *required* - (String) The textual data of the
      #         content.
      #       * +:charset+ - (String) The character set of the content.
      #     * +:html+ - (Hash) The content of the message, in HTML format. Use
      #       this for email clients that can process HTML. You can include
      #       clickable links, formatted text, and much more in an HTML
      #       message.
      #       * +:data+ - *required* - (String) The textual data of the
      #         content.
      #       * +:charset+ - (String) The character set of the content.
      # * +:reply_to_addresses+ - (Array<String>) The reply-to email
      #   address(es) for the message. If the recipient replies to the message,
      #   each reply-to address will receive the reply.
      # * +:return_path+ - (String) The email address to which bounce
      #   notifications are to be forwarded. If the message cannot be delivered
      #   to the recipient, then an error message will be returned from the
      #   recipient's ISP; this message will then be forwarded to the email
      #   address specified by the ReturnPath parameter.
      #
      # === Response Structure:
      #
      # * +:message_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :send_email, 'SendEmail'

      # Calls the SendRawEmail API operation.
      # @method send_raw_email(options = {})
      #
      # === Options:
      #
      # * +:source+ - (String) The sender's email address. If you specify the
      #   Source parameter, then bounce notifications and complaints will be
      #   sent to this email address. This takes precedence over any
      #   Return-Path header that you might include in the raw text of the
      #   message.
      # * +:destinations+ - (Array<String>) A list of destinations for the
      #   message.
      # * +:raw_message+ - *required* - (Hash) The raw text of the message. The
      #   client is responsible for ensuring the following: Message must
      #   contain a header and a body, separated by a blank line. All required
      #   header fields must be present. Each part of a multipart MIME message
      #   must be formatted properly. MIME content types must be among those
      #   supported by Amazon SES. Refer to the Amazon SES Developer Guide for
      #   more details. Content must be base64-encoded, if MIME requires it.
      #   * +:data+ - *required* - (String) The raw data of the message. The
      #     client must ensure that the message format complies with Internet
      #     email standards regarding email header fields, MIME types, MIME
      #     encoding, and base64 encoding (if necessary). For more information,
      #     go to the Amazon SES Developer Guide.
      #
      # === Response Structure:
      #
      # * +:message_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :send_raw_email, 'SendRawEmail'

      # Calls the VerifyEmailAddress API operation.
      # @method verify_email_address(options = {})
      #
      # === Options:
      #
      # * +:email_address+ - *required* - (String) The email address to be
      #   verified.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :verify_email_address, 'VerifyEmailAddress'

      ## end client methods ##

    end
  end
end
