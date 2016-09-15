# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module SES
    module Types

      # When included in a receipt rule, this action adds a header to the
      # received email.
      #
      # For information about adding a header using a receipt rule, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html
      # @note When making an API call, pass AddHeaderAction
      #   data as a hash:
      #
      #       {
      #         header_name: "HeaderName", # required
      #         header_value: "HeaderValue", # required
      #       }
      class AddHeaderAction < Struct.new(
        :header_name,
        :header_value)

        include Aws::Structure

        # @!attribute [rw] header_name
        #   The name of the header to add. Must be between 1 and 50 characters,
        #   inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters
        #   and dashes only.
        #   @return [String]

        # @!attribute [rw] header_value
        #   Must be less than 2048 characters, and must not contain newline
        #   characters (\"\\r\" or \"\\n\").
        #   @return [String]

      end

      # Represents the body of the message. You can specify text, HTML, or
      # both. If you use both, then the message should display correctly in
      # the widest variety of email clients.
      # @note When making an API call, pass Body
      #   data as a hash:
      #
      #       {
      #         text: {
      #           data: "MessageData", # required
      #           charset: "Charset",
      #         },
      #         html: {
      #           data: "MessageData", # required
      #           charset: "Charset",
      #         },
      #       }
      class Body < Struct.new(
        :text,
        :html)

        include Aws::Structure

        # @!attribute [rw] text
        #   The content of the message, in text format. Use this for text-based
        #   email clients, or clients on high-latency networks (such as mobile
        #   devices).
        #   @return [Types::Content]

        # @!attribute [rw] html
        #   The content of the message, in HTML format. Use this for email
        #   clients that can process HTML. You can include clickable links,
        #   formatted text, and much more in an HTML message.
        #   @return [Types::Content]

      end

      # When included in a receipt rule, this action rejects the received
      # email by returning a bounce response to the sender and, optionally,
      # publishes a notification to Amazon Simple Notification Service (Amazon
      # SNS).
      #
      # For information about sending a bounce message in response to a
      # received email, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html
      # @note When making an API call, pass BounceAction
      #   data as a hash:
      #
      #       {
      #         topic_arn: "AmazonResourceName",
      #         smtp_reply_code: "BounceSmtpReplyCode", # required
      #         status_code: "BounceStatusCode",
      #         message: "BounceMessage", # required
      #         sender: "Address", # required
      #       }
      class BounceAction < Struct.new(
        :topic_arn,
        :smtp_reply_code,
        :status_code,
        :message,
        :sender)

        include Aws::Structure

        # @!attribute [rw] topic_arn
        #   The Amazon Resource Name (ARN) of the Amazon SNS topic to notify
        #   when the bounce action is taken. An example of an Amazon SNS topic
        #   ARN is `arn:aws:sns:us-west-2:123456789012:MyTopic`. For more
        #   information about Amazon SNS topics, see the [Amazon SNS Developer
        #   Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html
        #   @return [String]

        # @!attribute [rw] smtp_reply_code
        #   The SMTP reply code, as defined by [RFC 5321][1].
        #
        #
        #
        #   [1]: https://tools.ietf.org/html/rfc5321
        #   @return [String]

        # @!attribute [rw] status_code
        #   The SMTP enhanced status code, as defined by [RFC 3463][1].
        #
        #
        #
        #   [1]: https://tools.ietf.org/html/rfc3463
        #   @return [String]

        # @!attribute [rw] message
        #   Human-readable text to include in the bounce message.
        #   @return [String]

        # @!attribute [rw] sender
        #   The email address of the sender of the bounced email. This is the
        #   address from which the bounce message will be sent.
        #   @return [String]

      end

      # Recipient-related information to include in the Delivery Status
      # Notification (DSN) when an email that Amazon SES receives on your
      # behalf bounces.
      #
      # For information about receiving email through Amazon SES, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html
      # @note When making an API call, pass BouncedRecipientInfo
      #   data as a hash:
      #
      #       {
      #         recipient: "Address", # required
      #         recipient_arn: "AmazonResourceName",
      #         bounce_type: "DoesNotExist", # accepts DoesNotExist, MessageTooLarge, ExceededQuota, ContentRejected, Undefined, TemporaryFailure
      #         recipient_dsn_fields: {
      #           final_recipient: "Address",
      #           action: "failed", # required, accepts failed, delayed, delivered, relayed, expanded
      #           remote_mta: "RemoteMta",
      #           status: "DsnStatus", # required
      #           diagnostic_code: "DiagnosticCode",
      #           last_attempt_date: Time.now,
      #           extension_fields: [
      #             {
      #               name: "ExtensionFieldName", # required
      #               value: "ExtensionFieldValue", # required
      #             },
      #           ],
      #         },
      #       }
      class BouncedRecipientInfo < Struct.new(
        :recipient,
        :recipient_arn,
        :bounce_type,
        :recipient_dsn_fields)

        include Aws::Structure

        # @!attribute [rw] recipient
        #   The email address of the recipient of the bounced email.
        #   @return [String]

        # @!attribute [rw] recipient_arn
        #   This parameter is used only for sending authorization. It is the ARN
        #   of the identity that is associated with the sending authorization
        #   policy that permits you to receive email for the recipient of the
        #   bounced email. For more information about sending authorization, see
        #   the [Amazon SES Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
        #   @return [String]

        # @!attribute [rw] bounce_type
        #   The reason for the bounce. You must provide either this parameter or
        #   `RecipientDsnFields`.
        #   @return [String]

        # @!attribute [rw] recipient_dsn_fields
        #   Recipient-related DSN fields, most of which would normally be filled
        #   in automatically when provided with a `BounceType`. You must provide
        #   either this parameter or `BounceType`.
        #   @return [Types::RecipientDsnFields]

      end

      # Represents a request to create a receipt rule set by cloning an
      # existing one. You use receipt rule sets to receive email with Amazon
      # SES. For more information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass CloneReceiptRuleSetRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName", # required
      #         original_rule_set_name: "ReceiptRuleSetName", # required
      #       }
      class CloneReceiptRuleSetRequest < Struct.new(
        :rule_set_name,
        :original_rule_set_name)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the rule set to create. The name must:
        #
        #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
        #     underscores (\_), or dashes (-).
        #
        #   * Start and end with a letter or number.
        #
        #   * Contain less than 64 characters.
        #   @return [String]

        # @!attribute [rw] original_rule_set_name
        #   The name of the rule set to clone.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class CloneReceiptRuleSetResponse < Aws::EmptyStructure; end

      # Represents textual data, plus an optional character set specification.
      #
      # By default, the text must be 7-bit ASCII, due to the constraints of
      # the SMTP protocol. If the text must contain any other characters, then
      # you must also specify a character set. Examples include UTF-8,
      # ISO-8859-1, and Shift\_JIS.
      # @note When making an API call, pass Content
      #   data as a hash:
      #
      #       {
      #         data: "MessageData", # required
      #         charset: "Charset",
      #       }
      class Content < Struct.new(
        :data,
        :charset)

        include Aws::Structure

        # @!attribute [rw] data
        #   The textual data of the content.
        #   @return [String]

        # @!attribute [rw] charset
        #   The character set of the content.
        #   @return [String]

      end

      # Represents a request to create a new IP address filter. You use IP
      # address filters when you receive email with Amazon SES. For more
      # information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass CreateReceiptFilterRequest
      #   data as a hash:
      #
      #       {
      #         filter: { # required
      #           name: "ReceiptFilterName", # required
      #           ip_filter: { # required
      #             policy: "Block", # required, accepts Block, Allow
      #             cidr: "Cidr", # required
      #           },
      #         },
      #       }
      class CreateReceiptFilterRequest < Struct.new(
        :filter)

        include Aws::Structure

        # @!attribute [rw] filter
        #   A data structure that describes the IP address filter to create,
        #   which consists of a name, an IP address range, and whether to allow
        #   or block mail from it.
        #   @return [Types::ReceiptFilter]

      end

      # An empty element returned on a successful request.
      class CreateReceiptFilterResponse < Aws::EmptyStructure; end

      # Represents a request to create a receipt rule. You use receipt rules
      # to receive email with Amazon SES. For more information, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass CreateReceiptRuleRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName", # required
      #         after: "ReceiptRuleName",
      #         rule: { # required
      #           name: "ReceiptRuleName", # required
      #           enabled: false,
      #           tls_policy: "Require", # accepts Require, Optional
      #           recipients: ["Recipient"],
      #           actions: [
      #             {
      #               s3_action: {
      #                 topic_arn: "AmazonResourceName",
      #                 bucket_name: "S3BucketName", # required
      #                 object_key_prefix: "S3KeyPrefix",
      #                 kms_key_arn: "AmazonResourceName",
      #               },
      #               bounce_action: {
      #                 topic_arn: "AmazonResourceName",
      #                 smtp_reply_code: "BounceSmtpReplyCode", # required
      #                 status_code: "BounceStatusCode",
      #                 message: "BounceMessage", # required
      #                 sender: "Address", # required
      #               },
      #               workmail_action: {
      #                 topic_arn: "AmazonResourceName",
      #                 organization_arn: "AmazonResourceName", # required
      #               },
      #               lambda_action: {
      #                 topic_arn: "AmazonResourceName",
      #                 function_arn: "AmazonResourceName", # required
      #                 invocation_type: "Event", # accepts Event, RequestResponse
      #               },
      #               stop_action: {
      #                 scope: "RuleSet", # required, accepts RuleSet
      #                 topic_arn: "AmazonResourceName",
      #               },
      #               add_header_action: {
      #                 header_name: "HeaderName", # required
      #                 header_value: "HeaderValue", # required
      #               },
      #               sns_action: {
      #                 topic_arn: "AmazonResourceName", # required
      #                 encoding: "UTF-8", # accepts UTF-8, Base64
      #               },
      #             },
      #           ],
      #           scan_enabled: false,
      #         },
      #       }
      class CreateReceiptRuleRequest < Struct.new(
        :rule_set_name,
        :after,
        :rule)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the rule set to which to add the rule.
        #   @return [String]

        # @!attribute [rw] after
        #   The name of an existing rule after which the new rule will be
        #   placed. If this parameter is null, the new rule will be inserted at
        #   the beginning of the rule list.
        #   @return [String]

        # @!attribute [rw] rule
        #   A data structure that contains the specified rule\'s name, actions,
        #   recipients, domains, enabled status, scan status, and TLS policy.
        #   @return [Types::ReceiptRule]

      end

      # An empty element returned on a successful request.
      class CreateReceiptRuleResponse < Aws::EmptyStructure; end

      # Represents a request to create an empty receipt rule set. You use
      # receipt rule sets to receive email with Amazon SES. For more
      # information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass CreateReceiptRuleSetRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName", # required
      #       }
      class CreateReceiptRuleSetRequest < Struct.new(
        :rule_set_name)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the rule set to create. The name must:
        #
        #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
        #     underscores (\_), or dashes (-).
        #
        #   * Start and end with a letter or number.
        #
        #   * Contain less than 64 characters.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class CreateReceiptRuleSetResponse < Aws::EmptyStructure; end

      # Represents a request to delete a sending authorization policy for an
      # identity. Sending authorization is an Amazon SES feature that enables
      # you to authorize other senders to use your identities. For
      # information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
      # @note When making an API call, pass DeleteIdentityPolicyRequest
      #   data as a hash:
      #
      #       {
      #         identity: "Identity", # required
      #         policy_name: "PolicyName", # required
      #       }
      class DeleteIdentityPolicyRequest < Struct.new(
        :identity,
        :policy_name)

        include Aws::Structure

        # @!attribute [rw] identity
        #   The identity that is associated with the policy that you want to
        #   delete. You can specify the identity by using its name or by using
        #   its Amazon Resource Name (ARN). Examples: `user@example.com`,
        #   `example.com`,
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
        #
        #   To successfully call this API, you must own the identity.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy to be deleted.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class DeleteIdentityPolicyResponse < Aws::EmptyStructure; end

      # Represents a request to delete one of your Amazon SES identities (an
      # email address or domain).
      # @note When making an API call, pass DeleteIdentityRequest
      #   data as a hash:
      #
      #       {
      #         identity: "Identity", # required
      #       }
      class DeleteIdentityRequest < Struct.new(
        :identity)

        include Aws::Structure

        # @!attribute [rw] identity
        #   The identity to be removed from the list of identities for the AWS
        #   Account.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class DeleteIdentityResponse < Aws::EmptyStructure; end

      # Represents a request to delete an IP address filter. You use IP
      # address filters when you receive email with Amazon SES. For more
      # information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass DeleteReceiptFilterRequest
      #   data as a hash:
      #
      #       {
      #         filter_name: "ReceiptFilterName", # required
      #       }
      class DeleteReceiptFilterRequest < Struct.new(
        :filter_name)

        include Aws::Structure

        # @!attribute [rw] filter_name
        #   The name of the IP address filter to delete.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class DeleteReceiptFilterResponse < Aws::EmptyStructure; end

      # Represents a request to delete a receipt rule. You use receipt rules
      # to receive email with Amazon SES. For more information, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass DeleteReceiptRuleRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName", # required
      #         rule_name: "ReceiptRuleName", # required
      #       }
      class DeleteReceiptRuleRequest < Struct.new(
        :rule_set_name,
        :rule_name)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the receipt rule set that contains the receipt rule to
        #   delete.
        #   @return [String]

        # @!attribute [rw] rule_name
        #   The name of the receipt rule to delete.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class DeleteReceiptRuleResponse < Aws::EmptyStructure; end

      # Represents a request to delete a receipt rule set and all of the
      # receipt rules it contains. You use receipt rule sets to receive email
      # with Amazon SES. For more information, see the [Amazon SES Developer
      # Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass DeleteReceiptRuleSetRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName", # required
      #       }
      class DeleteReceiptRuleSetRequest < Struct.new(
        :rule_set_name)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the receipt rule set to delete.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class DeleteReceiptRuleSetResponse < Aws::EmptyStructure; end

      # Represents a request to delete an email address from the list of email
      # addresses you have attempted to verify under your AWS account.
      # @note When making an API call, pass DeleteVerifiedEmailAddressRequest
      #   data as a hash:
      #
      #       {
      #         email_address: "Address", # required
      #       }
      class DeleteVerifiedEmailAddressRequest < Struct.new(
        :email_address)

        include Aws::Structure

        # @!attribute [rw] email_address
        #   An email address to be removed from the list of verified addresses.
        #   @return [String]

      end

      # Represents a request to return the metadata and receipt rules for the
      # receipt rule set that is currently active. You use receipt rule sets
      # to receive email with Amazon SES. For more information, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @api private
      class DescribeActiveReceiptRuleSetRequest < Aws::EmptyStructure; end

      # Represents the metadata and receipt rules for the receipt rule set
      # that is currently active.
      class DescribeActiveReceiptRuleSetResponse < Struct.new(
        :metadata,
        :rules)

        include Aws::Structure

        # @!attribute [rw] metadata
        #   The metadata for the currently active receipt rule set. The metadata
        #   consists of the rule set name and a timestamp of when the rule set
        #   was created.
        #   @return [Types::ReceiptRuleSetMetadata]

        # @!attribute [rw] rules
        #   The receipt rules that belong to the active rule set.
        #   @return [Array<Types::ReceiptRule>]

      end

      # Represents a request to return the details of a receipt rule. You use
      # receipt rules to receive email with Amazon SES. For more information,
      # see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass DescribeReceiptRuleRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName", # required
      #         rule_name: "ReceiptRuleName", # required
      #       }
      class DescribeReceiptRuleRequest < Struct.new(
        :rule_set_name,
        :rule_name)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the receipt rule set to which the receipt rule belongs.
        #   @return [String]

        # @!attribute [rw] rule_name
        #   The name of the receipt rule.
        #   @return [String]

      end

      # Represents the details of a receipt rule.
      class DescribeReceiptRuleResponse < Struct.new(
        :rule)

        include Aws::Structure

        # @!attribute [rw] rule
        #   A data structure that contains the specified receipt rule\'s name,
        #   actions, recipients, domains, enabled status, scan status, and
        #   Transport Layer Security (TLS) policy.
        #   @return [Types::ReceiptRule]

      end

      # Represents a request to return the details of a receipt rule set. You
      # use receipt rule sets to receive email with Amazon SES. For more
      # information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass DescribeReceiptRuleSetRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName", # required
      #       }
      class DescribeReceiptRuleSetRequest < Struct.new(
        :rule_set_name)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the receipt rule set to describe.
        #   @return [String]

      end

      # Represents the details of the specified receipt rule set.
      class DescribeReceiptRuleSetResponse < Struct.new(
        :metadata,
        :rules)

        include Aws::Structure

        # @!attribute [rw] metadata
        #   The metadata for the receipt rule set, which consists of the rule
        #   set name and the timestamp of when the rule set was created.
        #   @return [Types::ReceiptRuleSetMetadata]

        # @!attribute [rw] rules
        #   A list of the receipt rules that belong to the specified receipt
        #   rule set.
        #   @return [Array<Types::ReceiptRule>]

      end

      # Represents the destination of the message, consisting of To:, CC:, and
      # BCC: fields.
      #
      # By default, the string must be 7-bit ASCII. If the text must contain
      # any other characters, then you must use MIME encoded-word syntax (RFC
      # 2047) instead of a literal string. MIME encoded-word syntax uses the
      # following form: `=?charset?encoding?encoded-text?=`. For more
      # information, see [RFC 2047][1].
      #
      #
      #
      # [1]: http://tools.ietf.org/html/rfc2047
      # @note When making an API call, pass Destination
      #   data as a hash:
      #
      #       {
      #         to_addresses: ["Address"],
      #         cc_addresses: ["Address"],
      #         bcc_addresses: ["Address"],
      #       }
      class Destination < Struct.new(
        :to_addresses,
        :cc_addresses,
        :bcc_addresses)

        include Aws::Structure

        # @!attribute [rw] to_addresses
        #   The To: field(s) of the message.
        #   @return [Array<String>]

        # @!attribute [rw] cc_addresses
        #   The CC: field(s) of the message.
        #   @return [Array<String>]

        # @!attribute [rw] bcc_addresses
        #   The BCC: field(s) of the message.
        #   @return [Array<String>]

      end

      # Additional X-headers to include in the Delivery Status Notification
      # (DSN) when an email that Amazon SES receives on your behalf bounces.
      #
      # For information about receiving email through Amazon SES, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html
      # @note When making an API call, pass ExtensionField
      #   data as a hash:
      #
      #       {
      #         name: "ExtensionFieldName", # required
      #         value: "ExtensionFieldValue", # required
      #       }
      class ExtensionField < Struct.new(
        :name,
        :value)

        include Aws::Structure

        # @!attribute [rw] name
        #   The name of the header to add. Must be between 1 and 50 characters,
        #   inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters
        #   and dashes only.
        #   @return [String]

        # @!attribute [rw] value
        #   The value of the header to add. Must be less than 2048 characters,
        #   and must not contain newline characters (\"\\r\" or \"\\n\").
        #   @return [String]

      end

      # Represents a request for the status of Amazon SES Easy DKIM signing
      # for an identity. For domain identities, this request also returns the
      # DKIM tokens that are required for Easy DKIM signing, and whether
      # Amazon SES successfully verified that these tokens were published. For
      # more information about Easy DKIM, see the [Amazon SES Developer
      # Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
      # @note When making an API call, pass GetIdentityDkimAttributesRequest
      #   data as a hash:
      #
      #       {
      #         identities: ["Identity"], # required
      #       }
      class GetIdentityDkimAttributesRequest < Struct.new(
        :identities)

        include Aws::Structure

        # @!attribute [rw] identities
        #   A list of one or more verified identities - email addresses,
        #   domains, or both.
        #   @return [Array<String>]

      end

      # Represents the status of Amazon SES Easy DKIM signing for an identity.
      # For domain identities, this response also contains the DKIM tokens
      # that are required for Easy DKIM signing, and whether Amazon SES
      # successfully verified that these tokens were published.
      class GetIdentityDkimAttributesResponse < Struct.new(
        :dkim_attributes)

        include Aws::Structure

        # @!attribute [rw] dkim_attributes
        #   The DKIM attributes for an email address or a domain.
        #   @return [Hash<String,Types::IdentityDkimAttributes>]

      end

      # Represents a request to return the Amazon SES custom MAIL FROM
      # attributes for a list of identities. For information about using a
      # custom MAIL FROM domain, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html
      # @note When making an API call, pass GetIdentityMailFromDomainAttributesRequest
      #   data as a hash:
      #
      #       {
      #         identities: ["Identity"], # required
      #       }
      class GetIdentityMailFromDomainAttributesRequest < Struct.new(
        :identities)

        include Aws::Structure

        # @!attribute [rw] identities
        #   A list of one or more identities.
        #   @return [Array<String>]

      end

      # Represents the custom MAIL FROM attributes for a list of identities.
      class GetIdentityMailFromDomainAttributesResponse < Struct.new(
        :mail_from_domain_attributes)

        include Aws::Structure

        # @!attribute [rw] mail_from_domain_attributes
        #   A map of identities to custom MAIL FROM attributes.
        #   @return [Hash<String,Types::IdentityMailFromDomainAttributes>]

      end

      # Represents a request to return the notification attributes for a list
      # of identities you verified with Amazon SES. For information about
      # Amazon SES notifications, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html
      # @note When making an API call, pass GetIdentityNotificationAttributesRequest
      #   data as a hash:
      #
      #       {
      #         identities: ["Identity"], # required
      #       }
      class GetIdentityNotificationAttributesRequest < Struct.new(
        :identities)

        include Aws::Structure

        # @!attribute [rw] identities
        #   A list of one or more identities. You can specify an identity by
        #   using its name or by using its Amazon Resource Name (ARN). Examples:
        #   `user@example.com`, `example.com`,
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
        #   @return [Array<String>]

      end

      # Represents the notification attributes for a list of identities.
      class GetIdentityNotificationAttributesResponse < Struct.new(
        :notification_attributes)

        include Aws::Structure

        # @!attribute [rw] notification_attributes
        #   A map of Identity to IdentityNotificationAttributes.
        #   @return [Hash<String,Types::IdentityNotificationAttributes>]

      end

      # Represents a request to return the requested sending authorization
      # policies for an identity. Sending authorization is an Amazon SES
      # feature that enables you to authorize other senders to use your
      # identities. For information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
      # @note When making an API call, pass GetIdentityPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         identity: "Identity", # required
      #         policy_names: ["PolicyName"], # required
      #       }
      class GetIdentityPoliciesRequest < Struct.new(
        :identity,
        :policy_names)

        include Aws::Structure

        # @!attribute [rw] identity
        #   The identity for which the policies will be retrieved. You can
        #   specify an identity by using its name or by using its Amazon
        #   Resource Name (ARN). Examples: `user@example.com`, `example.com`,
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
        #
        #   To successfully call this API, you must own the identity.
        #   @return [String]

        # @!attribute [rw] policy_names
        #   A list of the names of policies to be retrieved. You can retrieve a
        #   maximum of 20 policies at a time. If you do not know the names of
        #   the policies that are attached to the identity, you can use
        #   `ListIdentityPolicies`.
        #   @return [Array<String>]

      end

      # Represents the requested sending authorization policies.
      class GetIdentityPoliciesResponse < Struct.new(
        :policies)

        include Aws::Structure

        # @!attribute [rw] policies
        #   A map of policy names to policies.
        #   @return [Hash<String,String>]

      end

      # Represents a request to return the Amazon SES verification status of a
      # list of identities. For domain identities, this request also returns
      # the verification token. For information about verifying identities
      # with Amazon SES, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
      # @note When making an API call, pass GetIdentityVerificationAttributesRequest
      #   data as a hash:
      #
      #       {
      #         identities: ["Identity"], # required
      #       }
      class GetIdentityVerificationAttributesRequest < Struct.new(
        :identities)

        include Aws::Structure

        # @!attribute [rw] identities
        #   A list of identities.
        #   @return [Array<String>]

      end

      # The Amazon SES verification status of a list of identities. For domain
      # identities, this response also contains the verification token.
      class GetIdentityVerificationAttributesResponse < Struct.new(
        :verification_attributes)

        include Aws::Structure

        # @!attribute [rw] verification_attributes
        #   A map of Identities to IdentityVerificationAttributes objects.
        #   @return [Hash<String,Types::IdentityVerificationAttributes>]

      end

      # Represents your Amazon SES daily sending quota, maximum send rate, and
      # the number of emails you have sent in the last 24 hours.
      class GetSendQuotaResponse < Struct.new(
        :max_24_hour_send,
        :max_send_rate,
        :sent_last_24_hours)

        include Aws::Structure

        # @!attribute [rw] max_24_hour_send
        #   The maximum number of emails the user is allowed to send in a
        #   24-hour interval. A value of -1 signifies an unlimited quota.
        #   @return [Float]

        # @!attribute [rw] max_send_rate
        #   The maximum number of emails that Amazon SES can accept from the
        #   user\'s account per second.
        #
        #   <note markdown="1"> The rate at which Amazon SES accepts the user\'s messages might be
        #   less than the maximum send rate.
        #
        #    </note>
        #   @return [Float]

        # @!attribute [rw] sent_last_24_hours
        #   The number of emails sent during the previous 24 hours.
        #   @return [Float]

      end

      # Represents a list of data points. This list contains aggregated data
      # from the previous two weeks of your sending activity with Amazon SES.
      class GetSendStatisticsResponse < Struct.new(
        :send_data_points)

        include Aws::Structure

        # @!attribute [rw] send_data_points
        #   A list of data points, each of which represents 15 minutes of
        #   activity.
        #   @return [Array<Types::SendDataPoint>]

      end

      # Represents the DKIM attributes of a verified email address or a
      # domain.
      class IdentityDkimAttributes < Struct.new(
        :dkim_enabled,
        :dkim_verification_status,
        :dkim_tokens)

        include Aws::Structure

        # @!attribute [rw] dkim_enabled
        #   True if DKIM signing is enabled for email sent from the identity;
        #   false otherwise.
        #   @return [Boolean]

        # @!attribute [rw] dkim_verification_status
        #   Describes whether Amazon SES has successfully verified the DKIM DNS
        #   records (tokens) published in the domain name\'s DNS. (This only
        #   applies to domain identities, not email address identities.)
        #   @return [String]

        # @!attribute [rw] dkim_tokens
        #   A set of character strings that represent the domain\'s identity.
        #   Using these tokens, you will need to create DNS CNAME records that
        #   point to DKIM public keys hosted by Amazon SES. Amazon Web Services
        #   will eventually detect that you have updated your DNS records; this
        #   detection process may take up to 72 hours. Upon successful
        #   detection, Amazon SES will be able to DKIM-sign email originating
        #   from that domain. (This only applies to domain identities, not email
        #   address identities.)
        #
        #   For more information about creating DNS records using DKIM tokens,
        #   go to the [Amazon SES Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html
        #   @return [Array<String>]

      end

      # Represents the custom MAIL FROM domain attributes of a verified
      # identity (email address or domain).
      class IdentityMailFromDomainAttributes < Struct.new(
        :mail_from_domain,
        :mail_from_domain_status,
        :behavior_on_mx_failure)

        include Aws::Structure

        # @!attribute [rw] mail_from_domain
        #   The custom MAIL FROM domain that the identity is configured to use.
        #   @return [String]

        # @!attribute [rw] mail_from_domain_status
        #   The state that indicates whether Amazon SES has successfully read
        #   the MX record required for custom MAIL FROM domain setup. If the
        #   state is `Success`, Amazon SES uses the specified custom MAIL FROM
        #   domain when the verified identity sends an email. All other states
        #   indicate that Amazon SES takes the action described by
        #   `BehaviorOnMXFailure`.
        #   @return [String]

        # @!attribute [rw] behavior_on_mx_failure
        #   The action that Amazon SES takes if it cannot successfully read the
        #   required MX record when you send an email. A value of
        #   `UseDefaultValue` indicates that if Amazon SES cannot read the
        #   required MX record, it uses amazonses.com (or a subdomain of that)
        #   as the MAIL FROM domain. A value of `RejectMessage` indicates that
        #   if Amazon SES cannot read the required MX record, Amazon SES returns
        #   a `MailFromDomainNotVerified` error and does not send the email.
        #
        #   The custom MAIL FROM setup states that result in this behavior are
        #   `Pending`, `Failed`, and `TemporaryFailure`.
        #   @return [String]

      end

      # Represents the notification attributes of an identity, including
      # whether an identity has Amazon Simple Notification Service (Amazon
      # SNS) topics set for bounce, complaint, and/or delivery notifications,
      # and whether feedback forwarding is enabled for bounce and complaint
      # notifications.
      class IdentityNotificationAttributes < Struct.new(
        :bounce_topic,
        :complaint_topic,
        :delivery_topic,
        :forwarding_enabled,
        :headers_in_bounce_notifications_enabled,
        :headers_in_complaint_notifications_enabled,
        :headers_in_delivery_notifications_enabled)

        include Aws::Structure

        # @!attribute [rw] bounce_topic
        #   The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon
        #   SES will publish bounce notifications.
        #   @return [String]

        # @!attribute [rw] complaint_topic
        #   The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon
        #   SES will publish complaint notifications.
        #   @return [String]

        # @!attribute [rw] delivery_topic
        #   The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon
        #   SES will publish delivery notifications.
        #   @return [String]

        # @!attribute [rw] forwarding_enabled
        #   Describes whether Amazon SES will forward bounce and complaint
        #   notifications as email. `true` indicates that Amazon SES will
        #   forward bounce and complaint notifications as email, while `false`
        #   indicates that bounce and complaint notifications will be published
        #   only to the specified bounce and complaint Amazon SNS topics.
        #   @return [Boolean]

        # @!attribute [rw] headers_in_bounce_notifications_enabled
        #   Describes whether Amazon SES includes the original email headers in
        #   Amazon SNS notifications of type `Bounce`. A value of `true`
        #   specifies that Amazon SES will include headers in bounce
        #   notifications, and a value of `false` specifies that Amazon SES will
        #   not include headers in bounce notifications.
        #   @return [Boolean]

        # @!attribute [rw] headers_in_complaint_notifications_enabled
        #   Describes whether Amazon SES includes the original email headers in
        #   Amazon SNS notifications of type `Complaint`. A value of `true`
        #   specifies that Amazon SES will include headers in complaint
        #   notifications, and a value of `false` specifies that Amazon SES will
        #   not include headers in complaint notifications.
        #   @return [Boolean]

        # @!attribute [rw] headers_in_delivery_notifications_enabled
        #   Describes whether Amazon SES includes the original email headers in
        #   Amazon SNS notifications of type `Delivery`. A value of `true`
        #   specifies that Amazon SES will include headers in delivery
        #   notifications, and a value of `false` specifies that Amazon SES will
        #   not include headers in delivery notifications.
        #   @return [Boolean]

      end

      # Represents the verification attributes of a single identity.
      class IdentityVerificationAttributes < Struct.new(
        :verification_status,
        :verification_token)

        include Aws::Structure

        # @!attribute [rw] verification_status
        #   The verification status of the identity: \"Pending\", \"Success\",
        #   \"Failed\", or \"TemporaryFailure\".
        #   @return [String]

        # @!attribute [rw] verification_token
        #   The verification token for a domain identity. Null for email address
        #   identities.
        #   @return [String]

      end

      # When included in a receipt rule, this action calls an AWS Lambda
      # function and, optionally, publishes a notification to Amazon Simple
      # Notification Service (Amazon SNS).
      #
      # To enable Amazon SES to call your AWS Lambda function or to publish to
      # an Amazon SNS topic of another account, Amazon SES must have
      # permission to access those resources. For information about giving
      # permissions, see the [Amazon SES Developer Guide][1].
      #
      # For information about using AWS Lambda actions in receipt rules, see
      # the [Amazon SES Developer Guide][2].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html
      # [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html
      # @note When making an API call, pass LambdaAction
      #   data as a hash:
      #
      #       {
      #         topic_arn: "AmazonResourceName",
      #         function_arn: "AmazonResourceName", # required
      #         invocation_type: "Event", # accepts Event, RequestResponse
      #       }
      class LambdaAction < Struct.new(
        :topic_arn,
        :function_arn,
        :invocation_type)

        include Aws::Structure

        # @!attribute [rw] topic_arn
        #   The Amazon Resource Name (ARN) of the Amazon SNS topic to notify
        #   when the Lambda action is taken. An example of an Amazon SNS topic
        #   ARN is `arn:aws:sns:us-west-2:123456789012:MyTopic`. For more
        #   information about Amazon SNS topics, see the [Amazon SNS Developer
        #   Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html
        #   @return [String]

        # @!attribute [rw] function_arn
        #   The Amazon Resource Name (ARN) of the AWS Lambda function. An
        #   example of an AWS Lambda function ARN is
        #   `arn:aws:lambda:us-west-2:account-id:function:MyFunction`. For more
        #   information about AWS Lambda, see the [AWS Lambda Developer
        #   Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/welcome.html
        #   @return [String]

        # @!attribute [rw] invocation_type
        #   The invocation type of the AWS Lambda function. An invocation type
        #   of `RequestResponse` means that the execution of the function will
        #   immediately result in a response, and a value of `Event` means that
        #   the function will be invoked asynchronously. The default value is
        #   `Event`. For information about AWS Lambda invocation types, see the
        #   [AWS Lambda Developer Guide][1].
        #
        #   <important markdown="1"> There is a 30-second timeout on `RequestResponse` invocations. You
        #   should use `Event` invocation in most cases. Use `RequestResponse`
        #   only when you want to make a mail flow decision, such as whether to
        #   stop the receipt rule or the receipt rule set.
        #
        #    </important>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html
        #   @return [String]

      end

      # Represents a request to return a list of all identities (email
      # addresses and domains) that you have attempted to verify under your
      # AWS account, regardless of verification status.
      # @note When making an API call, pass ListIdentitiesRequest
      #   data as a hash:
      #
      #       {
      #         identity_type: "EmailAddress", # accepts EmailAddress, Domain
      #         next_token: "NextToken",
      #         max_items: 1,
      #       }
      class ListIdentitiesRequest < Struct.new(
        :identity_type,
        :next_token,
        :max_items)

        include Aws::Structure

        # @!attribute [rw] identity_type
        #   The type of the identities to list. Possible values are
        #   \"EmailAddress\" and \"Domain\". If this parameter is omitted, then
        #   all identities will be listed.
        #   @return [String]

        # @!attribute [rw] next_token
        #   The token to use for pagination.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of identities per page. Possible values are
        #   1-1000 inclusive.
        #   @return [Integer]

      end

      # A list of all identities that you have attempted to verify under your
      # AWS account, regardless of verification status.
      class ListIdentitiesResponse < Struct.new(
        :identities,
        :next_token)

        include Aws::Structure

        # @!attribute [rw] identities
        #   A list of identities.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The token used for pagination.
        #   @return [String]

      end

      # Represents a request to return a list of sending authorization
      # policies that are attached to an identity. Sending authorization is an
      # Amazon SES feature that enables you to authorize other senders to use
      # your identities. For information, see the [Amazon SES Developer
      # Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
      # @note When making an API call, pass ListIdentityPoliciesRequest
      #   data as a hash:
      #
      #       {
      #         identity: "Identity", # required
      #       }
      class ListIdentityPoliciesRequest < Struct.new(
        :identity)

        include Aws::Structure

        # @!attribute [rw] identity
        #   The identity that is associated with the policy for which the
        #   policies will be listed. You can specify an identity by using its
        #   name or by using its Amazon Resource Name (ARN). Examples:
        #   `user@example.com`, `example.com`,
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
        #
        #   To successfully call this API, you must own the identity.
        #   @return [String]

      end

      # A list of names of sending authorization policies that apply to an
      # identity.
      class ListIdentityPoliciesResponse < Struct.new(
        :policy_names)

        include Aws::Structure

        # @!attribute [rw] policy_names
        #   A list of names of policies that apply to the specified identity.
        #   @return [Array<String>]

      end

      # \: Represents a request to list the IP address filters that exist
      # under your AWS account. You use IP address filters when you receive
      # email with Amazon SES. For more information, see the [Amazon SES
      # Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @api private
      class ListReceiptFiltersRequest < Aws::EmptyStructure; end

      # A list of IP address filters that exist under your AWS account.
      class ListReceiptFiltersResponse < Struct.new(
        :filters)

        include Aws::Structure

        # @!attribute [rw] filters
        #   A list of IP address filter data structures, which each consist of a
        #   name, an IP address range, and whether to allow or block mail from
        #   it.
        #   @return [Array<Types::ReceiptFilter>]

      end

      # Represents a request to list the receipt rule sets that exist under
      # your AWS account. You use receipt rule sets to receive email with
      # Amazon SES. For more information, see the [Amazon SES Developer
      # Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass ListReceiptRuleSetsRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #       }
      class ListReceiptRuleSetsRequest < Struct.new(
        :next_token)

        include Aws::Structure

        # @!attribute [rw] next_token
        #   A token returned from a previous call to `ListReceiptRuleSets` to
        #   indicate the position in the receipt rule set list.
        #   @return [String]

      end

      # A list of receipt rule sets that exist under your AWS account.
      class ListReceiptRuleSetsResponse < Struct.new(
        :rule_sets,
        :next_token)

        include Aws::Structure

        # @!attribute [rw] rule_sets
        #   The metadata for the currently active receipt rule set. The metadata
        #   consists of the rule set name and the timestamp of when the rule set
        #   was created.
        #   @return [Array<Types::ReceiptRuleSetMetadata>]

        # @!attribute [rw] next_token
        #   A token indicating that there are additional receipt rule sets
        #   available to be listed. Pass this token to successive calls of
        #   `ListReceiptRuleSets` to retrieve up to 100 receipt rule sets at a
        #   time.
        #   @return [String]

      end

      # A list of email addresses that you have verified with Amazon SES under
      # your AWS account.
      class ListVerifiedEmailAddressesResponse < Struct.new(
        :verified_email_addresses)

        include Aws::Structure

        # @!attribute [rw] verified_email_addresses
        #   A list of email addresses that have been verified.
        #   @return [Array<String>]

      end

      # Represents the message to be sent, composed of a subject and a body.
      # @note When making an API call, pass Message
      #   data as a hash:
      #
      #       {
      #         subject: { # required
      #           data: "MessageData", # required
      #           charset: "Charset",
      #         },
      #         body: { # required
      #           text: {
      #             data: "MessageData", # required
      #             charset: "Charset",
      #           },
      #           html: {
      #             data: "MessageData", # required
      #             charset: "Charset",
      #           },
      #         },
      #       }
      class Message < Struct.new(
        :subject,
        :body)

        include Aws::Structure

        # @!attribute [rw] subject
        #   The subject of the message: A short summary of the content, which
        #   will appear in the recipient\'s inbox.
        #   @return [Types::Content]

        # @!attribute [rw] body
        #   The message body.
        #   @return [Types::Body]

      end

      # Message-related information to include in the Delivery Status
      # Notification (DSN) when an email that Amazon SES receives on your
      # behalf bounces.
      #
      # For information about receiving email through Amazon SES, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html
      # @note When making an API call, pass MessageDsn
      #   data as a hash:
      #
      #       {
      #         reporting_mta: "ReportingMta", # required
      #         arrival_date: Time.now,
      #         extension_fields: [
      #           {
      #             name: "ExtensionFieldName", # required
      #             value: "ExtensionFieldValue", # required
      #           },
      #         ],
      #       }
      class MessageDsn < Struct.new(
        :reporting_mta,
        :arrival_date,
        :extension_fields)

        include Aws::Structure

        # @!attribute [rw] reporting_mta
        #   The reporting MTA that attempted to deliver the message, formatted
        #   as specified in [RFC 3464][1] (`mta-name-type; mta-name`). The
        #   default value is `dns; inbound-smtp.[region].amazonaws.com`.
        #
        #
        #
        #   [1]: https://tools.ietf.org/html/rfc3464
        #   @return [String]

        # @!attribute [rw] arrival_date
        #   When the message was received by the reporting mail transfer agent
        #   (MTA), in [RFC 822][1] date-time format.
        #
        #
        #
        #   [1]: https://www.ietf.org/rfc/rfc0822.txt
        #   @return [Time]

        # @!attribute [rw] extension_fields
        #   Additional X-headers to include in the DSN.
        #   @return [Array<Types::ExtensionField>]

      end

      # Represents a request to add or update a sending authorization policy
      # for an identity. Sending authorization is an Amazon SES feature that
      # enables you to authorize other senders to use your identities. For
      # information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
      # @note When making an API call, pass PutIdentityPolicyRequest
      #   data as a hash:
      #
      #       {
      #         identity: "Identity", # required
      #         policy_name: "PolicyName", # required
      #         policy: "Policy", # required
      #       }
      class PutIdentityPolicyRequest < Struct.new(
        :identity,
        :policy_name,
        :policy)

        include Aws::Structure

        # @!attribute [rw] identity
        #   The identity to which the policy will apply. You can specify an
        #   identity by using its name or by using its Amazon Resource Name
        #   (ARN). Examples: `user@example.com`, `example.com`,
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
        #
        #   To successfully call this API, you must own the identity.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #
        #   The policy name cannot exceed 64 characters and can only include
        #   alphanumeric characters, dashes, and underscores.
        #   @return [String]

        # @!attribute [rw] policy
        #   The text of the policy in JSON format. The policy cannot exceed 4
        #   KB.
        #
        #   For information about the syntax of sending authorization policies,
        #   see the [Amazon SES Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class PutIdentityPolicyResponse < Aws::EmptyStructure; end

      # Represents the raw data of the message.
      # @note When making an API call, pass RawMessage
      #   data as a hash:
      #
      #       {
      #         data: "data", # required
      #       }
      class RawMessage < Struct.new(
        :data)

        include Aws::Structure

        # @!attribute [rw] data
        #   The raw data of the message. The client must ensure that the message
        #   format complies with Internet email standards regarding email header
        #   fields, MIME types, MIME encoding, and base64 encoding.
        #
        #   The To:, CC:, and BCC: headers in the raw message can contain a
        #   group list.
        #
        #   If you are using `SendRawEmail` with sending authorization, you can
        #   include X-headers in the raw message to specify the \"Source,\"
        #   \"From,\" and \"Return-Path\" addresses. For more information, see
        #   the documentation for `SendRawEmail`.
        #
        #   <important markdown="1"> Do not include these X-headers in the DKIM signature, because they
        #   are removed by Amazon SES before sending the email.
        #
        #    </important>
        #
        #   For more information, go to the [Amazon SES Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html
        #   @return [String]

      end

      # An action that Amazon SES can take when it receives an email on behalf
      # of one or more email addresses or domains that you own. An instance of
      # this data type can represent only one action.
      #
      # For information about setting up receipt rules, see the [Amazon SES
      # Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html
      # @note When making an API call, pass ReceiptAction
      #   data as a hash:
      #
      #       {
      #         s3_action: {
      #           topic_arn: "AmazonResourceName",
      #           bucket_name: "S3BucketName", # required
      #           object_key_prefix: "S3KeyPrefix",
      #           kms_key_arn: "AmazonResourceName",
      #         },
      #         bounce_action: {
      #           topic_arn: "AmazonResourceName",
      #           smtp_reply_code: "BounceSmtpReplyCode", # required
      #           status_code: "BounceStatusCode",
      #           message: "BounceMessage", # required
      #           sender: "Address", # required
      #         },
      #         workmail_action: {
      #           topic_arn: "AmazonResourceName",
      #           organization_arn: "AmazonResourceName", # required
      #         },
      #         lambda_action: {
      #           topic_arn: "AmazonResourceName",
      #           function_arn: "AmazonResourceName", # required
      #           invocation_type: "Event", # accepts Event, RequestResponse
      #         },
      #         stop_action: {
      #           scope: "RuleSet", # required, accepts RuleSet
      #           topic_arn: "AmazonResourceName",
      #         },
      #         add_header_action: {
      #           header_name: "HeaderName", # required
      #           header_value: "HeaderValue", # required
      #         },
      #         sns_action: {
      #           topic_arn: "AmazonResourceName", # required
      #           encoding: "UTF-8", # accepts UTF-8, Base64
      #         },
      #       }
      class ReceiptAction < Struct.new(
        :s3_action,
        :bounce_action,
        :workmail_action,
        :lambda_action,
        :stop_action,
        :add_header_action,
        :sns_action)

        include Aws::Structure

        # @!attribute [rw] s3_action
        #   Saves the received message to an Amazon Simple Storage Service
        #   (Amazon S3) bucket and, optionally, publishes a notification to
        #   Amazon SNS.
        #   @return [Types::S3Action]

        # @!attribute [rw] bounce_action
        #   Rejects the received email by returning a bounce response to the
        #   sender and, optionally, publishes a notification to Amazon Simple
        #   Notification Service (Amazon SNS).
        #   @return [Types::BounceAction]

        # @!attribute [rw] workmail_action
        #   Calls Amazon WorkMail and, optionally, publishes a notification to
        #   Amazon SNS.
        #   @return [Types::WorkmailAction]

        # @!attribute [rw] lambda_action
        #   Calls an AWS Lambda function, and optionally, publishes a
        #   notification to Amazon SNS.
        #   @return [Types::LambdaAction]

        # @!attribute [rw] stop_action
        #   Terminates the evaluation of the receipt rule set and optionally
        #   publishes a notification to Amazon SNS.
        #   @return [Types::StopAction]

        # @!attribute [rw] add_header_action
        #   Adds a header to the received email.
        #   @return [Types::AddHeaderAction]

        # @!attribute [rw] sns_action
        #   Publishes the email content within a notification to Amazon SNS.
        #   @return [Types::SNSAction]

      end

      # A receipt IP address filter enables you to specify whether to accept
      # or reject mail originating from an IP address or range of IP
      # addresses.
      #
      # For information about setting up IP address filters, see the [Amazon
      # SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html
      # @note When making an API call, pass ReceiptFilter
      #   data as a hash:
      #
      #       {
      #         name: "ReceiptFilterName", # required
      #         ip_filter: { # required
      #           policy: "Block", # required, accepts Block, Allow
      #           cidr: "Cidr", # required
      #         },
      #       }
      class ReceiptFilter < Struct.new(
        :name,
        :ip_filter)

        include Aws::Structure

        # @!attribute [rw] name
        #   The name of the IP address filter. The name must:
        #
        #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
        #     underscores (\_), or dashes (-).
        #
        #   * Start and end with a letter or number.
        #
        #   * Contain less than 64 characters.
        #   @return [String]

        # @!attribute [rw] ip_filter
        #   A structure that provides the IP addresses to block or allow, and
        #   whether to block or allow incoming mail from them.
        #   @return [Types::ReceiptIpFilter]

      end

      # A receipt IP address filter enables you to specify whether to accept
      # or reject mail originating from an IP address or range of IP
      # addresses.
      #
      # For information about setting up IP address filters, see the [Amazon
      # SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html
      # @note When making an API call, pass ReceiptIpFilter
      #   data as a hash:
      #
      #       {
      #         policy: "Block", # required, accepts Block, Allow
      #         cidr: "Cidr", # required
      #       }
      class ReceiptIpFilter < Struct.new(
        :policy,
        :cidr)

        include Aws::Structure

        # @!attribute [rw] policy
        #   Indicates whether to block or allow incoming mail from the specified
        #   IP addresses.
        #   @return [String]

        # @!attribute [rw] cidr
        #   A single IP address or a range of IP addresses that you want to
        #   block or allow, specified in Classless Inter-Domain Routing (CIDR)
        #   notation. An example of a single email address is 10.0.0.1. An
        #   example of a range of IP addresses is 10.0.0.1/24. For more
        #   information about CIDR notation, see [RFC 2317][1].
        #
        #
        #
        #   [1]: https://tools.ietf.org/html/rfc2317
        #   @return [String]

      end

      # Receipt rules enable you to specify which actions Amazon SES should
      # take when it receives mail on behalf of one or more email addresses or
      # domains that you own.
      #
      # Each receipt rule defines a set of email addresses or domains to which
      # it applies. If the email addresses or domains match at least one
      # recipient address of the message, Amazon SES executes all of the
      # receipt rule\'s actions on the message.
      #
      # For information about setting up receipt rules, see the [Amazon SES
      # Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html
      # @note When making an API call, pass ReceiptRule
      #   data as a hash:
      #
      #       {
      #         name: "ReceiptRuleName", # required
      #         enabled: false,
      #         tls_policy: "Require", # accepts Require, Optional
      #         recipients: ["Recipient"],
      #         actions: [
      #           {
      #             s3_action: {
      #               topic_arn: "AmazonResourceName",
      #               bucket_name: "S3BucketName", # required
      #               object_key_prefix: "S3KeyPrefix",
      #               kms_key_arn: "AmazonResourceName",
      #             },
      #             bounce_action: {
      #               topic_arn: "AmazonResourceName",
      #               smtp_reply_code: "BounceSmtpReplyCode", # required
      #               status_code: "BounceStatusCode",
      #               message: "BounceMessage", # required
      #               sender: "Address", # required
      #             },
      #             workmail_action: {
      #               topic_arn: "AmazonResourceName",
      #               organization_arn: "AmazonResourceName", # required
      #             },
      #             lambda_action: {
      #               topic_arn: "AmazonResourceName",
      #               function_arn: "AmazonResourceName", # required
      #               invocation_type: "Event", # accepts Event, RequestResponse
      #             },
      #             stop_action: {
      #               scope: "RuleSet", # required, accepts RuleSet
      #               topic_arn: "AmazonResourceName",
      #             },
      #             add_header_action: {
      #               header_name: "HeaderName", # required
      #               header_value: "HeaderValue", # required
      #             },
      #             sns_action: {
      #               topic_arn: "AmazonResourceName", # required
      #               encoding: "UTF-8", # accepts UTF-8, Base64
      #             },
      #           },
      #         ],
      #         scan_enabled: false,
      #       }
      class ReceiptRule < Struct.new(
        :name,
        :enabled,
        :tls_policy,
        :recipients,
        :actions,
        :scan_enabled)

        include Aws::Structure

        # @!attribute [rw] name
        #   The name of the receipt rule. The name must:
        #
        #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
        #     underscores (\_), or dashes (-).
        #
        #   * Start and end with a letter or number.
        #
        #   * Contain less than 64 characters.
        #   @return [String]

        # @!attribute [rw] enabled
        #   If `true`, the receipt rule is active. The default value is `false`.
        #   @return [Boolean]

        # @!attribute [rw] tls_policy
        #   Specifies whether Amazon SES should require that incoming email is
        #   delivered over a connection encrypted with Transport Layer Security
        #   (TLS). If this parameter is set to `Require`, Amazon SES will bounce
        #   emails that are not received over TLS. The default is `Optional`.
        #   @return [String]

        # @!attribute [rw] recipients
        #   The recipient domains and email addresses to which the receipt rule
        #   applies. If this field is not specified, this rule will match all
        #   recipients under all verified domains.
        #   @return [Array<String>]

        # @!attribute [rw] actions
        #   An ordered list of actions to perform on messages that match at
        #   least one of the recipient email addresses or domains specified in
        #   the receipt rule.
        #   @return [Array<Types::ReceiptAction>]

        # @!attribute [rw] scan_enabled
        #   If `true`, then messages to which this receipt rule applies are
        #   scanned for spam and viruses. The default value is `false`.
        #   @return [Boolean]

      end

      # Information about a receipt rule set.
      #
      # A receipt rule set is a collection of rules that specify what Amazon
      # SES should do with mail it receives on behalf of your account\'s
      # verified domains.
      #
      # For information about setting up receipt rule sets, see the [Amazon
      # SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html
      class ReceiptRuleSetMetadata < Struct.new(
        :name,
        :created_timestamp)

        include Aws::Structure

        # @!attribute [rw] name
        #   The name of the receipt rule set. The name must:
        #
        #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
        #     underscores (\_), or dashes (-).
        #
        #   * Start and end with a letter or number.
        #
        #   * Contain less than 64 characters.
        #   @return [String]

        # @!attribute [rw] created_timestamp
        #   The date and time the receipt rule set was created.
        #   @return [Time]

      end

      # Recipient-related information to include in the Delivery Status
      # Notification (DSN) when an email that Amazon SES receives on your
      # behalf bounces.
      #
      # For information about receiving email through Amazon SES, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html
      # @note When making an API call, pass RecipientDsnFields
      #   data as a hash:
      #
      #       {
      #         final_recipient: "Address",
      #         action: "failed", # required, accepts failed, delayed, delivered, relayed, expanded
      #         remote_mta: "RemoteMta",
      #         status: "DsnStatus", # required
      #         diagnostic_code: "DiagnosticCode",
      #         last_attempt_date: Time.now,
      #         extension_fields: [
      #           {
      #             name: "ExtensionFieldName", # required
      #             value: "ExtensionFieldValue", # required
      #           },
      #         ],
      #       }
      class RecipientDsnFields < Struct.new(
        :final_recipient,
        :action,
        :remote_mta,
        :status,
        :diagnostic_code,
        :last_attempt_date,
        :extension_fields)

        include Aws::Structure

        # @!attribute [rw] final_recipient
        #   The email address to which the message was ultimately delivered.
        #   This corresponds to the `Final-Recipient` in the DSN. If not
        #   specified, `FinalRecipient` will be set to the `Recipient` specified
        #   in the `BouncedRecipientInfo` structure. Either `FinalRecipient` or
        #   the recipient in `BouncedRecipientInfo` must be a recipient of the
        #   original bounced message.
        #
        #   <note markdown="1"> Do not prepend the `FinalRecipient` email address with `rfc 822;`,
        #   as described in [RFC 3798][1].
        #
        #    </note>
        #
        #
        #
        #   [1]: https://tools.ietf.org/html/rfc3798
        #   @return [String]

        # @!attribute [rw] action
        #   The action performed by the reporting mail transfer agent (MTA) as a
        #   result of its attempt to deliver the message to the recipient
        #   address. This is required by [RFC 3464][1].
        #
        #
        #
        #   [1]: https://tools.ietf.org/html/rfc3464
        #   @return [String]

        # @!attribute [rw] remote_mta
        #   The MTA to which the remote MTA attempted to deliver the message,
        #   formatted as specified in [RFC 3464][1] (`mta-name-type; mta-name`).
        #   This parameter typically applies only to propagating synchronous
        #   bounces.
        #
        #
        #
        #   [1]: https://tools.ietf.org/html/rfc3464
        #   @return [String]

        # @!attribute [rw] status
        #   The status code that indicates what went wrong. This is required by
        #   [RFC 3464][1].
        #
        #
        #
        #   [1]: https://tools.ietf.org/html/rfc3464
        #   @return [String]

        # @!attribute [rw] diagnostic_code
        #   An extended explanation of what went wrong; this is usually an SMTP
        #   response. See [RFC 3463][1] for the correct formatting of this
        #   parameter.
        #
        #
        #
        #   [1]: https://tools.ietf.org/html/rfc3463
        #   @return [String]

        # @!attribute [rw] last_attempt_date
        #   The time the final delivery attempt was made, in [RFC 822][1]
        #   date-time format.
        #
        #
        #
        #   [1]: https://www.ietf.org/rfc/rfc0822.txt
        #   @return [Time]

        # @!attribute [rw] extension_fields
        #   Additional X-headers to include in the DSN.
        #   @return [Array<Types::ExtensionField>]

      end

      # Represents a request to reorder the receipt rules within a receipt
      # rule set. You use receipt rule sets to receive email with Amazon SES.
      # For more information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass ReorderReceiptRuleSetRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName", # required
      #         rule_names: ["ReceiptRuleName"], # required
      #       }
      class ReorderReceiptRuleSetRequest < Struct.new(
        :rule_set_name,
        :rule_names)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the receipt rule set to reorder.
        #   @return [String]

        # @!attribute [rw] rule_names
        #   A list of the specified receipt rule set\'s receipt rules in the
        #   order that you want to put them.
        #   @return [Array<String>]

      end

      # An empty element returned on a successful request.
      class ReorderReceiptRuleSetResponse < Aws::EmptyStructure; end

      # When included in a receipt rule, this action saves the received
      # message to an Amazon Simple Storage Service (Amazon S3) bucket and,
      # optionally, publishes a notification to Amazon Simple Notification
      # Service (Amazon SNS).
      #
      # To enable Amazon SES to write emails to your Amazon S3 bucket, use an
      # AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic
      # of another account, Amazon SES must have permission to access those
      # resources. For information about giving permissions, see the [Amazon
      # SES Developer Guide][1].
      #
      # <note markdown="1"> When you save your emails to an Amazon S3 bucket, the maximum email
      # size (including headers) is 30 MB. Emails larger than that will
      # bounce.
      #
      #  </note>
      #
      # For information about specifying Amazon S3 actions in receipt rules,
      # see the [Amazon SES Developer Guide][2].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html
      # [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html
      # @note When making an API call, pass S3Action
      #   data as a hash:
      #
      #       {
      #         topic_arn: "AmazonResourceName",
      #         bucket_name: "S3BucketName", # required
      #         object_key_prefix: "S3KeyPrefix",
      #         kms_key_arn: "AmazonResourceName",
      #       }
      class S3Action < Struct.new(
        :topic_arn,
        :bucket_name,
        :object_key_prefix,
        :kms_key_arn)

        include Aws::Structure

        # @!attribute [rw] topic_arn
        #   The ARN of the Amazon SNS topic to notify when the message is saved
        #   to the Amazon S3 bucket. An example of an Amazon SNS topic ARN is
        #   `arn:aws:sns:us-west-2:123456789012:MyTopic`. For more information
        #   about Amazon SNS topics, see the [Amazon SNS Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html
        #   @return [String]

        # @!attribute [rw] bucket_name
        #   The name of the Amazon S3 bucket to which to save the received
        #   email.
        #   @return [String]

        # @!attribute [rw] object_key_prefix
        #   The key prefix of the Amazon S3 bucket. The key prefix is similar to
        #   a directory name that enables you to store similar data under the
        #   same directory in a bucket.
        #   @return [String]

        # @!attribute [rw] kms_key_arn
        #   The customer master key that Amazon SES should use to encrypt your
        #   emails before saving them to the Amazon S3 bucket. You can use the
        #   default master key or a custom master key you created in AWS KMS as
        #   follows:
        #
        #   * To use the default master key, provide an ARN in the form of
        #     `arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias/aws/ses`. For
        #     example, if your AWS account ID is 123456789012 and you want to
        #     use the default master key in the US West (Oregon) region, the ARN
        #     of the default master key would be
        #     `arn:aws:kms:us-west-2:123456789012:alias/aws/ses`. If you use the
        #     default master key, you don\'t need to perform any extra steps to
        #     give Amazon SES permission to use the key.
        #
        #   * To use a custom master key you created in AWS KMS, provide the ARN
        #     of the master key and ensure that you add a statement to your
        #     key\'s policy to give Amazon SES permission to use it. For more
        #     information about giving permissions, see the [Amazon SES
        #     Developer Guide][1].
        #
        #   For more information about key policies, see the [AWS KMS Developer
        #   Guide][2]. If you do not specify a master key, Amazon SES will not
        #   encrypt your emails.
        #
        #   <important markdown="1"> Your mail is encrypted by Amazon SES using the Amazon S3 encryption
        #   client before the mail is submitted to Amazon S3 for storage. It is
        #   not encrypted using Amazon S3 server-side encryption. This means
        #   that you must use the Amazon S3 encryption client to decrypt the
        #   email after retrieving it from Amazon S3, as the service has no
        #   access to use your AWS KMS keys for decryption. This encryption
        #   client is currently available with the [AWS Java SDK][3] and [AWS
        #   Ruby SDK][4] only. For more information about client-side encryption
        #   using AWS KMS master keys, see the [Amazon S3 Developer Guide][5].
        #
        #    </important>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html
        #   [2]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html
        #   [3]: http://aws.amazon.com/sdk-for-java/
        #   [4]: http://aws.amazon.com/sdk-for-ruby/
        #   [5]: http://alpha-docs-aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html
        #   @return [String]

      end

      # When included in a receipt rule, this action publishes a notification
      # to Amazon Simple Notification Service (Amazon SNS). This action
      # includes a complete copy of the email content in the Amazon SNS
      # notifications. Amazon SNS notifications for all other actions simply
      # provide information about the email. They do not include the email
      # content itself.
      #
      # If you own the Amazon SNS topic, you don\'t need to do anything to
      # give Amazon SES permission to publish emails to it. However, if you
      # don\'t own the Amazon SNS topic, you need to attach a policy to the
      # topic to give Amazon SES permissions to access it. For information
      # about giving permissions, see the [Amazon SES Developer Guide][1].
      #
      # <important markdown="1"> You can only publish emails that are 150 KB or less (including the
      # header) to Amazon SNS. Larger emails will bounce. If you anticipate
      # emails larger than 150 KB, use the S3 action instead.
      #
      #  </important>
      #
      # For information about using a receipt rule to publish an Amazon SNS
      # notification, see the [Amazon SES Developer Guide][2].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html
      # [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-sns.html
      # @note When making an API call, pass SNSAction
      #   data as a hash:
      #
      #       {
      #         topic_arn: "AmazonResourceName", # required
      #         encoding: "UTF-8", # accepts UTF-8, Base64
      #       }
      class SNSAction < Struct.new(
        :topic_arn,
        :encoding)

        include Aws::Structure

        # @!attribute [rw] topic_arn
        #   The Amazon Resource Name (ARN) of the Amazon SNS topic to notify. An
        #   example of an Amazon SNS topic ARN is
        #   `arn:aws:sns:us-west-2:123456789012:MyTopic`. For more information
        #   about Amazon SNS topics, see the [Amazon SNS Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html
        #   @return [String]

        # @!attribute [rw] encoding
        #   The encoding to use for the email within the Amazon SNS
        #   notification. UTF-8 is easier to use, but may not preserve all
        #   special characters when a message was encoded with a different
        #   encoding format. Base64 preserves all special characters. The
        #   default value is UTF-8.
        #   @return [String]

      end

      # Represents a request to send a bounce message to the sender of an
      # email you received through Amazon SES.
      # @note When making an API call, pass SendBounceRequest
      #   data as a hash:
      #
      #       {
      #         original_message_id: "MessageId", # required
      #         bounce_sender: "Address", # required
      #         explanation: "Explanation",
      #         message_dsn: {
      #           reporting_mta: "ReportingMta", # required
      #           arrival_date: Time.now,
      #           extension_fields: [
      #             {
      #               name: "ExtensionFieldName", # required
      #               value: "ExtensionFieldValue", # required
      #             },
      #           ],
      #         },
      #         bounced_recipient_info_list: [ # required
      #           {
      #             recipient: "Address", # required
      #             recipient_arn: "AmazonResourceName",
      #             bounce_type: "DoesNotExist", # accepts DoesNotExist, MessageTooLarge, ExceededQuota, ContentRejected, Undefined, TemporaryFailure
      #             recipient_dsn_fields: {
      #               final_recipient: "Address",
      #               action: "failed", # required, accepts failed, delayed, delivered, relayed, expanded
      #               remote_mta: "RemoteMta",
      #               status: "DsnStatus", # required
      #               diagnostic_code: "DiagnosticCode",
      #               last_attempt_date: Time.now,
      #               extension_fields: [
      #                 {
      #                   name: "ExtensionFieldName", # required
      #                   value: "ExtensionFieldValue", # required
      #                 },
      #               ],
      #             },
      #           },
      #         ],
      #         bounce_sender_arn: "AmazonResourceName",
      #       }
      class SendBounceRequest < Struct.new(
        :original_message_id,
        :bounce_sender,
        :explanation,
        :message_dsn,
        :bounced_recipient_info_list,
        :bounce_sender_arn)

        include Aws::Structure

        # @!attribute [rw] original_message_id
        #   The message ID of the message to be bounced.
        #   @return [String]

        # @!attribute [rw] bounce_sender
        #   The address to use in the \"From\" header of the bounce message.
        #   This must be an identity that you have verified with Amazon SES.
        #   @return [String]

        # @!attribute [rw] explanation
        #   Human-readable text for the bounce message to explain the failure.
        #   If not specified, the text will be auto-generated based on the
        #   bounced recipient information.
        #   @return [String]

        # @!attribute [rw] message_dsn
        #   Message-related DSN fields. If not specified, Amazon SES will choose
        #   the values.
        #   @return [Types::MessageDsn]

        # @!attribute [rw] bounced_recipient_info_list
        #   A list of recipients of the bounced message, including the
        #   information required to create the Delivery Status Notifications
        #   (DSNs) for the recipients. You must specify at least one
        #   `BouncedRecipientInfo` in the list.
        #   @return [Array<Types::BouncedRecipientInfo>]

        # @!attribute [rw] bounce_sender_arn
        #   This parameter is used only for sending authorization. It is the ARN
        #   of the identity that is associated with the sending authorization
        #   policy that permits you to use the address in the \"From\" header of
        #   the bounce. For more information about sending authorization, see
        #   the [Amazon SES Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
        #   @return [String]

      end

      # Represents a unique message ID.
      class SendBounceResponse < Struct.new(
        :message_id)

        include Aws::Structure

        # @!attribute [rw] message_id
        #   The message ID of the bounce message.
        #   @return [String]

      end

      # Represents sending statistics data. Each `SendDataPoint` contains
      # statistics for a 15-minute period of sending activity.
      class SendDataPoint < Struct.new(
        :timestamp,
        :delivery_attempts,
        :bounces,
        :complaints,
        :rejects)

        include Aws::Structure

        # @!attribute [rw] timestamp
        #   Time of the data point.
        #   @return [Time]

        # @!attribute [rw] delivery_attempts
        #   Number of emails that have been enqueued for sending.
        #   @return [Integer]

        # @!attribute [rw] bounces
        #   Number of emails that have bounced.
        #   @return [Integer]

        # @!attribute [rw] complaints
        #   Number of unwanted emails that were rejected by recipients.
        #   @return [Integer]

        # @!attribute [rw] rejects
        #   Number of emails rejected by Amazon SES.
        #   @return [Integer]

      end

      # Represents a request to send a single formatted email using Amazon
      # SES. For more information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html
      # @note When making an API call, pass SendEmailRequest
      #   data as a hash:
      #
      #       {
      #         source: "Address", # required
      #         destination: { # required
      #           to_addresses: ["Address"],
      #           cc_addresses: ["Address"],
      #           bcc_addresses: ["Address"],
      #         },
      #         message: { # required
      #           subject: { # required
      #             data: "MessageData", # required
      #             charset: "Charset",
      #           },
      #           body: { # required
      #             text: {
      #               data: "MessageData", # required
      #               charset: "Charset",
      #             },
      #             html: {
      #               data: "MessageData", # required
      #               charset: "Charset",
      #             },
      #           },
      #         },
      #         reply_to_addresses: ["Address"],
      #         return_path: "Address",
      #         source_arn: "AmazonResourceName",
      #         return_path_arn: "AmazonResourceName",
      #       }
      class SendEmailRequest < Struct.new(
        :source,
        :destination,
        :message,
        :reply_to_addresses,
        :return_path,
        :source_arn,
        :return_path_arn)

        include Aws::Structure

        # @!attribute [rw] source
        #   The email address that is sending the email. This email address must
        #   be either individually verified with Amazon SES, or from a domain
        #   that has been verified with Amazon SES. For information about
        #   verifying identities, see the [Amazon SES Developer Guide][1].
        #
        #   If you are sending on behalf of another user and have been permitted
        #   to do so by a sending authorization policy, then you must also
        #   specify the `SourceArn` parameter. For more information about
        #   sending authorization, see the [Amazon SES Developer Guide][2].
        #
        #   In all cases, the email address must be 7-bit ASCII. If the text
        #   must contain any other characters, then you must use MIME
        #   encoded-word syntax (RFC 2047) instead of a literal string. MIME
        #   encoded-word syntax uses the following form:
        #   `=?charset?encoding?encoded-text?=`. For more information, see [RFC
        #   2047][3].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
        #   [2]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
        #   [3]: http://tools.ietf.org/html/rfc2047
        #   @return [String]

        # @!attribute [rw] destination
        #   The destination for this email, composed of To:, CC:, and BCC:
        #   fields.
        #   @return [Types::Destination]

        # @!attribute [rw] message
        #   The message to be sent.
        #   @return [Types::Message]

        # @!attribute [rw] reply_to_addresses
        #   The reply-to email address(es) for the message. If the recipient
        #   replies to the message, each reply-to address will receive the
        #   reply.
        #   @return [Array<String>]

        # @!attribute [rw] return_path
        #   The email address to which bounces and complaints are to be
        #   forwarded when feedback forwarding is enabled. If the message cannot
        #   be delivered to the recipient, then an error message will be
        #   returned from the recipient\'s ISP; this message will then be
        #   forwarded to the email address specified by the `ReturnPath`
        #   parameter. The `ReturnPath` parameter is never overwritten. This
        #   email address must be either individually verified with Amazon SES,
        #   or from a domain that has been verified with Amazon SES.
        #   @return [String]

        # @!attribute [rw] source_arn
        #   This parameter is used only for sending authorization. It is the ARN
        #   of the identity that is associated with the sending authorization
        #   policy that permits you to send for the email address specified in
        #   the `Source` parameter.
        #
        #   For example, if the owner of `example.com` (which has ARN
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches
        #   a policy to it that authorizes you to send from `user@example.com`,
        #   then you would specify the `SourceArn` to be
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
        #   `Source` to be `user@example.com`.
        #
        #   For more information about sending authorization, see the [Amazon
        #   SES Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
        #   @return [String]

        # @!attribute [rw] return_path_arn
        #   This parameter is used only for sending authorization. It is the ARN
        #   of the identity that is associated with the sending authorization
        #   policy that permits you to use the email address specified in the
        #   `ReturnPath` parameter.
        #
        #   For example, if the owner of `example.com` (which has ARN
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches
        #   a policy to it that authorizes you to use `feedback@example.com`,
        #   then you would specify the `ReturnPathArn` to be
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
        #   `ReturnPath` to be `feedback@example.com`.
        #
        #   For more information about sending authorization, see the [Amazon
        #   SES Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
        #   @return [String]

      end

      # Represents a unique message ID.
      class SendEmailResponse < Struct.new(
        :message_id)

        include Aws::Structure

        # @!attribute [rw] message_id
        #   The unique message identifier returned from the `SendEmail` action.
        #   @return [String]

      end

      # Represents a request to send a single raw email using Amazon SES. For
      # more information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html
      # @note When making an API call, pass SendRawEmailRequest
      #   data as a hash:
      #
      #       {
      #         source: "Address",
      #         destinations: ["Address"],
      #         raw_message: { # required
      #           data: "data", # required
      #         },
      #         from_arn: "AmazonResourceName",
      #         source_arn: "AmazonResourceName",
      #         return_path_arn: "AmazonResourceName",
      #       }
      class SendRawEmailRequest < Struct.new(
        :source,
        :destinations,
        :raw_message,
        :from_arn,
        :source_arn,
        :return_path_arn)

        include Aws::Structure

        # @!attribute [rw] source
        #   The identity\'s email address. If you do not provide a value for
        #   this parameter, you must specify a \"From\" address in the raw text
        #   of the message. (You can also specify both.)
        #
        #   By default, the string must be 7-bit ASCII. If the text must contain
        #   any other characters, then you must use MIME encoded-word syntax
        #   (RFC 2047) instead of a literal string. MIME encoded-word syntax
        #   uses the following form: `=?charset?encoding?encoded-text?=`. For
        #   more information, see [RFC 2047][1].
        #
        #   <note markdown="1"> If you specify the `Source` parameter and have feedback forwarding
        #   enabled, then bounces and complaints will be sent to this email
        #   address. This takes precedence over any *Return-Path* header that
        #   you might include in the raw text of the message.
        #
        #    </note>
        #
        #
        #
        #   [1]: http://tools.ietf.org/html/rfc2047
        #   @return [String]

        # @!attribute [rw] destinations
        #   A list of destinations for the message, consisting of To:, CC:, and
        #   BCC: addresses.
        #   @return [Array<String>]

        # @!attribute [rw] raw_message
        #   The raw text of the message. The client is responsible for ensuring
        #   the following:
        #
        #   * Message must contain a header and a body, separated by a blank
        #     line.
        #
        #   * All required header fields must be present.
        #
        #   * Each part of a multipart MIME message must be formatted properly.
        #
        #   * MIME content types must be among those supported by Amazon SES.
        #     For more information, go to the [Amazon SES Developer Guide][1].
        #
        #   * Must be base64-encoded.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types.html
        #   @return [Types::RawMessage]

        # @!attribute [rw] from_arn
        #   This parameter is used only for sending authorization. It is the ARN
        #   of the identity that is associated with the sending authorization
        #   policy that permits you to specify a particular \"From\" address in
        #   the header of the raw email.
        #
        #   Instead of using this parameter, you can use the X-header
        #   `X-SES-FROM-ARN` in the raw message of the email. If you use both
        #   the `FromArn` parameter and the corresponding X-header, Amazon SES
        #   uses the value of the `FromArn` parameter.
        #
        #   <note markdown="1"> For information about when to use this parameter, see the
        #   description of `SendRawEmail` in this guide, or see the [Amazon SES
        #   Developer Guide][1].
        #
        #    </note>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html
        #   @return [String]

        # @!attribute [rw] source_arn
        #   This parameter is used only for sending authorization. It is the ARN
        #   of the identity that is associated with the sending authorization
        #   policy that permits you to send for the email address specified in
        #   the `Source` parameter.
        #
        #   For example, if the owner of `example.com` (which has ARN
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches
        #   a policy to it that authorizes you to send from `user@example.com`,
        #   then you would specify the `SourceArn` to be
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
        #   `Source` to be `user@example.com`.
        #
        #   Instead of using this parameter, you can use the X-header
        #   `X-SES-SOURCE-ARN` in the raw message of the email. If you use both
        #   the `SourceArn` parameter and the corresponding X-header, Amazon SES
        #   uses the value of the `SourceArn` parameter.
        #
        #   <note markdown="1"> For information about when to use this parameter, see the
        #   description of `SendRawEmail` in this guide, or see the [Amazon SES
        #   Developer Guide][1].
        #
        #    </note>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html
        #   @return [String]

        # @!attribute [rw] return_path_arn
        #   This parameter is used only for sending authorization. It is the ARN
        #   of the identity that is associated with the sending authorization
        #   policy that permits you to use the email address specified in the
        #   `ReturnPath` parameter.
        #
        #   For example, if the owner of `example.com` (which has ARN
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches
        #   a policy to it that authorizes you to use `feedback@example.com`,
        #   then you would specify the `ReturnPathArn` to be
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the
        #   `ReturnPath` to be `feedback@example.com`.
        #
        #   Instead of using this parameter, you can use the X-header
        #   `X-SES-RETURN-PATH-ARN` in the raw message of the email. If you use
        #   both the `ReturnPathArn` parameter and the corresponding X-header,
        #   Amazon SES uses the value of the `ReturnPathArn` parameter.
        #
        #   <note markdown="1"> For information about when to use this parameter, see the
        #   description of `SendRawEmail` in this guide, or see the [Amazon SES
        #   Developer Guide][1].
        #
        #    </note>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html
        #   @return [String]

      end

      # Represents a unique message ID.
      class SendRawEmailResponse < Struct.new(
        :message_id)

        include Aws::Structure

        # @!attribute [rw] message_id
        #   The unique message identifier returned from the `SendRawEmail`
        #   action.
        #   @return [String]

      end

      # Represents a request to set a receipt rule set as the active receipt
      # rule set. You use receipt rule sets to receive email with Amazon SES.
      # For more information, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass SetActiveReceiptRuleSetRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName",
      #       }
      class SetActiveReceiptRuleSetRequest < Struct.new(
        :rule_set_name)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the receipt rule set to make active. Setting this value
        #   to null disables all email receiving.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class SetActiveReceiptRuleSetResponse < Aws::EmptyStructure; end

      # Represents a request to enable or disable Amazon SES Easy DKIM signing
      # for an identity. For more information about setting up Easy DKIM, see
      # the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
      # @note When making an API call, pass SetIdentityDkimEnabledRequest
      #   data as a hash:
      #
      #       {
      #         identity: "Identity", # required
      #         dkim_enabled: false, # required
      #       }
      class SetIdentityDkimEnabledRequest < Struct.new(
        :identity,
        :dkim_enabled)

        include Aws::Structure

        # @!attribute [rw] identity
        #   The identity for which DKIM signing should be enabled or disabled.
        #   @return [String]

        # @!attribute [rw] dkim_enabled
        #   Sets whether DKIM signing is enabled for an identity. Set to `true`
        #   to enable DKIM signing for this identity; `false` to disable it.
        #   @return [Boolean]

      end

      # An empty element returned on a successful request.
      class SetIdentityDkimEnabledResponse < Aws::EmptyStructure; end

      # Represents a request to enable or disable whether Amazon SES forwards
      # you bounce and complaint notifications through email. For information
      # about email feedback forwarding, see the [Amazon SES Developer
      # Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-email.html
      # @note When making an API call, pass SetIdentityFeedbackForwardingEnabledRequest
      #   data as a hash:
      #
      #       {
      #         identity: "Identity", # required
      #         forwarding_enabled: false, # required
      #       }
      class SetIdentityFeedbackForwardingEnabledRequest < Struct.new(
        :identity,
        :forwarding_enabled)

        include Aws::Structure

        # @!attribute [rw] identity
        #   The identity for which to set bounce and complaint notification
        #   forwarding. Examples: `user@example.com`, `example.com`.
        #   @return [String]

        # @!attribute [rw] forwarding_enabled
        #   Sets whether Amazon SES will forward bounce and complaint
        #   notifications as email. `true` specifies that Amazon SES will
        #   forward bounce and complaint notifications as email, in addition to
        #   any Amazon SNS topic publishing otherwise specified. `false`
        #   specifies that Amazon SES will publish bounce and complaint
        #   notifications only through Amazon SNS. This value can only be set to
        #   `false` when Amazon SNS topics are set for both `Bounce` and
        #   `Complaint` notification types.
        #   @return [Boolean]

      end

      # An empty element returned on a successful request.
      class SetIdentityFeedbackForwardingEnabledResponse < Aws::EmptyStructure; end

      # Represents a request to set whether Amazon SES includes the original
      # email headers in the Amazon SNS notifications of a specified type. For
      # information about notifications, see the [Amazon SES Developer
      # Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html
      # @note When making an API call, pass SetIdentityHeadersInNotificationsEnabledRequest
      #   data as a hash:
      #
      #       {
      #         identity: "Identity", # required
      #         notification_type: "Bounce", # required, accepts Bounce, Complaint, Delivery
      #         enabled: false, # required
      #       }
      class SetIdentityHeadersInNotificationsEnabledRequest < Struct.new(
        :identity,
        :notification_type,
        :enabled)

        include Aws::Structure

        # @!attribute [rw] identity
        #   The identity for which to enable or disable headers in
        #   notifications. Examples: `user@example.com`, `example.com`.
        #   @return [String]

        # @!attribute [rw] notification_type
        #   The notification type for which to enable or disable headers in
        #   notifications.
        #   @return [String]

        # @!attribute [rw] enabled
        #   Sets whether Amazon SES includes the original email headers in
        #   Amazon SNS notifications of the specified notification type. A value
        #   of `true` specifies that Amazon SES will include headers in
        #   notifications, and a value of `false` specifies that Amazon SES will
        #   not include headers in notifications.
        #
        #   This value can only be set when `NotificationType` is already set to
        #   use a particular Amazon SNS topic.
        #   @return [Boolean]

      end

      # An empty element returned on a successful request.
      class SetIdentityHeadersInNotificationsEnabledResponse < Aws::EmptyStructure; end

      # Represents a request to enable or disable the Amazon SES custom MAIL
      # FROM domain setup for a verified identity. For information about using
      # a custom MAIL FROM domain, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html
      # @note When making an API call, pass SetIdentityMailFromDomainRequest
      #   data as a hash:
      #
      #       {
      #         identity: "Identity", # required
      #         mail_from_domain: "MailFromDomainName",
      #         behavior_on_mx_failure: "UseDefaultValue", # accepts UseDefaultValue, RejectMessage
      #       }
      class SetIdentityMailFromDomainRequest < Struct.new(
        :identity,
        :mail_from_domain,
        :behavior_on_mx_failure)

        include Aws::Structure

        # @!attribute [rw] identity
        #   The verified identity for which you want to enable or disable the
        #   specified custom MAIL FROM domain.
        #   @return [String]

        # @!attribute [rw] mail_from_domain
        #   The custom MAIL FROM domain that you want the verified identity to
        #   use. The MAIL FROM domain must 1) be a subdomain of the verified
        #   identity, 2) not be used in a \"From\" address if the MAIL FROM
        #   domain is the destination of email feedback forwarding (for more
        #   information, see the [Amazon SES Developer Guide][1]), and 3) not be
        #   used to receive emails. A value of `null` disables the custom MAIL
        #   FROM setting for the identity.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html
        #   @return [String]

        # @!attribute [rw] behavior_on_mx_failure
        #   The action that you want Amazon SES to take if it cannot
        #   successfully read the required MX record when you send an email. If
        #   you choose `UseDefaultValue`, Amazon SES will use amazonses.com (or
        #   a subdomain of that) as the MAIL FROM domain. If you choose
        #   `RejectMessage`, Amazon SES will return a
        #   `MailFromDomainNotVerified` error and not send the email.
        #
        #   The action specified in `BehaviorOnMXFailure` is taken when the
        #   custom MAIL FROM domain setup is in the `Pending`, `Failed`, and
        #   `TemporaryFailure` states.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class SetIdentityMailFromDomainResponse < Aws::EmptyStructure; end

      # Represents a request to specify the Amazon SNS topic to which Amazon
      # SES will publish bounce, complaint, or delivery notifications for
      # emails sent with that identity as the Source. For information about
      # Amazon SES notifications, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html
      # @note When making an API call, pass SetIdentityNotificationTopicRequest
      #   data as a hash:
      #
      #       {
      #         identity: "Identity", # required
      #         notification_type: "Bounce", # required, accepts Bounce, Complaint, Delivery
      #         sns_topic: "NotificationTopic",
      #       }
      class SetIdentityNotificationTopicRequest < Struct.new(
        :identity,
        :notification_type,
        :sns_topic)

        include Aws::Structure

        # @!attribute [rw] identity
        #   The identity for which the Amazon SNS topic will be set. You can
        #   specify an identity by using its name or by using its Amazon
        #   Resource Name (ARN). Examples: `user@example.com`, `example.com`,
        #   `arn:aws:ses:us-east-1:123456789012:identity/example.com`.
        #   @return [String]

        # @!attribute [rw] notification_type
        #   The type of notifications that will be published to the specified
        #   Amazon SNS topic.
        #   @return [String]

        # @!attribute [rw] sns_topic
        #   The Amazon Resource Name (ARN) of the Amazon SNS topic. If the
        #   parameter is omitted from the request or a null value is passed,
        #   `SnsTopic` is cleared and publishing is disabled.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class SetIdentityNotificationTopicResponse < Aws::EmptyStructure; end

      # Represents a request to set the position of a receipt rule in a
      # receipt rule set. You use receipt rule sets to receive email with
      # Amazon SES. For more information, see the [Amazon SES Developer
      # Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass SetReceiptRulePositionRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName", # required
      #         rule_name: "ReceiptRuleName", # required
      #         after: "ReceiptRuleName",
      #       }
      class SetReceiptRulePositionRequest < Struct.new(
        :rule_set_name,
        :rule_name,
        :after)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the receipt rule set that contains the receipt rule to
        #   reposition.
        #   @return [String]

        # @!attribute [rw] rule_name
        #   The name of the receipt rule to reposition.
        #   @return [String]

        # @!attribute [rw] after
        #   The name of the receipt rule after which to place the specified
        #   receipt rule.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class SetReceiptRulePositionResponse < Aws::EmptyStructure; end

      # When included in a receipt rule, this action terminates the evaluation
      # of the receipt rule set and, optionally, publishes a notification to
      # Amazon Simple Notification Service (Amazon SNS).
      #
      # For information about setting a stop action in a receipt rule, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html
      # @note When making an API call, pass StopAction
      #   data as a hash:
      #
      #       {
      #         scope: "RuleSet", # required, accepts RuleSet
      #         topic_arn: "AmazonResourceName",
      #       }
      class StopAction < Struct.new(
        :scope,
        :topic_arn)

        include Aws::Structure

        # @!attribute [rw] scope
        #   The scope to which the Stop action applies. That is, what is being
        #   stopped.
        #   @return [String]

        # @!attribute [rw] topic_arn
        #   The Amazon Resource Name (ARN) of the Amazon SNS topic to notify
        #   when the stop action is taken. An example of an Amazon SNS topic ARN
        #   is `arn:aws:sns:us-west-2:123456789012:MyTopic`. For more
        #   information about Amazon SNS topics, see the [Amazon SNS Developer
        #   Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html
        #   @return [String]

      end

      # Represents a request to update a receipt rule. You use receipt rules
      # to receive email with Amazon SES. For more information, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html
      # @note When making an API call, pass UpdateReceiptRuleRequest
      #   data as a hash:
      #
      #       {
      #         rule_set_name: "ReceiptRuleSetName", # required
      #         rule: { # required
      #           name: "ReceiptRuleName", # required
      #           enabled: false,
      #           tls_policy: "Require", # accepts Require, Optional
      #           recipients: ["Recipient"],
      #           actions: [
      #             {
      #               s3_action: {
      #                 topic_arn: "AmazonResourceName",
      #                 bucket_name: "S3BucketName", # required
      #                 object_key_prefix: "S3KeyPrefix",
      #                 kms_key_arn: "AmazonResourceName",
      #               },
      #               bounce_action: {
      #                 topic_arn: "AmazonResourceName",
      #                 smtp_reply_code: "BounceSmtpReplyCode", # required
      #                 status_code: "BounceStatusCode",
      #                 message: "BounceMessage", # required
      #                 sender: "Address", # required
      #               },
      #               workmail_action: {
      #                 topic_arn: "AmazonResourceName",
      #                 organization_arn: "AmazonResourceName", # required
      #               },
      #               lambda_action: {
      #                 topic_arn: "AmazonResourceName",
      #                 function_arn: "AmazonResourceName", # required
      #                 invocation_type: "Event", # accepts Event, RequestResponse
      #               },
      #               stop_action: {
      #                 scope: "RuleSet", # required, accepts RuleSet
      #                 topic_arn: "AmazonResourceName",
      #               },
      #               add_header_action: {
      #                 header_name: "HeaderName", # required
      #                 header_value: "HeaderValue", # required
      #               },
      #               sns_action: {
      #                 topic_arn: "AmazonResourceName", # required
      #                 encoding: "UTF-8", # accepts UTF-8, Base64
      #               },
      #             },
      #           ],
      #           scan_enabled: false,
      #         },
      #       }
      class UpdateReceiptRuleRequest < Struct.new(
        :rule_set_name,
        :rule)

        include Aws::Structure

        # @!attribute [rw] rule_set_name
        #   The name of the receipt rule set to which the receipt rule belongs.
        #   @return [String]

        # @!attribute [rw] rule
        #   A data structure that contains the updated receipt rule information.
        #   @return [Types::ReceiptRule]

      end

      # An empty element returned on a successful request.
      class UpdateReceiptRuleResponse < Aws::EmptyStructure; end

      # Represents a request to generate the CNAME records needed to set up
      # Easy DKIM with Amazon SES. For more information about setting up Easy
      # DKIM, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
      # @note When making an API call, pass VerifyDomainDkimRequest
      #   data as a hash:
      #
      #       {
      #         domain: "Domain", # required
      #       }
      class VerifyDomainDkimRequest < Struct.new(
        :domain)

        include Aws::Structure

        # @!attribute [rw] domain
        #   The name of the domain to be verified for Easy DKIM signing.
        #   @return [String]

      end

      # Returns CNAME records that you must publish to the DNS server of your
      # domain to set up Easy DKIM with Amazon SES.
      class VerifyDomainDkimResponse < Struct.new(
        :dkim_tokens)

        include Aws::Structure

        # @!attribute [rw] dkim_tokens
        #   A set of character strings that represent the domain\'s identity. If
        #   the identity is an email address, the tokens represent the domain of
        #   that address.
        #
        #   Using these tokens, you will need to create DNS CNAME records that
        #   point to DKIM public keys hosted by Amazon SES. Amazon Web Services
        #   will eventually detect that you have updated your DNS records; this
        #   detection process may take up to 72 hours. Upon successful
        #   detection, Amazon SES will be able to DKIM-sign emails originating
        #   from that domain.
        #
        #   For more information about creating DNS records using DKIM tokens,
        #   go to the [Amazon SES Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html
        #   @return [Array<String>]

      end

      # Represents a request to begin Amazon SES domain verification and to
      # generate the TXT records that you must publish to the DNS server of
      # your domain to complete the verification. For information about domain
      # verification, see the [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html
      # @note When making an API call, pass VerifyDomainIdentityRequest
      #   data as a hash:
      #
      #       {
      #         domain: "Domain", # required
      #       }
      class VerifyDomainIdentityRequest < Struct.new(
        :domain)

        include Aws::Structure

        # @!attribute [rw] domain
        #   The domain to be verified.
        #   @return [String]

      end

      # Returns a TXT record that you must publish to the DNS server of your
      # domain to complete domain verification with Amazon SES.
      class VerifyDomainIdentityResponse < Struct.new(
        :verification_token)

        include Aws::Structure

        # @!attribute [rw] verification_token
        #   A TXT record that must be placed in the DNS settings for the domain,
        #   in order to complete domain verification.
        #   @return [String]

      end

      # Represents a request to begin email address verification with Amazon
      # SES. For information about email address verification, see the [Amazon
      # SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html
      # @note When making an API call, pass VerifyEmailAddressRequest
      #   data as a hash:
      #
      #       {
      #         email_address: "Address", # required
      #       }
      class VerifyEmailAddressRequest < Struct.new(
        :email_address)

        include Aws::Structure

        # @!attribute [rw] email_address
        #   The email address to be verified.
        #   @return [String]

      end

      # Represents a request to begin email address verification with Amazon
      # SES. For information about email address verification, see the [Amazon
      # SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html
      # @note When making an API call, pass VerifyEmailIdentityRequest
      #   data as a hash:
      #
      #       {
      #         email_address: "Address", # required
      #       }
      class VerifyEmailIdentityRequest < Struct.new(
        :email_address)

        include Aws::Structure

        # @!attribute [rw] email_address
        #   The email address to be verified.
        #   @return [String]

      end

      # An empty element returned on a successful request.
      class VerifyEmailIdentityResponse < Aws::EmptyStructure; end

      # When included in a receipt rule, this action calls Amazon WorkMail
      # and, optionally, publishes a notification to Amazon Simple
      # Notification Service (Amazon SNS). You will typically not use this
      # action directly because Amazon WorkMail adds the rule automatically
      # during its setup procedure.
      #
      # For information using a receipt rule to call Amazon WorkMail, see the
      # [Amazon SES Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html
      # @note When making an API call, pass WorkmailAction
      #   data as a hash:
      #
      #       {
      #         topic_arn: "AmazonResourceName",
      #         organization_arn: "AmazonResourceName", # required
      #       }
      class WorkmailAction < Struct.new(
        :topic_arn,
        :organization_arn)

        include Aws::Structure

        # @!attribute [rw] topic_arn
        #   The Amazon Resource Name (ARN) of the Amazon SNS topic to notify
        #   when the WorkMail action is called. An example of an Amazon SNS
        #   topic ARN is `arn:aws:sns:us-west-2:123456789012:MyTopic`. For more
        #   information about Amazon SNS topics, see the [Amazon SNS Developer
        #   Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html
        #   @return [String]

        # @!attribute [rw] organization_arn
        #   The ARN of the Amazon WorkMail organization. An example of an Amazon
        #   WorkMail organization ARN is
        #   `arn:aws:workmail:us-west-2:123456789012:organization/m-68755160c4cb4e29a2b2f8fb58f359d7`.
        #   For information about Amazon WorkMail organizations, see the [Amazon
        #   WorkMail Administrator Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html
        #   @return [String]

      end

    end
  end
end
