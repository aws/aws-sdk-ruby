# frozen_string_literal: true

# This is generated code!

module Aws::SSMContacts
  # This module contains the types returned by client operations.
  module Types

    module AcceptCodeValidation
      IGNORE = 'IGNORE'
      ENFORCE = 'ENFORCE'
    end

    # @!attribute page_id
    #   <p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>
    #   @return [String]
    # @!attribute contact_channel_id
    #   <p>The ARN of the contact channel.</p>
    #   @return [String]
    # @!attribute accept_type
    #   <p>The type indicates if the page was <code>DELIVERED</code> or <code>READ</code>.</p>
    #   @return [String]
    # @!attribute note
    #   <p>Information provided by the user when the user acknowledges the page.</p>
    #   @return [String]
    # @!attribute accept_code
    #   <p>A 6-digit code used to acknowledge the page.</p>
    #   @return [String]
    # @!attribute accept_code_validation
    #   <p>An optional field that Incident Manager uses to <code>ENFORCE</code>
    #               <code>AcceptCode</code> validation when acknowledging an page. Acknowledgement can occur by
    #            replying to a page, or when entering the AcceptCode in the console. Enforcing AcceptCode
    #            validation causes Incident Manager to verify that the code entered by the user matches the
    #            code sent by Incident Manager with the page.</p>
    #            <p>Incident Manager can also <code>IGNORE</code>
    #               <code>AcceptCode</code> validation. Ignoring <code>AcceptCode</code> validation causes
    #            Incident Manager to accept any value entered for the <code>AcceptCode</code>.</p>
    #   @return [String]
    class AcceptPageRequest < Struct.new(
      :page_id,
      :contact_channel_id,
      :accept_type,
      :note,
      :accept_code,
      :accept_code_validation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AcceptPageResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AcceptType
      DELIVERED = 'DELIVERED'
      READ = 'READ'
    end

    # <p>You don't have sufficient access to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #   @return [String]
    # @!attribute activation_code
    #   <p>The code sent to the contact channel when it was created in the contact.</p>
    #   @return [String]
    class ActivateContactChannelRequest < Struct.new(
      :contact_channel_id,
      :activation_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class ActivateContactChannelResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ActivationStatus
      ACTIVATED = 'ACTIVATED'
      NOT_ACTIVATED = 'NOT_ACTIVATED'
    end

    # <p>Information about the contact channel that Incident Manager uses to engage the
    #          contact.</p>
    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #   @return [String]
    # @!attribute retry_interval_in_minutes
    #   <p>The number of minutes to wait to retry sending engagement in the case the engagement
    #            initially fails.</p>
    #   @return [Integer]
    class ChannelTargetInfo < Struct.new(
      :contact_channel_id,
      :retry_interval_in_minutes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ChannelType
      SMS = 'SMS'
      VOICE = 'VOICE'
      EMAIL = 'EMAIL'
    end

    # <p>Updating or deleting a resource causes an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   Identifier of the resource in use
    #   @return [String]
    # @!attribute resource_type
    #   Type of the resource in use
    #   @return [String]
    # @!attribute dependent_entities
    #   List of dependent entities containing information on relation type and resourceArns linked to the resource in use
    #   @return [Array<Types::DependentEntity>]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :dependent_entities,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A personal contact or escalation plan that Incident Manager engages during an
    #          incident.</p>
    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The unique and identifiable alias of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The full name of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Refers to the type of contact. A single contact is type <code>PERSONAL</code> and an
    #            escalation plan is type <code>ESCALATION</code>.</p>
    #   @return [String]
    class Contact < Struct.new(
      :contact_arn,
      :alias,
      :display_name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The method that Incident Manager uses to engage a contact.</p>
    # @!attribute contact_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #   @return [String]
    # @!attribute contact_arn
    #   <p>The ARN of the contact that contains the contact channel.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the contact channel.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the contact channel. Incident Manager supports three contact methods:</p>
    #            <ul>
    #               <li>
    #                  <p>SMS</p>
    #               </li>
    #               <li>
    #                  <p>VOICE</p>
    #               </li>
    #               <li>
    #                  <p>EMAIL</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel.</p>
    #   @return [Types::ContactChannelAddress]
    # @!attribute activation_status
    #   <p>A Boolean value describing if the contact channel has been activated or not. If the
    #            contact channel isn't activated, Incident Manager can't engage the contact through it.</p>
    #   @return [String]
    class ContactChannel < Struct.new(
      :contact_channel_arn,
      :contact_arn,
      :name,
      :type,
      :delivery_address,
      :activation_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details that Incident Manager uses when trying to engage the contact channel.</p>
    # @!attribute simple_address
    #   <p>The format is dependent on the type of the contact channel. The following are the
    #            expected formats:</p>
    #            <ul>
    #               <li>
    #                  <p>SMS - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>VOICE - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>EMAIL - any standard email format</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ContactChannelAddress < Struct.new(
      :simple_address,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The contact that Incident Manager is engaging during an incident.</p>
    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact.</p>
    #   @return [String]
    # @!attribute is_essential
    #   <p>A Boolean value determining if the contact's acknowledgement stops the progress of
    #            stages in the plan.</p>
    #   @return [Boolean]
    class ContactTargetInfo < Struct.new(
      :contact_id,
      :is_essential,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ContactType
      PERSONAL = 'PERSONAL'
      ESCALATION = 'ESCALATION'
      ONCALL_SCHEDULE = 'ONCALL_SCHEDULE'
    end

    # <p>Information about when an on-call shift begins and ends.</p>
    # @!attribute start
    #   <p>Information about when the on-call rotation shift begins.</p>
    #   @return [Types::HandOffTime]
    # @!attribute end
    #   <p>Information about when the on-call rotation shift ends.</p>
    #   @return [Types::HandOffTime]
    class CoverageTime < Struct.new(
      :start,
      :end,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact you are adding the contact channel
    #            to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the contact channel.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Incident Manager supports three types of contact channels:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VOICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel. The format
    #            is dependent on the type of the contact channel. The following are the expected
    #            formats:</p>
    #            <ul>
    #               <li>
    #                  <p>SMS - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>VOICE - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>EMAIL - any standard email format</p>
    #               </li>
    #            </ul>
    #   @return [Types::ContactChannelAddress]
    # @!attribute defer_activation
    #   <p>If you want to activate the channel at a later time, you can choose to defer activation.
    #            Incident Manager can't engage your contact channel until it has been activated.</p>
    #   @return [Boolean]
    # @!attribute idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    #   @return [String]
    class CreateContactChannelRequest < Struct.new(
      :contact_id,
      :name,
      :type,
      :delivery_address,
      :defer_activation,
      :idempotency_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #   @return [String]
    class CreateContactChannelResult < Struct.new(
      :contact_channel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The short name to quickly identify a contact or escalation plan. The contact alias must
    #            be unique and identifiable.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The full name of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute type
    #   <p>To create an escalation plan use <code>ESCALATION</code>. To create a contact use
    #               <code>PERSONAL</code>.</p>
    #   @return [String]
    # @!attribute plan
    #   <p>A list of stages. A contact has an engagement plan with stages that contact specified
    #            contact channels. An escalation plan uses stages that contact specified contacts.</p>
    #   @return [Types::Plan]
    # @!attribute tags
    #   <p>Adds a tag to the target. You can only tag resources created in the first Region of your
    #            replication set.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    #   @return [String]
    class CreateContactRequest < Struct.new(
      :alias,
      :display_name,
      :type,
      :plan,
      :tags,
      :idempotency_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the created contact or escalation plan.</p>
    #   @return [String]
    class CreateContactResult < Struct.new(
      :contact_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_id
    #   <p>The Amazon Resource Name (ARN) of the rotation to create an override for.</p>
    #   @return [String]
    # @!attribute new_contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts to replace those in the current on-call
    #            rotation with.</p>
    #            <p>If you want to include any current team members in the override shift, you must include
    #            their ARNs in the new contact ID list.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The date and time when the override goes into effect.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time when the override ends.</p>
    #   @return [Time]
    # @!attribute idempotency_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #            details.</p>
    #   @return [String]
    class CreateRotationOverrideRequest < Struct.new(
      :rotation_id,
      :new_contact_ids,
      :start_time,
      :end_time,
      :idempotency_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_override_id
    #   <p>The Amazon Resource Name (ARN) of the created rotation override.</p>
    #   @return [String]
    class CreateRotationOverrideResult < Struct.new(
      :rotation_override_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the rotation.</p>
    #   @return [String]
    # @!attribute contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts to add to the rotation.</p>
    #            <p>The order that you list the contacts in is their shift order in the rotation schedule.
    #            To change the order of the contact's shifts, use the <a>UpdateRotation</a>
    #            operation.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The date and time that the rotation goes into effect.</p>
    #   @return [Time]
    # @!attribute time_zone_id
    #   <p>The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority
    #            (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more
    #            information, see the <a href="https://www.iana.org/time-zones">Time Zone
    #               Database</a> on the IANA website.</p>
    #            <note>
    #               <p>Designators for time zones that don’t support Daylight Savings Time rules, such as
    #               Pacific Standard Time (PST) and Pacific Daylight Time (PDT), are not supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute recurrence
    #   <p>Information about the rule that specifies when a shift's team members rotate.</p>
    #   @return [Types::RecurrenceSettings]
    # @!attribute tags
    #   <p>Optional metadata to assign to the rotation. Tags enable you to categorize a resource in
    #            different ways, such as by purpose, owner, or environment. For more information, see <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/tagging.html">Tagging
    #               Incident Manager resources</a> in the <i>Incident Manager User
    #               Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute idempotency_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #            details.</p>
    #   @return [String]
    class CreateRotationRequest < Struct.new(
      :name,
      :contact_ids,
      :start_time,
      :time_zone_id,
      :recurrence,
      :tags,
      :idempotency_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_arn
    #   <p>The Amazon Resource Name (ARN) of the created rotation.</p>
    #   @return [String]
    class CreateRotationResult < Struct.new(
      :rotation_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The operation failed to due an encryption key error.</p>
    # @!attribute message
    #   @return [String]
    class DataEncryptionException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DayOfWeek
      MON = 'MON'
      TUE = 'TUE'
      WED = 'WED'
      THU = 'THU'
      FRI = 'FRI'
      SAT = 'SAT'
      SUN = 'SUN'
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you're deactivating.</p>
    #   @return [String]
    class DeactivateContactChannelRequest < Struct.new(
      :contact_channel_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeactivateContactChannelResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #   @return [String]
    class DeleteContactChannelRequest < Struct.new(
      :contact_channel_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteContactChannelResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact that you're deleting.</p>
    #   @return [String]
    class DeleteContactRequest < Struct.new(
      :contact_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteContactResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_id
    #   <p>The Amazon Resource Name (ARN) of the rotation that was overridden.</p>
    #   @return [String]
    # @!attribute rotation_override_id
    #   <p>The Amazon Resource Name (ARN) of the on-call rotation override to delete.</p>
    #   @return [String]
    class DeleteRotationOverrideRequest < Struct.new(
      :rotation_id,
      :rotation_override_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteRotationOverrideResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_id
    #   <p>The Amazon Resource Name (ARN) of the on-call rotation to delete.</p>
    #   @return [String]
    class DeleteRotationRequest < Struct.new(
      :rotation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteRotationResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a resource that another resource is related to or depends on.</p>
    #          <p>For example, if a contact is a member of a rotation, the rotation is a dependent entity
    #          of the contact.</p>
    # @!attribute relation_type
    #   <p>The type of relationship between one resource and the other resource that it is related
    #            to or depends on.</p>
    #   @return [String]
    # @!attribute dependent_resource_ids
    #   <p>The Amazon Resource Names (ARNs) of the dependent resources.</p>
    #   @return [Array<String>]
    class DependentEntity < Struct.new(
      :relation_type,
      :dependent_resource_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement you want the details of.</p>
    #   @return [String]
    class DescribeEngagementRequest < Struct.new(
      :engagement_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the escalation plan or contacts involved in the engagement.</p>
    #   @return [String]
    # @!attribute engagement_arn
    #   <p>The ARN of the engagement.</p>
    #   @return [String]
    # @!attribute sender
    #   <p>The user that started the engagement.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The secure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The secure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>
    #   @return [String]
    # @!attribute public_subject
    #   <p>The insecure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #   @return [String]
    # @!attribute public_content
    #   <p>The insecure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #   @return [String]
    # @!attribute incident_id
    #   <p>The ARN of the incident in which the engagement occurred.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time that the engagement started.</p>
    #   @return [Time]
    # @!attribute stop_time
    #   <p>The time that the engagement ended.</p>
    #   @return [Time]
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
      :stop_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute page_id
    #   <p>The ID of the engagement to a contact channel.</p>
    #   @return [String]
    class DescribePageRequest < Struct.new(
      :page_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute page_arn
    #   <p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>
    #   @return [String]
    # @!attribute engagement_arn
    #   <p>The ARN of the engagement that engaged the contact channel.</p>
    #   @return [String]
    # @!attribute contact_arn
    #   <p>The ARN of the contact that was engaged.</p>
    #   @return [String]
    # @!attribute sender
    #   <p>The user that started the engagement.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The secure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The secure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>
    #   @return [String]
    # @!attribute public_subject
    #   <p>The insecure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #   @return [String]
    # @!attribute public_content
    #   <p>The insecure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #   @return [String]
    # @!attribute incident_id
    #   <p>The ARN of the incident that engaged the contact channel.</p>
    #   @return [String]
    # @!attribute sent_time
    #   <p>The time the engagement was sent to the contact channel.</p>
    #   @return [Time]
    # @!attribute read_time
    #   <p>The time that the contact channel acknowledged the engagement.</p>
    #   @return [Time]
    # @!attribute delivery_time
    #   <p>The time that the contact channel received the engagement.</p>
    #   @return [Time]
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
      :delivery_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Incident Manager reaching out to a contact or escalation plan to engage contact during an
    #          incident.</p>
    # @!attribute engagement_arn
    #   <p>The Amazon Resource Name (ARN) of the engagement.</p>
    #   @return [String]
    # @!attribute contact_arn
    #   <p>The ARN of the escalation plan or contact that Incident Manager is engaging.</p>
    #   @return [String]
    # @!attribute sender
    #   <p>The user that started the engagement.</p>
    #   @return [String]
    # @!attribute incident_id
    #   <p>The ARN of the incident that's engaging the contact.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time that the engagement began.</p>
    #   @return [Time]
    # @!attribute stop_time
    #   <p>The time that the engagement ended.</p>
    #   @return [Time]
    class Engagement < Struct.new(
      :engagement_arn,
      :contact_arn,
      :sender,
      :incident_id,
      :start_time,
      :stop_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you want information about.</p>
    #   @return [String]
    class GetContactChannelRequest < Struct.new(
      :contact_channel_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact that the channel belongs to.</p>
    #   @return [String]
    # @!attribute contact_channel_arn
    #   <p>The ARN of the contact channel.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the contact channel</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of contact channel. The type is <code>SMS</code>, <code>VOICE</code>, or
    #               <code>EMAIL</code>.</p>
    #   @return [String]
    # @!attribute delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel.</p>
    #   @return [Types::ContactChannelAddress]
    # @!attribute activation_status
    #   <p>A Boolean value indicating if the contact channel has been activated or not.</p>
    #   @return [String]
    class GetContactChannelResult < Struct.new(
      :contact_arn,
      :contact_channel_arn,
      :name,
      :type,
      :delivery_address,
      :activation_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #   @return [String]
    class GetContactPolicyRequest < Struct.new(
      :contact_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>Details about the resource policy attached to the contact or escalation plan.</p>
    #   @return [String]
    class GetContactPolicyResult < Struct.new(
      :contact_arn,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #   @return [String]
    class GetContactRequest < Struct.new(
      :contact_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias of the contact or escalation plan. The alias is unique and
    #            identifiable.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The full name of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of contact, either <code>PERSONAL</code> or <code>ESCALATION</code>.</p>
    #   @return [String]
    # @!attribute plan
    #   <p>Details about the specific timing or stages and targets of the escalation plan or
    #            engagement plan.</p>
    #   @return [Types::Plan]
    class GetContactResult < Struct.new(
      :contact_arn,
      :alias,
      :display_name,
      :type,
      :plan,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_id
    #   <p>The Amazon Resource Name (ARN) of the overridden rotation to retrieve information
    #            about.</p>
    #   @return [String]
    # @!attribute rotation_override_id
    #   <p>The Amazon Resource Name (ARN) of the on-call rotation override to retrieve information
    #            about.</p>
    #   @return [String]
    class GetRotationOverrideRequest < Struct.new(
      :rotation_id,
      :rotation_override_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_override_id
    #   <p>The Amazon Resource Name (ARN) of the override to an on-call rotation.</p>
    #   @return [String]
    # @!attribute rotation_arn
    #   <p>The Amazon Resource Name (ARN) of the on-call rotation that was overridden.</p>
    #   @return [String]
    # @!attribute new_contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts assigned to the override of the on-call
    #            rotation.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The date and time when the override goes into effect.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time when the override ends.</p>
    #   @return [Time]
    # @!attribute create_time
    #   <p>The date and time when the override was created.</p>
    #   @return [Time]
    class GetRotationOverrideResult < Struct.new(
      :rotation_override_id,
      :rotation_arn,
      :new_contact_ids,
      :start_time,
      :end_time,
      :create_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_id
    #   <p>The Amazon Resource Name (ARN) of the on-call rotation to retrieve information
    #            about.</p>
    #   @return [String]
    class GetRotationRequest < Struct.new(
      :rotation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_arn
    #   <p>The Amazon Resource Name (ARN) of the on-call rotation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the on-call rotation.</p>
    #   @return [String]
    # @!attribute contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts assigned to the on-call rotation
    #            team.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The specified start time for the on-call rotation.</p>
    #   @return [Time]
    # @!attribute time_zone_id
    #   <p>The time zone that the rotation’s activity is based on, in Internet Assigned Numbers
    #            Authority (IANA) format.</p>
    #   @return [String]
    # @!attribute recurrence
    #   <p>Specifies how long a rotation lasts before restarting at the beginning of the shift
    #            order.</p>
    #   @return [Types::RecurrenceSettings]
    class GetRotationResult < Struct.new(
      :rotation_arn,
      :name,
      :contact_ids,
      :start_time,
      :time_zone_id,
      :recurrence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about when an on-call rotation shift begins or ends.</p>
    # @!attribute hour_of_day
    #   <p>The hour when an on-call rotation shift begins or ends.</p>
    #   @return [Integer]
    # @!attribute minute_of_hour
    #   <p>The minute when an on-call rotation shift begins or ends.</p>
    #   @return [Integer]
    class HandOffTime < Struct.new(
      :hour_of_day,
      :minute_of_hour,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:hour_of_day] = 0 unless options.key?(:hour_of_day)
        options[:minute_of_hour] = 0 unless options.key?(:minute_of_hour)
        super
      end
    end

    # <p>Unexpected error occurred while processing the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   Advice to clients on when the call can be safely retried
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of contact channels per page.</p>
    #   @return [Integer]
    class ListContactChannelsRequest < Struct.new(
      :contact_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute contact_channels
    #   <p>A list of contact channels related to the specified contact.</p>
    #   @return [Array<Types::ContactChannel>]
    class ListContactChannelsResult < Struct.new(
      :next_token,
      :contact_channels,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of contacts and escalation plans per page of results.</p>
    #   @return [Integer]
    # @!attribute alias_prefix
    #   <p>Used to list only contacts who's aliases start with the specified prefix.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of contact. A contact is type <code>PERSONAL</code> and an escalation plan is
    #            type <code>ESCALATION</code>.</p>
    #   @return [String]
    class ListContactsRequest < Struct.new(
      :next_token,
      :max_results,
      :alias_prefix,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute contacts
    #   <p>A list of the contacts and escalation plans in your Incident Manager account.</p>
    #   @return [Array<Types::Contact>]
    class ListContactsResult < Struct.new(
      :next_token,
      :contacts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of engagements per page of results.</p>
    #   @return [Integer]
    # @!attribute incident_id
    #   <p>The Amazon Resource Name (ARN) of the incident you're listing engagements for.</p>
    #   @return [String]
    # @!attribute time_range_value
    #   <p>The time range to lists engagements for an incident.</p>
    #   @return [Types::TimeRange]
    class ListEngagementsRequest < Struct.new(
      :next_token,
      :max_results,
      :incident_id,
      :time_range_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute engagements
    #   <p>A list of each engagement that occurred during the specified time range of an
    #            incident.</p>
    #   @return [Array<Types::Engagement>]
    class ListEngagementsResult < Struct.new(
      :next_token,
      :engagements,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute page_id
    #   <p>The Amazon Resource Name (ARN) of the engagement to a specific contact channel.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of acknowledgements per page of results.</p>
    #   @return [Integer]
    class ListPageReceiptsRequest < Struct.new(
      :page_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute receipts
    #   <p>A list of each acknowledgement.</p>
    #   @return [Array<Types::Receipt>]
    class ListPageReceiptsResult < Struct.new(
      :next_token,
      :receipts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #   @return [String]
    # @!attribute page_id
    #   <p>The Amazon Resource Name (ARN) of the contact engaged for the incident.</p>
    #   @return [String]
    class ListPageResolutionsRequest < Struct.new(
      :next_token,
      :page_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    # @!attribute page_resolutions
    #   <p>Information about the resolution for an engagement.</p>
    #   @return [Array<Types::ResolutionContact>]
    class ListPageResolutionsResult < Struct.new(
      :next_token,
      :page_resolutions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact you are retrieving engagements for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of engagements to contact channels to list per page of results.
    #         </p>
    #   @return [Integer]
    class ListPagesByContactRequest < Struct.new(
      :contact_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute pages
    #   <p>The list of engagements to a contact's contact channel.</p>
    #   @return [Array<Types::Page>]
    class ListPagesByContactResult < Struct.new(
      :next_token,
      :pages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of engagements to contact channels to list per page of
    #            results.</p>
    #   @return [Integer]
    class ListPagesByEngagementRequest < Struct.new(
      :engagement_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #   @return [String]
    # @!attribute pages
    #   <p>The list of engagements to contact channels.</p>
    #   @return [Array<Types::Page>]
    class ListPagesByEngagementResult < Struct.new(
      :next_token,
      :pages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_start_time
    #   <p>The date and time a rotation would begin. The first shift is calculated from this date
    #            and time.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>Used to filter the range of calculated shifts before sending the response back to the
    #            user. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time a rotation shift would end.</p>
    #   @return [Time]
    # @!attribute members
    #   <p>The contacts that would be assigned to a rotation.</p>
    #   @return [Array<String>]
    # @!attribute time_zone_id
    #   <p>The time zone the rotation’s activity would be based on, in Internet Assigned Numbers
    #            Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul".
    #         </p>
    #   @return [String]
    # @!attribute recurrence
    #   <p>Information about how long a rotation would last before restarting at the beginning of
    #            the shift order.</p>
    #   @return [Types::RecurrenceSettings]
    # @!attribute overrides
    #   <p>Information about changes that would be made in a rotation override.</p>
    #   @return [Array<Types::PreviewOverride>]
    # @!attribute next_token
    #   <p>A token to start the list. This token is used to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            can be specified in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    class ListPreviewRotationShiftsRequest < Struct.new(
      :rotation_start_time,
      :start_time,
      :end_time,
      :members,
      :time_zone_id,
      :recurrence,
      :overrides,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_shifts
    #   <p>Details about a rotation shift, including times, types, and contacts.</p>
    #   @return [Array<Types::RotationShift>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. This token is used to get the next set of
    #            results.</p>
    #   @return [String]
    class ListPreviewRotationShiftsResult < Struct.new(
      :rotation_shifts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_id
    #   <p>The Amazon Resource Name (ARN) of the rotation to retrieve information about.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time for the beginning of a time range for listing overrides.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time for the end of a time range for listing overrides.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    class ListRotationOverridesRequest < Struct.new(
      :rotation_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_overrides
    #   <p>A list of rotation overrides in the specified time range.</p>
    #   @return [Array<Types::RotationOverride>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    class ListRotationOverridesResult < Struct.new(
      :rotation_overrides,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_id
    #   <p>The Amazon Resource Name (ARN) of the rotation to retrieve shift information about.
    #         </p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time for the beginning of the time range to list shifts for.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time for the end of the time range to list shifts for.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    class ListRotationShiftsRequest < Struct.new(
      :rotation_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_shifts
    #   <p>Information about shifts that meet the filter criteria.</p>
    #   @return [Array<Types::RotationShift>]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    class ListRotationShiftsResult < Struct.new(
      :rotation_shifts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_name_prefix
    #   <p>A filter to include rotations in list results based on their common prefix. For example,
    #            entering prod returns a list of all rotation names that begin with <code>prod</code>, such
    #            as <code>production</code> and <code>prod-1</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    class ListRotationsRequest < Struct.new(
      :rotation_name_prefix,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #   @return [String]
    # @!attribute rotations
    #   <p>Information about rotations that meet the filter criteria.</p>
    #   @return [Array<Types::Rotation>]
    class ListRotationsResult < Struct.new(
      :next_token,
      :rotations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags related to the contact or escalation plan.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResult < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about on-call rotations that recur monthly.</p>
    # @!attribute day_of_month
    #   <p>The day of the month when monthly recurring on-call rotations begin.</p>
    #   @return [Integer]
    # @!attribute hand_off_time
    #   <p>The time of day when a monthly recurring on-call shift rotation begins.</p>
    #   @return [Types::HandOffTime]
    class MonthlySetting < Struct.new(
      :day_of_month,
      :hand_off_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Incident Manager engaging a contact's contact channel.</p>
    # @!attribute page_arn
    #   <p>The Amazon Resource Name (ARN) of the page to the contact channel.</p>
    #   @return [String]
    # @!attribute engagement_arn
    #   <p>The ARN of the engagement that this page is part of.</p>
    #   @return [String]
    # @!attribute contact_arn
    #   <p>The ARN of the contact that Incident Manager is engaging.</p>
    #   @return [String]
    # @!attribute sender
    #   <p>The user that started the engagement.</p>
    #   @return [String]
    # @!attribute incident_id
    #   <p>The ARN of the incident that's engaging the contact channel.</p>
    #   @return [String]
    # @!attribute sent_time
    #   <p>The time that Incident Manager engaged the contact channel.</p>
    #   @return [Time]
    # @!attribute delivery_time
    #   <p>The time the message was delivered to the contact channel.</p>
    #   @return [Time]
    # @!attribute read_time
    #   <p>The time that the contact channel acknowledged engagement.</p>
    #   @return [Time]
    class Page < Struct.new(
      :page_arn,
      :engagement_arn,
      :contact_arn,
      :sender,
      :incident_id,
      :sent_time,
      :delivery_time,
      :read_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the stages and on-call rotation teams associated with an escalation
    #          plan or engagement plan.
    #          </p>
    # @!attribute stages
    #   <p>A list of stages that the escalation plan or engagement plan uses to engage contacts and
    #            contact methods.</p>
    #   @return [Array<Types::Stage>]
    # @!attribute rotation_ids
    #   <p>The Amazon Resource Names (ARNs) of the on-call rotations associated with the plan.
    #         </p>
    #   @return [Array<String>]
    class Plan < Struct.new(
      :stages,
      :rotation_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about contacts and times that an on-call override replaces.</p>
    # @!attribute new_members
    #   <p>Information about contacts to add to an on-call rotation override.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>Information about the time a rotation override would begin.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Information about the time a rotation override would end.</p>
    #   @return [Time]
    class PreviewOverride < Struct.new(
      :new_members,
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>Details of the resource policy.</p>
    #   @return [String]
    class PutContactPolicyRequest < Struct.new(
      :contact_arn,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutContactPolicyResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Records events during an engagement.</p>
    # @!attribute contact_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the contact channel Incident Manager engaged.</p>
    #   @return [String]
    # @!attribute receipt_type
    #   <p>The type follows the engagement cycle, <code>SENT</code>, <code>DELIVERED</code>, and
    #               <code>READ</code>.</p>
    #   @return [String]
    # @!attribute receipt_info
    #   <p>Information provided during the page acknowledgement.</p>
    #   @return [String]
    # @!attribute receipt_time
    #   <p>The time receipt was <code>SENT</code>, <code>DELIVERED</code>, or
    #            <code>READ</code>.</p>
    #   @return [Time]
    class Receipt < Struct.new(
      :contact_channel_arn,
      :receipt_type,
      :receipt_info,
      :receipt_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReceiptType
      DELIVERED = 'DELIVERED'
      ERROR = 'ERROR'
      READ = 'READ'
      SENT = 'SENT'
      STOP = 'STOP'
    end

    # <p>Information about when an on-call rotation is in effect and how long the rotation period
    #          lasts.</p>
    # @!attribute monthly_settings
    #   <p>Information about on-call rotations that recur monthly.</p>
    #   @return [Array<Types::MonthlySetting>]
    # @!attribute weekly_settings
    #   <p>Information about on-call rotations that recur weekly.</p>
    #   @return [Array<Types::WeeklySetting>]
    # @!attribute daily_settings
    #   <p>Information about on-call rotations that recur daily.</p>
    #   @return [Array<Types::HandOffTime>]
    # @!attribute number_of_on_calls
    #   <p>The number of contacts, or shift team members designated to be on call concurrently
    #            during a shift. For example, in an on-call schedule containing ten contacts, a value of
    #               <code>2</code> designates that two of them are on call at any given time.</p>
    #   @return [Integer]
    # @!attribute shift_coverages
    #   <p>Information about the days of the week included in on-call rotation coverage.</p>
    #   @return [Hash<String, Array<Types::CoverageTime>>]
    # @!attribute recurrence_multiplier
    #   <p>The number of days, weeks, or months a single rotation lasts.</p>
    #   @return [Integer]
    class RecurrenceSettings < Struct.new(
      :monthly_settings,
      :weekly_settings,
      :daily_settings,
      :number_of_on_calls,
      :shift_coverages,
      :recurrence_multiplier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the engagement resolution steps. The resolution starts from the first
    #          contact, which can be an escalation plan, then resolves to an on-call rotation, and finally
    #          to a personal contact.</p>
    #          <p>The <code>ResolutionContact</code> structure describes the information for each node or
    #          step in that process. It contains information about different contact types, such as the
    #          escalation, rotation, and personal contacts.</p>
    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of a contact in the engagement resolution process.
    #         </p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of contact for a resolution step.</p>
    #   @return [String]
    # @!attribute stage_index
    #   <p>The stage in the escalation plan that resolves to this contact.</p>
    #   @return [Integer]
    class ResolutionContact < Struct.new(
      :contact_arn,
      :type,
      :stage_index,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:stage_index] =  unless options.key?(:stage_index)
        super
      end
    end

    # <p>Request references a resource that doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   Hypothetical resource identifier that was not found
    #   @return [String]
    # @!attribute resource_type
    #   Hypothetical resource type that was not found
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a rotation in an on-call schedule.</p>
    # @!attribute rotation_arn
    #   <p>The Amazon Resource Name (ARN) of the rotation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rotation.</p>
    #   @return [String]
    # @!attribute contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts assigned to the rotation team.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The date and time the rotation becomes active.</p>
    #   @return [Time]
    # @!attribute time_zone_id
    #   <p>The time zone the rotation’s activity is based on, in Internet Assigned Numbers
    #            Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul".
    #         </p>
    #   @return [String]
    # @!attribute recurrence
    #   <p>Information about when an on-call rotation is in effect and how long the rotation period
    #            lasts.</p>
    #   @return [Types::RecurrenceSettings]
    class Rotation < Struct.new(
      :rotation_arn,
      :name,
      :contact_ids,
      :start_time,
      :time_zone_id,
      :recurrence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about an override specified for an on-call rotation.</p>
    # @!attribute rotation_override_id
    #   <p>The Amazon Resource Name (ARN) of the override to an on-call rotation.</p>
    #   @return [String]
    # @!attribute new_contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts assigned to the override of the on-call
    #            rotation.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The time a rotation override begins.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time a rotation override ends.</p>
    #   @return [Time]
    # @!attribute create_time
    #   <p>The time a rotation override was created.</p>
    #   @return [Time]
    class RotationOverride < Struct.new(
      :rotation_override_id,
      :new_contact_ids,
      :start_time,
      :end_time,
      :create_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a shift that belongs to an on-call rotation.</p>
    # @!attribute contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts who are part of the shift rotation.
    #         </p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The time a shift rotation begins.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time a shift rotation ends.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type of shift rotation.</p>
    #   @return [String]
    # @!attribute shift_details
    #   <p>Additional information about an on-call rotation shift.</p>
    #   @return [Types::ShiftDetails]
    class RotationShift < Struct.new(
      :contact_ids,
      :start_time,
      :end_time,
      :type,
      :shift_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #   @return [String]
    class SendActivationCodeRequest < Struct.new(
      :contact_channel_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class SendActivationCodeResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   Identifier of the resource affected
    #   @return [String]
    # @!attribute resource_type
    #   Type of the resource affected
    #   @return [String]
    # @!attribute quota_code
    #   Service Quotas requirement to identify originating service
    #   @return [String]
    # @!attribute service_code
    #   Service Quotas requirement to identify originating quota
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about overrides to an on-call rotation shift.</p>
    # @!attribute overridden_contact_ids
    #   <p>The Amazon Resources Names (ARNs) of the contacts who were replaced in a shift when an
    #            override was created. If the override is deleted, these contacts are restored to the
    #            shift.</p>
    #   @return [Array<String>]
    class ShiftDetails < Struct.new(
      :overridden_contact_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ShiftType
      REGULAR = 'REGULAR'
      OVERRIDDEN = 'OVERRIDDEN'
    end

    # <p>A set amount of time that an escalation plan or engagement plan engages the specified
    #          contacts or contact methods.</p>
    # @!attribute duration_in_minutes
    #   <p>The time to wait until beginning the next stage. The duration can only be set to 0 if a
    #            target is specified.</p>
    #   @return [Integer]
    # @!attribute targets
    #   <p>The contacts or contact methods that the escalation plan or engagement plan is
    #            engaging.</p>
    #   @return [Array<Types::Target>]
    class Stage < Struct.new(
      :duration_in_minutes,
      :targets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact being engaged.</p>
    #   @return [String]
    # @!attribute sender
    #   <p>The user that started the engagement.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The secure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The secure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>
    #   @return [String]
    # @!attribute public_subject
    #   <p>The insecure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #   @return [String]
    # @!attribute public_content
    #   <p>The insecure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #   @return [String]
    # @!attribute incident_id
    #   <p>The ARN of the incident that the engagement is part of.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    #   @return [String]
    class StartEngagementRequest < Struct.new(
      :contact_id,
      :sender,
      :subject,
      :content,
      :public_subject,
      :public_content,
      :incident_id,
      :idempotency_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engagement_arn
    #   <p>The ARN of the engagement.</p>
    #   @return [String]
    class StartEngagementResult < Struct.new(
      :engagement_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that you're stopping the engagement.</p>
    #   @return [String]
    class StopEngagementRequest < Struct.new(
      :engagement_id,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StopEngagementResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A container of a key-value name pair.</p>
    # @!attribute key
    #   <p>Name of the object key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you are adding to the contact or escalation plan.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The contact or contact channel that's being engaged.</p>
    # @!attribute channel_target_info
    #   <p>Information about the contact channel Incident Manager is engaging.</p>
    #   @return [Types::ChannelTargetInfo]
    # @!attribute contact_target_info
    #   <p>Information about the contact that Incident Manager is engaging.</p>
    #   @return [Types::ContactTargetInfo]
    class Target < Struct.new(
      :channel_target_info,
      :contact_target_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_code
    #   Service Quotas requirement to identify originating service
    #   @return [String]
    # @!attribute service_code
    #   Service Quotas requirement to identify originating quota
    #   @return [String]
    # @!attribute retry_after_seconds
    #   Advice to clients on when the call can be safely retried
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>A range of between two set times</p>
    # @!attribute start_time
    #   <p>The start of the time range.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time range.</p>
    #   @return [Time]
    class TimeRange < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The key of the tag that you want to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you want to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the contact channel.</p>
    #   @return [String]
    # @!attribute delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel.</p>
    #   @return [Types::ContactChannelAddress]
    class UpdateContactChannelRequest < Struct.new(
      :contact_channel_id,
      :name,
      :delivery_address,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateContactChannelResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan you're updating.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The full name of the contact or escalation plan.</p>
    #   @return [String]
    # @!attribute plan
    #   <p>A list of stages. A contact has an engagement plan with stages for specified contact
    #            channels. An escalation plan uses these stages to contact specified contacts.</p>
    #   @return [Types::Plan]
    class UpdateContactRequest < Struct.new(
      :contact_id,
      :display_name,
      :plan,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateContactResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rotation_id
    #   <p>The Amazon Resource Name (ARN) of the rotation to update.</p>
    #   @return [String]
    # @!attribute contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts to include in the updated rotation. </p>
    #            <p>The order in which you list the contacts is their shift order in the rotation
    #            schedule.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The date and time the rotation goes into effect.</p>
    #   @return [Time]
    # @!attribute time_zone_id
    #   <p>The time zone to base the updated rotation’s activity on, in Internet Assigned Numbers
    #            Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For
    #            more information, see the <a href="https://www.iana.org/time-zones">Time Zone
    #               Database</a> on the IANA website.</p>
    #            <note>
    #               <p>Designators for time zones that don’t support Daylight Savings Time Rules, such as
    #               Pacific Standard Time (PST) and Pacific Daylight Time (PDT), aren't supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute recurrence
    #   <p>Information about how long the updated rotation lasts before restarting at the beginning
    #            of the shift order.</p>
    #   @return [Types::RecurrenceSettings]
    class UpdateRotationRequest < Struct.new(
      :rotation_id,
      :contact_ids,
      :start_time,
      :time_zone_id,
      :recurrence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateRotationResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services
    #          service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   Reason the request failed validation
    #   @return [String]
    # @!attribute fields
    #   The fields that caused the error
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about which field caused the exception.</p>
    # @!attribute name
    #   <p>The name of the field that caused the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Information about what caused the field to cause an exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValidationExceptionReason
      UNKNOWN_OPERATION = 'UNKNOWN_OPERATION'
      CANNOT_PARSE = 'CANNOT_PARSE'
      FIELD_VALIDATION_FAILED = 'FIELD_VALIDATION_FAILED'
      OTHER = 'OTHER'
    end

    # <p>Information about rotations that recur weekly.</p>
    # @!attribute day_of_week
    #   <p>The day of the week when weekly recurring on-call shift rotations begins.</p>
    #   @return [String]
    # @!attribute hand_off_time
    #   <p>The time of day when a weekly recurring on-call shift rotation begins.</p>
    #   @return [Types::HandOffTime]
    class WeeklySetting < Struct.new(
      :day_of_week,
      :hand_off_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
