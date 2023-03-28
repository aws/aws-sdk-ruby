# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSMContacts
  module Types

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
    #   A 6-digit code used to acknowledge the page.
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
    #   Type of the resource in use
    #   @return [String]
    #
    # @!attribute [rw] dependent_entities
    #   List of dependent entities containing information on relation type
    #   and resourceArns linked to the resource in use
    #   @return [Array<Types::DependentEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :dependent_entities)
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

    # Information about when an on-call shift begins and ends.
    #
    # @!attribute [rw] start
    #   Information about when the on-call rotation shift begins.
    #   @return [Types::HandOffTime]
    #
    # @!attribute [rw] end
    #   Information about when the on-call rotation shift ends.
    #   @return [Types::HandOffTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CoverageTime AWS API Documentation
    #
    class CoverageTime < Struct.new(
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] rotation_id
    #   The Amazon Resource Name (ARN) of the rotation to create an override
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] new_contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts to replace those in
    #   the current on-call rotation with.
    #
    #   If you want to include any current team members in the override
    #   shift, you must include their ARNs in the new contact ID list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The date and time when the override goes into effect.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time when the override ends.
    #   @return [Time]
    #
    # @!attribute [rw] idempotency_token
    #   A token that ensures that the operation is called only once with the
    #   specified details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateRotationOverrideRequest AWS API Documentation
    #
    class CreateRotationOverrideRequest < Struct.new(
      :rotation_id,
      :new_contact_ids,
      :start_time,
      :end_time,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_override_id
    #   The Amazon Resource Name (ARN) of the created rotation override.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateRotationOverrideResult AWS API Documentation
    #
    class CreateRotationOverrideResult < Struct.new(
      :rotation_override_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the rotation.
    #   @return [String]
    #
    # @!attribute [rw] contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts to add to the
    #   rotation.
    #
    #   The order that you list the contacts in is their shift order in the
    #   rotation schedule. To change the order of the contact's shifts, use
    #   the UpdateRotation operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The date and time that the rotation goes into effect.
    #   @return [Time]
    #
    # @!attribute [rw] time_zone_id
    #   The time zone to base the rotation’s activity on in Internet
    #   Assigned Numbers Authority (IANA) format. For example:
    #   "America/Los\_Angeles", "UTC", or "Asia/Seoul". For more
    #   information, see the [Time Zone Database][1] on the IANA website.
    #
    #   <note markdown="1"> Designators for time zones that don’t support Daylight Savings Time
    #   rules, such as Pacific Standard Time (PST) and Pacific Daylight Time
    #   (PDT), are not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] recurrence
    #   Information about the rule that specifies when a shift's team
    #   members rotate.
    #   @return [Types::RecurrenceSettings]
    #
    # @!attribute [rw] tags
    #   Optional metadata to assign to the rotation. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For more information, see [Tagging Incident Manager
    #   resources][1] in the *Incident Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/incident-manager/latest/userguide/tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] idempotency_token
    #   A token that ensures that the operation is called only once with the
    #   specified details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateRotationRequest AWS API Documentation
    #
    class CreateRotationRequest < Struct.new(
      :name,
      :contact_ids,
      :start_time,
      :time_zone_id,
      :recurrence,
      :tags,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_arn
    #   The Amazon Resource Name (ARN) of the created rotation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/CreateRotationResult AWS API Documentation
    #
    class CreateRotationResult < Struct.new(
      :rotation_arn)
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

    # @!attribute [rw] rotation_id
    #   The Amazon Resource Name (ARN) of the rotation that was overridden.
    #   @return [String]
    #
    # @!attribute [rw] rotation_override_id
    #   The Amazon Resource Name (ARN) of the on-call rotation override to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteRotationOverrideRequest AWS API Documentation
    #
    class DeleteRotationOverrideRequest < Struct.new(
      :rotation_id,
      :rotation_override_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteRotationOverrideResult AWS API Documentation
    #
    class DeleteRotationOverrideResult < Aws::EmptyStructure; end

    # @!attribute [rw] rotation_id
    #   The Amazon Resource Name (ARN) of the on-call rotation to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteRotationRequest AWS API Documentation
    #
    class DeleteRotationRequest < Struct.new(
      :rotation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DeleteRotationResult AWS API Documentation
    #
    class DeleteRotationResult < Aws::EmptyStructure; end

    # Information about a resource that another resource is related to or
    # depends on.
    #
    # For example, if a contact is a member of a rotation, the rotation is a
    # dependent entity of the contact.
    #
    # @!attribute [rw] relation_type
    #   The type of relationship between one resource and the other resource
    #   that it is related to or depends on.
    #   @return [String]
    #
    # @!attribute [rw] dependent_resource_ids
    #   The Amazon Resource Names (ARNs) of the dependent resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/DependentEntity AWS API Documentation
    #
    class DependentEntity < Struct.new(
      :relation_type,
      :dependent_resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] rotation_id
    #   The Amazon Resource Name (ARN) of the overridden rotation to
    #   retrieve information about.
    #   @return [String]
    #
    # @!attribute [rw] rotation_override_id
    #   The Amazon Resource Name (ARN) of the on-call rotation override to
    #   retrieve information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetRotationOverrideRequest AWS API Documentation
    #
    class GetRotationOverrideRequest < Struct.new(
      :rotation_id,
      :rotation_override_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_override_id
    #   The Amazon Resource Name (ARN) of the override to an on-call
    #   rotation.
    #   @return [String]
    #
    # @!attribute [rw] rotation_arn
    #   The Amazon Resource Name (ARN) of the on-call rotation that was
    #   overridden.
    #   @return [String]
    #
    # @!attribute [rw] new_contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts assigned to the
    #   override of the on-call rotation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The date and time when the override goes into effect.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time when the override ends.
    #   @return [Time]
    #
    # @!attribute [rw] create_time
    #   The date and time when the override was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetRotationOverrideResult AWS API Documentation
    #
    class GetRotationOverrideResult < Struct.new(
      :rotation_override_id,
      :rotation_arn,
      :new_contact_ids,
      :start_time,
      :end_time,
      :create_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_id
    #   The Amazon Resource Name (ARN) of the on-call rotation to retrieve
    #   information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetRotationRequest AWS API Documentation
    #
    class GetRotationRequest < Struct.new(
      :rotation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_arn
    #   The Amazon Resource Name (ARN) of the on-call rotation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the on-call rotation.
    #   @return [String]
    #
    # @!attribute [rw] contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts assigned to the
    #   on-call rotation team.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The specified start time for the on-call rotation.
    #   @return [Time]
    #
    # @!attribute [rw] time_zone_id
    #   The time zone that the rotation’s activity is based on, in Internet
    #   Assigned Numbers Authority (IANA) format.
    #   @return [String]
    #
    # @!attribute [rw] recurrence
    #   Specifies how long a rotation lasts before restarting at the
    #   beginning of the shift order.
    #   @return [Types::RecurrenceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/GetRotationResult AWS API Documentation
    #
    class GetRotationResult < Struct.new(
      :rotation_arn,
      :name,
      :contact_ids,
      :start_time,
      :time_zone_id,
      :recurrence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about when an on-call rotation shift begins or ends.
    #
    # @!attribute [rw] hour_of_day
    #   The hour when an on-call rotation shift begins or ends.
    #   @return [Integer]
    #
    # @!attribute [rw] minute_of_hour
    #   The minute when an on-call rotation shift begins or ends.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/HandOffTime AWS API Documentation
    #
    class HandOffTime < Struct.new(
      :hour_of_day,
      :minute_of_hour)
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

    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] page_id
    #   The Amazon Resource Name (ARN) of the contact engaged for the
    #   incident.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPageResolutionsRequest AWS API Documentation
    #
    class ListPageResolutionsRequest < Struct.new(
      :next_token,
      :page_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] page_resolutions
    #   Information about the resolution for an engagement.
    #   @return [Array<Types::ResolutionContact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPageResolutionsResult AWS API Documentation
    #
    class ListPageResolutionsResult < Struct.new(
      :next_token,
      :page_resolutions)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] rotation_start_time
    #   The date and time a rotation would begin. The first shift is
    #   calculated from this date and time.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   Used to filter the range of calculated shifts before sending the
    #   response back to the user.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time a rotation shift would end.
    #   @return [Time]
    #
    # @!attribute [rw] members
    #   The contacts that would be assigned to a rotation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] time_zone_id
    #   The time zone the rotation’s activity would be based on, in Internet
    #   Assigned Numbers Authority (IANA) format. For example:
    #   "America/Los\_Angeles", "UTC", or "Asia/Seoul".
    #   @return [String]
    #
    # @!attribute [rw] recurrence
    #   Information about how long a rotation would last before restarting
    #   at the beginning of the shift order.
    #   @return [Types::RecurrenceSettings]
    #
    # @!attribute [rw] overrides
    #   Information about changes that would be made in a rotation override.
    #   @return [Array<Types::PreviewOverride>]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. This token is used to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that can be specified in a subsequent call to get
    #   the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPreviewRotationShiftsRequest AWS API Documentation
    #
    class ListPreviewRotationShiftsRequest < Struct.new(
      :rotation_start_time,
      :start_time,
      :end_time,
      :members,
      :time_zone_id,
      :recurrence,
      :overrides,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_shifts
    #   Details about a rotation shift, including times, types, and
    #   contacts.
    #   @return [Array<Types::RotationShift>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. This token is used to
    #   get the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListPreviewRotationShiftsResult AWS API Documentation
    #
    class ListPreviewRotationShiftsResult < Struct.new(
      :rotation_shifts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_id
    #   The Amazon Resource Name (ARN) of the rotation to retrieve
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time for the beginning of a time range for listing
    #   overrides.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time for the end of a time range for listing overrides.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListRotationOverridesRequest AWS API Documentation
    #
    class ListRotationOverridesRequest < Struct.new(
      :rotation_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_overrides
    #   A list of rotation overrides in the specified time range.
    #   @return [Array<Types::RotationOverride>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListRotationOverridesResult AWS API Documentation
    #
    class ListRotationOverridesResult < Struct.new(
      :rotation_overrides,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_id
    #   The Amazon Resource Name (ARN) of the rotation to retrieve shift
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time for the beginning of the time range to list shifts
    #   for.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time for the end of the time range to list shifts for.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListRotationShiftsRequest AWS API Documentation
    #
    class ListRotationShiftsRequest < Struct.new(
      :rotation_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_shifts
    #   Information about shifts that meet the filter criteria.
    #   @return [Array<Types::RotationShift>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListRotationShiftsResult AWS API Documentation
    #
    class ListRotationShiftsResult < Struct.new(
      :rotation_shifts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rotation_name_prefix
    #   A filter to include rotations in list results based on their common
    #   prefix. For example, entering prod returns a list of all rotation
    #   names that begin with `prod`, such as `production` and `prod-1`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListRotationsRequest AWS API Documentation
    #
    class ListRotationsRequest < Struct.new(
      :rotation_name_prefix,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] rotations
    #   Information about rotations that meet the filter criteria.
    #   @return [Array<Types::Rotation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ListRotationsResult AWS API Documentation
    #
    class ListRotationsResult < Struct.new(
      :next_token,
      :rotations)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Information about on-call rotations that recur monthly.
    #
    # @!attribute [rw] day_of_month
    #   The day of the month when monthly recurring on-call rotations begin.
    #   @return [Integer]
    #
    # @!attribute [rw] hand_off_time
    #   The time of day when a monthly recurring on-call shift rotation
    #   begins.
    #   @return [Types::HandOffTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/MonthlySetting AWS API Documentation
    #
    class MonthlySetting < Struct.new(
      :day_of_month,
      :hand_off_time)
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

    # Information about the stages and on-call rotation teams associated
    # with an escalation plan or engagement plan.
    #
    # @!attribute [rw] stages
    #   A list of stages that the escalation plan or engagement plan uses to
    #   engage contacts and contact methods.
    #   @return [Array<Types::Stage>]
    #
    # @!attribute [rw] rotation_ids
    #   The Amazon Resource Names (ARNs) of the on-call rotations associated
    #   with the plan.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/Plan AWS API Documentation
    #
    class Plan < Struct.new(
      :stages,
      :rotation_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about contacts and times that an on-call override
    # replaces.
    #
    # @!attribute [rw] new_members
    #   Information about contacts to add to an on-call rotation override.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   Information about the time a rotation override would begin.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Information about the time a rotation override would end.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/PreviewOverride AWS API Documentation
    #
    class PreviewOverride < Struct.new(
      :new_members,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Information about when an on-call rotation is in effect and how long
    # the rotation period lasts.
    #
    # @!attribute [rw] monthly_settings
    #   Information about on-call rotations that recur monthly.
    #   @return [Array<Types::MonthlySetting>]
    #
    # @!attribute [rw] weekly_settings
    #   Information about on-call rotations that recur weekly.
    #   @return [Array<Types::WeeklySetting>]
    #
    # @!attribute [rw] daily_settings
    #   Information about on-call rotations that recur daily.
    #   @return [Array<Types::HandOffTime>]
    #
    # @!attribute [rw] number_of_on_calls
    #   The number of contacts, or shift team members designated to be on
    #   call concurrently during a shift. For example, in an on-call
    #   schedule containing ten contacts, a value of `2` designates that two
    #   of them are on call at any given time.
    #   @return [Integer]
    #
    # @!attribute [rw] shift_coverages
    #   Information about the days of the week included in on-call rotation
    #   coverage.
    #   @return [Hash<String,Array<Types::CoverageTime>>]
    #
    # @!attribute [rw] recurrence_multiplier
    #   The number of days, weeks, or months a single rotation lasts.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/RecurrenceSettings AWS API Documentation
    #
    class RecurrenceSettings < Struct.new(
      :monthly_settings,
      :weekly_settings,
      :daily_settings,
      :number_of_on_calls,
      :shift_coverages,
      :recurrence_multiplier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the engagement resolution steps. The resolution
    # starts from the first contact, which can be an escalation plan, then
    # resolves to an on-call rotation, and finally to a personal contact.
    #
    # The `ResolutionContact` structure describes the information for each
    # node or step in that process. It contains information about different
    # contact types, such as the escalation, rotation, and personal
    # contacts.
    #
    # @!attribute [rw] contact_arn
    #   The Amazon Resource Name (ARN) of a contact in the engagement
    #   resolution process.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of contact for a resolution step.
    #   @return [String]
    #
    # @!attribute [rw] stage_index
    #   The stage in the escalation plan that resolves to this contact.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ResolutionContact AWS API Documentation
    #
    class ResolutionContact < Struct.new(
      :contact_arn,
      :type,
      :stage_index)
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

    # Information about a rotation in an on-call schedule.
    #
    # @!attribute [rw] rotation_arn
    #   The Amazon Resource Name (ARN) of the rotation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rotation.
    #   @return [String]
    #
    # @!attribute [rw] contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts assigned to the
    #   rotation team.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The date and time the rotation becomes active.
    #   @return [Time]
    #
    # @!attribute [rw] time_zone_id
    #   The time zone the rotation’s activity is based on, in Internet
    #   Assigned Numbers Authority (IANA) format. For example:
    #   "America/Los\_Angeles", "UTC", or "Asia/Seoul".
    #   @return [String]
    #
    # @!attribute [rw] recurrence
    #   Information about when an on-call rotation is in effect and how long
    #   the rotation period lasts.
    #   @return [Types::RecurrenceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/Rotation AWS API Documentation
    #
    class Rotation < Struct.new(
      :rotation_arn,
      :name,
      :contact_ids,
      :start_time,
      :time_zone_id,
      :recurrence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an override specified for an on-call rotation.
    #
    # @!attribute [rw] rotation_override_id
    #   The Amazon Resource Name (ARN) of the override to an on-call
    #   rotation.
    #   @return [String]
    #
    # @!attribute [rw] new_contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts assigned to the
    #   override of the on-call rotation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The time a rotation override begins.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time a rotation override ends.
    #   @return [Time]
    #
    # @!attribute [rw] create_time
    #   The time a rotation override was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/RotationOverride AWS API Documentation
    #
    class RotationOverride < Struct.new(
      :rotation_override_id,
      :new_contact_ids,
      :start_time,
      :end_time,
      :create_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a shift that belongs to an on-call rotation.
    #
    # @!attribute [rw] contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts who are part of the
    #   shift rotation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The time a shift rotation begins.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time a shift rotation ends.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of shift rotation.
    #   @return [String]
    #
    # @!attribute [rw] shift_details
    #   Additional information about an on-call rotation shift.
    #   @return [Types::ShiftDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/RotationShift AWS API Documentation
    #
    class RotationShift < Struct.new(
      :contact_ids,
      :start_time,
      :end_time,
      :type,
      :shift_details)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Information about overrides to an on-call rotation shift.
    #
    # @!attribute [rw] overridden_contact_ids
    #   The Amazon Resources Names (ARNs) of the contacts who were replaced
    #   in a shift when an override was created. If the override is deleted,
    #   these contacts are restored to the shift.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/ShiftDetails AWS API Documentation
    #
    class ShiftDetails < Struct.new(
      :overridden_contact_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set amount of time that an escalation plan or engagement plan
    # engages the specified contacts or contact methods.
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

    # @!attribute [rw] rotation_id
    #   The Amazon Resource Name (ARN) of the rotation to update.
    #   @return [String]
    #
    # @!attribute [rw] contact_ids
    #   The Amazon Resource Names (ARNs) of the contacts to include in the
    #   updated rotation.
    #
    #   The order in which you list the contacts is their shift order in the
    #   rotation schedule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The date and time the rotation goes into effect.
    #   @return [Time]
    #
    # @!attribute [rw] time_zone_id
    #   The time zone to base the updated rotation’s activity on, in
    #   Internet Assigned Numbers Authority (IANA) format. For example:
    #   "America/Los\_Angeles", "UTC", or "Asia/Seoul". For more
    #   information, see the [Time Zone Database][1] on the IANA website.
    #
    #   <note markdown="1"> Designators for time zones that don’t support Daylight Savings Time
    #   Rules, such as Pacific Standard Time (PST) and Pacific Daylight Time
    #   (PDT), aren't supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] recurrence
    #   Information about how long the updated rotation lasts before
    #   restarting at the beginning of the shift order.
    #   @return [Types::RecurrenceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UpdateRotationRequest AWS API Documentation
    #
    class UpdateRotationRequest < Struct.new(
      :rotation_id,
      :contact_ids,
      :start_time,
      :time_zone_id,
      :recurrence)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/UpdateRotationResult AWS API Documentation
    #
    class UpdateRotationResult < Aws::EmptyStructure; end

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

    # Information about rotations that recur weekly.
    #
    # @!attribute [rw] day_of_week
    #   The day of the week when weekly recurring on-call shift rotations
    #   begins.
    #   @return [String]
    #
    # @!attribute [rw] hand_off_time
    #   The time of day when a weekly recurring on-call shift rotation
    #   begins.
    #   @return [Types::HandOffTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03/WeeklySetting AWS API Documentation
    #
    class WeeklySetting < Struct.new(
      :day_of_week,
      :hand_off_time)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
