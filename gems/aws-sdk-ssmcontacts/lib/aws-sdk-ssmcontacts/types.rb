# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSMContacts
  module Types

    # @note When making an API call, you may pass AcceptPageRequest
    #   data as a hash:
    #
    #       {
    #         page_id: "SsmContactsArn", # required
    #         contact_channel_id: "SsmContactsArn",
    #         accept_type: "DELIVERED", # required, accepts DELIVERED, READ
    #         note: "ReceiptInfo",
    #         accept_code: "AcceptCode", # required
    #         accept_code_validation: "IGNORE", # accepts IGNORE, ENFORCE
    #       }
    #
    # @!attribute [rw] page_id
    #   The Amazon Resource Name (ARN) of the engagement to a contact
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] contact_channel_id
    #   The ARN of the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] accept_type
    #   The type indicates if the page was `DELIVERED` or `READ`.
    #   @return [String]
    #
    # @!attribute [rw] note
    #   Information provided by the user when the user acknowledges the
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] accept_code
    #   The accept code is a 6-digit code used to acknowledge the page.
    #   @return [String]
    #
    # @!attribute [rw] accept_code_validation
    #   An optional field that Incident Manager uses to `ENFORCE`
    #   `AcceptCode` validation when acknowledging an page. Acknowledgement
    #   can occur by replying to a page, or when entering the AcceptCode in
    #   the console. Enforcing AcceptCode validation causes Incident Manager
    #   to verify that the code entered by the user matches the code sent by
    #   Incident Manager with the page.
    #
    #   Incident Manager can also `IGNORE` `AcceptCode` validation. Ignoring
    #   `AcceptCode` validation causes Incident Manager to accept any value
    #   entered for the `AcceptCode`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/AcceptPageRequest AWS API Documentation
    #
    class AcceptPageRequest < Struct.new(
      :page_id,
      :contact_channel_id,
      :accept_type,
      :note,
      :accept_code,
      :accept_code_validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/AcceptPageResult AWS API Documentation
    #
    class AcceptPageResult < Aws::EmptyStructure; end

    # You don't have sufficient access to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ActivateContactChannelRequest
    #   data as a hash:
    #
    #       {
    #         contact_channel_id: "SsmContactsArn", # required
    #         activation_code: "ActivationCode", # required
    #       }
    #
    # @!attribute [rw] contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] activation_code
    #   The code sent to the contact channel when it was created in the
    #   contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ActivateContactChannelRequest AWS API Documentation
    #
    class ActivateContactChannelRequest < Struct.new(
      :contact_channel_id,
      :activation_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ActivateContactChannelResult AWS API Documentation
    #
    class ActivateContactChannelResult < Aws::EmptyStructure; end

    # Information about the contact channel that Incident Manager uses to
    # engage the contact.
    #
    # @note When making an API call, you may pass ChannelTargetInfo
    #   data as a hash:
    #
    #       {
    #         contact_channel_id: "SsmContactsArn", # required
    #         retry_interval_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] retry_interval_in_minutes
    #   The number of minutes to wait to retry sending engagement in the
    #   case the engagement initially fails.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ChannelTargetInfo AWS API Documentation
    #
    class ChannelTargetInfo < Struct.new(
      :contact_channel_id,
      :retry_interval_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting a resource causes an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource in use
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   ype of the resource in use
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A personal contact or escalation plan that Incident Manager engages
    # during an incident.
    #
    # @!attribute [rw] contact_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The unique and identifiable alias of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The full name of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Refers to the type of contact. A single contact is type `PERSONAL`
    #   and an escalation plan is type `ESCALATION`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/Contact AWS API Documentation
    #
    class Contact < Struct.new(
      :contact_arn,
      :alias,
      :display_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The method that Incident Manager uses to engage a contact.
    #
    # @!attribute [rw] contact_channel_arn
    #   The Amazon Resource Name (ARN) of the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact that contains the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the contact channel. Incident Manager supports three
    #   contact methods:
    #
    #   * SMS
    #
    #   * VOICE
    #
    #   * EMAIL
    #   @return [String]
    #
    # @!attribute [rw] delivery_address
    #   The details that Incident Manager uses when trying to engage the
    #   contact channel.
    #   @return [Types::ContactChannelAddress]
    #
    # @!attribute [rw] activation_status
    #   A Boolean value describing if the contact channel has been activated
    #   or not. If the contact channel isn't activated, Incident Manager
    #   can't engage the contact through it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ContactChannel AWS API Documentation
    #
    class ContactChannel < Struct.new(
      :contact_channel_arn,
      :contact_arn,
      :name,
      :type,
      :delivery_address,
      :activation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that Incident Manager uses when trying to engage the
    # contact channel.
    #
    # @note When making an API call, you may pass ContactChannelAddress
    #   data as a hash:
    #
    #       {
    #         simple_address: "SimpleAddress",
    #       }
    #
    # @!attribute [rw] simple_address
    #   The format is dependent on the type of the contact channel. The
    #   following are the expected formats:
    #
    #   * SMS - '+' followed by the country code and phone number
    #
    #   * VOICE - '+' followed by the country code and phone number
    #
    #   * EMAIL - any standard email format
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ContactChannelAddress AWS API Documentation
    #
    class ContactChannelAddress < Struct.new(
      :simple_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contact that Incident Manager is engaging during an incident.
    #
    # @note When making an API call, you may pass ContactTargetInfo
    #   data as a hash:
    #
    #       {
    #         contact_id: "SsmContactsArn",
    #         is_essential: false, # required
    #       }
    #
    # @!attribute [rw] contact_id
    #   The Amazon Resource Name (ARN) of the contact.
    #   @return [String]
    #
    # @!attribute [rw] is_essential
    #   A Boolean value determining if the contact's acknowledgement stops
    #   the progress of stages in the plan.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ContactTargetInfo AWS API Documentation
    #
    class ContactTargetInfo < Struct.new(
      :contact_id,
      :is_essential)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateContactChannelRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "SsmContactsArn", # required
    #         name: "ChannelName", # required
    #         type: "SMS", # required, accepts SMS, VOICE, EMAIL
    #         delivery_address: { # required
    #           simple_address: "SimpleAddress",
    #         },
    #         defer_activation: false,
    #         idempotency_token: "IdempotencyToken",
    #       }
    #
    # @!attribute [rw] contact_id
    #   The Amazon Resource Name (ARN) of the contact you are adding the
    #   contact channel to.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Incident Manager supports three types of contact channels:
    #
    #   * `SMS`
    #
    #   * `VOICE`
    #
    #   * `EMAIL`
    #   @return [String]
    #
    # @!attribute [rw] delivery_address
    #   The details that Incident Manager uses when trying to engage the
    #   contact channel. The format is dependent on the type of the contact
    #   channel. The following are the expected formats:
    #
    #   * SMS - '+' followed by the country code and phone number
    #
    #   * VOICE - '+' followed by the country code and phone number
    #
    #   * EMAIL - any standard email format
    #   @return [Types::ContactChannelAddress]
    #
    # @!attribute [rw] defer_activation
    #   If you want to activate the channel at a later time, you can choose
    #   to defer activation. Incident Manager can't engage your contact
    #   channel until it has been activated.
    #   @return [Boolean]
    #
    # @!attribute [rw] idempotency_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateContactChannelRequest AWS API Documentation
    #
    class CreateContactChannelRequest < Struct.new(
      :contact_id,
      :name,
      :type,
      :delivery_address,
      :defer_activation,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_channel_arn
    #   The Amazon Resource Name (ARN) of the contact channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateContactChannelResult AWS API Documentation
    #
    class CreateContactChannelResult < Struct.new(
      :contact_channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateContactRequest
    #   data as a hash:
    #
    #       {
    #         alias: "ContactAlias", # required
    #         display_name: "ContactName",
    #         type: "PERSONAL", # required, accepts PERSONAL, ESCALATION
    #         plan: { # required
    #           stages: [ # required
    #             {
    #               duration_in_minutes: 1, # required
    #               targets: [ # required
    #                 {
    #                   channel_target_info: {
    #                     contact_channel_id: "SsmContactsArn", # required
    #                     retry_interval_in_minutes: 1,
    #                   },
    #                   contact_target_info: {
    #                     contact_id: "SsmContactsArn",
    #                     is_essential: false, # required
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         idempotency_token: "IdempotencyToken",
    #       }
    #
    # @!attribute [rw] alias
    #   The short name to quickly identify a contact or escalation plan. The
    #   contact alias must be unique and identifiable.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The full name of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   To create an escalation plan use `ESCALATION`. To create a contact
    #   use `PERSONAL`.
    #   @return [String]
    #
    # @!attribute [rw] plan
    #   A list of stages. A contact has an engagement plan with stages that
    #   contact specified contact channels. An escalation plan uses stages
    #   that contact specified contacts.
    #   @return [Types::Plan]
    #
    # @!attribute [rw] tags
    #   Adds a tag to the target. You can only tag resources created in the
    #   first Region of your replication set.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] idempotency_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateContactRequest AWS API Documentation
    #
    class CreateContactRequest < Struct.new(
      :alias,
      :display_name,
      :type,
      :plan,
      :tags,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_arn
    #   The Amazon Resource Name (ARN) of the created contact or escalation
    #   plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateContactResult AWS API Documentation
    #
    class CreateContactResult < Struct.new(
      :contact_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed to due an encryption key error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DataEncryptionException AWS API Documentation
    #
    class DataEncryptionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeactivateContactChannelRequest
    #   data as a hash:
    #
    #       {
    #         contact_channel_id: "SsmContactsArn", # required
    #       }
    #
    # @!attribute [rw] contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel you're
    #   deactivating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeactivateContactChannelRequest AWS API Documentation
    #
    class DeactivateContactChannelRequest < Struct.new(
      :contact_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeactivateContactChannelResult AWS API Documentation
    #
    class DeactivateContactChannelResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteContactChannelRequest
    #   data as a hash:
    #
    #       {
    #         contact_channel_id: "SsmContactsArn", # required
    #       }
    #
    # @!attribute [rw] contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteContactChannelRequest AWS API Documentation
    #
    class DeleteContactChannelRequest < Struct.new(
      :contact_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteContactChannelResult AWS API Documentation
    #
    class DeleteContactChannelResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "SsmContactsArn", # required
    #       }
    #
    # @!attribute [rw] contact_id
    #   The Amazon Resource Name (ARN) of the contact that you're deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteContactRequest AWS API Documentation
    #
    class DeleteContactRequest < Struct.new(
      :contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteContactResult AWS API Documentation
    #
    class DeleteContactResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeEngagementRequest
    #   data as a hash:
    #
    #       {
    #         engagement_id: "SsmContactsArn", # required
    #       }
    #
    # @!attribute [rw] engagement_id
    #   The Amazon Resource Name (ARN) of the engagement you want the
    #   details of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DescribeEngagementRequest AWS API Documentation
    #
    class DescribeEngagementRequest < Struct.new(
      :engagement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_arn
    #   The ARN of the escalation plan or contacts involved in the
    #   engagement.
    #   @return [String]
    #
    # @!attribute [rw] engagement_arn
    #   The ARN of the engagement.
    #   @return [String]
    #
    # @!attribute [rw] sender
    #   The user that started the engagement.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The secure subject of the message that was sent to the contact. Use
    #   this field for engagements to `VOICE` and `EMAIL`.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The secure content of the message that was sent to the contact. Use
    #   this field for engagements to `VOICE` and `EMAIL`.
    #   @return [String]
    #
    # @!attribute [rw] public_subject
    #   The insecure subject of the message that was sent to the contact.
    #   Use this field for engagements to `SMS`.
    #   @return [String]
    #
    # @!attribute [rw] public_content
    #   The insecure content of the message that was sent to the contact.
    #   Use this field for engagements to `SMS`.
    #   @return [String]
    #
    # @!attribute [rw] incident_id
    #   The ARN of the incident in which the engagement occurred.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time that the engagement started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_time
    #   The time that the engagement ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DescribeEngagementResult AWS API Documentation
    #
    class DescribeEngagementResult < Struct.new(
      :contact_arn,
      :engagement_arn,
      :sender,
      :subject,
      :content,
      :public_subject,
      :public_content,
      :incident_id,
      :start_time,
      :stop_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePageRequest
    #   data as a hash:
    #
    #       {
    #         page_id: "SsmContactsArn", # required
    #       }
    #
    # @!attribute [rw] page_id
    #   The ID of the engagement to a contact channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DescribePageRequest AWS API Documentation
    #
    class DescribePageRequest < Struct.new(
      :page_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] page_arn
    #   The Amazon Resource Name (ARN) of the engagement to a contact
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] engagement_arn
    #   The ARN of the engagement that engaged the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact that was engaged.
    #   @return [String]
    #
    # @!attribute [rw] sender
    #   The user that started the engagement.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The secure subject of the message that was sent to the contact. Use
    #   this field for engagements to `VOICE` and `EMAIL`.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The secure content of the message that was sent to the contact. Use
    #   this field for engagements to `VOICE` and `EMAIL`.
    #   @return [String]
    #
    # @!attribute [rw] public_subject
    #   The insecure subject of the message that was sent to the contact.
    #   Use this field for engagements to `SMS`.
    #   @return [String]
    #
    # @!attribute [rw] public_content
    #   The insecure content of the message that was sent to the contact.
    #   Use this field for engagements to `SMS`.
    #   @return [String]
    #
    # @!attribute [rw] incident_id
    #   The ARN of the incident that engaged the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] sent_time
    #   The time the engagement was sent to the contact channel.
    #   @return [Time]
    #
    # @!attribute [rw] read_time
    #   The time that the contact channel acknowledged the engagement.
    #   @return [Time]
    #
    # @!attribute [rw] delivery_time
    #   The time that the contact channel received the engagement.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DescribePageResult AWS API Documentation
    #
    class DescribePageResult < Struct.new(
      :page_arn,
      :engagement_arn,
      :contact_arn,
      :sender,
      :subject,
      :content,
      :public_subject,
      :public_content,
      :incident_id,
      :sent_time,
      :read_time,
      :delivery_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Incident Manager reaching out to a contact or escalation plan to
    # engage contact during an incident.
    #
    # @!attribute [rw] engagement_arn
    #   The Amazon Resource Name (ARN) of the engagement.
    #   @return [String]
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the escalation plan or contact that Incident Manager is
    #   engaging.
    #   @return [String]
    #
    # @!attribute [rw] sender
    #   The user that started the engagement.
    #   @return [String]
    #
    # @!attribute [rw] incident_id
    #   The ARN of the incident that's engaging the contact.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time that the engagement began.
    #   @return [Time]
    #
    # @!attribute [rw] stop_time
    #   The time that the engagement ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/Engagement AWS API Documentation
    #
    class Engagement < Struct.new(
      :engagement_arn,
      :contact_arn,
      :sender,
      :incident_id,
      :start_time,
      :stop_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContactChannelRequest
    #   data as a hash:
    #
    #       {
    #         contact_channel_id: "SsmContactsArn", # required
    #       }
    #
    # @!attribute [rw] contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel you want
    #   information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetContactChannelRequest AWS API Documentation
    #
    class GetContactChannelRequest < Struct.new(
      :contact_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_arn
    #   The ARN of the contact that the channel belongs to.
    #   @return [String]
    #
    # @!attribute [rw] contact_channel_arn
    #   The ARN of the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact channel
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of contact channel. The type is `SMS`, `VOICE`, or `EMAIL`.
    #   @return [String]
    #
    # @!attribute [rw] delivery_address
    #   The details that Incident Manager uses when trying to engage the
    #   contact channel.
    #   @return [Types::ContactChannelAddress]
    #
    # @!attribute [rw] activation_status
    #   A Boolean value indicating if the contact channel has been activated
    #   or not.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetContactChannelResult AWS API Documentation
    #
    class GetContactChannelResult < Struct.new(
      :contact_arn,
      :contact_channel_arn,
      :name,
      :type,
      :delivery_address,
      :activation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContactPolicyRequest
    #   data as a hash:
    #
    #       {
    #         contact_arn: "SsmContactsArn", # required
    #       }
    #
    # @!attribute [rw] contact_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetContactPolicyRequest AWS API Documentation
    #
    class GetContactPolicyRequest < Struct.new(
      :contact_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_arn
    #   The ARN of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   Details about the resource policy attached to the contact or
    #   escalation plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetContactPolicyResult AWS API Documentation
    #
    class GetContactPolicyResult < Struct.new(
      :contact_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "SsmContactsArn", # required
    #       }
    #
    # @!attribute [rw] contact_id
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetContactRequest AWS API Documentation
    #
    class GetContactRequest < Struct.new(
      :contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_arn
    #   The ARN of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias of the contact or escalation plan. The alias is unique and
    #   identifiable.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The full name of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of contact, either `PERSONAL` or `ESCALATION`.
    #   @return [String]
    #
    # @!attribute [rw] plan
    #   Details about the specific timing or stages and targets of the
    #   escalation plan or engagement plan.
    #   @return [Types::Plan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetContactResult AWS API Documentation
    #
    class GetContactResult < Struct.new(
      :contact_arn,
      :alias,
      :display_name,
      :type,
      :plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListContactChannelsRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "SsmContactsArn", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] contact_id
    #   The Amazon Resource Name (ARN) of the contact.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of contact channels per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListContactChannelsRequest AWS API Documentation
    #
    class ListContactChannelsRequest < Struct.new(
      :contact_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] contact_channels
    #   A list of contact channels related to the specified contact.
    #   @return [Array<Types::ContactChannel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListContactChannelsResult AWS API Documentation
    #
    class ListContactChannelsResult < Struct.new(
      :next_token,
      :contact_channels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListContactsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         alias_prefix: "ContactAlias",
    #         type: "PERSONAL", # accepts PERSONAL, ESCALATION
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of contacts and escalation plans per page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] alias_prefix
    #   Used to list only contacts who's aliases start with the specified
    #   prefix.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of contact. A contact is type `PERSONAL` and an escalation
    #   plan is type `ESCALATION`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListContactsRequest AWS API Documentation
    #
    class ListContactsRequest < Struct.new(
      :next_token,
      :max_results,
      :alias_prefix,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] contacts
    #   A list of the contacts and escalation plans in your Incident Manager
    #   account.
    #   @return [Array<Types::Contact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListContactsResult AWS API Documentation
    #
    class ListContactsResult < Struct.new(
      :next_token,
      :contacts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEngagementsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         incident_id: "IncidentId",
    #         time_range_value: {
    #           start_time: Time.now,
    #           end_time: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of engagements per page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] incident_id
    #   The Amazon Resource Name (ARN) of the incident you're listing
    #   engagements for.
    #   @return [String]
    #
    # @!attribute [rw] time_range_value
    #   The time range to lists engagements for an incident.
    #   @return [Types::TimeRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListEngagementsRequest AWS API Documentation
    #
    class ListEngagementsRequest < Struct.new(
      :next_token,
      :max_results,
      :incident_id,
      :time_range_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] engagements
    #   A list of each engagement that occurred during the specified time
    #   range of an incident.
    #   @return [Array<Types::Engagement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListEngagementsResult AWS API Documentation
    #
    class ListEngagementsResult < Struct.new(
      :next_token,
      :engagements)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPageReceiptsRequest
    #   data as a hash:
    #
    #       {
    #         page_id: "SsmContactsArn", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] page_id
    #   The Amazon Resource Name (ARN) of the engagement to a specific
    #   contact channel.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of acknowledgements per page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPageReceiptsRequest AWS API Documentation
    #
    class ListPageReceiptsRequest < Struct.new(
      :page_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] receipts
    #   A list of each acknowledgement.
    #   @return [Array<Types::Receipt>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPageReceiptsResult AWS API Documentation
    #
    class ListPageReceiptsResult < Struct.new(
      :next_token,
      :receipts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPagesByContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "SsmContactsArn", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] contact_id
    #   The Amazon Resource Name (ARN) of the contact you are retrieving
    #   engagements for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of engagements to contact channels to list per
    #   page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPagesByContactRequest AWS API Documentation
    #
    class ListPagesByContactRequest < Struct.new(
      :contact_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] pages
    #   The list of engagements to a contact's contact channel.
    #   @return [Array<Types::Page>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPagesByContactResult AWS API Documentation
    #
    class ListPagesByContactResult < Struct.new(
      :next_token,
      :pages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPagesByEngagementRequest
    #   data as a hash:
    #
    #       {
    #         engagement_id: "SsmContactsArn", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] engagement_id
    #   The Amazon Resource Name (ARN) of the engagement.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of engagements to contact channels to list per
    #   page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPagesByEngagementRequest AWS API Documentation
    #
    class ListPagesByEngagementRequest < Struct.new(
      :engagement_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] pages
    #   The list of engagements to contact channels.
    #   @return [Array<Types::Page>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPagesByEngagementResult AWS API Documentation
    #
    class ListPagesByEngagementResult < Struct.new(
      :next_token,
      :pages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags related to the contact or escalation plan.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Incident Manager engaging a contact's contact channel.
    #
    # @!attribute [rw] page_arn
    #   The Amazon Resource Name (ARN) of the page to the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] engagement_arn
    #   The ARN of the engagement that this page is part of.
    #   @return [String]
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact that Incident Manager is engaging.
    #   @return [String]
    #
    # @!attribute [rw] sender
    #   The user that started the engagement.
    #   @return [String]
    #
    # @!attribute [rw] incident_id
    #   The ARN of the incident that's engaging the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] sent_time
    #   The time that Incident Manager engaged the contact channel.
    #   @return [Time]
    #
    # @!attribute [rw] delivery_time
    #   The time the message was delivered to the contact channel.
    #   @return [Time]
    #
    # @!attribute [rw] read_time
    #   The time that the contact channel acknowledged engagement.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/Page AWS API Documentation
    #
    class Page < Struct.new(
      :page_arn,
      :engagement_arn,
      :contact_arn,
      :sender,
      :incident_id,
      :sent_time,
      :delivery_time,
      :read_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stages that an escalation plan or engagement plan engages contacts
    # and contact methods in.
    #
    # @note When making an API call, you may pass Plan
    #   data as a hash:
    #
    #       {
    #         stages: [ # required
    #           {
    #             duration_in_minutes: 1, # required
    #             targets: [ # required
    #               {
    #                 channel_target_info: {
    #                   contact_channel_id: "SsmContactsArn", # required
    #                   retry_interval_in_minutes: 1,
    #                 },
    #                 contact_target_info: {
    #                   contact_id: "SsmContactsArn",
    #                   is_essential: false, # required
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] stages
    #   A list of stages that the escalation plan or engagement plan uses to
    #   engage contacts and contact methods.
    #   @return [Array<Types::Stage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/Plan AWS API Documentation
    #
    class Plan < Struct.new(
      :stages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutContactPolicyRequest
    #   data as a hash:
    #
    #       {
    #         contact_arn: "SsmContactsArn", # required
    #         policy: "Policy", # required
    #       }
    #
    # @!attribute [rw] contact_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   Details of the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/PutContactPolicyRequest AWS API Documentation
    #
    class PutContactPolicyRequest < Struct.new(
      :contact_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/PutContactPolicyResult AWS API Documentation
    #
    class PutContactPolicyResult < Aws::EmptyStructure; end

    # Records events during an engagement.
    #
    # @!attribute [rw] contact_channel_arn
    #   The Amazon Resource Name (ARN) of the contact channel Incident
    #   Manager engaged.
    #   @return [String]
    #
    # @!attribute [rw] receipt_type
    #   The type follows the engagement cycle, `SENT`, `DELIVERED`, and
    #   `READ`.
    #   @return [String]
    #
    # @!attribute [rw] receipt_info
    #   Information provided during the page acknowledgement.
    #   @return [String]
    #
    # @!attribute [rw] receipt_time
    #   The time receipt was `SENT`, `DELIVERED`, or `READ`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/Receipt AWS API Documentation
    #
    class Receipt < Struct.new(
      :contact_channel_arn,
      :receipt_type,
      :receipt_info,
      :receipt_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource that doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Hypothetical resource identifier that was not found
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Hypothetical resource type that was not found
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendActivationCodeRequest
    #   data as a hash:
    #
    #       {
    #         contact_channel_id: "SsmContactsArn", # required
    #       }
    #
    # @!attribute [rw] contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/SendActivationCodeRequest AWS API Documentation
    #
    class SendActivationCodeRequest < Struct.new(
      :contact_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/SendActivationCodeResult AWS API Documentation
    #
    class SendActivationCodeResult < Aws::EmptyStructure; end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service Quotas requirement to identify originating service
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service Quotas requirement to identify originating quota
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set amount of time that an escalation plan or engagement plan
    # engages the specified contacts or contact methods.
    #
    # @note When making an API call, you may pass Stage
    #   data as a hash:
    #
    #       {
    #         duration_in_minutes: 1, # required
    #         targets: [ # required
    #           {
    #             channel_target_info: {
    #               contact_channel_id: "SsmContactsArn", # required
    #               retry_interval_in_minutes: 1,
    #             },
    #             contact_target_info: {
    #               contact_id: "SsmContactsArn",
    #               is_essential: false, # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] duration_in_minutes
    #   The time to wait until beginning the next stage. The duration can
    #   only be set to 0 if a target is specified.
    #   @return [Integer]
    #
    # @!attribute [rw] targets
    #   The contacts or contact methods that the escalation plan or
    #   engagement plan is engaging.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/Stage AWS API Documentation
    #
    class Stage < Struct.new(
      :duration_in_minutes,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartEngagementRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "SsmContactsArn", # required
    #         sender: "Sender", # required
    #         subject: "Subject", # required
    #         content: "Content", # required
    #         public_subject: "PublicSubject",
    #         public_content: "PublicContent",
    #         incident_id: "IncidentId",
    #         idempotency_token: "IdempotencyToken",
    #       }
    #
    # @!attribute [rw] contact_id
    #   The Amazon Resource Name (ARN) of the contact being engaged.
    #   @return [String]
    #
    # @!attribute [rw] sender
    #   The user that started the engagement.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The secure subject of the message that was sent to the contact. Use
    #   this field for engagements to `VOICE` or `EMAIL`.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The secure content of the message that was sent to the contact. Use
    #   this field for engagements to `VOICE` or `EMAIL`.
    #   @return [String]
    #
    # @!attribute [rw] public_subject
    #   The insecure subject of the message that was sent to the contact.
    #   Use this field for engagements to `SMS`.
    #   @return [String]
    #
    # @!attribute [rw] public_content
    #   The insecure content of the message that was sent to the contact.
    #   Use this field for engagements to `SMS`.
    #   @return [String]
    #
    # @!attribute [rw] incident_id
    #   The ARN of the incident that the engagement is part of.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A token ensuring that the operation is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/StartEngagementRequest AWS API Documentation
    #
    class StartEngagementRequest < Struct.new(
      :contact_id,
      :sender,
      :subject,
      :content,
      :public_subject,
      :public_content,
      :incident_id,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engagement_arn
    #   The ARN of the engagement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/StartEngagementResult AWS API Documentation
    #
    class StartEngagementResult < Struct.new(
      :engagement_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopEngagementRequest
    #   data as a hash:
    #
    #       {
    #         engagement_id: "SsmContactsArn", # required
    #         reason: "StopReason",
    #       }
    #
    # @!attribute [rw] engagement_id
    #   The Amazon Resource Name (ARN) of the engagement.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that you're stopping the engagement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/StopEngagementRequest AWS API Documentation
    #
    class StopEngagementRequest < Struct.new(
      :engagement_id,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/StopEngagementResult AWS API Documentation
    #
    class StopEngagementResult < Aws::EmptyStructure; end

    # A container of a key-value name pair.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   Name of the object key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you are adding to the contact or escalation
    #   plan.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Aws::EmptyStructure; end

    # The contact or contact channel that's being engaged.
    #
    # @note When making an API call, you may pass Target
    #   data as a hash:
    #
    #       {
    #         channel_target_info: {
    #           contact_channel_id: "SsmContactsArn", # required
    #           retry_interval_in_minutes: 1,
    #         },
    #         contact_target_info: {
    #           contact_id: "SsmContactsArn",
    #           is_essential: false, # required
    #         },
    #       }
    #
    # @!attribute [rw] channel_target_info
    #   Information about the contact channel Incident Manager is engaging.
    #   @return [Types::ChannelTargetInfo]
    #
    # @!attribute [rw] contact_target_info
    #   Information about the contact that Incident Manager is engaging.
    #   @return [Types::ContactTargetInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/Target AWS API Documentation
    #
    class Target < Struct.new(
      :channel_target_info,
      :contact_target_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service Quotas requirement to identify originating service
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service Quotas requirement to identify originating quota
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of between two set times
    #
    # @note When making an API call, you may pass TimeRange
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now,
    #         end_time: Time.now,
    #       }
    #
    # @!attribute [rw] start_time
    #   The start of the time range.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time range.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key of the tag that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateContactChannelRequest
    #   data as a hash:
    #
    #       {
    #         contact_channel_id: "SsmContactsArn", # required
    #         name: "ChannelName",
    #         delivery_address: {
    #           simple_address: "SimpleAddress",
    #         },
    #       }
    #
    # @!attribute [rw] contact_channel_id
    #   The Amazon Resource Name (ARN) of the contact channel you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact channel.
    #   @return [String]
    #
    # @!attribute [rw] delivery_address
    #   The details that Incident Manager uses when trying to engage the
    #   contact channel.
    #   @return [Types::ContactChannelAddress]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UpdateContactChannelRequest AWS API Documentation
    #
    class UpdateContactChannelRequest < Struct.new(
      :contact_channel_id,
      :name,
      :delivery_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UpdateContactChannelResult AWS API Documentation
    #
    class UpdateContactChannelResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "SsmContactsArn", # required
    #         display_name: "ContactName",
    #         plan: {
    #           stages: [ # required
    #             {
    #               duration_in_minutes: 1, # required
    #               targets: [ # required
    #                 {
    #                   channel_target_info: {
    #                     contact_channel_id: "SsmContactsArn", # required
    #                     retry_interval_in_minutes: 1,
    #                   },
    #                   contact_target_info: {
    #                     contact_id: "SsmContactsArn",
    #                     is_essential: false, # required
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] contact_id
    #   The Amazon Resource Name (ARN) of the contact or escalation plan
    #   you're updating.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The full name of the contact or escalation plan.
    #   @return [String]
    #
    # @!attribute [rw] plan
    #   A list of stages. A contact has an engagement plan with stages for
    #   specified contact channels. An escalation plan uses these stages to
    #   contact specified contacts.
    #   @return [Types::Plan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UpdateContactRequest AWS API Documentation
    #
    class UpdateContactRequest < Struct.new(
      :contact_id,
      :display_name,
      :plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UpdateContactResult AWS API Documentation
    #
    class UpdateContactResult < Aws::EmptyStructure; end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request failed validation
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields that caused the error
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about which field caused the exception.
    #
    # @!attribute [rw] name
    #   The name of the field that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Information about what caused the field to cause an exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
