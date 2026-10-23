# frozen_string_literal: true

# This is generated code!

module Aws::PinpointEmail
  # This module contains the types returned by client operations.
  module Types

    # <p>The message can't be sent because the account's ability to send email has been
    #             permanently restricted.</p>
    # @!attribute message
    #   @return [String]
    class AccountSuspendedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource specified in your request already exists.</p>
    # @!attribute message
    #   @return [String]
    class AlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input you provided is invalid.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about a blacklisting event that impacts one of the
    #             dedicated IP addresses that is associated with your account.</p>
    # @!attribute rbl_name
    #   <p>The name of the blacklist that the IP address appears on.</p>
    #   @return [String]
    # @!attribute listing_time
    #   <p>The time when the blacklisting event occurred, shown in Unix time format.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Additional information about the blacklisting event, as provided by the blacklist
    #               maintainer.</p>
    #   @return [String]
    class BlacklistEntry < Struct.new(
      nil,
      :rbl_name,
      :listing_time,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the body of the email message.</p>
    # @!attribute text
    #   <p>An object that represents the version of the message that is displayed in email
    #               clients that don't support HTML, or clients where the recipient has disabled HTML
    #               rendering.</p>
    #   @return [Types::Content]
    # @!attribute html
    #   <p>An object that represents the version of the message that is displayed in email
    #               clients that support HTML. HTML messages can include formatted text, hyperlinks, images,
    #               and more. </p>
    #   @return [Types::Content]
    class Body < Struct.new(
      nil,
      :text,
      :html,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to
    #             monitor and gain insights on your email sending metrics.</p>
    # @!attribute dimension_configurations
    #   <p>An array of objects that define the dimensions to use when you send email events to
    #               Amazon CloudWatch.</p>
    #   @return [Array<Types::CloudWatchDimensionConfiguration>]
    class CloudWatchDestination < Struct.new(
      nil,
      :dimension_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines the dimension configuration to use when you send Amazon Pinpoint email
    #             events to Amazon CloudWatch.</p>
    # @!attribute dimension_name
    #   <p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name has to
    #               meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_),
    #                       or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>It can contain no more than 256 characters.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute dimension_value_source
    #   <p>The location where Amazon Pinpoint finds the value of a dimension to publish to Amazon CloudWatch. If you
    #               want Amazon Pinpoint to use the message tags that you specify using an X-SES-MESSAGE-TAGS header
    #               or a parameter to the SendEmail/SendRawEmail API, choose <code>messageTag</code>. If you
    #               want Amazon Pinpoint to use your own email headers, choose <code>emailHeader</code>. If you want
    #               Amazon Pinpoint to use link tags, choose <code>linkTags</code>.</p>
    #   @return [String]
    # @!attribute default_dimension_value
    #   <p>The default value of the dimension that is published to Amazon CloudWatch if you don't provide the
    #               value of the dimension when you send an email. This value has to meet the following
    #               criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_),
    #                       or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>It can contain no more than 256 characters.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CloudWatchDimensionConfiguration < Struct.new(
      nil,
      :dimension_name,
      :dimension_value_source,
      :default_dimension_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is being modified by another operation or thread.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the content of the email, and optionally a character set
    #             specification.</p>
    # @!attribute data
    #   <p>The content of the message itself.</p>
    #   @return [String]
    # @!attribute charset
    #   <p>The character set for the content. Because of the constraints of the SMTP protocol,
    #               Amazon Pinpoint uses 7-bit ASCII by default. If the text includes characters outside of the ASCII
    #               range, you have to specify a character set. For example, you could specify
    #                   <code>UTF-8</code>, <code>ISO-8859-1</code>, or <code>Shift_JIS</code>.</p>
    #   @return [String]
    class Content < Struct.new(
      nil,
      :data,
      :charset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to add an event destination to a configuration set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to add an event destination to.</p>
    #   @return [String]
    # @!attribute event_destination_name
    #   <p>A name that identifies the event destination within the configuration set.</p>
    #   @return [String]
    # @!attribute event_destination
    #   <p>An object that defines the event destination.</p>
    #   @return [Types::EventDestinationDefinition]
    class CreateConfigurationSetEventDestinationRequest < Struct.new(
      nil,
      :configuration_set_name,
      :event_destination_name,
      :event_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class CreateConfigurationSetEventDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to create a configuration set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #   @return [String]
    # @!attribute tracking_options
    #   <p>An object that defines the open and click tracking options for emails that you send
    #               using the configuration set.</p>
    #   @return [Types::TrackingOptions]
    # @!attribute delivery_options
    #   <p>An object that defines the dedicated IP pool that is used to send emails that you send
    #               using the configuration set.</p>
    #   @return [Types::DeliveryOptions]
    # @!attribute reputation_options
    #   <p>An object that defines whether or not Amazon Pinpoint collects reputation metrics for the emails
    #               that you send that use the configuration set.</p>
    #   @return [Types::ReputationOptions]
    # @!attribute sending_options
    #   <p>An object that defines whether or not Amazon Pinpoint can send email that you send using the
    #               configuration set.</p>
    #   @return [Types::SendingOptions]
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) that you want to associate
    #               with the configuration set.</p>
    #   @return [Array<Types::Tag>]
    class CreateConfigurationSetRequest < Struct.new(
      nil,
      :configuration_set_name,
      :tracking_options,
      :delivery_options,
      :reputation_options,
      :sending_options,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class CreateConfigurationSetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to create a new dedicated IP pool.</p>
    # @!attribute pool_name
    #   <p>The name of the dedicated IP pool.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An object that defines the tags (keys and values) that you want to associate with the
    #               pool.</p>
    #   @return [Array<Types::Tag>]
    class CreateDedicatedIpPoolRequest < Struct.new(
      nil,
      :pool_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class CreateDedicatedIpPoolResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to perform a predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will
    #             be handled by various email providers around the world. When you perform a predictive inbox placement test, you
    #             provide a sample message that contains the content that you plan to send to your
    #             customers. Amazon Pinpoint then sends that message to special email addresses spread across
    #             several major email providers. After about 24 hours, the test is complete, and you can
    #             use the <code>GetDeliverabilityTestReport</code> operation to view the results of the
    #             test.</p>
    # @!attribute report_name
    #   <p>A unique name that helps you to identify the predictive inbox placement test when you retrieve the
    #               results.</p>
    #   @return [String]
    # @!attribute from_email_address
    #   <p>The email address that the predictive inbox placement test email was sent from.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The HTML body of the message that you sent when you performed the predictive inbox placement test.</p>
    #   @return [Types::EmailContent]
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) that you want to associate
    #               with the predictive inbox placement test.</p>
    #   @return [Array<Types::Tag>]
    class CreateDeliverabilityTestReportRequest < Struct.new(
      nil,
      :report_name,
      :from_email_address,
      :content,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the predictive inbox placement test that you created.</p>
    # @!attribute report_id
    #   <p>A unique string that identifies the predictive inbox placement test.</p>
    #   @return [String]
    # @!attribute deliverability_test_status
    #   <p>The status of the predictive inbox placement test. If the status is <code>IN_PROGRESS</code>, then the predictive inbox placement test
    #               is currently running. Predictive inbox placement tests are usually complete within 24 hours of creating the
    #               test. If the status is <code>COMPLETE</code>, then the test is finished, and you can use
    #               the <code>GetDeliverabilityTestReport</code> to view the results of the test.</p>
    #   @return [String]
    class CreateDeliverabilityTestReportResponse < Struct.new(
      nil,
      :report_id,
      :deliverability_test_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to begin the verification process for an email identity (an email address or
    #             domain).</p>
    # @!attribute email_identity
    #   <p>The email address or domain that you want to verify.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) that you want to associate
    #               with the email identity.</p>
    #   @return [Array<Types::Tag>]
    class CreateEmailIdentityRequest < Struct.new(
      nil,
      :email_identity,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If the email identity is a domain, this object contains tokens that you can use to
    #             create a set of CNAME records. To sucessfully verify your domain, you have to add these
    #             records to the DNS configuration for your domain.</p>
    #         <p>If the email identity is an email address, this object is empty. </p>
    # @!attribute identity_type
    #   <p>The email identity type.</p>
    #   @return [String]
    # @!attribute verified_for_sending_status
    #   <p>Specifies whether or not the identity is verified. In Amazon Pinpoint, you can only send email
    #               from verified email addresses or domains. For more information about verifying
    #               identities, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html">Amazon Pinpoint User Guide</a>.</p>
    #   @return [Boolean]
    # @!attribute dkim_attributes
    #   <p>An object that contains information about the DKIM attributes for the identity. This
    #               object includes the tokens that you use to create the CNAME records that are required to
    #               complete the DKIM verification process.</p>
    #   @return [Types::DkimAttributes]
    class CreateEmailIdentityResponse < Struct.new(
      nil,
      :identity_type,
      :verified_for_sending_status,
      :dkim_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:verified_for_sending_status] = false unless options.key?(:verified_for_sending_status)
        super
      end
    end

    # <p>An object that contains information about the volume of email sent on each day of the
    #             analysis period.</p>
    # @!attribute start_date
    #   <p>The date that the DailyVolume metrics apply to, in Unix time.</p>
    #   @return [Time]
    # @!attribute volume_statistics
    #   <p>An object that contains inbox placement metrics for a specific day in the analysis
    #               period.</p>
    #   @return [Types::VolumeStatistics]
    # @!attribute domain_isp_placements
    #   <p>An object that contains inbox placement metrics for a specified day in the analysis
    #               period, broken out by the recipient's email provider.</p>
    #   @return [Array<Types::DomainIspPlacement>]
    class DailyVolume < Struct.new(
      nil,
      :start_date,
      :volume_statistics,
      :domain_isp_placements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a dedicated IP address that is associated with your Amazon Pinpoint
    #             account.</p>
    #         <p></p>
    # @!attribute ip
    #   <p>An IP address that is reserved for use by your Amazon Pinpoint account.</p>
    #   @return [String]
    # @!attribute warmup_status
    #   <p>The warm-up status of a dedicated IP address. The status can have one of the following
    #               values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>IN_PROGRESS</code> – The IP address isn't ready to use because the
    #                       dedicated IP warm-up process is ongoing.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DONE</code> – The dedicated IP warm-up process is complete, and
    #                       the IP address is ready to use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute warmup_percentage
    #   <p>Indicates how complete the dedicated IP warm-up process is. When this value equals 1,
    #               the address has completed the warm-up process and is ready for use.</p>
    #   @return [Integer]
    # @!attribute pool_name
    #   <p>The name of the dedicated IP pool that the IP address is associated with.</p>
    #   @return [String]
    class DedicatedIp < Struct.new(
      nil,
      :ip,
      :warmup_status,
      :warmup_percentage,
      :pool_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to delete an event destination from a configuration set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that contains the event destination that you want to
    #               delete.</p>
    #   @return [String]
    # @!attribute event_destination_name
    #   <p>The name of the event destination that you want to delete.</p>
    #   @return [String]
    class DeleteConfigurationSetEventDestinationRequest < Struct.new(
      nil,
      :configuration_set_name,
      :event_destination_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class DeleteConfigurationSetEventDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to delete a configuration set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to delete.</p>
    #   @return [String]
    class DeleteConfigurationSetRequest < Struct.new(
      nil,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class DeleteConfigurationSetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to delete a dedicated IP pool.</p>
    # @!attribute pool_name
    #   <p>The name of the dedicated IP pool that you want to delete.</p>
    #   @return [String]
    class DeleteDedicatedIpPoolRequest < Struct.new(
      nil,
      :pool_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class DeleteDedicatedIpPoolResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to delete an existing email identity. When you delete an identity, you lose
    #             the ability to use Amazon Pinpoint to send email from that identity. You can restore your ability
    #             to send email by completing the verification process for the identity again.</p>
    # @!attribute email_identity
    #   <p>The identity (that is, the email address or domain) that you want to delete from your
    #               Amazon Pinpoint account.</p>
    #   @return [String]
    class DeleteEmailIdentityRequest < Struct.new(
      nil,
      :email_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class DeleteEmailIdentityResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains metadata related to a predictive inbox placement test.</p>
    # @!attribute report_id
    #   <p>A unique string that identifies the predictive inbox placement test.</p>
    #   @return [String]
    # @!attribute report_name
    #   <p>A name that helps you identify a predictive inbox placement test report.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The subject line for an email that you submitted in a predictive inbox placement test.</p>
    #   @return [String]
    # @!attribute from_email_address
    #   <p>The sender address that you specified for the predictive inbox placement test.</p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time when the predictive inbox placement test was created, in Unix time format.</p>
    #   @return [Time]
    # @!attribute deliverability_test_status
    #   <p>The status of the predictive inbox placement test. If the status is <code>IN_PROGRESS</code>, then the predictive inbox placement test
    #               is currently running. Predictive inbox placement tests are usually complete within 24 hours of creating the
    #               test. If the status is <code>COMPLETE</code>, then the test is finished, and you can use
    #               the <code>GetDeliverabilityTestReport</code> to view the results of the test.</p>
    #   @return [String]
    class DeliverabilityTestReport < Struct.new(
      nil,
      :report_id,
      :report_name,
      :subject,
      :from_email_address,
      :create_date,
      :deliverability_test_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used to associate a configuration set with a dedicated IP pool.</p>
    # @!attribute tls_policy
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only
    #               delivered if a TLS connection can be established. If the value is <code>Optional</code>,
    #               messages can be delivered in plain text if a TLS connection can't be established.</p>
    #   @return [String]
    # @!attribute sending_pool_name
    #   <p>The name of the dedicated IP pool that you want to associate with the configuration
    #               set.</p>
    #   @return [String]
    class DeliveryOptions < Struct.new(
      nil,
      :tls_policy,
      :sending_pool_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes the recipients for an email.</p>
    # @!attribute to_addresses
    #   <p>An array that contains the email addresses of the "To" recipients for the
    #               email.</p>
    #   @return [Array<String>]
    # @!attribute cc_addresses
    #   <p>An array that contains the email addresses of the "CC" (carbon copy) recipients for
    #               the email.</p>
    #   @return [Array<String>]
    # @!attribute bcc_addresses
    #   <p>An array that contains the email addresses of the "BCC" (blind carbon copy) recipients
    #               for the email.</p>
    #   @return [Array<String>]
    class Destination < Struct.new(
      nil,
      :to_addresses,
      :cc_addresses,
      :bcc_addresses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about the DKIM configuration for an email
    #             identity.</p>
    # @!attribute signing_enabled
    #   <p>If the value is <code>true</code>, then the messages that Amazon Pinpoint sends from the
    #               identity are DKIM-signed. If the value is <code>false</code>, then the messages that
    #               Amazon Pinpoint sends from the identity aren't DKIM-signed.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>Describes whether or not Amazon Pinpoint has successfully located the DKIM records in the DNS
    #               records for the domain. The status can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PENDING</code> – Amazon Pinpoint hasn't yet located the DKIM records in the
    #                       DNS configuration for the domain, but will continue to attempt to locate
    #                       them.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SUCCESS</code> – Amazon Pinpoint located the DKIM records in the DNS
    #                       configuration for the domain and determined that they're correct. Amazon Pinpoint can now
    #                       send DKIM-signed email from the identity.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FAILED</code> – Amazon Pinpoint was unable to locate the DKIM records in the
    #                       DNS settings for the domain, and won't continue to search for them.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TEMPORARY_FAILURE</code> – A temporary issue occurred, which
    #                       prevented Amazon Pinpoint from determining the DKIM status for the domain.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NOT_STARTED</code> – Amazon Pinpoint hasn't yet started searching for the
    #                       DKIM records in the DKIM records for the domain.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tokens
    #   <p>A set of unique strings that you use to create a set of CNAME records that you add to
    #               the DNS configuration for your domain. When Amazon Pinpoint detects these records in the DNS
    #               configuration for your domain, the DKIM authentication process is complete. Amazon Pinpoint
    #               usually detects these records within about 72 hours of adding them to the DNS
    #               configuration for your domain.</p>
    #   @return [Array<String>]
    class DkimAttributes < Struct.new(
      nil,
      :signing_enabled,
      :status,
      :tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:signing_enabled] = false unless options.key?(:signing_enabled)
        super
      end
    end

    # <p>An object that contains the deliverability data for a specific campaign. This data is
    #             available for a campaign only if the campaign sent email by using a domain that the
    #             Deliverability dashboard is enabled for (<code>PutDeliverabilityDashboardOption</code>
    #             operation).</p>
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign. Amazon Pinpoint automatically generates and assigns this
    #               identifier to a campaign. This value is not the same as the campaign identifier that
    #               Amazon Pinpoint assigns to campaigns that you create and manage by using the Amazon Pinpoint API or the
    #               Amazon Pinpoint console.</p>
    #   @return [String]
    # @!attribute image_url
    #   <p>The URL of an image that contains a snapshot of the email message that was
    #               sent.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The subject line, or title, of the email message.</p>
    #   @return [String]
    # @!attribute from_address
    #   <p>The verified email address that the email message was sent from.</p>
    #   @return [String]
    # @!attribute sending_ips
    #   <p>The IP addresses that were used to send the email message.</p>
    #   @return [Array<String>]
    # @!attribute first_seen_date_time
    #   <p>The first time, in Unix time format, when the email message was delivered to any
    #               recipient's inbox. This value can help you determine how long it took for a campaign to
    #               deliver an email message.</p>
    #   @return [Time]
    # @!attribute last_seen_date_time
    #   <p>The last time, in Unix time format, when the email message was delivered to any
    #               recipient's inbox. This value can help you determine how long it took for a campaign to
    #               deliver an email message.</p>
    #   @return [Time]
    # @!attribute inbox_count
    #   <p>The number of email messages that were delivered to recipients’ inboxes.</p>
    #   @return [Integer]
    # @!attribute spam_count
    #   <p>The number of email messages that were delivered to recipients' spam or junk mail
    #               folders.</p>
    #   @return [Integer]
    # @!attribute read_rate
    #   <p>The percentage of email messages that were opened by recipients. Due to technical
    #               limitations, this value only includes recipients who opened the message by using an
    #               email client that supports images.</p>
    #   @return [Float]
    # @!attribute delete_rate
    #   <p>The percentage of email messages that were deleted by recipients, without being opened
    #               first. Due to technical limitations, this value only includes recipients who opened the
    #               message by using an email client that supports images.</p>
    #   @return [Float]
    # @!attribute read_delete_rate
    #   <p>The percentage of email messages that were opened and then deleted by recipients. Due
    #               to technical limitations, this value only includes recipients who opened the message by
    #               using an email client that supports images.</p>
    #   @return [Float]
    # @!attribute projected_volume
    #   <p>The projected number of recipients that the email message was sent to.</p>
    #   @return [Integer]
    # @!attribute esps
    #   <p>The major email providers who handled the email message.</p>
    #   @return [Array<String>]
    class DomainDeliverabilityCampaign < Struct.new(
      nil,
      :campaign_id,
      :image_url,
      :subject,
      :from_address,
      :sending_ips,
      :first_seen_date_time,
      :last_seen_date_time,
      :inbox_count,
      :spam_count,
      :read_rate,
      :delete_rate,
      :read_delete_rate,
      :projected_volume,
      :esps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about the Deliverability dashboard subscription for a
    #             verified domain that you use to send email and currently has an active Deliverability dashboard
    #             subscription. If a Deliverability dashboard subscription is active for a domain, you gain access
    #             to reputation, inbox placement, and other metrics for the domain.</p>
    # @!attribute domain
    #   <p>A verified domain that’s associated with your AWS account and currently has an
    #               active Deliverability dashboard subscription.</p>
    #   @return [String]
    # @!attribute subscription_start_date
    #   <p>The date, in Unix time format, when you enabled the Deliverability dashboard for the
    #               domain.</p>
    #   @return [Time]
    # @!attribute inbox_placement_tracking_option
    #   <p>An object that contains information about the inbox placement data settings for the
    #               domain.</p>
    #   @return [Types::InboxPlacementTrackingOption]
    class DomainDeliverabilityTrackingOption < Struct.new(
      nil,
      :domain,
      :subscription_start_date,
      :inbox_placement_tracking_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains inbox placement data for email sent from one of your email
    #             domains to a specific email provider.</p>
    # @!attribute isp_name
    #   <p>The name of the email provider that the inbox placement data applies to.</p>
    #   @return [String]
    # @!attribute inbox_raw_count
    #   <p>The total number of messages that were sent from the selected domain to the specified
    #               email provider that arrived in recipients' inboxes.</p>
    #   @return [Integer]
    # @!attribute spam_raw_count
    #   <p>The total number of messages that were sent from the selected domain to the specified
    #               email provider that arrived in recipients' spam or junk mail folders.</p>
    #   @return [Integer]
    # @!attribute inbox_percentage
    #   <p>The percentage of messages that were sent from the selected domain to the specified
    #               email provider that arrived in recipients' inboxes.</p>
    #   @return [Float]
    # @!attribute spam_percentage
    #   <p>The percentage of messages that were sent from the selected domain to the specified
    #               email provider that arrived in recipients' spam or junk mail folders.</p>
    #   @return [Float]
    class DomainIspPlacement < Struct.new(
      nil,
      :isp_name,
      :inbox_raw_count,
      :spam_raw_count,
      :inbox_percentage,
      :spam_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines the entire content of the email, including the message headers
    #             and the body content. You can create a simple email message, in which you specify the
    #             subject and the text and HTML versions of the message body. You can also create raw
    #             messages, in which you specify a complete MIME-formatted message. Raw messages can
    #             include attachments and custom headers.</p>
    # @!attribute simple
    #   <p>The simple email message. The message consists of a subject and a message body.</p>
    #   @return [Types::Message]
    # @!attribute raw
    #   <p>The raw email message. The message has to meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>The message has to contain a header and a body, separated by one blank
    #                       line.</p>
    #               </li>
    #               <li>
    #                   <p>All of the required header fields must be present in the message.</p>
    #               </li>
    #               <li>
    #                   <p>Each part of a multipart MIME message must be formatted properly.</p>
    #               </li>
    #               <li>
    #                   <p>If you include attachments, they must be in a file format that Amazon Pinpoint supports.
    #                       </p>
    #               </li>
    #               <li>
    #                   <p>The entire message must be Base64 encoded.</p>
    #               </li>
    #               <li>
    #                   <p>If any of the MIME parts in your message contain content that is outside of
    #                       the 7-bit ASCII character range, you should encode that content to ensure that
    #                       recipients' email clients render the message properly.</p>
    #               </li>
    #               <li>
    #                   <p>The length of any single line of text in the message can't exceed 1,000
    #                       characters. This restriction is defined in <a href="https://tools.ietf.org/html/rfc5321">RFC 5321</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Types::RawMessage]
    # @!attribute template
    #   <p>The template to use for the email message.</p>
    #   @return [Types::Template]
    class EmailContent < Struct.new(
      nil,
      :simple,
      :raw,
      :template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>In Amazon Pinpoint, <i>events</i> include message sends, deliveries, opens,
    #             clicks, bounces, and complaints. <i>Event destinations</i> are places that
    #             you can send information about these events to. For example, you can send event data to
    #             Amazon SNS to receive notifications when you receive bounces or complaints, or you can use
    #             Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>
    # @!attribute name
    #   <p>A name that identifies the event destination.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>If <code>true</code>, the event destination is enabled. When the event destination is
    #               enabled, the specified event types are sent to the destinations in this
    #                   <code>EventDestinationDefinition</code>.</p>
    #           <p>If <code>false</code>, the event destination is disabled. When the event destination
    #               is disabled, events aren't sent to the specified destinations.</p>
    #   @return [Boolean]
    # @!attribute matching_event_types
    #   <p>The types of events that Amazon Pinpoint sends to the specified event destinations.</p>
    #   @return [Array<String>]
    # @!attribute kinesis_firehose_destination
    #   <p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to
    #               stream data to other services, such as Amazon S3 and Amazon Redshift.</p>
    #   @return [Types::KinesisFirehoseDestination]
    # @!attribute cloud_watch_destination
    #   <p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to
    #               monitor and gain insights on your email sending metrics.</p>
    #   @return [Types::CloudWatchDestination]
    # @!attribute sns_destination
    #   <p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to
    #               send notification when certain email events occur.</p>
    #   @return [Types::SnsDestination]
    # @!attribute pinpoint_destination
    #   <p>An object that defines a Amazon Pinpoint destination for email events. You can use Amazon Pinpoint events
    #               to create attributes in Amazon Pinpoint projects. You can use these attributes to create segments
    #               for your campaigns.</p>
    #   @return [Types::PinpointDestination]
    class EventDestination < Struct.new(
      nil,
      :name,
      :enabled,
      :matching_event_types,
      :kinesis_firehose_destination,
      :cloud_watch_destination,
      :sns_destination,
      :pinpoint_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>An object that defines the event destination. Specifically, it defines which services
    #             receive events from emails sent using the configuration set that the event destination
    #             is associated with. Also defines the types of events that are sent to the event
    #             destination.</p>
    # @!attribute enabled
    #   <p>If <code>true</code>, the event destination is enabled. When the event destination is
    #               enabled, the specified event types are sent to the destinations in this
    #                   <code>EventDestinationDefinition</code>.</p>
    #           <p>If <code>false</code>, the event destination is disabled. When the event destination
    #               is disabled, events aren't sent to the specified destinations.</p>
    #   @return [Boolean]
    # @!attribute matching_event_types
    #   <p>An array that specifies which events Amazon Pinpoint should send to the destinations in this
    #                   <code>EventDestinationDefinition</code>.</p>
    #   @return [Array<String>]
    # @!attribute kinesis_firehose_destination
    #   <p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to
    #               stream data to other services, such as Amazon S3 and Amazon Redshift.</p>
    #   @return [Types::KinesisFirehoseDestination]
    # @!attribute cloud_watch_destination
    #   <p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to
    #               monitor and gain insights on your email sending metrics.</p>
    #   @return [Types::CloudWatchDestination]
    # @!attribute sns_destination
    #   <p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to
    #               send notification when certain email events occur.</p>
    #   @return [Types::SnsDestination]
    # @!attribute pinpoint_destination
    #   <p>An object that defines a Amazon Pinpoint destination for email events. You can use Amazon Pinpoint events
    #               to create attributes in Amazon Pinpoint projects. You can use these attributes to create segments
    #               for your campaigns.</p>
    #   @return [Types::PinpointDestination]
    class EventDestinationDefinition < Struct.new(
      nil,
      :enabled,
      :matching_event_types,
      :kinesis_firehose_destination,
      :cloud_watch_destination,
      :sns_destination,
      :pinpoint_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>A request to obtain information about the email-sending capabilities of your Amazon Pinpoint
    #             account.</p>
    class GetAccountRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of details about the email-sending capabilities of your Amazon Pinpoint account in the
    #             current AWS Region.</p>
    # @!attribute send_quota
    #   <p>An object that contains information about the per-day and per-second sending limits
    #               for your Amazon Pinpoint account in the current AWS Region.</p>
    #   @return [Types::SendQuota]
    # @!attribute sending_enabled
    #   <p>Indicates whether or not email sending is enabled for your Amazon Pinpoint account in the
    #               current AWS Region.</p>
    #   @return [Boolean]
    # @!attribute dedicated_ip_auto_warmup_enabled
    #   <p>Indicates whether or not the automatic warm-up feature is enabled for dedicated IP
    #               addresses that are associated with your account.</p>
    #   @return [Boolean]
    # @!attribute enforcement_status
    #   <p>The reputation status of your Amazon Pinpoint account. The status can be one of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>HEALTHY</code> – There are no reputation-related issues that
    #                       currently impact your account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PROBATION</code> – We've identified some issues with your Amazon Pinpoint
    #                       account. We're placing your account under review while you work on correcting
    #                       these issues.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SHUTDOWN</code> – Your account's ability to send email is
    #                       currently paused because of an issue with the email sent from your account. When
    #                       you correct the issue, you can contact us and request that your account's
    #                       ability to send email is resumed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute production_access_enabled
    #   <p>Indicates whether or not your account has production access in the current AWS
    #               Region.</p>
    #           <p>If the value is <code>false</code>, then your account is in the
    #                   <i>sandbox</i>. When your account is in the sandbox, you can only send
    #               email to verified identities. Additionally, the maximum number of emails you can send in
    #               a 24-hour period (your sending quota) is 200, and the maximum number of emails you can
    #               send per second (your maximum sending rate) is 1.</p>
    #           <p>If the value is <code>true</code>, then your account has production access. When your
    #               account has production access, you can send email to any address. The sending quota and
    #               maximum sending rate for your account vary based on your specific use case.</p>
    #   @return [Boolean]
    class GetAccountResponse < Struct.new(
      nil,
      :send_quota,
      :sending_enabled,
      :dedicated_ip_auto_warmup_enabled,
      :enforcement_status,
      :production_access_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:sending_enabled] = false unless options.key?(:sending_enabled)
        options[:dedicated_ip_auto_warmup_enabled] = false unless options.key?(:dedicated_ip_auto_warmup_enabled)
        options[:production_access_enabled] = false unless options.key?(:production_access_enabled)
        super
      end
    end

    # <p>A request to retrieve a list of the blacklists that your dedicated IP addresses appear
    #             on.</p>
    # @!attribute blacklist_item_names
    #   <p>A list of IP addresses that you want to retrieve blacklist information about. You can
    #               only specify the dedicated IP addresses that you use to send email using Amazon Pinpoint or
    #               Amazon SES.</p>
    #   @return [Array<String>]
    class GetBlacklistReportsRequest < Struct.new(
      nil,
      :blacklist_item_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about blacklist events.</p>
    # @!attribute blacklist_report
    #   <p>An object that contains information about a blacklist that one of your dedicated IP
    #               addresses appears on.</p>
    #   @return [Hash<String, Array<Types::BlacklistEntry>>]
    class GetBlacklistReportsResponse < Struct.new(
      nil,
      :blacklist_report,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to obtain information about the event destinations for a configuration
    #             set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that contains the event destination.</p>
    #   @return [String]
    class GetConfigurationSetEventDestinationsRequest < Struct.new(
      nil,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an event destination for a configuration set.</p>
    # @!attribute event_destinations
    #   <p>An array that includes all of the events destinations that have been configured for
    #               the configuration set.</p>
    #   @return [Array<Types::EventDestination>]
    class GetConfigurationSetEventDestinationsResponse < Struct.new(
      nil,
      :event_destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to obtain information about a configuration set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to obtain more information
    #               about.</p>
    #   @return [String]
    class GetConfigurationSetRequest < Struct.new(
      nil,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a configuration set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #   @return [String]
    # @!attribute tracking_options
    #   <p>An object that defines the open and click tracking options for emails that you send
    #               using the configuration set.</p>
    #   @return [Types::TrackingOptions]
    # @!attribute delivery_options
    #   <p>An object that defines the dedicated IP pool that is used to send emails that you send
    #               using the configuration set.</p>
    #   @return [Types::DeliveryOptions]
    # @!attribute reputation_options
    #   <p>An object that defines whether or not Amazon Pinpoint collects reputation metrics for the emails
    #               that you send that use the configuration set.</p>
    #   @return [Types::ReputationOptions]
    # @!attribute sending_options
    #   <p>An object that defines whether or not Amazon Pinpoint can send email that you send using the
    #               configuration set.</p>
    #   @return [Types::SendingOptions]
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) that are associated with
    #               the configuration set.</p>
    #   @return [Array<Types::Tag>]
    class GetConfigurationSetResponse < Struct.new(
      nil,
      :configuration_set_name,
      :tracking_options,
      :delivery_options,
      :reputation_options,
      :sending_options,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to obtain more information about a dedicated IP address.</p>
    # @!attribute ip
    #   <p>The IP address that you want to obtain more information about. The value you specify
    #               has to be a dedicated IP address that's assocaited with your Amazon Pinpoint account.</p>
    #   @return [String]
    class GetDedicatedIpRequest < Struct.new(
      nil,
      :ip,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a dedicated IP address.</p>
    # @!attribute dedicated_ip
    #   <p>An object that contains information about a dedicated IP address.</p>
    #   @return [Types::DedicatedIp]
    class GetDedicatedIpResponse < Struct.new(
      nil,
      :dedicated_ip,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to obtain more information about dedicated IP pools.</p>
    # @!attribute pool_name
    #   <p>The name of the IP pool that the dedicated IP address is associated with.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>GetDedicatedIps</code> to indicate the
    #               position of the dedicated IP pool in the list of IP pools.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of results to show in a single call to <code>GetDedicatedIpsRequest</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #   @return [Integer]
    class GetDedicatedIpsRequest < Struct.new(
      nil,
      :pool_name,
      :next_token,
      :page_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the dedicated IP addresses that are associated with your Amazon Pinpoint
    #             account.</p>
    # @!attribute dedicated_ips
    #   <p>A list of dedicated IP addresses that are reserved for use by your Amazon Pinpoint
    #               account.</p>
    #   @return [Array<Types::DedicatedIp>]
    # @!attribute next_token
    #   <p>A token that indicates that there are additional dedicated IP addresses to list. To
    #               view additional addresses, issue another request to <code>GetDedicatedIps</code>,
    #               passing this token in the <code>NextToken</code> parameter.</p>
    #   @return [String]
    class GetDedicatedIpsResponse < Struct.new(
      nil,
      :dedicated_ips,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Retrieve information about the status of the Deliverability dashboard for your Amazon Pinpoint account.
    #             When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and
    #             other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the
    #             ability to perform predictive inbox placement tests.</p>
    #         <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon Pinpoint. For more information about the
    #             features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/pinpoint/pricing/">Amazon Pinpoint Pricing</a>.</p>
    class GetDeliverabilityDashboardOptionsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that shows the status of the Deliverability dashboard for your Amazon Pinpoint account.</p>
    # @!attribute dashboard_enabled
    #   <p>Specifies whether the Deliverability dashboard is enabled for your Amazon Pinpoint account. If this value
    #               is <code>true</code>, the dashboard is enabled.</p>
    #   @return [Boolean]
    # @!attribute subscription_expiry_date
    #   <p>The date, in Unix time format, when your current subscription to the Deliverability dashboard
    #               is scheduled to expire, if your subscription is scheduled to expire at the end of the
    #               current calendar month. This value is null if you have an active subscription that isn’t
    #               due to expire at the end of the month.</p>
    #   @return [Time]
    # @!attribute account_status
    #   <p>The current status of your Deliverability dashboard subscription. If this value is
    #                   <code>PENDING_EXPIRATION</code>, your subscription is scheduled to expire at the end
    #               of the current calendar month.</p>
    #   @return [String]
    # @!attribute active_subscribed_domains
    #   <p>An array of objects, one for each verified domain that you use to send email and
    #               currently has an active Deliverability dashboard subscription that isn’t scheduled to expire at
    #               the end of the current calendar month.</p>
    #   @return [Array<Types::DomainDeliverabilityTrackingOption>]
    # @!attribute pending_expiration_subscribed_domains
    #   <p>An array of objects, one for each verified domain that you use to send email and
    #               currently has an active Deliverability dashboard subscription that's scheduled to expire at the
    #               end of the current calendar month.</p>
    #   @return [Array<Types::DomainDeliverabilityTrackingOption>]
    class GetDeliverabilityDashboardOptionsResponse < Struct.new(
      nil,
      :dashboard_enabled,
      :subscription_expiry_date,
      :account_status,
      :active_subscribed_domains,
      :pending_expiration_subscribed_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:dashboard_enabled] = false unless options.key?(:dashboard_enabled)
        super
      end
    end

    # <p>A request to retrieve the results of a predictive inbox placement test.</p>
    # @!attribute report_id
    #   <p>A unique string that identifies the predictive inbox placement test.</p>
    #   @return [String]
    class GetDeliverabilityTestReportRequest < Struct.new(
      nil,
      :report_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results of the predictive inbox placement test.</p>
    # @!attribute deliverability_test_report
    #   <p>An object that contains the results of the predictive inbox placement test.</p>
    #   @return [Types::DeliverabilityTestReport]
    # @!attribute overall_placement
    #   <p>An object that specifies how many test messages that were sent during the predictive inbox placement test were
    #               delivered to recipients' inboxes, how many were sent to recipients' spam folders, and
    #               how many weren't delivered.</p>
    #   @return [Types::PlacementStatistics]
    # @!attribute isp_placements
    #   <p>An object that describes how the test email was handled by several email providers,
    #               including Gmail, Hotmail, Yahoo, AOL, and others.</p>
    #   @return [Array<Types::IspPlacement>]
    # @!attribute message
    #   <p>An object that contains the message that you sent when you performed this
    #               predictive inbox placement test.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) that are associated with
    #               the predictive inbox placement test.</p>
    #   @return [Array<Types::Tag>]
    class GetDeliverabilityTestReportResponse < Struct.new(
      nil,
      :deliverability_test_report,
      :overall_placement,
      :isp_placements,
      :message,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Retrieve all the deliverability data for a specific campaign. This data is available
    #             for a campaign only if the campaign sent email by using a domain that the
    #             Deliverability dashboard is enabled for (<code>PutDeliverabilityDashboardOption</code>
    #             operation).</p>
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign. Amazon Pinpoint automatically generates and assigns this
    #               identifier to a campaign. This value is not the same as the campaign identifier that
    #               Amazon Pinpoint assigns to campaigns that you create and manage by using the Amazon Pinpoint API or the
    #               Amazon Pinpoint console.</p>
    #   @return [String]
    class GetDomainDeliverabilityCampaignRequest < Struct.new(
      nil,
      :campaign_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains all the deliverability data for a specific campaign. This data
    #             is available for a campaign only if the campaign sent email by using a domain that the
    #             Deliverability dashboard is enabled for (<code>PutDeliverabilityDashboardOption</code>
    #             operation).</p>
    # @!attribute domain_deliverability_campaign
    #   <p>An object that contains the deliverability data for the campaign.</p>
    #   @return [Types::DomainDeliverabilityCampaign]
    class GetDomainDeliverabilityCampaignResponse < Struct.new(
      nil,
      :domain_deliverability_campaign,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to obtain deliverability metrics for a domain.</p>
    # @!attribute domain
    #   <p>The domain that you want to obtain deliverability metrics for.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The first day (in Unix time) that you want to obtain domain deliverability metrics
    #               for.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The last day (in Unix time) that you want to obtain domain deliverability metrics for.
    #               The <code>EndDate</code> that you specify has to be less than or equal to 30 days after
    #               the <code>StartDate</code>.</p>
    #   @return [Time]
    class GetDomainStatisticsReportRequest < Struct.new(
      nil,
      :domain,
      :start_date,
      :end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that includes statistics that are related to the domain that you
    #             specified.</p>
    # @!attribute overall_volume
    #   <p>An object that contains deliverability metrics for the domain that you specified. The
    #               data in this object is a summary of all of the data that was collected from the
    #                   <code>StartDate</code> to the <code>EndDate</code>.</p>
    #   @return [Types::OverallVolume]
    # @!attribute daily_volumes
    #   <p>An object that contains deliverability metrics for the domain that you specified. This
    #               object contains data for each day, starting on the <code>StartDate</code> and ending on
    #               the <code>EndDate</code>.</p>
    #   @return [Array<Types::DailyVolume>]
    class GetDomainStatisticsReportResponse < Struct.new(
      nil,
      :overall_volume,
      :daily_volumes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to return details about an email identity.</p>
    # @!attribute email_identity
    #   <p>The email identity that you want to retrieve details for.</p>
    #   @return [String]
    class GetEmailIdentityRequest < Struct.new(
      nil,
      :email_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an email identity.</p>
    # @!attribute identity_type
    #   <p>The email identity type.</p>
    #   @return [String]
    # @!attribute feedback_forwarding_status
    #   <p>The feedback forwarding configuration for the identity.</p>
    #           <p>If the value is <code>true</code>, Amazon Pinpoint sends you email notifications when bounce or
    #               complaint events occur. Amazon Pinpoint sends this notification to the address that you specified
    #               in the Return-Path header of the original email.</p>
    #           <p>When you set this value to <code>false</code>, Amazon Pinpoint sends notifications through other
    #               mechanisms, such as by notifying an Amazon SNS topic or another event destination. You're
    #               required to have a method of tracking bounces and complaints. If you haven't set up
    #               another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email
    #               notification when these events occur (even if this setting is disabled).</p>
    #   @return [Boolean]
    # @!attribute verified_for_sending_status
    #   <p>Specifies whether or not the identity is verified. In Amazon Pinpoint, you can only send email
    #               from verified email addresses or domains. For more information about verifying
    #               identities, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html">Amazon Pinpoint User Guide</a>.</p>
    #   @return [Boolean]
    # @!attribute dkim_attributes
    #   <p>An object that contains information about the DKIM attributes for the identity. This
    #               object includes the tokens that you use to create the CNAME records that are required to
    #               complete the DKIM verification process.</p>
    #   @return [Types::DkimAttributes]
    # @!attribute mail_from_attributes
    #   <p>An object that contains information about the Mail-From attributes for the email
    #               identity.</p>
    #   @return [Types::MailFromAttributes]
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) that are associated with
    #               the email identity.</p>
    #   @return [Array<Types::Tag>]
    class GetEmailIdentityResponse < Struct.new(
      nil,
      :identity_type,
      :feedback_forwarding_status,
      :verified_for_sending_status,
      :dkim_attributes,
      :mail_from_attributes,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:feedback_forwarding_status] = false unless options.key?(:feedback_forwarding_status)
        options[:verified_for_sending_status] = false unless options.key?(:verified_for_sending_status)
        super
      end
    end

    # <p>Information about an email identity.</p>
    # @!attribute identity_type
    #   <p>The email identity type. The identity type can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>EMAIL_ADDRESS</code> – The identity is an email address.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DOMAIN</code> – The identity is a domain.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MANAGED_DOMAIN</code> – The identity is a domain that is managed
    #                       by AWS.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute identity_name
    #   <p>The address or domain of the identity.</p>
    #   @return [String]
    # @!attribute sending_enabled
    #   <p>Indicates whether or not you can send email from the identity.</p>
    #           <p>In Amazon Pinpoint, an identity is an email address or domain that you send email from. Before
    #               you can send email from an identity, you have to demostrate that you own the identity,
    #               and that you authorize Amazon Pinpoint to send email from that identity.</p>
    #   @return [Boolean]
    class IdentityInfo < Struct.new(
      nil,
      :identity_type,
      :identity_name,
      :sending_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:sending_enabled] = false unless options.key?(:sending_enabled)
        super
      end
    end

    # <p>An object that contains information about the inbox placement data settings for a
    #             verified domain that’s associated with your AWS account. This data is available only
    #             if you enabled the Deliverability dashboard for the domain
    #                 (<code>PutDeliverabilityDashboardOption</code> operation).</p>
    # @!attribute global
    #   <p>Specifies whether inbox placement data is being tracked for the domain.</p>
    #   @return [Boolean]
    # @!attribute tracked_isps
    #   <p>An array of strings, one for each major email provider that the inbox placement data
    #               applies to.</p>
    #   @return [Array<String>]
    class InboxPlacementTrackingOption < Struct.new(
      nil,
      :global,
      :tracked_isps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:global] = false unless options.key?(:global)
        super
      end
    end

    # <p>An object that describes how email sent during the predictive inbox placement test was handled by a certain
    #             email provider.</p>
    # @!attribute isp_name
    #   <p>The name of the email provider that the inbox placement data applies to.</p>
    #   @return [String]
    # @!attribute placement_statistics
    #   <p>An object that contains inbox placement metrics for a specific email provider.</p>
    #   @return [Types::PlacementStatistics]
    class IspPlacement < Struct.new(
      nil,
      :isp_name,
      :placement_statistics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to
    #             stream data to other services, such as Amazon S3 and Amazon Redshift.</p>
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Amazon Pinpoint uses when sending email
    #               events to the Amazon Kinesis Data Firehose stream.</p>
    #   @return [String]
    # @!attribute delivery_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose stream that Amazon Pinpoint sends email events
    #               to.</p>
    #   @return [String]
    class KinesisFirehoseDestination < Struct.new(
      nil,
      :iam_role_arn,
      :delivery_stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There are too many instances of the specified resource type.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to obtain a list of configuration sets for your Amazon Pinpoint account in the current
    #             AWS Region.</p>
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListConfigurationSets</code> to
    #               indicate the position in the list of configuration sets.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of results to show in a single call to <code>ListConfigurationSets</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #   @return [Integer]
    class ListConfigurationSetsRequest < Struct.new(
      nil,
      :next_token,
      :page_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of configuration sets in your Amazon Pinpoint account in the current AWS Region.</p>
    # @!attribute configuration_sets
    #   <p>An array that contains all of the configuration sets in your Amazon Pinpoint account in the
    #               current AWS Region.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A token that indicates that there are additional configuration sets to list. To view
    #               additional configuration sets, issue another request to
    #                   <code>ListConfigurationSets</code>, and pass this token in the
    #                   <code>NextToken</code> parameter.</p>
    #   @return [String]
    class ListConfigurationSetsResponse < Struct.new(
      nil,
      :configuration_sets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to obtain a list of dedicated IP pools.</p>
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListDedicatedIpPools</code> to indicate
    #               the position in the list of dedicated IP pools.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of results to show in a single call to <code>ListDedicatedIpPools</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #   @return [Integer]
    class ListDedicatedIpPoolsRequest < Struct.new(
      nil,
      :next_token,
      :page_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of dedicated IP pools.</p>
    # @!attribute dedicated_ip_pools
    #   <p>A list of all of the dedicated IP pools that are associated with your Amazon Pinpoint
    #               account.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A token that indicates that there are additional IP pools to list. To view additional
    #               IP pools, issue another request to <code>ListDedicatedIpPools</code>, passing this token
    #               in the <code>NextToken</code> parameter.</p>
    #   @return [String]
    class ListDedicatedIpPoolsResponse < Struct.new(
      nil,
      :dedicated_ip_pools,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to list all of the predictive inbox placement tests that you've performed.</p>
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListDeliverabilityTestReports</code> to
    #               indicate the position in the list of predictive inbox placement tests.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of results to show in a single call to
    #                   <code>ListDeliverabilityTestReports</code>. If the number of results is larger than
    #               the number you specified in this parameter, then the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #           <p>The value you specify has to be at least 0, and can be no more than 1000.</p>
    #   @return [Integer]
    class ListDeliverabilityTestReportsRequest < Struct.new(
      nil,
      :next_token,
      :page_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of the predictive inbox placement test reports that are available for your account, regardless of
    #             whether or not those tests are complete.</p>
    # @!attribute deliverability_test_reports
    #   <p>An object that contains a lists of predictive inbox placement tests that you've performed.</p>
    #   @return [Array<Types::DeliverabilityTestReport>]
    # @!attribute next_token
    #   <p>A token that indicates that there are additional predictive inbox placement tests to list. To view additional
    #               predictive inbox placement tests, issue another request to <code>ListDeliverabilityTestReports</code>, and pass
    #               this token in the <code>NextToken</code> parameter.</p>
    #   @return [String]
    class ListDeliverabilityTestReportsResponse < Struct.new(
      nil,
      :deliverability_test_reports,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Retrieve deliverability data for all the campaigns that used a specific domain to send
    #             email during a specified time range. This data is available for a domain only if you
    #             enabled the Deliverability dashboard (<code>PutDeliverabilityDashboardOption</code> operation)
    #             for the domain.</p>
    # @!attribute start_date
    #   <p>The first day, in Unix time format, that you want to obtain deliverability data
    #               for.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The last day, in Unix time format, that you want to obtain deliverability data for.
    #               This value has to be less than or equal to 30 days after the value of the
    #                   <code>StartDate</code> parameter.</p>
    #   @return [Time]
    # @!attribute subscribed_domain
    #   <p>The domain to obtain deliverability data for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that’s returned from a previous call to the
    #                   <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the
    #               position of a campaign in the list of campaigns.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to include in response to a single call to the
    #                   <code>ListDomainDeliverabilityCampaigns</code> operation. If the number of results
    #               is larger than the number that you specify in this parameter, the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #   @return [Integer]
    class ListDomainDeliverabilityCampaignsRequest < Struct.new(
      nil,
      :start_date,
      :end_date,
      :subscribed_domain,
      :next_token,
      :page_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An array of objects that provide deliverability data for all the campaigns that used a
    #             specific domain to send email during a specified time range. This data is available for
    #             a domain only if you enabled the Deliverability dashboard
    #                 (<code>PutDeliverabilityDashboardOption</code> operation) for the domain.</p>
    # @!attribute domain_deliverability_campaigns
    #   <p>An array of responses, one for each campaign that used the domain to send email during
    #               the specified time range.</p>
    #   @return [Array<Types::DomainDeliverabilityCampaign>]
    # @!attribute next_token
    #   <p>A token that’s returned from a previous call to the
    #                   <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the
    #               position of the campaign in the list of campaigns.</p>
    #   @return [String]
    class ListDomainDeliverabilityCampaignsResponse < Struct.new(
      nil,
      :domain_deliverability_campaigns,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to list all of the email identities associated with your Amazon Pinpoint account. This
    #             list includes identities that you've already verified, identities that are unverified,
    #             and identities that were verified in the past, but are no longer verified.</p>
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListEmailIdentities</code> to indicate
    #               the position in the list of identities.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The number of results to show in a single call to <code>ListEmailIdentities</code>. If
    #               the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #           <p>The value you specify has to be at least 0, and can be no more than 1000.</p>
    #   @return [Integer]
    class ListEmailIdentitiesRequest < Struct.new(
      nil,
      :next_token,
      :page_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of all of the identities that you've attempted to verify for use with Amazon Pinpoint,
    #             regardless of whether or not those identities were successfully verified.</p>
    # @!attribute email_identities
    #   <p>An array that includes all of the identities associated with your Amazon Pinpoint
    #               account.</p>
    #   @return [Array<Types::IdentityInfo>]
    # @!attribute next_token
    #   <p>A token that indicates that there are additional configuration sets to list. To view
    #               additional configuration sets, issue another request to
    #               <code>ListEmailIdentities</code>, and pass this token in the <code>NextToken</code>
    #               parameter.</p>
    #   @return [String]
    class ListEmailIdentitiesResponse < Struct.new(
      nil,
      :email_identities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tag
    #               information for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array that lists all the tags that are associated with the resource. Each tag
    #               consists of a required tag key (<code>Key</code>) and an associated tag value
    #                   (<code>Value</code>)</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of attributes that are associated with a MAIL FROM domain.</p>
    # @!attribute mail_from_domain
    #   <p>The name of a domain that an email identity uses as a custom MAIL FROM domain.</p>
    #   @return [String]
    # @!attribute mail_from_domain_status
    #   <p>The status of the MAIL FROM domain. This status can have the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PENDING</code> – Amazon Pinpoint hasn't started searching for the MX record
    #                       yet.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SUCCESS</code> – Amazon Pinpoint detected the required MX record for the
    #                       MAIL FROM domain.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FAILED</code> – Amazon Pinpoint can't find the required MX record, or the
    #                       record no longer exists.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TEMPORARY_FAILURE</code> – A temporary issue occurred, which
    #                       prevented Amazon Pinpoint from determining the status of the MAIL FROM domain.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute behavior_on_mx_failure
    #   <p>The action that Amazon Pinpoint to takes if it can't read the required MX record for a custom
    #               MAIL FROM domain. When you set this value to <code>UseDefaultValue</code>, Amazon Pinpoint uses
    #                   <i>amazonses.com</i> as the MAIL FROM domain. When you set this value
    #               to <code>RejectMessage</code>, Amazon Pinpoint returns a <code>MailFromDomainNotVerified</code>
    #               error, and doesn't attempt to deliver the email.</p>
    #           <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the
    #                   <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>
    #               states.</p>
    #   @return [String]
    class MailFromAttributes < Struct.new(
      nil,
      :mail_from_domain,
      :mail_from_domain_status,
      :behavior_on_mx_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message can't be sent because the sending domain isn't verified.</p>
    # @!attribute message
    #   @return [String]
    class MailFromDomainNotVerifiedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the email message that you're sending. The <code>Message</code> object
    #             consists of a subject line and a message body.</p>
    # @!attribute subject
    #   <p>The subject line of the email. The subject line can only contain 7-bit ASCII
    #               characters. However, you can specify non-ASCII characters in the subject line by using
    #               encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>.</p>
    #   @return [Types::Content]
    # @!attribute body
    #   <p>The body of the message. You can specify an HTML version of the message, a text-only
    #               version of the message, or both.</p>
    #   @return [Types::Body]
    class Message < Struct.new(
      nil,
      :subject,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message can't be sent because it contains invalid content.</p>
    # @!attribute message
    #   @return [String]
    class MessageRejected < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the name and value of a tag that you apply to an email. You can use message
    #             tags when you publish email sending events.
    #             </p>
    # @!attribute name
    #   <p>The name of the message tag. The message tag name has to meet the following
    #               criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>It can contain no more than 256 characters.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the message tag. The message tag value has to meet the following
    #               criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>It can contain no more than 256 characters.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class MessageTag < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource you attempted to access doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about email that was sent from the selected
    #             domain.</p>
    # @!attribute volume_statistics
    #   <p>An object that contains information about the numbers of messages that arrived in
    #               recipients' inboxes and junk mail folders.</p>
    #   @return [Types::VolumeStatistics]
    # @!attribute read_rate_percent
    #   <p>The percentage of emails that were sent from the domain that were read by their
    #               recipients.</p>
    #   @return [Float]
    # @!attribute domain_isp_placements
    #   <p>An object that contains inbox and junk mail placement metrics for individual email
    #               providers.</p>
    #   @return [Array<Types::DomainIspPlacement>]
    class OverallVolume < Struct.new(
      nil,
      :volume_statistics,
      :read_rate_percent,
      :domain_isp_placements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines a Amazon Pinpoint destination for email events. You can use Amazon Pinpoint events
    #             to create attributes in Amazon Pinpoint projects. You can use these attributes to create segments
    #             for your campaigns.</p>
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Pinpoint project that you want to send email
    #               events to.</p>
    #   @return [String]
    class PinpointDestination < Struct.new(
      nil,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains inbox placement data for an email provider.</p>
    # @!attribute inbox_percentage
    #   <p>The percentage of emails that arrived in recipients' inboxes during the predictive inbox placement test.</p>
    #   @return [Float]
    # @!attribute spam_percentage
    #   <p>The percentage of emails that arrived in recipients' spam or junk mail folders during
    #               the predictive inbox placement test.</p>
    #   @return [Float]
    # @!attribute missing_percentage
    #   <p>The percentage of emails that didn't arrive in recipients' inboxes at all during the
    #               predictive inbox placement test.</p>
    #   @return [Float]
    # @!attribute spf_percentage
    #   <p>The percentage of emails that were authenticated by using Sender Policy Framework
    #               (SPF) during the predictive inbox placement test.</p>
    #   @return [Float]
    # @!attribute dkim_percentage
    #   <p>The percentage of emails that were authenticated by using DomainKeys Identified Mail
    #               (DKIM) during the predictive inbox placement test.</p>
    #   @return [Float]
    class PlacementStatistics < Struct.new(
      nil,
      :inbox_percentage,
      :spam_percentage,
      :missing_percentage,
      :spf_percentage,
      :dkim_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to enable or disable the automatic IP address warm-up feature.</p>
    # @!attribute auto_warmup_enabled
    #   <p>Enables or disables the automatic warm-up feature for dedicated IP addresses that are
    #               associated with your Amazon Pinpoint account in the current AWS Region. Set to <code>true</code>
    #               to enable the automatic warm-up feature, or set to <code>false</code> to disable
    #               it.</p>
    #   @return [Boolean]
    class PutAccountDedicatedIpWarmupAttributesRequest < Struct.new(
      nil,
      :auto_warmup_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutAccountDedicatedIpWarmupAttributesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to change the ability of your account to send email.</p>
    # @!attribute sending_enabled
    #   <p>Enables or disables your account's ability to send email. Set to <code>true</code> to
    #               enable email sending, or set to <code>false</code> to disable email sending.</p>
    #           <note>
    #               <p>If AWS paused your account's ability to send email, you can't use this operation
    #                   to resume your account's ability to send email.</p>
    #           </note>
    #   @return [Boolean]
    class PutAccountSendingAttributesRequest < Struct.new(
      nil,
      :sending_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutAccountSendingAttributesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to associate a configuration set with a dedicated IP pool.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to associate with a dedicated IP
    #               pool.</p>
    #   @return [String]
    # @!attribute tls_policy
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only
    #               delivered if a TLS connection can be established. If the value is <code>Optional</code>,
    #               messages can be delivered in plain text if a TLS connection can't be established.</p>
    #   @return [String]
    # @!attribute sending_pool_name
    #   <p>The name of the dedicated IP pool that you want to associate with the configuration
    #               set.</p>
    #   @return [String]
    class PutConfigurationSetDeliveryOptionsRequest < Struct.new(
      nil,
      :configuration_set_name,
      :tls_policy,
      :sending_pool_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutConfigurationSetDeliveryOptionsResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to enable or disable tracking of reputation metrics for a configuration
    #             set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to enable or disable reputation metric
    #               tracking for.</p>
    #   @return [String]
    # @!attribute reputation_metrics_enabled
    #   <p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration
    #               set. If <code>false</code>, tracking of reputation metrics is disabled for the
    #               configuration set.</p>
    #   @return [Boolean]
    class PutConfigurationSetReputationOptionsRequest < Struct.new(
      nil,
      :configuration_set_name,
      :reputation_metrics_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutConfigurationSetReputationOptionsResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to enable or disable the ability of Amazon Pinpoint to send emails that use a specific
    #             configuration set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to enable or disable email sending
    #               for.</p>
    #   @return [String]
    # @!attribute sending_enabled
    #   <p>If <code>true</code>, email sending is enabled for the configuration set. If
    #                   <code>false</code>, email sending is disabled for the configuration set.</p>
    #   @return [Boolean]
    class PutConfigurationSetSendingOptionsRequest < Struct.new(
      nil,
      :configuration_set_name,
      :sending_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutConfigurationSetSendingOptionsResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to add a custom domain for tracking open and click events to a configuration
    #             set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to add a custom tracking domain
    #               to.</p>
    #   @return [String]
    # @!attribute custom_redirect_domain
    #   <p>The domain that you want to use to track open and click events.</p>
    #   @return [String]
    class PutConfigurationSetTrackingOptionsRequest < Struct.new(
      nil,
      :configuration_set_name,
      :custom_redirect_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutConfigurationSetTrackingOptionsResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to move a dedicated IP address to a dedicated IP pool.</p>
    # @!attribute ip
    #   <p>The IP address that you want to move to the dedicated IP pool. The value you specify
    #               has to be a dedicated IP address that's associated with your Amazon Pinpoint account.</p>
    #   @return [String]
    # @!attribute destination_pool_name
    #   <p>The name of the IP pool that you want to add the dedicated IP address to. You have to
    #               specify an IP pool that already exists.</p>
    #   @return [String]
    class PutDedicatedIpInPoolRequest < Struct.new(
      nil,
      :ip,
      :destination_pool_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutDedicatedIpInPoolResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to change the warm-up attributes for a dedicated IP address. This operation
    #             is useful when you want to resume the warm-up process for an existing IP address.</p>
    # @!attribute ip
    #   <p>The dedicated IP address that you want to update the warm-up attributes for.</p>
    #   @return [String]
    # @!attribute warmup_percentage
    #   <p>The warm-up percentage that you want to associate with the dedicated IP
    #               address.</p>
    #   @return [Integer]
    class PutDedicatedIpWarmupAttributesRequest < Struct.new(
      nil,
      :ip,
      :warmup_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutDedicatedIpWarmupAttributesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Enable or disable the Deliverability dashboard for your Amazon Pinpoint account. When you enable the
    #             Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for
    #             the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform
    #             predictive inbox placement tests.</p>
    #         <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon Pinpoint. For more information about the
    #             features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/pinpoint/pricing/">Amazon Pinpoint Pricing</a>.</p>
    # @!attribute dashboard_enabled
    #   <p>Specifies whether to enable the Deliverability dashboard for your Amazon Pinpoint account. To enable the
    #               dashboard, set this value to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute subscribed_domains
    #   <p>An array of objects, one for each verified domain that you use to send email and
    #               enabled the Deliverability dashboard for.</p>
    #   @return [Array<Types::DomainDeliverabilityTrackingOption>]
    class PutDeliverabilityDashboardOptionRequest < Struct.new(
      nil,
      :dashboard_enabled,
      :subscribed_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A response that indicates whether the Deliverability dashboard is enabled for your Amazon Pinpoint
    #             account.</p>
    class PutDeliverabilityDashboardOptionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to enable or disable DKIM signing of email that you send from an email
    #             identity.</p>
    # @!attribute email_identity
    #   <p>The email identity that you want to change the DKIM settings for.</p>
    #   @return [String]
    # @!attribute signing_enabled
    #   <p>Sets the DKIM signing configuration for the identity.</p>
    #           <p>When you set this value <code>true</code>, then the messages that Amazon Pinpoint sends from the
    #               identity are DKIM-signed. When you set this value to <code>false</code>, then the
    #               messages that Amazon Pinpoint sends from the identity aren't DKIM-signed.</p>
    #   @return [Boolean]
    class PutEmailIdentityDkimAttributesRequest < Struct.new(
      nil,
      :email_identity,
      :signing_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutEmailIdentityDkimAttributesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to set the attributes that control how bounce and complaint events are
    #             processed.</p>
    # @!attribute email_identity
    #   <p>The email identity that you want to configure bounce and complaint feedback forwarding
    #               for.</p>
    #   @return [String]
    # @!attribute email_forwarding_enabled
    #   <p>Sets the feedback forwarding configuration for the identity.</p>
    #           <p>If the value is <code>true</code>, Amazon Pinpoint sends you email notifications when bounce or
    #               complaint events occur. Amazon Pinpoint sends this notification to the address that you specified
    #               in the Return-Path header of the original email.</p>
    #           <p>When you set this value to <code>false</code>, Amazon Pinpoint sends notifications through other
    #               mechanisms, such as by notifying an Amazon SNS topic or another event destination. You're
    #               required to have a method of tracking bounces and complaints. If you haven't set up
    #               another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email
    #               notification when these events occur (even if this setting is disabled).</p>
    #   @return [Boolean]
    class PutEmailIdentityFeedbackAttributesRequest < Struct.new(
      nil,
      :email_identity,
      :email_forwarding_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutEmailIdentityFeedbackAttributesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to configure the custom MAIL FROM domain for a verified identity.</p>
    # @!attribute email_identity
    #   <p>The verified email identity that you want to set up the custom MAIL FROM domain
    #               for.</p>
    #   @return [String]
    # @!attribute mail_from_domain
    #   <p> The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM
    #               domain must meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It has to be a subdomain of the verified identity.</p>
    #               </li>
    #               <li>
    #                   <p>It can't be used to receive email.</p>
    #               </li>
    #               <li>
    #                   <p>It can't be used in a "From" address if the MAIL FROM domain is a destination
    #                       for feedback forwarding emails.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute behavior_on_mx_failure
    #   <p>The action that you want Amazon Pinpoint to take if it can't read the required MX record when
    #               you send an email. When you set this value to <code>UseDefaultValue</code>, Amazon Pinpoint uses
    #                   <i>amazonses.com</i> as the MAIL FROM domain. When you set this value
    #               to <code>RejectMessage</code>, Amazon Pinpoint returns a <code>MailFromDomainNotVerified</code>
    #               error, and doesn't attempt to deliver the email.</p>
    #           <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the
    #                   <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>
    #               states.</p>
    #   @return [String]
    class PutEmailIdentityMailFromAttributesRequest < Struct.new(
      nil,
      :email_identity,
      :mail_from_domain,
      :behavior_on_mx_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class PutEmailIdentityMailFromAttributesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The raw email message.</p>
    # @!attribute data
    #   <p>The raw email message. The message has to meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>The message has to contain a header and a body, separated by one blank
    #                       line.</p>
    #               </li>
    #               <li>
    #                   <p>All of the required header fields must be present in the message.</p>
    #               </li>
    #               <li>
    #                   <p>Each part of a multipart MIME message must be formatted properly.</p>
    #               </li>
    #               <li>
    #                   <p>Attachments must be in a file format that Amazon Pinpoint supports.
    #                       </p>
    #               </li>
    #               <li>
    #                   <p>The entire message must be Base64 encoded.</p>
    #               </li>
    #               <li>
    #                   <p>If any of the MIME parts in your message contain content that is outside of
    #                       the 7-bit ASCII character range, you should encode that content to ensure that
    #                       recipients' email clients render the message properly.</p>
    #               </li>
    #               <li>
    #                   <p>The length of any single line of text in the message can't exceed 1,000
    #                       characters. This restriction is defined in <a href="https://tools.ietf.org/html/rfc5321">RFC 5321</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class RawMessage < Struct.new(
      nil,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Enable or disable collection of reputation metrics for emails that you send using this
    #             configuration set in the current AWS Region. </p>
    # @!attribute reputation_metrics_enabled
    #   <p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration
    #               set. If <code>false</code>, tracking of reputation metrics is disabled for the
    #               configuration set.</p>
    #   @return [Boolean]
    # @!attribute last_fresh_start
    #   <p>The date and time (in Unix time) when the reputation metrics were last given a fresh
    #               start. When your account is given a fresh start, your reputation metrics are calculated
    #               starting from the date of the fresh start.</p>
    #   @return [Time]
    class ReputationOptions < Struct.new(
      nil,
      :reputation_metrics_enabled,
      :last_fresh_start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:reputation_metrics_enabled] = false unless options.key?(:reputation_metrics_enabled)
        super
      end
    end

    # <p>A request to send an email message.</p>
    # @!attribute from_email_address
    #   <p>The email address that you want to use as the "From" address for the email. The
    #               address that you specify has to be verified.
    #               </p>
    #   @return [String]
    # @!attribute destination
    #   <p>An object that contains the recipients of the email message.</p>
    #   @return [Types::Destination]
    # @!attribute reply_to_addresses
    #   <p>The "Reply-to" email addresses for the message. When the recipient replies to the
    #               message, each Reply-to address receives the reply.</p>
    #   @return [Array<String>]
    # @!attribute feedback_forwarding_email_address
    #   <p>The address that Amazon Pinpoint should send bounce and complaint notifications to.</p>
    #   @return [String]
    # @!attribute content
    #   <p>An object that contains the body of the message. You can send either a Simple message
    #               or a Raw message.</p>
    #   @return [Types::EmailContent]
    # @!attribute email_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using the <code>SendEmail</code> operation. Tags correspond to characteristics of the
    #               email that you define, so that you can publish email sending events. </p>
    #   @return [Array<Types::MessageTag>]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to use when sending the email.</p>
    #   @return [String]
    class SendEmailRequest < Struct.new(
      nil,
      :from_email_address,
      :destination,
      :reply_to_addresses,
      :feedback_forwarding_email_address,
      :content,
      :email_tags,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A unique message ID that you receive when Amazon Pinpoint accepts an email for sending.</p>
    # @!attribute message_id
    #   <p>A unique identifier for the message that is generated when Amazon Pinpoint accepts the
    #               message.</p>
    #           <note>
    #               <p>It is possible for Amazon Pinpoint to accept a message without sending it. This can happen
    #                   when the message you're trying to send has an attachment doesn't pass a virus check,
    #                   or when you send a templated email that contains invalid personalization content,
    #                   for example.</p>
    #           </note>
    #   @return [String]
    class SendEmailResponse < Struct.new(
      nil,
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about the per-day and per-second sending limits
    #             for your Amazon Pinpoint account in the current AWS Region.</p>
    # @!attribute max24_hour_send
    #   <p>The maximum number of emails that you can send in the current AWS Region over a
    #               24-hour period. This value is also called your <i>sending
    #               quota</i>.</p>
    #   @return [Float]
    # @!attribute max_send_rate
    #   <p>The maximum number of emails that you can send per second in the current AWS Region.
    #               This value is also called your <i>maximum sending rate</i> or your
    #                   <i>maximum TPS (transactions per second) rate</i>.</p>
    #   @return [Float]
    # @!attribute sent_last24_hours
    #   <p>The number of emails sent from your Amazon Pinpoint account in the current AWS Region over the
    #               past 24 hours.</p>
    #   @return [Float]
    class SendQuota < Struct.new(
      nil,
      :max24_hour_send,
      :max_send_rate,
      :sent_last24_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max24_hour_send] = 0 unless options.key?(:max24_hour_send)
        options[:max_send_rate] = 0 unless options.key?(:max_send_rate)
        options[:sent_last24_hours] = 0 unless options.key?(:sent_last24_hours)
        super
      end
    end

    # <p>Used to enable or disable email sending for messages that use this configuration set
    #             in the current AWS Region.</p>
    # @!attribute sending_enabled
    #   <p>If <code>true</code>, email sending is enabled for the configuration set. If
    #                   <code>false</code>, email sending is disabled for the configuration set.</p>
    #   @return [Boolean]
    class SendingOptions < Struct.new(
      nil,
      :sending_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:sending_enabled] = false unless options.key?(:sending_enabled)
        super
      end
    end

    # <p>The message can't be sent because the account's ability to send email is currently
    #             paused.</p>
    # @!attribute message
    #   @return [String]
    class SendingPausedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to
    #             send notification when certain email events occur.</p>
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish email
    #               events to. For more information about Amazon SNS topics, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer
    #                   Guide</a>.</p>
    #   @return [String]
    class SnsDestination < Struct.new(
      nil,
      :topic_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines the tags that are associated with a resource.
    #                 A <i>tag</i> is a label that you optionally define and associate with
    #             a resource in Amazon Pinpoint. Tags can help you categorize and manage resources in different
    #             ways, such as by purpose, owner, environment, or other criteria. A resource can have as
    #             many as 50 tags.</p>
    #         <p>Each tag consists of a required <i>tag key</i> and an
    #                 associated <i>tag value</i>, both of which you define. A tag key is a
    #             general label that acts as a category for a more specific tag value. A tag value acts as
    #             a descriptor within a tag key. A tag key can contain as many as 128 characters. A tag
    #             value can contain as many as 256 characters. The characters can be Unicode letters,
    #             digits, white space, or one of the following symbols: _ . : / = + -. The following
    #             additional restrictions apply to tags:</p>
    #         <ul>
    #             <li>
    #                 <p>Tag keys and values are case sensitive.</p>
    #             </li>
    #             <li>
    #                 <p>For each associated resource, each tag key must be unique and it can have only
    #                     one value.</p>
    #             </li>
    #             <li>
    #                 <p>The <code>aws:</code> prefix is reserved for use by AWS; you can’t use it in
    #                     any tag keys or values that you define. In addition, you can't edit or remove
    #                     tag keys or values that use this prefix. Tags that use this prefix don’t count
    #                     against the limit of 50 tags per resource.</p>
    #             </li>
    #             <li>
    #                 <p>You can associate tags with public or shared resources, but the tags are
    #                     available only for your AWS account, not any other accounts that share the
    #                     resource. In addition, the tags are available only for resources that are
    #                     located in the specified AWS Region for your AWS account.</p>
    #             </li>
    #          </ul>
    # @!attribute key
    #   <p>One part of a key-value pair that defines a tag. The maximum length of a tag key is
    #               128 characters. The minimum length is 1 character.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The optional part of a key-value pair that defines a tag. The maximum length of a tag
    #               value is 256 characters. The minimum length is 0 characters. If you don’t want a
    #               resource to have a specific tag value, don’t specify a value for this parameter. Amazon Pinpoint
    #               will set the value to an empty string.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add one or more tags
    #               to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of the tags that you want to add to the resource. A tag consists of a required
    #               tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum
    #               length of a tag key is 128 characters. The maximum length of a tag value is 256
    #               characters.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #   @return [String]
    # @!attribute template_data
    #   <p>An object that defines the values to use for message variables in the template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the value to use for that variable.</p>
    #   @return [String]
    class Template < Struct.new(
      nil,
      :template_arn,
      :template_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Too many requests have been made to the operation.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines the tracking options for a configuration set. When you use
    #             Amazon Pinpoint to send an email, it contains an invisible image that's used to track when
    #             recipients open your email. If your email contains links, those links are changed
    #             slightly in order to track when recipients click them.</p>
    #         <p>These images and links include references to a domain operated by AWS. You can
    #             optionally configure Amazon Pinpoint to use a domain that you operate for these images and
    #             links.</p>
    # @!attribute custom_redirect_domain
    #   <p>The domain that you want to use for tracking open and click events.</p>
    #   @return [String]
    class TrackingOptions < Struct.new(
      nil,
      :custom_redirect_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove one or more
    #               tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tags (tag keys) that you want to remove from the resource. When you specify a tag
    #               key, the action removes both that key and its associated tag value.</p>
    #           <p>To remove more than one tag from the resource, append the <code>TagKeys</code>
    #               parameter and argument for each additional tag to remove, separated by an ampersand. For
    #               example:
    #                   <code>/v1/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2</code>
    #           </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to change the settings for an event destination for a configuration
    #             set.</p>
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that contains the event destination that you want to
    #               modify.</p>
    #   @return [String]
    # @!attribute event_destination_name
    #   <p>The name of the event destination that you want to modify.</p>
    #   @return [String]
    # @!attribute event_destination
    #   <p>An object that defines the event destination.</p>
    #   @return [Types::EventDestinationDefinition]
    class UpdateConfigurationSetEventDestinationRequest < Struct.new(
      nil,
      :configuration_set_name,
      :event_destination_name,
      :event_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    class UpdateConfigurationSetEventDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about the amount of email that was delivered to
    #             recipients.</p>
    # @!attribute inbox_raw_count
    #   <p>The total number of emails that arrived in recipients' inboxes.</p>
    #   @return [Integer]
    # @!attribute spam_raw_count
    #   <p>The total number of emails that arrived in recipients' spam or junk mail
    #               folders.</p>
    #   @return [Integer]
    # @!attribute projected_inbox
    #   <p>An estimate of the percentage of emails sent from the current domain that will arrive
    #               in recipients' inboxes.</p>
    #   @return [Integer]
    # @!attribute projected_spam
    #   <p>An estimate of the percentage of emails sent from the current domain that will arrive
    #               in recipients' spam or junk mail folders.</p>
    #   @return [Integer]
    class VolumeStatistics < Struct.new(
      nil,
      :inbox_raw_count,
      :spam_raw_count,
      :projected_inbox,
      :projected_spam,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
