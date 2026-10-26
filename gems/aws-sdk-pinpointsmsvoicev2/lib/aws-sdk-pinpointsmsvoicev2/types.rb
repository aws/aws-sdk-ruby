# frozen_string_literal: true

# This is generated code!

module Aws::PinpointSMSVoiceV2
  # This module contains the types returned by client operations.
  module Types

    # <p>The request was denied because you don't have sufficient permissions to access the resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Displays the attributes associated with a single Amazon Web Services account.</p>
    # @!attribute name
    #   <p>The name of the account attribute.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value associated with the account attribute name.</p>
    #   @return [String]
    class AccountAttribute < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current resource quotas associated with an Amazon Web Services account.</p>
    # @!attribute name
    #   <p>The name of the attribute to apply the account limit to.</p>
    #   @return [String]
    # @!attribute used
    #   <p>The current amount that has been spent, in US dollars.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The Amazon Web Services set limit for that resource type, in US dollars.</p>
    #   @return [Integer]
    class AccountLimit < Struct.new(
      nil,
      :name,
      :used,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:used] = 0 unless options.key?(:used)
        options[:max] = 0 unless options.key?(:max)
        super
      end
    end

    # @!attribute pool_id
    #   <p>The pool to update with the new Identity. This value can be either the PoolId or PoolArn, and you can find these values using <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_DescribePools.html">DescribePools</a>.</p> <important> <p>If you are using a shared End User Messaging SMS; resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity to use, such as PhoneNumberId, PhoneNumberArn, SenderId, or SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn, while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the origination identity. This field is optional and is not required for origination identity types that are not country-specific, such as RCS agents.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class AssociateOriginationIdentityRequest < Struct.new(
      nil,
      :pool_id,
      :origination_identity,
      :iso_country_code,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the pool that is now associated with the origination identity.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The PoolId of the pool that is now associated with the origination identity.</p>
    #   @return [String]
    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or SenderIdArn of the origination identity.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or SenderId of the origination identity.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    class AssociateOriginationIdentityResult < Struct.new(
      nil,
      :pool_arn,
      :pool_id,
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #   @return [String]
    class AssociateProtectConfigurationRequest < Struct.new(
      nil,
      :protect_configuration_id,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #   @return [String]
    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    class AssociateProtectConfigurationResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :protect_configuration_arn,
      :protect_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number
    #   <p>The phone number that you want to retrieve information about. You can provide the phone number in various formats including special characters such as parentheses, brackets, spaces, hyphens, periods, and commas. The service automatically converts the input to E164 format for processing.</p>
    #   @return [String]
    # @!attribute enable_cleansing
    #   <p>Specifies whether the service cleanses the phone number that you provide. When set to <code>true</code>, the service normalizes the phone number according to the destination country's national numbering plan and dialing rules. The service returns the cleansed number in E.164 format in the <code>E164PhoneNumber</code> field and returns the number that you provided in the <code>OriginalPhoneNumber</code> field.</p>
    #   @return [Boolean]
    class CarrierLookupRequest < Struct.new(
      nil,
      :phone_number,
      :enable_cleansing,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute e164_phone_number
    #   <p>The phone number in E164 format, sanitized from the original input by removing any formatting characters.</p>
    #   @return [String]
    # @!attribute dialing_country_code
    #   <p>The country or region numeric dialing code for the phone number.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character country or region code, in ISO 3166-1 alpha-2 format, for the phone number.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The name of the country or region for the phone number.</p>
    #   @return [String]
    # @!attribute mcc
    #   <p>The phone number's mobile country code, for mobile phone number types</p>
    #   @return [String]
    # @!attribute mnc
    #   <p>The phone number's mobile network code, for mobile phone number types.</p>
    #   @return [String]
    # @!attribute carrier
    #   <p>The carrier or service provider that the phone number is currently registered with. In some countries and regions, this value may be the carrier or service provider that the phone number was originally registered with.</p>
    #   @return [String]
    # @!attribute phone_number_type
    #   <p>Describes the type of phone number. Valid values are: MOBILE, LANDLINE, VOIP, PREPAID, OTHER, and INVALID. Avoid sending SMS or voice messages to INVALID phone numbers, as these numbers are unlikely to belong to actual recipients.</p>
    #   @return [String]
    # @!attribute original_phone_number
    #   <p>The phone number exactly as you supplied it in the request. This field is returned only when you set <code>EnableCleansing</code> to <code>true</code>, the phone number was cleansed, and a normalized E.164 phone number was returned in the <code>E164PhoneNumber</code> field.</p>
    #   @return [String]
    class CarrierLookupResult < Struct.new(
      nil,
      :e164_phone_number,
      :dialing_country_code,
      :iso_country_code,
      :country,
      :mcc,
      :mnc,
      :carrier,
      :phone_number_type,
      :original_phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains carrier-level launch status details for an RCS agent within a country.</p>
    # @!attribute carrier_name
    #   <p>The name of the carrier.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The launch status for this carrier.</p>
    #   @return [String]
    class CarrierStatusInformation < Struct.new(
      nil,
      :carrier_name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the destination configuration to use when publishing message sending events. </p>
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management role that is able to write event data to an Amazon CloudWatch destination.</p>
    #   @return [String]
    # @!attribute log_group_arn
    #   <p>The name of the Amazon CloudWatch log group that you want to record events in. </p>
    #   @return [String]
    class CloudWatchLogsDestination < Struct.new(
      nil,
      :iam_role_arn,
      :log_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of conditional rules that determine a field's resolved requirement based on the values of other fields in the same registration form. Attached to fields whose <b>FieldRequirement</b> is <b>CONDITIONAL</b>.</p> <p>Evaluation proceeds top-to-bottom through <b>Rules</b>. The first rule whose conditions all evaluate to true wins and its behavior is returned. If no rule matches, the <b>DefaultBehavior</b> is returned.</p>
    # @!attribute rules
    #   <p>An ordered list of conditional rules. Rules are evaluated top-to-bottom and the first rule whose conditions all evaluate to true determines the field's behavior. Rules whose conditions do not all match are skipped and evaluation continues to the next rule.</p>
    #   @return [Array<Types::ConditionalRule>]
    # @!attribute default_behavior
    #   <p>The field behavior that applies when no conditional rule in <b>Rules</b> matches. Valid values are <b>REQUIRED</b>, <b>OPTIONAL</b>, and <b>DISALLOWED</b>.</p>
    #   @return [String]
    class ConditionalBehavior < Struct.new(
      nil,
      :rules,
      :default_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single conditional rule that resolves to a field behavior when all of its conditions evaluate to true. Conditions within a rule are combined with logical AND: all conditions must match for the rule to fire.</p>
    # @!attribute conditions
    #   <p>The conditions that must all evaluate to true for this rule to match. Conditions are combined with logical AND. Use multiple rules with the same <b>RuleBehavior</b> to express logical OR.</p>
    #   @return [Array<Types::FieldCondition>]
    # @!attribute rule_behavior
    #   <p>The field behavior that applies when all conditions in this rule match. Valid values are <b>REQUIRED</b>, <b>OPTIONAL</b>, and <b>DISALLOWED</b>.</p>
    #   @return [String]
    # @!attribute conditional_validation
    #   <p>Optional per-rule validation constraints (minimum length, maximum length, regex pattern, allowed select values) that override the field's default validation when this rule matches.</p>
    #   @return [Types::ConditionalValidation]
    class ConditionalRule < Struct.new(
      nil,
      :conditions,
      :rule_behavior,
      :conditional_validation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Per-rule validation constraints that override the field's default validation when the containing rule matches. All fields are optional; only the constraints that need to differ from the field's default validation are provided.</p>
    # @!attribute min_length
    #   <p>The minimum length for the field value when this rule applies.</p>
    #   @return [Integer]
    # @!attribute max_length
    #   <p>The maximum length for the field value when this rule applies.</p>
    #   @return [Integer]
    # @!attribute pattern
    #   <p>A regular expression that the field value must match when this rule applies.</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>The allowed values for a select field when this rule applies. A subset of the field's full option list.</p>
    #   @return [Array<String>]
    class ConditionalValidation < Struct.new(
      nil,
      :min_length,
      :max_length,
      :pattern,
      :allowed_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for configuration sets that meet a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class ConfigurationSetFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information related to a given configuration set in your Amazon Web Services account.</p>
    # @!attribute configuration_set_arn
    #   <p>The Resource Name (ARN) of the ConfigurationSet.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #   @return [String]
    # @!attribute event_destinations
    #   <p>An array of EventDestination objects that describe any events to log and where to log them.</p>
    #   @return [Array<Types::EventDestination>]
    # @!attribute default_message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute default_sender_id
    #   <p>The default sender ID used by the ConfigurationSet.</p>
    #   @return [String]
    # @!attribute default_message_feedback_enabled
    #   <p>True if message feedback is enabled.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the ConfigurationSet was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    class ConfigurationSetInformation < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :event_destinations,
      :default_message_type,
      :default_sender_id,
      :default_message_feedback_enabled,
      :created_timestamp,
      :protect_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more than one operation on the same resource at the same time or it could be that the requested action isn't valid for the current state or configuration of the resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the request.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :reason,
      :resource_type,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a country launch status that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class CountryLaunchStatusFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains per-country launch status details for an RCS agent.</p>
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The launch status for this country.</p>
    #   @return [String]
    # @!attribute rcs_platform_id
    #   <p>The RCS platform identifier for this country.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier of the registration associated with this country launch.</p>
    #   @return [String]
    # @!attribute carrier_status
    #   <p>An array of CarrierStatusInformation objects containing carrier-level launch status details.</p>
    #   @return [Array<Types::CarrierStatusInformation>]
    class CountryLaunchStatusInformation < Struct.new(
      nil,
      :iso_country_code,
      :status,
      :rcs_platform_id,
      :registration_id,
      :carrier_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name to use for the new configuration set.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that's associated with the new configuration set. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateConfigurationSetRequest < Struct.new(
      nil,
      :configuration_set_name,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the new configuration set.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that's associated with the configuration set.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the configuration set was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateConfigurationSetResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :tags,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>Either the name of the configuration set or the configuration set ARN to apply event logging to. The ConfigurateSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #   @return [String]
    # @!attribute event_destination_name
    #   <p>The name that identifies the event destination.</p>
    #   @return [String]
    # @!attribute matching_event_types
    #   <p>An array of event types that determine which events to log. If "ALL" is used, then End User Messaging SMS logs every event type.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>
    #   @return [Array<String>]
    # @!attribute cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination for logging to Amazon CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogsDestination]
    # @!attribute kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Amazon Data Firehose.</p>
    #   @return [Types::KinesisFirehoseDestination]
    # @!attribute sns_destination
    #   <p>An object that contains information about an event destination for logging to Amazon SNS.</p>
    #   @return [Types::SnsDestination]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateEventDestinationRequest < Struct.new(
      nil,
      :configuration_set_name,
      :event_destination_name,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The ARN of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #   @return [String]
    # @!attribute event_destination
    #   <p>The details of the destination where events are logged.</p>
    #   @return [Types::EventDestination]
    class CreateEventDestinationResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute display_name
    #   <p>The display name to associate with the notify configuration.</p>
    #   @return [String]
    # @!attribute use_case
    #   <p>The use case for the notify configuration.</p>
    #   @return [String]
    # @!attribute default_template_id
    #   <p>The default template identifier to associate with the notify configuration. If specified, this template is used when sending messages without an explicit template identifier.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The identifier of the pool to associate with the notify configuration.</p>
    #   @return [String]
    # @!attribute enabled_countries
    #   <p>An array of two-character ISO country codes, in ISO 3166-1 alpha-2 format, that are enabled for the notify configuration.</p>
    #   @return [Array<String>]
    # @!attribute enabled_channels
    #   <p>An array of channels to enable for the notify configuration. Supported values include <code>SMS</code> and <code>VOICE</code>.</p>
    #   @return [Array<String>]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the notify configuration can't be deleted. You can change this value using the <a>UpdateNotifyConfiguration</a> action.</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the notify configuration.</p>
    #   @return [Array<Types::Tag>]
    class CreateNotifyConfigurationRequest < Struct.new(
      nil,
      :display_name,
      :use_case,
      :default_template_id,
      :pool_id,
      :enabled_countries,
      :enabled_channels,
      :deletion_protection_enabled,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the notify configuration.</p>
    #   @return [String]
    # @!attribute notify_configuration_id
    #   <p>The unique identifier for the notify configuration.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute use_case
    #   <p>The use case for the notify configuration.</p>
    #   @return [String]
    # @!attribute default_template_id
    #   <p>The default template identifier associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The identifier of the pool associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute enabled_countries
    #   <p>An array of two-character ISO country codes, in ISO 3166-1 alpha-2 format, that are enabled for the notify configuration.</p>
    #   @return [Array<String>]
    # @!attribute enabled_channels
    #   <p>An array of channels enabled for the notify configuration. Supported values include <code>SMS</code> and <code>VOICE</code>.</p>
    #   @return [Array<String>]
    # @!attribute tier
    #   <p>The tier of the notify configuration.</p>
    #   @return [String]
    # @!attribute tier_upgrade_status
    #   <p>The tier upgrade status of the notify configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the notify configuration.</p>
    #   @return [String]
    # @!attribute rejection_reason
    #   <p>The reason the notify configuration was rejected, if applicable.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the notify configuration.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the notify configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateNotifyConfigurationResult < Struct.new(
      nil,
      :notify_configuration_arn,
      :notify_configuration_id,
      :display_name,
      :use_case,
      :default_template_id,
      :pool_id,
      :enabled_countries,
      :enabled_channels,
      :tier,
      :tier_upgrade_status,
      :status,
      :rejection_reason,
      :deletion_protection_enabled,
      :tags,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute opt_out_list_name
    #   <p>The name of the new OptOutList.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the new OptOutList.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateOptOutListRequest < Struct.new(
      nil,
      :opt_out_list_name,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) for the OptOutList.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The name of the new OptOutList.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the new OptOutList.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateOptOutListResult < Struct.new(
      nil,
      :opt_out_list_arn,
      :opt_out_list_name,
      :tags,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_DescribePhoneNumbers.html">DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn, and use <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_DescribeSenderIds.html">DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <p>After the pool is created you can add more origination identities to the pool by using <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_AssociateOriginationIdentity.html">AssociateOriginationIdentity</a>.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the new pool. This field is optional and is not required for origination identity types that are not country-specific, such as RCS agents.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive. After the pool is created the MessageType can't be changed.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the pool can't be deleted. You can change this value using the <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_UpdatePool.html">UpdatePool</a> action.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the pool.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreatePoolRequest < Struct.new(
      nil,
      :origination_identity,
      :iso_country_code,
      :message_type,
      :deletion_protection_enabled,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) for the pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The unique identifier for the pool.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pool.</p> <ul> <li> <p>CREATING: The pool is currently being created and isn't yet available for use.</p> </li> <li> <p>ACTIVE: The pool is active and available for use.</p> </li> <li> <p>DELETING: The pool is being deleted.</p> </li> </ul>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message for the pool to use.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to false, and an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the pool.</p>
    #   @return [String]
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool. Set to false and only origination identities in this pool are used to send messages. </p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the pool.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreatePoolResult < Struct.new(
      nil,
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :tags,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:shared_routes_enabled] = false unless options.key?(:shared_routes_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateProtectConfigurationRequest < Struct.new(
      nil,
      :client_token,
      :deletion_protection_enabled,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the protect configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute account_default
    #   <p>This is true if the protect configuration is set as your account default protect configuration.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateProtectConfigurationResult < Struct.new(
      nil,
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:account_default] = false unless options.key?(:account_default)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the RCS agent can't be deleted. You can change this value using the <a>UpdateRcsAgent</a> action.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The OptOutList to associate with the RCS agent. Valid values are either OptOutListName or OptOutListArn.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the RCS agent.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateRcsAgentRequest < Struct.new(
      nil,
      :deletion_protection_enabled,
      :opt_out_list_name,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rcs_agent_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created RCS agent.</p>
    #   @return [String]
    # @!attribute rcs_agent_id
    #   <p>The unique identifier for the RCS agent.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the RCS agent.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the RCS agent.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the RCS agent was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_media_s3_bucket_name
    #   <p>The name of the S3 bucket where inbound RCS media files are stored.</p>
    #   @return [String]
    # @!attribute two_way_media_s3_key_prefix
    #   <p>The key prefix used for inbound RCS media objects in the S3 bucket.</p>
    #   @return [String]
    # @!attribute two_way_media_s3_role
    #   <p>The ARN of the IAM role used to write inbound RCS media files to the S3 bucket. The role must have <code>s3:PutObject</code> permission on the bucket and a trust policy allowing <code>sms-voice.amazonaws.com</code> to assume it.</p>
    #   @return [String]
    # @!attribute two_way_rcs_events_enabled
    #   <p>The list of RCS event types enabled for two-way messaging on the agent.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the RCS agent.</p>
    #   @return [Array<Types::Tag>]
    class CreateRcsAgentResult < Struct.new(
      nil,
      :rcs_agent_arn,
      :rcs_agent_id,
      :status,
      :deletion_protection_enabled,
      :opt_out_list_name,
      :created_timestamp,
      :self_managed_opt_outs_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :two_way_enabled,
      :two_way_media_s3_bucket_name,
      :two_way_media_s3_key_prefix,
      :two_way_media_s3_role,
      :two_way_rcs_events_enabled,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        super
      end
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the origination identity. For example this could be a <b>PhoneNumberId</b> or <b>SenderId</b>.</p>
    #   @return [String]
    class CreateRegistrationAssociationRequest < Struct.new(
      nil,
      :registration_id,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the origination identity that is associated with the registration. </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the origination identity. For example this could be a <b>PhoneNumberId</b> or <b>SenderId</b>.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The registration type or origination identity type.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number associated with the registration in E.164 format.</p>
    #   @return [String]
    class CreateRegistrationAssociationResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :registration_type,
      :resource_arn,
      :resource_id,
      :resource_type,
      :iso_country_code,
      :phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_body
    #   <p>The registration file to upload. The maximum file size is 5MB and valid file extensions are PDF, JPEG and PNG.</p>
    #   @return [String]
    # @!attribute attachment_url
    #   <p>Registration files have to be stored in an Amazon S3 bucket. The URI to use when sending is in the format <code>s3://BucketName/FileName</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the registration attachment.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateRegistrationAttachmentRequest < Struct.new(
      nil,
      :attachment_body,
      :attachment_url,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_attachment_arn
    #   <p>The Amazon Resource Name (ARN) for the registration attachment.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    # @!attribute attachment_status
    #   <p>The status of the registration attachment. </p> <ul> <li> <p> <code>UPLOAD_IN_PROGRESS</code> The attachment is being uploaded.</p> </li> <li> <p> <code>UPLOAD_COMPLETE</code> The attachment has been uploaded.</p> </li> <li> <p> <code>UPLOAD_FAILED</code> The attachment failed to uploaded.</p> </li> <li> <p> <code>DELETED</code> The attachment has been deleted..</p> </li> </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the registration attachment.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the registration attachment was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateRegistrationAttachmentResult < Struct.new(
      nil,
      :registration_attachment_arn,
      :registration_attachment_id,
      :attachment_status,
      :tags,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type
    #   <p>The type of registration form to create. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the registration.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateRegistrationRequest < Struct.new(
      nil,
      :registration_type,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of registration form to create. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The status of the registration.</p> <ul> <li> <p> <code>CLOSED</code>: The phone number or sender ID has been deleted and you must also delete the registration for the number.</p> </li> <li> <p> <code>CREATED</code>: Your registration is created but not submitted.</p> </li> <li> <p> <code>COMPLETE</code>: Your registration has been approved and your origination identity has been created.</p> </li> <li> <p> <code>DELETED</code>: The registration has been deleted.</p> </li> <li> <p> <code>PROVISIONING</code>: Your registration has been approved and your origination identity is being created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REQUIRES_UPDATES</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted and is awaiting review.</p> </li> </ul>
    #   @return [String]
    # @!attribute current_version_number
    #   <p>The current version number of the registration.</p>
    #   @return [Integer]
    # @!attribute additional_attributes
    #   <p>Metadata about a given registration which is specific to that registration type.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the registration.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the registration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateRegistrationResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_status,
      :current_version_number,
      :additional_attributes,
      :tags,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class CreateRegistrationVersionRequest < Struct.new(
      nil,
      :registration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The new version number of the registration.</p>
    #   @return [Integer]
    # @!attribute registration_version_status
    #   <p>The status of the registration.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>
    #   @return [String]
    # @!attribute registration_version_status_history
    #   <p>A <b>RegistrationVersionStatusHistory</b> object that contains timestamps for the registration.</p>
    #   @return [Types::RegistrationVersionStatusHistory]
    class CreateRegistrationVersionResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_version_status,
      :registration_version_status_history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The verified destination phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute rcs_agent_id
    #   <p>The unique identifier of the RCS agent to associate with the verified destination number. You can use either the RcsAgentId or RcsAgentArn.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the destination number.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateVerifiedDestinationNumberRequest < Struct.new(
      nil,
      :destination_phone_number,
      :rcs_agent_id,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_arn
    #   <p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The verified destination phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the verified destination phone number.</p> <ul> <li> <p> <code>PENDING</code>: The phone number hasn't been verified yet.</p> </li> <li> <p> <code>VERIFIED</code>: The phone number is verified and can receive messages.</p> </li> </ul>
    #   @return [String]
    # @!attribute rcs_agent_id
    #   <p>The unique identifier of the RCS agent associated with the verified destination number.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the destination number.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the verified phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateVerifiedDestinationNumberResult < Struct.new(
      nil,
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :status,
      :rcs_agent_id,
      :tags,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAccountDefaultProtectConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute default_protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the account default protect configuration.</p>
    #   @return [String]
    # @!attribute default_protect_configuration_id
    #   <p>The unique identifier of the account default protect configuration.</p>
    #   @return [String]
    class DeleteAccountDefaultProtectConfigurationResult < Struct.new(
      nil,
      :default_protect_configuration_arn,
      :default_protect_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set ARN that you want to delete. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #   @return [String]
    class DeleteConfigurationSetRequest < Struct.new(
      nil,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the deleted configuration set.</p>
    #   @return [String]
    # @!attribute event_destinations
    #   <p>An array of any EventDestination objects that were associated with the deleted configuration set.</p>
    #   @return [Array<Types::EventDestination>]
    # @!attribute default_message_type
    #   <p>The default message type of the configuration set that was deleted.</p>
    #   @return [String]
    # @!attribute default_sender_id
    #   <p>The default Sender ID of the configuration set that was deleted.</p>
    #   @return [String]
    # @!attribute default_message_feedback_enabled
    #   <p>True if the configuration set has message feedback enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time that the deleted configuration set was created in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteConfigurationSetResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :event_destinations,
      :default_message_type,
      :default_sender_id,
      :default_message_feedback_enabled,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set Amazon Resource Name (ARN) to delete the default message type from. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #   @return [String]
    class DeleteDefaultMessageTypeRequest < Struct.new(
      nil,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The current message type for the configuration set.</p>
    #   @return [String]
    class DeleteDefaultMessageTypeResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :message_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set Amazon Resource Name (ARN) to delete the default sender ID from. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #   @return [String]
    class DeleteDefaultSenderIdRequest < Struct.new(
      nil,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The current sender ID for the configuration set.</p>
    #   @return [String]
    class DeleteDefaultSenderIdResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :sender_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set's Amazon Resource Name (ARN) to remove the event destination from. The ConfigurateSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #   @return [String]
    # @!attribute event_destination_name
    #   <p>The name of the event destination to delete.</p>
    #   @return [String]
    class DeleteEventDestinationRequest < Struct.new(
      nil,
      :configuration_set_name,
      :event_destination_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set the event destination was deleted from.</p>
    #   @return [String]
    # @!attribute event_destination
    #   <p>The event destination object that was deleted.</p>
    #   @return [Types::EventDestination]
    class DeleteEventDestinationResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, PoolId or PoolArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn and <a>DescribePools</a> to find the values of PoolId and PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute keyword
    #   <p>The keyword to delete.</p>
    #   @return [String]
    class DeleteKeywordRequest < Struct.new(
      nil,
      :origination_identity,
      :keyword,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or PoolArn that the keyword was associated with.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or PoolId that the keyword was associated with.</p>
    #   @return [String]
    # @!attribute keyword
    #   <p>The keyword that was deleted.</p>
    #   @return [String]
    # @!attribute keyword_message
    #   <p>The message that was associated with the deleted keyword.</p>
    #   @return [String]
    # @!attribute keyword_action
    #   <p>The action that was associated with the deleted keyword.</p>
    #   @return [String]
    class DeleteKeywordResult < Struct.new(
      nil,
      :origination_identity_arn,
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMediaMessageSpendLimitOverrideRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit, in US dollars.</p>
    #   @return [Integer]
    class DeleteMediaMessageSpendLimitOverrideResult < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_configuration_id
    #   <p>The identifier of the notify configuration to delete. The NotifyConfigurationId can be found using the <a>DescribeNotifyConfigurations</a> operation.</p>
    #   @return [String]
    class DeleteNotifyConfigurationRequest < Struct.new(
      nil,
      :notify_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the notify configuration.</p>
    #   @return [String]
    # @!attribute notify_configuration_id
    #   <p>The unique identifier for the notify configuration.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute use_case
    #   <p>The use case for the notify configuration.</p>
    #   @return [String]
    # @!attribute default_template_id
    #   <p>The default template identifier associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The identifier of the pool associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute enabled_countries
    #   <p>An array of two-character ISO country codes, in ISO 3166-1 alpha-2 format, that are enabled for the notify configuration.</p>
    #   @return [Array<String>]
    # @!attribute enabled_channels
    #   <p>An array of channels enabled for the notify configuration. Supported values include <code>SMS</code> and <code>VOICE</code>.</p>
    #   @return [Array<String>]
    # @!attribute tier
    #   <p>The tier of the notify configuration.</p>
    #   @return [String]
    # @!attribute tier_upgrade_status
    #   <p>The tier upgrade status of the notify configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the notify configuration.</p>
    #   @return [String]
    # @!attribute rejection_reason
    #   <p>The reason the notify configuration was rejected, if applicable.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the notify configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteNotifyConfigurationResult < Struct.new(
      nil,
      :notify_configuration_arn,
      :notify_configuration_id,
      :display_name,
      :use_case,
      :default_template_id,
      :pool_id,
      :enabled_countries,
      :enabled_channels,
      :tier,
      :tier_upgrade_status,
      :status,
      :rejection_reason,
      :deletion_protection_enabled,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    class DeleteNotifyMessageSpendLimitOverrideRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit, in US dollars.</p>
    #   @return [Integer]
    class DeleteNotifyMessageSpendLimitOverrideResult < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn of the OptOutList to delete. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and OptOutListArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    class DeleteOptOutListRequest < Struct.new(
      nil,
      :opt_out_list_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) of the OptOutList that was removed.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that was removed.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the OptOutList was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteOptOutListResult < Struct.new(
      nil,
      :opt_out_list_arn,
      :opt_out_list_name,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn to remove the phone number from.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute opted_out_number
    #   <p>The phone number, in E.164 format, to remove from the OptOutList.</p>
    #   @return [String]
    class DeleteOptedOutNumberRequest < Struct.new(
      nil,
      :opt_out_list_name,
      :opted_out_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The OptOutListArn that the phone number was removed from.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The OptOutListName that the phone number was removed from.</p>
    #   @return [String]
    # @!attribute opted_out_number
    #   <p>The phone number that was removed from the OptOutList.</p>
    #   @return [String]
    # @!attribute opted_out_timestamp
    #   <p>The time that the number was removed at, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute end_user_opted_out
    #   <p>This is true if it was the end user who requested their phone number be removed. </p>
    #   @return [Boolean]
    class DeleteOptedOutNumberResult < Struct.new(
      nil,
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:end_user_opted_out] = false unless options.key?(:end_user_opted_out)
        super
      end
    end

    # @!attribute pool_id
    #   <p>The PoolId or PoolArn of the pool to delete. You can use <a>DescribePools</a> to find the values for PoolId and PoolArn .</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    class DeletePoolRequest < Struct.new(
      nil,
      :pool_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the pool that was deleted.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The PoolId of the pool that was deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pool.</p> <ul> <li> <p>CREATING: The pool is currently being created and isn't yet available for use.</p> </li> <li> <p>ACTIVE: The pool is active and available for use.</p> </li> <li> <p>DELETING: The pool is being deleted.</p> </li> </ul>
    #   @return [String]
    # @!attribute message_type
    #   <p>The message type that was associated with the deleted pool.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the TwoWayChannel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to false and an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that was associated with the deleted pool.</p>
    #   @return [String]
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeletePoolResult < Struct.new(
      nil,
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:shared_routes_enabled] = false unless options.key?(:shared_routes_enabled)
        super
      end
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    class DeleteProtectConfigurationRequest < Struct.new(
      nil,
      :protect_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the protect configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute account_default
    #   <p>This is true if the protect configuration is set as your account default protect configuration.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>The status of deletion protection for the protect configuration. When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    class DeleteProtectConfigurationResult < Struct.new(
      nil,
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:account_default] = false unless options.key?(:account_default)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    class DeleteProtectConfigurationRuleSetNumberOverrideRequest < Struct.new(
      nil,
      :protect_configuration_id,
      :destination_phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the rule was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute action
    #   <p>The action associated with the rule.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute expiration_timestamp
    #   <p>The time when the resource-based policy was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteProtectConfigurationRuleSetNumberOverrideResult < Struct.new(
      nil,
      :protect_configuration_arn,
      :protect_configuration_id,
      :destination_phone_number,
      :created_timestamp,
      :action,
      :iso_country_code,
      :expiration_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rcs_agent_id
    #   <p>The unique identifier of the RCS agent to delete. You can use either the RcsAgentId or RcsAgentArn.</p>
    #   @return [String]
    class DeleteRcsAgentRequest < Struct.new(
      nil,
      :rcs_agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rcs_agent_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted RCS agent.</p>
    #   @return [String]
    # @!attribute rcs_agent_id
    #   <p>The unique identifier for the deleted RCS agent.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the RCS agent.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the RCS agent was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that was associated with the deleted RCS agent.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_rcs_events_enabled
    #   <p>The list of RCS event types that were enabled for two-way messaging on the deleted agent.</p>
    #   @return [Array<String>]
    class DeleteRcsAgentResult < Struct.new(
      nil,
      :rcs_agent_arn,
      :rcs_agent_id,
      :status,
      :created_timestamp,
      :deletion_protection_enabled,
      :opt_out_list_name,
      :self_managed_opt_outs_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :two_way_enabled,
      :two_way_rcs_events_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        super
      end
    end

    class DeleteRcsMessageSpendLimitOverrideRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit to enforce on RCS message spending.</p>
    #   @return [Integer]
    class DeleteRcsMessageSpendLimitOverrideResult < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    class DeleteRegistrationAttachmentRequest < Struct.new(
      nil,
      :registration_attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_attachment_arn
    #   <p>The Amazon Resource Name (ARN) for the registration attachment.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    # @!attribute attachment_status
    #   <p>The status of the registration attachment. </p> <ul> <li> <p> <code>UPLOAD_IN_PROGRESS</code> The attachment is being uploaded.</p> </li> <li> <p> <code>UPLOAD_COMPLETE</code> The attachment has been uploaded.</p> </li> <li> <p> <code>UPLOAD_FAILED</code> The attachment failed to uploaded.</p> </li> <li> <p> <code>DELETED</code> The attachment has been deleted..</p> </li> </ul>
    #   @return [String]
    # @!attribute attachment_upload_error_reason
    #   <p>The error message if the upload failed.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the registration attachment was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteRegistrationAttachmentResult < Struct.new(
      nil,
      :registration_attachment_arn,
      :registration_attachment_id,
      :attachment_status,
      :attachment_upload_error_reason,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    #   @return [String]
    class DeleteRegistrationFieldValueRequest < Struct.new(
      nil,
      :registration_id,
      :field_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute field_path
    #   <p>The path to the registration form field.</p>
    #   @return [String]
    # @!attribute select_choices
    #   <p>An array of values for the form field.</p>
    #   @return [Array<String>]
    # @!attribute text_value
    #   <p>The text data for a free form field.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    class DeleteRegistrationFieldValueResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :version_number,
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class DeleteRegistrationRequest < Struct.new(
      nil,
      :registration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The status of the registration.</p> <ul> <li> <p> <code>CLOSED</code>: The phone number or sender ID has been deleted and you must also delete the registration for the number.</p> </li> <li> <p> <code>CREATED</code>: Your registration is created but not submitted.</p> </li> <li> <p> <code>COMPLETE</code>: Your registration has been approved and your origination identity has been created.</p> </li> <li> <p> <code>DELETED</code>: The registration has been deleted.</p> </li> <li> <p> <code>PROVISIONING</code>: Your registration has been approved and your origination identity is being created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REQUIRES_UPDATES</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted and is awaiting review.</p> </li> </ul>
    #   @return [String]
    # @!attribute current_version_number
    #   <p>The current version number of the registration.</p>
    #   @return [Integer]
    # @!attribute approved_version_number
    #   <p>The version number of the registration that was approved.</p>
    #   @return [Integer]
    # @!attribute latest_denied_version_number
    #   <p>The latest version number of the registration that was denied.</p>
    #   @return [Integer]
    # @!attribute additional_attributes
    #   <p>Metadata about a given registration which is specific to that registration type.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_timestamp
    #   <p>The time when the registration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteRegistrationResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_status,
      :current_version_number,
      :approved_version_number,
      :latest_denied_version_number,
      :additional_attributes,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the End User Messaging SMS resource you're deleting the resource-based policy from.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the End User Messaging SMS resource that the resource-based policy was deleted from.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON formatted resource-based policy that was deleted.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the resource-based policy was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteResourcePolicyResult < Struct.new(
      nil,
      :resource_arn,
      :policy,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTextMessageSpendLimitOverrideRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit, in US dollars.</p>
    #   @return [Integer]
    class DeleteTextMessageSpendLimitOverrideResult < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    class DeleteVerifiedDestinationNumberRequest < Struct.new(
      nil,
      :verified_destination_number_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_arn
    #   <p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The verified destination phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the destination phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteVerifiedDestinationNumberResult < Struct.new(
      nil,
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteVoiceMessageSpendLimitOverrideRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit, in US dollars.</p>
    #   @return [Integer]
    class DeleteVoiceMessageSpendLimitOverrideResult < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeAccountAttributesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_attributes
    #   <p>An array of AccountAttributes objects.</p>
    #   @return [Array<Types::AccountAttribute>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeAccountAttributesResult < Struct.new(
      nil,
      :account_attributes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeAccountLimitsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_limits
    #   <p>An array of AccountLimit objects that show the current spend limits.</p>
    #   @return [Array<Types::AccountLimit>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeAccountLimitsResult < Struct.new(
      nil,
      :account_limits,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_names
    #   <p>An array of strings. Each element can be either a ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of filters to apply to the results that are returned.</p>
    #   @return [Array<Types::ConfigurationSetFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeConfigurationSetsRequest < Struct.new(
      nil,
      :configuration_set_names,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_sets
    #   <p>An array of ConfigurationSets objects.</p>
    #   @return [Array<Types::ConfigurationSetInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeConfigurationSetsResult < Struct.new(
      nil,
      :configuration_sets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute keywords
    #   <p>An array of keywords to search for.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of keyword filters to filter the results.</p>
    #   @return [Array<Types::KeywordFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeKeywordsRequest < Struct.new(
      nil,
      :origination_identity,
      :keywords,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or PoolArn that is associated with the OriginationIdentity. </p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or PoolId that is associated with the OriginationIdentity.</p>
    #   @return [String]
    # @!attribute keywords
    #   <p>An array of KeywordInformation objects that contain the results.</p>
    #   @return [Array<Types::KeywordInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeKeywordsResult < Struct.new(
      nil,
      :origination_identity_arn,
      :origination_identity,
      :keywords,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_configuration_ids
    #   <p>An array of notify configuration IDs to describe.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of NotifyConfigurationFilter objects to filter the results on.</p>
    #   @return [Array<Types::NotifyConfigurationFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeNotifyConfigurationsRequest < Struct.new(
      nil,
      :notify_configuration_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_configurations
    #   <p>An array of NotifyConfigurationInformation objects that contain the results.</p>
    #   @return [Array<Types::NotifyConfigurationInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeNotifyConfigurationsResult < Struct.new(
      nil,
      :notify_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_ids
    #   <p>An array of template IDs to describe.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of NotifyTemplateFilter objects to filter the results on.</p>
    #   @return [Array<Types::NotifyTemplateFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeNotifyTemplatesRequest < Struct.new(
      nil,
      :template_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_templates
    #   <p>An array of NotifyTemplateInformation objects that contain the results.</p>
    #   @return [Array<Types::NotifyTemplateInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeNotifyTemplatesResult < Struct.new(
      nil,
      :notify_templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_names
    #   <p>The OptOutLists to show the details of. This is an array of strings that can be either the OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>Use <code>SELF</code> to filter the list of Opt-Out List to ones your account owns or use <code>SHARED</code> to filter on Opt-Out List shared with your account. The <code>Owner</code> and <code>OptOutListNames</code> parameters can't be used at the same time.</p>
    #   @return [String]
    class DescribeOptOutListsRequest < Struct.new(
      nil,
      :opt_out_list_names,
      :next_token,
      :max_results,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_lists
    #   <p>An array of OptOutListInformation objects that contain the details for the requested OptOutLists.</p>
    #   @return [Array<Types::OptOutListInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeOptOutListsResult < Struct.new(
      nil,
      :opt_out_lists,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn of the OptOutList. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and OptOutListArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute opted_out_numbers
    #   <p>An array of phone numbers to search for in the OptOutList.</p> <p>If you specify an opted out number that isn't valid, an exception is returned.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of OptedOutFilter objects to filter the results on.</p>
    #   @return [Array<Types::OptedOutFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeOptedOutNumbersRequest < Struct.new(
      nil,
      :opt_out_list_name,
      :opted_out_numbers,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) of the OptOutList.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList.</p>
    #   @return [String]
    # @!attribute opted_out_numbers
    #   <p>An array of OptedOutNumbersInformation objects that provide information about the requested OptedOutNumbers.</p>
    #   @return [Array<Types::OptedOutNumberInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeOptedOutNumbersResult < Struct.new(
      nil,
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_numbers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_ids
    #   <p>The unique identifier of phone numbers to find information about. This is an array of strings that can be either the PhoneNumberId or PhoneNumberArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of PhoneNumberFilter objects to filter the results.</p>
    #   @return [Array<Types::PhoneNumberFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>Use <code>SELF</code> to filter the list of phone numbers to ones your account owns or use <code>SHARED</code> to filter on phone numbers shared with your account. The <code>Owner</code> and <code>PhoneNumberIds</code> parameters can't be used at the same time.</p>
    #   @return [String]
    class DescribePhoneNumbersRequest < Struct.new(
      nil,
      :phone_number_ids,
      :filters,
      :next_token,
      :max_results,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_numbers
    #   <p>An array of PhoneNumberInformation objects that contain the details for the requested phone numbers.</p>
    #   @return [Array<Types::PhoneNumberInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribePhoneNumbersResult < Struct.new(
      nil,
      :phone_numbers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_ids
    #   <p>The unique identifier of pools to find. This is an array of strings that can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of PoolFilter objects to filter the results.</p>
    #   @return [Array<Types::PoolFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>Use <code>SELF</code> to filter the list of Pools to ones your account owns or use <code>SHARED</code> to filter on Pools shared with your account. The <code>Owner</code> and <code>PoolIds</code> parameters can't be used at the same time.</p>
    #   @return [String]
    class DescribePoolsRequest < Struct.new(
      nil,
      :pool_ids,
      :filters,
      :next_token,
      :max_results,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pools
    #   <p>An array of PoolInformation objects that contain the details for the requested pools. </p>
    #   @return [Array<Types::PoolInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribePoolsResult < Struct.new(
      nil,
      :pools,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_ids
    #   <p>An array of protect configuration identifiers to search for.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of ProtectConfigurationFilter objects to filter the results.</p>
    #   @return [Array<Types::ProtectConfigurationFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeProtectConfigurationsRequest < Struct.new(
      nil,
      :protect_configuration_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configurations
    #   <p>An array of ProtectConfigurationInformation objects that contain the details for the request. </p>
    #   @return [Array<Types::ProtectConfigurationInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeProtectConfigurationsResult < Struct.new(
      nil,
      :protect_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rcs_agent_id
    #   <p>The unique identifier of the RCS agent. You can use either the RcsAgentId or RcsAgentArn.</p>
    #   @return [String]
    # @!attribute iso_country_codes
    #   <p>An array of two-character ISO country codes, in ISO 3166-1 alpha-2 format, to filter the results.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of CountryLaunchStatusFilter objects to filter the results.</p>
    #   @return [Array<Types::CountryLaunchStatusFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRcsAgentCountryLaunchStatusRequest < Struct.new(
      nil,
      :rcs_agent_id,
      :iso_country_codes,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rcs_agent_id
    #   <p>The unique identifier for the RCS agent.</p>
    #   @return [String]
    # @!attribute rcs_agent_arn
    #   <p>The Amazon Resource Name (ARN) of the RCS agent.</p>
    #   @return [String]
    # @!attribute country_launch_status
    #   <p>An array of CountryLaunchStatusInformation objects that contain the per-country launch status details.</p>
    #   @return [Array<Types::CountryLaunchStatusInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeRcsAgentCountryLaunchStatusResult < Struct.new(
      nil,
      :rcs_agent_id,
      :rcs_agent_arn,
      :country_launch_status,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rcs_agent_ids
    #   <p>An array of unique identifiers for the RCS agents. This is an array of strings that can be either the RcsAgentId or RcsAgentArn.</p>
    #   @return [Array<String>]
    # @!attribute owner
    #   <p>Use <code>SELF</code> to filter the list of RCS agents to ones your account owns or use <code>SHARED</code> to filter on RCS agents shared with your account. The <code>Owner</code> and <code>RcsAgentIds</code> parameters can't be used at the same time.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of RcsAgentFilter objects to filter the results.</p>
    #   @return [Array<Types::RcsAgentFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRcsAgentsRequest < Struct.new(
      nil,
      :rcs_agent_ids,
      :owner,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rcs_agents
    #   <p>An array of RcsAgentInformation objects that contain the details for the requested RCS agents.</p>
    #   @return [Array<Types::RcsAgentInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeRcsAgentsResult < Struct.new(
      nil,
      :rcs_agents,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_attachment_ids
    #   <p>The unique identifier of registration attachments to find. This is an array of <b>RegistrationAttachmentId</b>.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of RegistrationAttachmentFilter objects to filter the results.</p>
    #   @return [Array<Types::RegistrationAttachmentFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationAttachmentsRequest < Struct.new(
      nil,
      :registration_attachment_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_attachments
    #   <p>An array of <b>RegistrationAttachments</b> objects that contain the details for the requested registration attachments. </p>
    #   @return [Array<Types::RegistrationAttachmentsInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationAttachmentsResult < Struct.new(
      nil,
      :registration_attachments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute section_path
    #   <p>The path to the section of the registration.</p>
    #   @return [String]
    # @!attribute field_paths
    #   <p>An array of paths to the registration form field.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationFieldDefinitionsRequest < Struct.new(
      nil,
      :registration_type,
      :section_path,
      :field_paths,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_field_definitions
    #   <p>An array of RegistrationFieldDefinitions objects that contain the details for the requested fields. </p>
    #   @return [Array<Types::RegistrationFieldDefinition>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationFieldDefinitionsResult < Struct.new(
      nil,
      :registration_type,
      :registration_field_definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute section_path
    #   <p>The path to the section of the registration.</p>
    #   @return [String]
    # @!attribute field_paths
    #   <p>An array of paths to the registration form field.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationFieldValuesRequest < Struct.new(
      nil,
      :registration_id,
      :version_number,
      :section_path,
      :field_paths,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The current version of the registration.</p>
    #   @return [Integer]
    # @!attribute registration_field_values
    #   <p>An array of RegistrationFieldValues objects that contain the values for the requested registration. </p>
    #   @return [Array<Types::RegistrationFieldValueInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationFieldValuesResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_field_values,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute section_paths
    #   <p>An array of paths for the registration form section.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationSectionDefinitionsRequest < Struct.new(
      nil,
      :registration_type,
      :section_paths,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_section_definitions
    #   <p>An array of RegistrationSectionDefinition objects.</p>
    #   @return [Array<Types::RegistrationSectionDefinition>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationSectionDefinitionsResult < Struct.new(
      nil,
      :registration_type,
      :registration_section_definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_types
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of RegistrationFilter objects to filter the results.</p>
    #   @return [Array<Types::RegistrationTypeFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationTypeDefinitionsRequest < Struct.new(
      nil,
      :registration_types,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type_definitions
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [Array<Types::RegistrationTypeDefinition>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationTypeDefinitionsResult < Struct.new(
      nil,
      :registration_type_definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_numbers
    #   <p>An array of registration version numbers.</p>
    #   @return [Array<Integer>]
    # @!attribute filters
    #   <p>An array of RegistrationVersionFilter objects to filter the results.</p>
    #   @return [Array<Types::RegistrationVersionFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationVersionsRequest < Struct.new(
      nil,
      :registration_id,
      :version_numbers,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_versions
    #   <p>An array of RegistrationVersions objects.</p>
    #   @return [Array<Types::RegistrationVersionInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationVersionsResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :registration_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_ids
    #   <p>An array of unique identifiers for each registration.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of RegistrationFilter objects to filter the results.</p>
    #   @return [Array<Types::RegistrationFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationsRequest < Struct.new(
      nil,
      :registration_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registrations
    #   <p>An array of RegistrationInformation objects.</p>
    #   @return [Array<Types::RegistrationInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationsResult < Struct.new(
      nil,
      :registrations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sender_ids
    #   <p>An array of SenderIdAndCountry objects to search for.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [Array<Types::SenderIdAndCountry>]
    # @!attribute filters
    #   <p>An array of SenderIdFilter objects to filter the results.</p>
    #   @return [Array<Types::SenderIdFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>Use <code>SELF</code> to filter the list of Sender Ids to ones your account owns or use <code>SHARED</code> to filter on Sender Ids shared with your account. The <code>Owner</code> and <code>SenderIds</code> parameters can't be used at the same time. </p>
    #   @return [String]
    class DescribeSenderIdsRequest < Struct.new(
      nil,
      :sender_ids,
      :filters,
      :next_token,
      :max_results,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sender_ids
    #   <p>An array of SernderIdInformation objects that contain the details for the requested SenderIds.</p>
    #   @return [Array<Types::SenderIdInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeSenderIdsResult < Struct.new(
      nil,
      :sender_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeSpendLimitsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute spend_limits
    #   <p>An array of SpendLimit objects that contain the details for the requested spend limits.</p>
    #   @return [Array<Types::SpendLimit>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeSpendLimitsResult < Struct.new(
      nil,
      :spend_limits,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_ids
    #   <p>An array of VerifiedDestinationNumberid to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute destination_phone_numbers
    #   <p>An array of verified destination phone number, in E.164 format.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of VerifiedDestinationNumberFilter objects to filter the results.</p>
    #   @return [Array<Types::VerifiedDestinationNumberFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeVerifiedDestinationNumbersRequest < Struct.new(
      nil,
      :verified_destination_number_ids,
      :destination_phone_numbers,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_numbers
    #   <p>An array of VerifiedDestinationNumberInformation objects</p>
    #   @return [Array<Types::VerifiedDestinationNumberInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeVerifiedDestinationNumbersResult < Struct.new(
      nil,
      :verified_destination_numbers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_id
    #   <p>The unique identifier for the pool to disassociate with the origination identity. This value can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> find the values for PhoneNumberId and PhoneNumberArn, or use <a>DescribeSenderIds</a> to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. This field is optional and is not required for origination identity types that are not country-specific, such as RCS agents.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class DisassociateOriginationIdentityRequest < Struct.new(
      nil,
      :pool_id,
      :origination_identity,
      :iso_country_code,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The PoolId of the pool no longer associated with the origination identity.</p>
    #   @return [String]
    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or SenderIdArn of the origination identity.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or SenderId of the origination identity.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    class DisassociateOriginationIdentityResult < Struct.new(
      nil,
      :pool_arn,
      :pool_id,
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #   @return [String]
    class DisassociateProtectConfigurationRequest < Struct.new(
      nil,
      :protect_configuration_id,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #   @return [String]
    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    class DisassociateProtectConfigurationResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :protect_configuration_arn,
      :protect_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class DiscardRegistrationVersionRequest < Struct.new(
      nil,
      :registration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute registration_version_status
    #   <p>The status of the registration version.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>
    #   @return [String]
    # @!attribute registration_version_status_history
    #   <p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>
    #   @return [Types::RegistrationVersionStatusHistory]
    class DiscardRegistrationVersionResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_version_status,
      :registration_version_status_history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an event destination.</p> <p>Event destinations are associated with configuration sets, which enable you to publish message sending events to CloudWatch, Firehose, or Amazon SNS.</p>
    # @!attribute event_destination_name
    #   <p>The name of the EventDestination.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>When set to true events will be logged.</p>
    #   @return [Boolean]
    # @!attribute matching_event_types
    #   <p>An array of event types that determine which events to log.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>
    #   @return [Array<String>]
    # @!attribute cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination that sends logging events to Amazon CloudWatch logs.</p>
    #   @return [Types::CloudWatchLogsDestination]
    # @!attribute kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Amazon Data Firehose.</p>
    #   @return [Types::KinesisFirehoseDestination]
    # @!attribute sns_destination
    #   <p>An object that contains information about an event destination that sends logging events to Amazon SNS.</p>
    #   @return [Types::SnsDestination]
    class EventDestination < Struct.new(
      nil,
      :event_destination_name,
      :enabled,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single condition on a dependency field's value. Conditions are combined into a <b>ConditionalRule</b> and evaluated together with logical AND.</p>
    # @!attribute depends_on_field_path
    #   <p>The path of the field whose value determines this condition, for example <b>companyInfo.businessType</b>.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The comparison operator to apply between the dependency field's value and <b>Values</b>. Valid values are <b>EQUALS</b>, <b>NOT_EQUALS</b>, <b>IN</b>, <b>NOT_IN</b>, <b>HAS_VALUE</b>, and <b>NO_VALUE</b>. Operators not in this list are treated as evaluating to false, which causes the containing rule to be skipped. This allows forward-compatible additions of new operators without breaking older SDK clients.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to compare the dependency field's value against. Required for the <b>EQUALS</b>, <b>NOT_EQUALS</b>, <b>IN</b>, and <b>NOT_IN</b> operators. Omitted for <b>HAS_VALUE</b> and <b>NO_VALUE</b>, which test only presence.</p>
    #   @return [Array<String>]
    class FieldCondition < Struct.new(
      nil,
      :depends_on_field_path,
      :operator,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute number_capability
    #   <p>The capability type to return the CountryRuleSet for. Valid values are <code>SMS</code>, <code>VOICE</code>, or <code>MMS</code>.</p>
    #   @return [String]
    class GetProtectConfigurationCountryRuleSetRequest < Struct.new(
      nil,
      :protect_configuration_id,
      :number_capability,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute number_capability
    #   <p>The capability type associated with the returned ProtectConfigurationCountryRuleSetInformation objects.</p>
    #   @return [String]
    # @!attribute country_rule_set
    #   <p>A map of ProtectConfigurationCountryRuleSetInformation objects that contain the details for the requested NumberCapability. The Key is the two-letter ISO country code. For a list of supported ISO country codes, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html">Supported countries and regions (SMS channel)</a> in the End User Messaging SMS User Guide.</p>
    #   @return [Hash<String, Types::ProtectConfigurationCountryRuleSetInformation>]
    class GetProtectConfigurationCountryRuleSetResult < Struct.new(
      nil,
      :protect_configuration_arn,
      :protect_configuration_id,
      :number_capability,
      :country_rule_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the End User Messaging SMS resource attached to the resource-based policy.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the End User Messaging SMS resource attached to the resource-based policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON formatted string that contains the resource-based policy attached to the End User Messaging SMS resource. </p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the resource-based policy was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class GetResourcePolicyResult < Struct.new(
      nil,
      :resource_arn,
      :policy,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The unique identifier of the request.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for keywords that meet a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class KeywordFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for all keywords in a pool.</p>
    # @!attribute keyword
    #   <p>The keyword as a string.</p>
    #   @return [String]
    # @!attribute keyword_message
    #   <p>A custom message that can be used with the keyword.</p>
    #   @return [String]
    # @!attribute keyword_action
    #   <p>The action to perform for the keyword.</p>
    #   @return [String]
    class KeywordInformation < Struct.new(
      nil,
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the delivery stream Amazon Resource Name (ARN), and the ARN of the Identity and Access Management (IAM) role associated with a Firehose event destination.</p> <p>Event destinations, such as Firehose, are associated with configuration sets, which enable you to publish message sending events.</p>
    # @!attribute iam_role_arn
    #   <p>The ARN of an Identity and Access Management role that is able to write event data to an Amazon Data Firehose destination.</p>
    #   @return [String]
    # @!attribute delivery_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery stream.</p>
    #   @return [String]
    class KinesisFirehoseDestination < Struct.new(
      nil,
      :iam_role_arn,
      :delivery_stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region in which to search for available phone numbers. This operation currently supports only <code>US</code>.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>The capabilities to filter by, such as SMS. Only phone numbers that support all of the specified capabilities are returned.</p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of phone number to search for.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The registration associated with the request. A registration is required for regulated number types. You can specify either:</p> <ul> <li> <p>The unique identifier of the registration.</p> </li> <li> <p>The Amazon Resource Name (ARN) of the registration.</p> </li> </ul>
    #   @return [String]
    # @!attribute number_preference
    #   <p>An optional selection preference used to return only phone numbers that match a specific digit pattern, such as numbers that start with, end with, or contain a particular sequence. You can specify at most one preference. Number preferences apply only to <code>TEN_DLC</code> numbers in the <code>US</code>.</p>
    #   @return [Array<Types::NumberPreferenceItem>]
    # @!attribute next_token
    #   <p>The token returned from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. If you don't specify a value, the default is 10.</p>
    #   @return [Integer]
    class ListAvailablePhoneNumbersRequest < Struct.new(
      nil,
      :iso_country_code,
      :number_capabilities,
      :number_type,
      :registration_id,
      :number_preference,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute available_phone_numbers
    #   <p>An array of phone numbers, in E.164 format, that are available to request based on the specified filters.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to include in the next request to retrieve the next page of results. This value is null when there are no more results.</p>
    #   @return [String]
    class ListAvailablePhoneNumbersResult < Struct.new(
      nil,
      :available_phone_numbers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channels
    #   <p>An array of channels to filter the results by.</p>
    #   @return [Array<String>]
    # @!attribute use_cases
    #   <p>An array of use cases to filter the results by.</p>
    #   @return [Array<String>]
    # @!attribute tier
    #   <p>The tier to filter the results by.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class ListNotifyCountriesRequest < Struct.new(
      nil,
      :channels,
      :use_cases,
      :tier,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_countries
    #   <p>An array of NotifyCountryInformation objects that contain the results.</p>
    #   @return [Array<Types::NotifyCountryInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class ListNotifyCountriesResult < Struct.new(
      nil,
      :notify_countries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_id
    #   <p>The unique identifier for the pool. This value can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of PoolOriginationIdentitiesFilter objects to filter the results..</p>
    #   @return [Array<Types::PoolOriginationIdentitiesFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class ListPoolOriginationIdentitiesRequest < Struct.new(
      nil,
      :pool_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) for the pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The unique PoolId of the pool.</p>
    #   @return [String]
    # @!attribute origination_identities
    #   <p>An array of any OriginationIdentityMetadata objects.</p>
    #   @return [Array<Types::OriginationIdentityMetadata>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class ListPoolOriginationIdentitiesResult < Struct.new(
      nil,
      :pool_arn,
      :pool_id,
      :origination_identities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of ProtectConfigurationRuleSetNumberOverrideFilterItem objects to filter the results.</p>
    #   @return [Array<Types::ProtectConfigurationRuleSetNumberOverrideFilterItem>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class ListProtectConfigurationRuleSetNumberOverridesRequest < Struct.new(
      nil,
      :protect_configuration_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute rule_set_number_overrides
    #   <p>An array of RuleSetNumberOverrides objects.</p>
    #   @return [Array<Types::ProtectConfigurationRuleSetNumberOverride>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class ListProtectConfigurationRuleSetNumberOverridesResult < Struct.new(
      nil,
      :protect_configuration_arn,
      :protect_configuration_id,
      :rule_set_number_overrides,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of RegistrationAssociationFilter to apply to the results that are returned.</p>
    #   @return [Array<Types::RegistrationAssociationFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class ListRegistrationAssociationsRequest < Struct.new(
      nil,
      :registration_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_associations
    #   <p>An array of RegistrationAssociationMetadata objects.</p>
    #   @return [Array<Types::RegistrationAssociationMetadata>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class ListRegistrationAssociationsResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to query for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResult < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The messaging limits that apply to an origination identity, such as a phone number, sender ID, or RCS agent. Includes the per-capability send rates and, for supported origination identities, advisory per-provider daily message caps.</p>
    # @!attribute rate_limits
    #   <p>The maximum send rate for each supported capability, in messages per second. The map is keyed by capability, such as <code>SMS</code>, <code>MMS</code>, <code>VOICE</code>, or <code>RCS</code>.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute daily_message_caps
    #   <p>The advisory maximum number of messages that can be sent per day, keyed by provider (for example, <code>T-MOBILE</code>). Applies to 10DLC phone numbers and is omitted when no daily cap applies.</p>
    #   @return [Hash<String, Integer>]
    class MessagingLimits < Struct.new(
      nil,
      :rate_limits,
      :daily_message_caps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for notify configurations that meet a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class NotifyConfigurationFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a notify configuration in an Amazon Web Services account.</p>
    # @!attribute notify_configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the notify configuration.</p>
    #   @return [String]
    # @!attribute notify_configuration_id
    #   <p>The unique identifier for the notify configuration.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute use_case
    #   <p>The use case for the notify configuration.</p>
    #   @return [String]
    # @!attribute default_template_id
    #   <p>The default template identifier associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The identifier of the pool associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute enabled_countries
    #   <p>An array of two-character ISO country codes, in ISO 3166-1 alpha-2 format, that are enabled for the notify configuration.</p>
    #   @return [Array<String>]
    # @!attribute enabled_channels
    #   <p>An array of channels enabled for the notify configuration. Supported values include <code>SMS</code> and <code>VOICE</code>.</p>
    #   @return [Array<String>]
    # @!attribute tier
    #   <p>The tier of the notify configuration.</p>
    #   @return [String]
    # @!attribute tier_upgrade_status
    #   <p>The tier upgrade status of the notify configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the notify configuration.</p>
    #   @return [String]
    # @!attribute rejection_reason
    #   <p>The reason the notify configuration was rejected, if applicable.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the notify configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class NotifyConfigurationInformation < Struct.new(
      nil,
      :notify_configuration_arn,
      :notify_configuration_id,
      :display_name,
      :use_case,
      :default_template_id,
      :pool_id,
      :enabled_countries,
      :enabled_channels,
      :tier,
      :tier_upgrade_status,
      :status,
      :rejection_reason,
      :deletion_protection_enabled,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # <p>The information for a country that supports notify messaging.</p>
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute country_name
    #   <p>The name of the country.</p>
    #   @return [String]
    # @!attribute supported_channels
    #   <p>An array of supported channels for the country. Supported values include <code>SMS</code> and <code>VOICE</code>.</p>
    #   @return [Array<String>]
    # @!attribute supported_use_cases
    #   <p>An array of supported use cases for the country.</p>
    #   @return [Array<String>]
    # @!attribute supported_tiers
    #   <p>An array of supported tiers for the country.</p>
    #   @return [Array<String>]
    # @!attribute customer_owned_identity_required
    #   <p>Whether a customer-owned identity is required to send notify messages to this country.</p>
    #   @return [Boolean]
    class NotifyCountryInformation < Struct.new(
      nil,
      :iso_country_code,
      :country_name,
      :supported_channels,
      :supported_use_cases,
      :supported_tiers,
      :customer_owned_identity_required,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:customer_owned_identity_required] = false unless options.key?(:customer_owned_identity_required)
        super
      end
    end

    # <p>The information for notify templates that meet a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class NotifyTemplateFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a system-managed notify template in an Amazon Web Services account.</p>
    # @!attribute template_id
    #   <p>The unique identifier for the template.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the template.</p>
    #   @return [Integer]
    # @!attribute template_type
    #   <p>The type of the template.</p>
    #   @return [String]
    # @!attribute channels
    #   <p>The channels for the template. Supported values are <code>SMS</code> and <code>VOICE</code>.</p>
    #   @return [Array<String>]
    # @!attribute tier_access
    #   <p>The tier access level for the template.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current status of the template.</p>
    #   @return [String]
    # @!attribute supported_countries
    #   <p>An array of supported country codes for the template.</p>
    #   @return [Array<String>]
    # @!attribute language_code
    #   <p>The language code for the template.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the template.</p>
    #   @return [String]
    # @!attribute variables
    #   <p>An array of template variable metadata for the template.</p>
    #   @return [Hash<String, Types::TemplateVariableMetadata>]
    # @!attribute supported_voice_ids
    #   <p>An array of supported voice IDs for voice templates.</p>
    #   @return [Array<String>]
    # @!attribute created_timestamp
    #   <p>The time when the notify template was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class NotifyTemplateInformation < Struct.new(
      nil,
      :template_id,
      :version,
      :template_type,
      :channels,
      :tier_access,
      :status,
      :supported_countries,
      :language_code,
      :content,
      :variables,
      :supported_voice_ids,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single number preference that specifies how to match available phone numbers. Each preference pairs a match type with one or more filter values.</p>
    # @!attribute preference_type
    #   <p>The type of match to apply to the filter values.</p> <ul> <li> <p> <code>StartsWith</code>: Returns numbers that begin with the filter value.</p> </li> <li> <p> <code>EndsWith</code>: Returns numbers that end with the filter value.</p> </li> <li> <p> <code>Contains</code>: Returns numbers that contain the filter value.</p> </li> <li> <p> <code>ExactMatch</code>: Returns the number that exactly matches the filter value.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute filter
    #   <p>The digit pattern values to match against available phone numbers, using the specified preference type.</p>
    #   @return [Array<String>]
    class NumberPreferenceItem < Struct.new(
      nil,
      :preference_type,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for all OptOutList in an Amazon Web Services account.</p>
    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) of the OptOutList.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the OutOutList was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class OptOutListInformation < Struct.new(
      nil,
      :opt_out_list_arn,
      :opt_out_list_name,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for opted out numbers that meet a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter for.</p>
    #   @return [Array<String>]
    class OptedOutFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for an opted out number in an Amazon Web Services account.</p>
    # @!attribute opted_out_number
    #   <p>The phone number that is opted out.</p>
    #   @return [String]
    # @!attribute opted_out_timestamp
    #   <p>The time that the op tout occurred, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute end_user_opted_out
    #   <p>This is set to true if it was the end recipient that opted out.</p>
    #   @return [Boolean]
    class OptedOutNumberInformation < Struct.new(
      nil,
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:end_user_opted_out] = false unless options.key?(:end_user_opted_out)
        super
      end
    end

    # <p>The metadata for an origination identity associated with a pool.</p>
    # @!attribute origination_identity_arn
    #   <p>The Amazon Resource Name (ARN) associated with the origination identity.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The unique identifier of the origination identity.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. This field is optional and may not be present for origination identity types that are not country-specific, such as RCS agents.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Describes if the origination identity can be used for text messages, voice calls or both.</p>
    #   @return [Array<String>]
    # @!attribute phone_number
    #   <p>The phone number in E.164 format.</p>
    #   @return [String]
    class OriginationIdentityMetadata < Struct.new(
      nil,
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      :number_capabilities,
      :phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a phone number that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class PhoneNumberFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a phone number, in E.164 format, in an Amazon Web Services account.</p>
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) associated with the phone number.</p>
    #   @return [String]
    # @!attribute phone_number_id
    #   <p>The unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the phone number.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Describes if the origination identity can be used for text messages, voice calls or both.</p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of phone number.</p>
    #   @return [String]
    # @!attribute monthly_leasing_price
    #   <p>The price, in US dollars, to lease the phone number.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients using the TwoWayChannelArn.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>When set to false and an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out request. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html#settings-account-sms-self-managed-opt-out">Self-managed opt-outs</a> </p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the phone number.</p>
    #   @return [String]
    # @!attribute international_sending_enabled
    #   <p>When set to true the international sending of phone number is Enabled.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the phone number can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute pool_id
    #   <p>The unique identifier of the pool associated with the phone number.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute messaging_limits
    #   <p>The messaging limits that apply to the phone number, including the per-capability send rates and any advisory per-provider daily message caps.</p>
    #   @return [Types::MessagingLimits]
    # @!attribute pricing_tier
    #   <p>The pricing model.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class PhoneNumberInformation < Struct.new(
      nil,
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :international_sending_enabled,
      :deletion_protection_enabled,
      :pool_id,
      :registration_id,
      :messaging_limits,
      :pricing_tier,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:international_sending_enabled] = false unless options.key?(:international_sending_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # <p>The information for a pool that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class PoolFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a pool in an Amazon Web Services account.</p>
    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) for the pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The unique identifier for the pool.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pool.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>When set to true you can receive incoming text messages from your end recipients using the TwoWayChannelArn.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>When set to false, an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html#settings-account-sms-self-managed-opt-out">Self-managed opt-outs</a> </p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the pool.</p>
    #   @return [String]
    # @!attribute shared_routes_enabled
    #   <p>Allows you to enable shared routes on your pool.</p> <p>By default, this is set to <code>False</code>. If you set this value to <code>True</code>, your messages are sent using phone numbers or sender IDs (depending on the country) that are shared with other users. In some countries, such as the United States, senders aren't allowed to use shared routes and must use a dedicated phone number or short code.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class PoolInformation < Struct.new(
      nil,
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:shared_routes_enabled] = false unless options.key?(:shared_routes_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # <p>Information about origination identities associated with a pool that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class PoolOriginationIdentitiesFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The types of statuses that can be used.</p>
    # @!attribute protect_status
    #   <p>The types of protection that can be used.</p>
    #   @return [String]
    class ProtectConfigurationCountryRuleSetInformation < Struct.new(
      nil,
      :protect_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering protect configurations that meet a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter for.</p>
    #   @return [Array<String>]
    class ProtectConfigurationFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information on the specified protect configuration.</p>
    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the protect configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute account_default
    #   <p>This is true if the protect configuration is set as your account default protect configuration.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>The status of deletion protection for the protect configuration. When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    class ProtectConfigurationInformation < Struct.new(
      nil,
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:account_default] = false unless options.key?(:account_default)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # <p>Provides details on phone number rule overrides for a protect configuration.</p>
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the rule was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute action
    #   <p>The action for the rule to perform of either blocking or allowing messages to the destination phone number.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute expiration_timestamp
    #   <p>The time the rule will expire at. If <code>ExpirationTimestamp</code> is not set then the rule will not expire.</p>
    #   @return [Time]
    class ProtectConfigurationRuleSetNumberOverride < Struct.new(
      nil,
      :destination_phone_number,
      :created_timestamp,
      :action,
      :iso_country_code,
      :expiration_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a protect configuration rule set number override that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class ProtectConfigurationRuleSetNumberOverrideFilterItem < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> get the values for PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute keyword
    #   <p>The new keyword to add.</p>
    #   @return [String]
    # @!attribute keyword_message
    #   <p>The message associated with the keyword.</p>
    #   @return [String]
    # @!attribute keyword_action
    #   <p>The action to perform for the new keyword when it is received.</p> <ul> <li> <p>AUTOMATIC_RESPONSE: A message is sent to the recipient.</p> </li> <li> <p>OPT_OUT: Keeps the recipient from receiving future messages.</p> </li> <li> <p>OPT_IN: The recipient wants to receive future messages.</p> </li> </ul>
    #   @return [String]
    class PutKeywordRequest < Struct.new(
      nil,
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or PoolArn that the keyword was associated with.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or PoolId that the keyword was associated with.</p>
    #   @return [String]
    # @!attribute keyword
    #   <p>The keyword that was added.</p>
    #   @return [String]
    # @!attribute keyword_message
    #   <p>The message associated with the keyword.</p>
    #   @return [String]
    # @!attribute keyword_action
    #   <p>The action to perform when the keyword is used.</p>
    #   @return [String]
    class PutKeywordResult < Struct.new(
      nil,
      :origination_identity_arn,
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    # @!attribute message_feedback_status
    #   <p>Set the message feedback to be either <code>RECEIVED</code> or <code>FAILED</code>.</p>
    #   @return [String]
    class PutMessageFeedbackRequest < Struct.new(
      nil,
      :message_id,
      :message_feedback_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    # @!attribute message_feedback_status
    #   <p>The current status of the message.</p>
    #   @return [String]
    class PutMessageFeedbackResult < Struct.new(
      nil,
      :message_id,
      :message_feedback_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn to add the phone number to.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute opted_out_number
    #   <p>The phone number to add to the OptOutList in E.164 format.</p>
    #   @return [String]
    class PutOptedOutNumberRequest < Struct.new(
      nil,
      :opt_out_list_name,
      :opted_out_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The OptOutListArn that the phone number was removed from.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The OptOutListName that the phone number was removed from.</p>
    #   @return [String]
    # @!attribute opted_out_number
    #   <p>The phone number that was added to the OptOutList.</p>
    #   @return [String]
    # @!attribute opted_out_timestamp
    #   <p>The time that the phone number was added to the OptOutList, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute end_user_opted_out
    #   <p>This is true if it was the end user who requested their phone number be removed. </p>
    #   @return [Boolean]
    class PutOptedOutNumberResult < Struct.new(
      nil,
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:end_user_opted_out] = false unless options.key?(:end_user_opted_out)
        super
      end
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action for the rule to either block or allow messages to the destination phone number.</p>
    #   @return [String]
    # @!attribute expiration_timestamp
    #   <p>The time the rule will expire at. If <code>ExpirationTimestamp</code> is not set then the rule does not expire.</p>
    #   @return [Time]
    class PutProtectConfigurationRuleSetNumberOverrideRequest < Struct.new(
      nil,
      :client_token,
      :protect_configuration_id,
      :destination_phone_number,
      :action,
      :expiration_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the rule was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute action
    #   <p>The action for the rule to take.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute expiration_timestamp
    #   <p>The time the rule will expire at.</p>
    #   @return [Time]
    class PutProtectConfigurationRuleSetNumberOverrideResult < Struct.new(
      nil,
      :protect_configuration_arn,
      :protect_configuration_id,
      :destination_phone_number,
      :created_timestamp,
      :action,
      :iso_country_code,
      :expiration_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    #   @return [String]
    # @!attribute select_choices
    #   <p>An array of values for the form field.</p>
    #   @return [Array<String>]
    # @!attribute text_value
    #   <p>The text data for a free form field.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    class PutRegistrationFieldValueRequest < Struct.new(
      nil,
      :registration_id,
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    #   @return [String]
    # @!attribute select_choices
    #   <p>An array of values for the form field.</p>
    #   @return [Array<String>]
    # @!attribute text_value
    #   <p>The text data for a free form field.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    class PutRegistrationFieldValueResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :version_number,
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the End User Messaging SMS resource to attach the resource-based policy to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON formatted resource-based policy to attach.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the End User Messaging SMS resource attached to the resource-based policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON formatted Resource Policy.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the resource-based policy was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class PutResourcePolicyResult < Struct.new(
      nil,
      :resource_arn,
      :policy,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for an RCS agent that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class RcsAgentFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for an RCS agent in an Amazon Web Services account.</p>
    # @!attribute rcs_agent_arn
    #   <p>The Amazon Resource Name (ARN) of the RCS agent.</p>
    #   @return [String]
    # @!attribute rcs_agent_id
    #   <p>The unique identifier for the RCS agent.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the RCS agent.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the RCS agent was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the RCS agent can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the RCS agent.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>When set to true you can receive incoming text messages from your end recipients using the TwoWayChannelArn.</p>
    #   @return [Boolean]
    # @!attribute pool_id
    #   <p>The unique identifier of the pool associated with the RCS agent.</p>
    #   @return [String]
    # @!attribute two_way_media_s3_bucket_name
    #   <p>The name of the S3 bucket where inbound RCS media files are stored.</p>
    #   @return [String]
    # @!attribute two_way_media_s3_key_prefix
    #   <p>The key prefix used for inbound RCS media objects in the S3 bucket.</p>
    #   @return [String]
    # @!attribute two_way_media_s3_role
    #   <p>The ARN of the IAM role used to write inbound RCS media files to the S3 bucket.</p>
    #   @return [String]
    # @!attribute two_way_rcs_events_enabled
    #   <p>The list of RCS event types enabled for two-way messaging on the agent.</p>
    #   @return [Array<String>]
    # @!attribute testing_agent
    #   <p>The testing agent information associated with the RCS agent.</p>
    #   @return [Types::TestingAgentInformation]
    # @!attribute messaging_limits
    #   <p>The messaging limits that apply to the RCS agent, including the per-capability send rates.</p>
    #   @return [Types::MessagingLimits]
    class RcsAgentInformation < Struct.new(
      nil,
      :rcs_agent_arn,
      :rcs_agent_id,
      :status,
      :created_timestamp,
      :deletion_protection_enabled,
      :opt_out_list_name,
      :self_managed_opt_outs_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :two_way_enabled,
      :pool_id,
      :two_way_media_s3_bucket_name,
      :two_way_media_s3_key_prefix,
      :two_way_media_s3_role,
      :two_way_rcs_events_enabled,
      :testing_agent,
      :messaging_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        super
      end
    end

    # <p>The content of a rich card, including title, description, media, and card-level suggested actions.</p>
    # @!attribute title
    #   <p>The title of the card. Maximum 200 characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description text of the card. Maximum 2000 characters.</p>
    #   @return [String]
    # @!attribute media
    #   <p>The media content of the card, including the file URL, optional thumbnail, and display height.</p>
    #   @return [Types::RcsCardMedia]
    # @!attribute suggestions
    #   <p>Card-level suggested actions. Maximum 4 suggestions per card.</p>
    #   @return [Array<Types::RcsSuggestedAction>]
    class RcsCardContent < Struct.new(
      nil,
      :title,
      :description,
      :media,
      :suggestions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The media content of a rich card, including the file URL, optional thumbnail, and display height.</p>
    # @!attribute file_url
    #   <p>The S3 URI of the media file for the card, in the format <code>s3://bucket-name/key</code>. Maximum 2000 characters.</p>
    #   @return [String]
    # @!attribute thumbnail_url
    #   <p>The S3 URI of an optional thumbnail image for the card media. Maximum 2000 characters.</p>
    #   @return [String]
    # @!attribute height
    #   <p>The display height of the media in the card. Valid values are SHORT, MEDIUM, and TALL.</p>
    #   @return [String]
    class RcsCardMedia < Struct.new(
      nil,
      :file_url,
      :thumbnail_url,
      :height,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A carousel of 2 to 10 scrollable rich cards.</p>
    # @!attribute card_width
    #   <p>The width of cards in the carousel. Valid values are SMALL and MEDIUM.</p>
    #   @return [String]
    # @!attribute card_contents
    #   <p>The list of cards in the carousel. Minimum 2, maximum 10 cards.</p>
    #   @return [Array<Types::RcsCarouselCardContent>]
    class RcsCarousel < Struct.new(
      nil,
      :card_width,
      :card_contents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content of a carousel card, including title, description, media, and card-level suggested actions. Media height is restricted to SHORT or MEDIUM.</p>
    # @!attribute title
    #   <p>The title of the carousel card. Maximum 200 characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description text of the carousel card. Maximum 2000 characters.</p>
    #   @return [String]
    # @!attribute media
    #   <p>The media content of the carousel card. Media height is restricted to SHORT or MEDIUM (TALL is not supported in carousels).</p>
    #   @return [Types::RcsCarouselCardMedia]
    # @!attribute suggestions
    #   <p>Card-level suggested actions for this carousel card. Maximum 4 suggestions per card.</p>
    #   @return [Array<Types::RcsSuggestedAction>]
    class RcsCarouselCardContent < Struct.new(
      nil,
      :title,
      :description,
      :media,
      :suggestions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The media content of a carousel card. Display height is restricted to SHORT or MEDIUM (TALL is not supported in carousels).</p>
    # @!attribute file_url
    #   <p>The S3 URI of the media file for the carousel card. Maximum 2000 characters.</p>
    #   @return [String]
    # @!attribute thumbnail_url
    #   <p>The S3 URI of an optional thumbnail image for the carousel card media. Maximum 2000 characters.</p>
    #   @return [String]
    # @!attribute height
    #   <p>The display height of the media in the carousel card. Valid values are SHORT and MEDIUM.</p>
    #   @return [String]
    class RcsCarouselCardMedia < Struct.new(
      nil,
      :file_url,
      :thumbnail_url,
      :height,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message body of an RCS message. Exactly one content type must be specified.</p>
    # @!attribute text_message
    #   <p>A plain text RCS message.</p>
    #   @return [Types::RcsTextMessage]
    # @!attribute file_message
    #   <p>A file message containing a media file (image, video, audio, or PDF) with an optional thumbnail.</p>
    #   @return [Types::RcsFileMessage]
    # @!attribute rich_card
    #   <p>A standalone rich card with media, title, description, and suggested actions.</p>
    #   @return [Types::RcsStandaloneCard]
    # @!attribute carousel
    #   <p>A carousel of 2 to 10 scrollable cards, each with media, title, description, and suggested actions.</p>
    #   @return [Types::RcsCarousel]
    class RcsContent < Struct.new(
      :text_message,
      :file_message,
      :rich_card,
      :carousel,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TextMessage < RcsContent; end
      class FileMessage < RcsContent; end
      class RichCard < RcsContent; end
      class Carousel < RcsContent; end
      class Unknown < RcsContent; end
    end

    # <p>A suggested action that creates a calendar event on the recipient's device.</p>
    # @!attribute text
    #   <p>The display text of the action. Maximum 25 characters.</p>
    #   @return [String]
    # @!attribute postback_data
    #   <p>The postback data sent to your webhook when the user taps this action. Maximum 2048 characters.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the calendar event. Maximum 100 characters.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the calendar event in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the calendar event in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>An optional description for the calendar event. Maximum 500 characters.</p>
    #   @return [String]
    class RcsCreateCalendarEventAction < Struct.new(
      nil,
      :text,
      :postback_data,
      :title,
      :start_time,
      :end_time,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A suggested action that initiates a phone call to a specified number when tapped by the recipient.</p>
    # @!attribute text
    #   <p>The display text of the action. Maximum 25 characters.</p>
    #   @return [String]
    # @!attribute postback_data
    #   <p>The postback data sent to your webhook when the user taps this action. Maximum 2048 characters.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number to dial in E.164 format.</p>
    #   @return [String]
    class RcsDialPhoneAction < Struct.new(
      nil,
      :text,
      :postback_data,
      :phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for SMS or MMS fallback when RCS delivery fails or the TimeToLive expires without delivery confirmation.</p>
    # @!attribute channel
    #   <p>The fallback channel to use when RCS delivery fails. Valid values are SMS and MMS. SMS and MMS are mutually exclusive.</p>
    #   @return [String]
    # @!attribute message_body
    #   <p>The text body of the fallback message. Required for SMS fallback. For MMS fallback, at least one of MessageBody or MediaUrls must be provided.</p>
    #   @return [String]
    # @!attribute media_urls
    #   <p>An array of S3 URIs to media files for MMS fallback. Only valid when Channel is MMS.</p>
    #   @return [Array<String>]
    # @!attribute origination_identity
    #   <p>The origination identity to use for the fallback message. This can be a PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, or SenderIdArn. Pool IDs and pool ARNs are not accepted. If not specified and the original message was sent via a pool, the service selects a suitable number from the pool.</p>
    #   @return [String]
    class RcsFallbackConfiguration < Struct.new(
      nil,
      :channel,
      :message_body,
      :media_urls,
      :origination_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A file message containing a media file (image, video, audio, or PDF) with an optional thumbnail.</p>
    # @!attribute file_url
    #   <p>The S3 URI of the media file to send, in the format <code>s3://bucket-name/key</code>. The service downloads the file from your S3 bucket, rehosts it, and generates a presigned URL for the aggregator. Maximum 2000 characters.</p>
    #   @return [String]
    # @!attribute thumbnail_url
    #   <p>The S3 URI of an optional thumbnail image for the media file, in the format <code>s3://bucket-name/key</code>. Maximum 2000 characters.</p>
    #   @return [String]
    class RcsFileMessage < Struct.new(
      nil,
      :file_url,
      :thumbnail_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content of an RCS message, containing the message body (text, file, rich card, or carousel) and optional message-level suggested actions.</p>
    # @!attribute content
    #   <p>The content of the RCS message. Exactly one content type must be specified: TextMessage, FileMessage, RichCard, or Carousel.</p>
    #   @return [Types::RcsContent]
    # @!attribute suggestions
    #   <p>Message-level suggested actions displayed to the recipient. Maximum 11 suggestions per message.</p>
    #   @return [Array<Types::RcsSuggestedAction>]
    class RcsMessageContent < Struct.new(
      nil,
      :content,
      :suggestions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A suggested action that opens a URL in the recipient's browser or an in-app webview.</p>
    # @!attribute text
    #   <p>The display text of the action. Maximum 25 characters.</p>
    #   @return [String]
    # @!attribute postback_data
    #   <p>The postback data sent to your webhook when the user taps this action. Maximum 2048 characters.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL to open. Must start with https://. Maximum 2048 characters.</p>
    #   @return [String]
    # @!attribute application
    #   <p>How to open the URL. BROWSER opens in the device's default browser. WEBVIEW opens in an in-app webview.</p>
    #   @return [String]
    # @!attribute webview_view_mode
    #   <p>The display mode of the webview. Valid values are FULL, HALF, and TALL. Only applicable when Application is WEBVIEW.</p>
    #   @return [String]
    class RcsOpenUrlAction < Struct.new(
      nil,
      :text,
      :postback_data,
      :url,
      :application,
      :webview_view_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A suggested reply action that sends predefined text and postback data when tapped by the recipient.</p>
    # @!attribute text
    #   <p>The display text of the suggested reply. Maximum 25 characters.</p>
    #   @return [String]
    # @!attribute postback_data
    #   <p>The postback data sent to your webhook when the user taps this reply. Maximum 2048 characters.</p>
    #   @return [String]
    class RcsReplyAction < Struct.new(
      nil,
      :text,
      :postback_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A suggested action that requests the recipient's current location.</p>
    # @!attribute text
    #   <p>The display text of the action. Maximum 25 characters.</p>
    #   @return [String]
    # @!attribute postback_data
    #   <p>The postback data sent to your webhook when the user taps this action. Maximum 2048 characters.</p>
    #   @return [String]
    class RcsRequestLocationAction < Struct.new(
      nil,
      :text,
      :postback_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A suggested action that shows a location on a map when tapped by the recipient.</p>
    # @!attribute text
    #   <p>The display text of the action. Maximum 25 characters.</p>
    #   @return [String]
    # @!attribute postback_data
    #   <p>The postback data sent to your webhook when the user taps this action. Maximum 2048 characters.</p>
    #   @return [String]
    # @!attribute latitude
    #   <p>The latitude of the location. Valid values are -90 to 90.</p>
    #   @return [Float]
    # @!attribute longitude
    #   <p>The longitude of the location. Valid values are -180 to 180.</p>
    #   @return [Float]
    # @!attribute label
    #   <p>An optional label for the location pin. Maximum 100 characters.</p>
    #   @return [String]
    class RcsShowLocationAction < Struct.new(
      nil,
      :text,
      :postback_data,
      :latitude,
      :longitude,
      :label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A standalone rich card with media, title, description, and suggested actions.</p>
    # @!attribute card_orientation
    #   <p>The orientation of the rich card. Valid values are HORIZONTAL and VERTICAL.</p>
    #   @return [String]
    # @!attribute thumbnail_image_alignment
    #   <p>The alignment of the thumbnail image in a horizontal card. Valid values are LEFT and RIGHT. Only applicable when CardOrientation is HORIZONTAL.</p>
    #   @return [String]
    # @!attribute card_content
    #   <p>The content of the rich card, including title, description, media, and card-level suggested actions.</p>
    #   @return [Types::RcsCardContent]
    class RcsStandaloneCard < Struct.new(
      nil,
      :card_orientation,
      :thumbnail_image_alignment,
      :card_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A suggested action displayed to the RCS message recipient. Can be a reply, open URL, dial phone, show location, request location, or create calendar event.</p>
    # @!attribute reply
    #   <p>A suggested reply that sends predefined text and postback data when tapped.</p>
    #   @return [Types::RcsReplyAction]
    # @!attribute open_url
    #   <p>A suggested action that opens a URL in the user's browser or a webview.</p>
    #   @return [Types::RcsOpenUrlAction]
    # @!attribute dial_phone
    #   <p>A suggested action that initiates a phone call to the specified number.</p>
    #   @return [Types::RcsDialPhoneAction]
    # @!attribute show_location
    #   <p>A suggested action that shows a location on a map.</p>
    #   @return [Types::RcsShowLocationAction]
    # @!attribute request_location
    #   <p>A suggested action that requests the user's current location.</p>
    #   @return [Types::RcsRequestLocationAction]
    # @!attribute create_calendar_event
    #   <p>A suggested action that creates a calendar event on the user's device.</p>
    #   @return [Types::RcsCreateCalendarEventAction]
    class RcsSuggestedAction < Struct.new(
      :reply,
      :open_url,
      :dial_phone,
      :show_location,
      :request_location,
      :create_calendar_event,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Reply < RcsSuggestedAction; end
      class OpenUrl < RcsSuggestedAction; end
      class DialPhone < RcsSuggestedAction; end
      class ShowLocation < RcsSuggestedAction; end
      class RequestLocation < RcsSuggestedAction; end
      class CreateCalendarEvent < RcsSuggestedAction; end
      class Unknown < RcsSuggestedAction; end
    end

    # <p>A plain text RCS message body.</p>
    # @!attribute body
    #   <p>The text body of the RCS message. Maximum 3072 characters.</p>
    #   @return [String]
    class RcsTextMessage < Struct.new(
      nil,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering registrations that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter for.</p>
    #   @return [Array<String>]
    class RegistrationAssociationFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for the origination identity that is associated with the registration.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the origination identity that is associated with the registration. </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the origination identity. For example this could be a <b>PhoneNumberId</b> or <b>SenderId</b>.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The origination identity type.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number associated with the registration in E.164 format.</p>
    #   @return [String]
    class RegistrationAssociationMetadata < Struct.new(
      nil,
      :resource_arn,
      :resource_id,
      :resource_type,
      :iso_country_code,
      :phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering registration attachments that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter on.</p>
    #   @return [Array<String>]
    class RegistrationAttachmentFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information on the specified registration attachments.</p>
    # @!attribute registration_attachment_arn
    #   <p>The Amazon Resource Name (ARN) for the registration attachment.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    # @!attribute attachment_status
    #   <p>The status of the registration attachment. </p> <ul> <li> <p> <code>UPLOAD_IN_PROGRESS</code> The attachment is being uploaded.</p> </li> <li> <p> <code>UPLOAD_COMPLETE</code> The attachment has been uploaded.</p> </li> <li> <p> <code>UPLOAD_FAILED</code> The attachment failed to uploaded.</p> </li> <li> <p> <code>DELETED</code> The attachment has been deleted..</p> </li> </ul>
    #   @return [String]
    # @!attribute attachment_upload_error_reason
    #   <p>A description of why the upload didn't successfully complete.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the registration attachment was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute attachment_url
    #   <p>The URL to the document that's associated with the registration attachment.</p>
    #   @return [String]
    class RegistrationAttachmentsInformation < Struct.new(
      nil,
      :registration_attachment_arn,
      :registration_attachment_id,
      :attachment_status,
      :attachment_upload_error_reason,
      :created_timestamp,
      :attachment_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the reason a registration was rejected.</p>
    # @!attribute reason
    #   <p>The reason a registration was rejected.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A short description of the rejection reason.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A long description of the rejection reason.</p>
    #   @return [String]
    # @!attribute documentation_title
    #   <p>The title of the document.</p>
    #   @return [String]
    # @!attribute documentation_link
    #   <p>The link to the document.</p>
    #   @return [String]
    class RegistrationDeniedReasonInformation < Struct.new(
      nil,
      :reason,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a description of the specified field.</p>
    # @!attribute section_path
    #   <p>The section path of the field.</p>
    #   @return [String]
    # @!attribute field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    #   @return [String]
    # @!attribute field_type
    #   <p>The type of field.</p>
    #   @return [String]
    # @!attribute field_requirement
    #   <p>Specifies if the field for the registration form is required, conditional or optional.</p>
    #   @return [String]
    # @!attribute select_validation
    #   <p>The validation rules for a select field.</p>
    #   @return [Types::SelectValidation]
    # @!attribute text_validation
    #   <p>The validation rules for a text field.</p>
    #   @return [Types::TextValidation]
    # @!attribute display_hints
    #   <p>An array of RegistrationFieldDisplayHints objects for the field.</p>
    #   @return [Types::RegistrationFieldDisplayHints]
    # @!attribute conditional_behavior
    #   <p>The conditional behavior rules for this field. Only present when <b>FieldRequirement</b> is <b>CONDITIONAL</b>. Rules are evaluated in order and the first matching rule determines the field's resolved requirement. If no rule matches, the <b>DefaultBehavior</b> applies.</p>
    #   @return [Types::ConditionalBehavior]
    class RegistrationFieldDefinition < Struct.new(
      nil,
      :section_path,
      :field_path,
      :field_type,
      :field_requirement,
      :select_validation,
      :text_validation,
      :display_hints,
      :conditional_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides help information on the registration field.</p>
    # @!attribute title
    #   <p>The title of the display hint.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A short description of the display hint.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A full description of the display hint.</p>
    #   @return [String]
    # @!attribute documentation_title
    #   <p>The title of the document the display hint is associated with.</p>
    #   @return [String]
    # @!attribute documentation_link
    #   <p>The link to the document the display hint is associated with.</p>
    #   @return [String]
    # @!attribute select_option_descriptions
    #   <p>An array of SelectOptionDescription objects.</p>
    #   @return [Array<Types::SelectOptionDescription>]
    # @!attribute text_validation_description
    #   <p>The validation rules for the text field.</p>
    #   @return [String]
    # @!attribute example_text_value
    #   <p>Example text of what the value of a field should contain.</p>
    #   @return [String]
    class RegistrationFieldDisplayHints < Struct.new(
      nil,
      :title,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link,
      :select_option_descriptions,
      :text_validation_description,
      :example_text_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the values of the specified field.</p>
    # @!attribute field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    #   @return [String]
    # @!attribute select_choices
    #   <p>An array of values for the form field.</p>
    #   @return [Array<String>]
    # @!attribute text_value
    #   <p>The text data for a free form field.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    # @!attribute denied_reason
    #   <p>A description of why the registration was denied.</p>
    #   @return [String]
    # @!attribute feedback
    #   <p>Generative AI feedback information provided for this specific field during the registration review process. This may include validation errors, suggestions for improvement, or additional requirements.</p>
    #   @return [String]
    class RegistrationFieldValueInformation < Struct.new(
      nil,
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id,
      :denied_reason,
      :feedback,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering registrations that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter on.</p>
    #   @return [Array<String>]
    class RegistrationFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the requested registration.</p>
    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The status of the registration.</p> <ul> <li> <p> <code>CLOSED</code>: The phone number or sender ID has been deleted and you must also delete the registration for the number.</p> </li> <li> <p> <code>CREATED</code>: Your registration is created but not submitted.</p> </li> <li> <p> <code>COMPLETE</code>: Your registration has been approved and your origination identity has been created.</p> </li> <li> <p> <code>DELETED</code>: The registration has been deleted.</p> </li> <li> <p> <code>PROVISIONING</code>: Your registration has been approved and your origination identity is being created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REQUIRES_UPDATES</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted and is awaiting review.</p> </li> </ul>
    #   @return [String]
    # @!attribute current_version_number
    #   <p>The current version number of the registration.</p>
    #   @return [Integer]
    # @!attribute approved_version_number
    #   <p>The version number of the registration that was approved.</p>
    #   @return [Integer]
    # @!attribute latest_denied_version_number
    #   <p>The latest version number of the registration that was denied.</p>
    #   @return [Integer]
    # @!attribute additional_attributes
    #   <p>Metadata about a given registration which is specific to that registration type.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_timestamp
    #   <p>The time when the registration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class RegistrationInformation < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_status,
      :current_version_number,
      :approved_version_number,
      :latest_denied_version_number,
      :additional_attributes,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information on the specified section definition.</p>
    # @!attribute section_path
    #   <p>The path to the section of the registration.</p>
    #   @return [String]
    # @!attribute display_hints
    #   <p>The path to the section of the registration.</p>
    #   @return [Types::RegistrationSectionDisplayHints]
    class RegistrationSectionDefinition < Struct.new(
      nil,
      :section_path,
      :display_hints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides help information on the registration section.</p>
    # @!attribute title
    #   <p>The title of the display hint.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A short description of the display hint.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A full description of the display hint.</p>
    #   @return [String]
    # @!attribute documentation_title
    #   <p>The title of the document the display hint is associated with.</p>
    #   @return [String]
    # @!attribute documentation_link
    #   <p>The link to the document the display hint is associated with.</p>
    #   @return [String]
    class RegistrationSectionDisplayHints < Struct.new(
      nil,
      :title,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information on the supported registration type.</p>
    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute supported_associations
    #   <p>The supported association behavior for the registration type.</p>
    #   @return [Array<Types::SupportedAssociation>]
    # @!attribute display_hints
    #   <p>Provides help information on the registration.</p>
    #   @return [Types::RegistrationTypeDisplayHints]
    class RegistrationTypeDefinition < Struct.new(
      nil,
      :registration_type,
      :supported_associations,
      :display_hints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides help information on the registration type.</p>
    # @!attribute title
    #   <p>The title of the display hint.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A short description of the display hint.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A full description of the display hint.</p>
    #   @return [String]
    # @!attribute documentation_title
    #   <p>The title of the document the display hint is associated with.</p>
    #   @return [String]
    # @!attribute documentation_link
    #   <p>The link to the document the display hint is associated with.</p>
    #   @return [String]
    class RegistrationTypeDisplayHints < Struct.new(
      nil,
      :title,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering registration types that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter on.</p>
    #   @return [Array<String>]
    class RegistrationTypeFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering registration versions that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter on.</p>
    #   @return [Array<String>]
    class RegistrationVersionFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the specified version of the registration.</p>
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute registration_version_status
    #   <p>The status of the registration.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>
    #   @return [String]
    # @!attribute registration_version_status_history
    #   <p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>
    #   @return [Types::RegistrationVersionStatusHistory]
    # @!attribute denied_reasons
    #   <p>An array of RegistrationDeniedReasonInformation objects. </p>
    #   @return [Array<Types::RegistrationDeniedReasonInformation>]
    # @!attribute feedback
    #   <p>Generative AI feedback information provided during the registration review process. This includes comments, suggestions, or additional requirements.</p>
    #   @return [String]
    class RegistrationVersionInformation < Struct.new(
      nil,
      :version_number,
      :registration_version_status,
      :registration_version_status_history,
      :denied_reasons,
      :feedback,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>
    # @!attribute draft_timestamp
    #   <p>The time when the registration was in the draft state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute submitted_timestamp
    #   <p>The time when the registration was in the submitted state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute aws_reviewing_timestamp
    #   <p>The time when the registration was in the AWS reviewing state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute reviewing_timestamp
    #   <p>The time when the registration was in the reviewing state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute requires_authentication_timestamp
    #   <p>The time when the registration was in the requires authentication state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute approved_timestamp
    #   <p>The time when the registration was in the approved state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute discarded_timestamp
    #   <p>The time when the registration was in the discarded state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute denied_timestamp
    #   <p>The time when the registration was in the denied state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute revoked_timestamp
    #   <p>The time when the registration was in the revoked state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute archived_timestamp
    #   <p>The time when the registration was in the archived state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class RegistrationVersionStatusHistory < Struct.new(
      nil,
      :draft_timestamp,
      :submitted_timestamp,
      :aws_reviewing_timestamp,
      :reviewing_timestamp,
      :requires_authentication_timestamp,
      :approved_timestamp,
      :discarded_timestamp,
      :denied_timestamp,
      :revoked_timestamp,
      :archived_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The PhoneNumberId or PhoneNumberArn of the phone number to release. You can use <a>DescribePhoneNumbers</a> to get the values for PhoneNumberId and PhoneNumberArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    class ReleasePhoneNumberRequest < Struct.new(
      nil,
      :phone_number_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_arn
    #   <p>The PhoneNumberArn of the phone number that was released.</p>
    #   @return [String]
    # @!attribute phone_number_id
    #   <p>The PhoneNumberId of the phone number that was released.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number that was released.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The message type that was associated with the phone number.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Specifies if the number could be used for text messages, voice, or both.</p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of number that was released.</p>
    #   @return [String]
    # @!attribute monthly_leasing_price
    #   <p>The monthly price of the phone number, in US dollars.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the TwoWayChannel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to false and an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that was associated with the phone number.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class ReleasePhoneNumberResult < Struct.new(
      nil,
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :registration_id,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        super
      end
    end

    # @!attribute sender_id
    #   <p>The sender ID to release.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    class ReleaseSenderIdRequest < Struct.new(
      nil,
      :sender_id,
      :iso_country_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sender_id_arn
    #   <p>The Amazon Resource Name (ARN) associated with the SenderId.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The sender ID that was released.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [Array<String>]
    # @!attribute monthly_leasing_price
    #   <p>The monthly price, in US dollars, to lease the sender ID.</p>
    #   @return [String]
    # @!attribute registered
    #   <p>True if the sender ID is registered.</p>
    #   @return [Boolean]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class ReleaseSenderIdResult < Struct.new(
      nil,
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :registered,
      :registration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:registered] = false unless options.key?(:registered)
        super
      end
    end

    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are <code>TRANSACTIONAL</code> for messages that are critical or time-sensitive and <code>PROMOTIONAL</code> for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Indicates if the phone number will be used for text messages, voice messages, or both. </p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of phone number to request.</p> <p>When you request a <code>SIMULATOR</code> phone number, you must set <b>MessageType</b> as <code>TRANSACTIONAL</code>. </p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList to associate with the phone number. You can use the OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The pool to associated with the phone number. You can use the PoolId or PoolArn. </p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute registration_id
    #   <p>Use this field to attach your phone number for an external registration process.</p>
    #   @return [String]
    # @!attribute number_preference
    #   <p>An optional selection preference used to request a specific phone number, such as a number that starts with, ends with, or contains a particular digit pattern. You can specify at most one preference. Number preferences apply only to <code>TEN_DLC</code> requests in the <code>US</code>.</p>
    #   @return [Array<Types::NumberPreferenceItem>]
    # @!attribute international_sending_enabled
    #   <p>By default this is set to false. When set to true the international sending of phone number is Enabled. </p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the requested phone number. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class RequestPhoneNumberRequest < Struct.new(
      nil,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :opt_out_list_name,
      :pool_id,
      :registration_id,
      :number_preference,
      :international_sending_enabled,
      :deletion_protection_enabled,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the requested phone number.</p>
    #   @return [String]
    # @!attribute phone_number_id
    #   <p>The unique identifier of the new phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The new phone number that was requested.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Indicates if the phone number will be used for text messages, voice messages or both. </p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of number that was released.</p>
    #   @return [String]
    # @!attribute monthly_leasing_price
    #   <p>The monthly price, in US dollars, to lease the phone number.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The ARN used to identify the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to false and an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that is associated with the requested phone number.</p>
    #   @return [String]
    # @!attribute international_sending_enabled
    #   <p>By default this is set to false. When set to true the international sending of phone number is Enabled. </p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted. </p>
    #   @return [Boolean]
    # @!attribute pool_id
    #   <p>The unique identifier of the pool associated with the phone number </p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the phone number.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class RequestPhoneNumberResult < Struct.new(
      nil,
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :international_sending_enabled,
      :deletion_protection_enabled,
      :pool_id,
      :registration_id,
      :tags,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:international_sending_enabled] = false unless options.key?(:international_sending_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute sender_id
    #   <p>The sender ID string to request. The sender ID can be 1-11 alphanumeric characters including letters (A-Z, a-z), numbers (0-9), or hyphens (-). The sender ID must contain at least one letter and cannot start or end with a hyphen.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [Array<String>]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the sender ID.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class RequestSenderIdRequest < Struct.new(
      nil,
      :sender_id,
      :iso_country_code,
      :message_types,
      :deletion_protection_enabled,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sender_id_arn
    #   <p>The Amazon Resource Name (ARN) associated with the SenderId.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The sender ID that was requested.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [Array<String>]
    # @!attribute monthly_leasing_price
    #   <p>The monthly price, in US dollars, to lease the sender ID.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute registered
    #   <p>True if the sender ID is registered.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the sender ID.</p>
    #   @return [Array<Types::Tag>]
    class RequestSenderIdResult < Struct.new(
      nil,
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :deletion_protection_enabled,
      :registered,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        options[:registered] = false unless options.key?(:registered)
        super
      end
    end

    # <p>A requested resource couldn't be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_type,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of each select option.</p>
    # @!attribute option
    #   <p>The value of the option.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the select option.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the option meaning.</p>
    #   @return [String]
    class SelectOptionDescription < Struct.new(
      nil,
      :option,
      :title,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Validation rules for a select field.</p>
    # @!attribute min_choices
    #   <p>The minimum number of choices for the select.</p>
    #   @return [Integer]
    # @!attribute max_choices
    #   <p>The maximum number of choices for the select.</p>
    #   @return [Integer]
    # @!attribute options
    #   <p>An array of strings for the possible selection options. </p>
    #   @return [Array<String>]
    class SelectValidation < Struct.new(
      nil,
      :min_choices,
      :max_choices,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute verification_channel
    #   <p>Choose to send the verification code as an SMS or voice message.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Choose the language to use for the message.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute destination_country_parameters
    #   <p>This field is used for any country-specific registration requirements. Currently, this setting is only used when you send messages to recipients in India using a sender ID. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html">Special requirements for sending SMS messages to recipients in India</a>. </p>
    #   @return [Hash<String, String>]
    class SendDestinationNumberVerificationCodeRequest < Struct.new(
      nil,
      :verified_destination_number_id,
      :verification_channel,
      :language_code,
      :origination_identity,
      :configuration_set_name,
      :context,
      :destination_country_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    class SendDestinationNumberVerificationCodeResult < Struct.new(
      nil,
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute message_body
    #   <p>The text body of the message.</p>
    #   @return [String]
    # @!attribute media_urls
    #   <p>An array of URLs to each media file to send. </p> <p>The media files have to be stored in an S3 bucket. Supported media file formats are listed in <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/mms-limitations-character.html">MMS file types, size and character limits</a>. For more information on creating an S3 bucket and managing objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html">Creating a bucket</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/upload-objects.html">Uploading objects</a> in the <i>Amazon S3 User Guide</i>, and <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/send-mms-message.html#send-mms-message-bucket">Setting up an Amazon S3 bucket for MMS files</a> in the <i>Amazon Web Services End User Messaging SMS User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute max_price
    #   <p>The maximum amount that you want to spend, in US dollars, per each MMS message.</p>
    #   @return [String]
    # @!attribute time_to_live
    #   <p>How long the media message is valid for. By default this is 72 hours.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    #   @return [Boolean]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier of the protect configuration to use.</p>
    #   @return [String]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    #   @return [Boolean]
    class SendMediaMessageRequest < Struct.new(
      nil,
      :destination_phone_number,
      :origination_identity,
      :message_body,
      :media_urls,
      :configuration_set_name,
      :max_price,
      :time_to_live,
      :context,
      :dry_run,
      :protect_configuration_id,
      :message_feedback_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    class SendMediaMessageResult < Struct.new(
      nil,
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_configuration_id
    #   <p>The unique identifier of the notify configuration to use for sending the message. This can be either the NotifyConfigurationId or NotifyConfigurationArn.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The unique identifier of the template to use for the message.</p>
    #   @return [String]
    # @!attribute template_variables
    #   <p>A map of template variable names and their values. All variable values are passed as strings regardless of the declared variable type. For example, pass <code>INTEGER</code> values as <code>"42"</code> and <code>BOOLEAN</code> values as <code>"true"</code> or <code>"false"</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute time_to_live
    #   <p>How long the text message is valid for, in seconds. By default this is 72 hours.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    #   @return [Boolean]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    #   @return [Boolean]
    class SendNotifyTextMessageRequest < Struct.new(
      nil,
      :notify_configuration_id,
      :destination_phone_number,
      :template_id,
      :template_variables,
      :time_to_live,
      :context,
      :configuration_set_name,
      :dry_run,
      :message_feedback_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The unique identifier of the template used for the message.</p>
    #   @return [String]
    # @!attribute resolved_message_body
    #   <p>The message body after template variable substitution has been applied.</p>
    #   @return [String]
    class SendNotifyTextMessageResult < Struct.new(
      nil,
      :message_id,
      :template_id,
      :resolved_message_body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_configuration_id
    #   <p>The unique identifier of the notify configuration to use for sending the message. This can be either the NotifyConfigurationId or NotifyConfigurationArn.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The unique identifier of the template to use for the message.</p>
    #   @return [String]
    # @!attribute template_variables
    #   <p>A map of template variable names and their values. All variable values are passed as strings regardless of the declared variable type. For example, pass <code>INTEGER</code> values as <code>"42"</code> and <code>BOOLEAN</code> values as <code>"true"</code> or <code>"false"</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute voice_id
    #   <p>The voice ID to use for the voice message.</p>
    #   @return [String]
    # @!attribute time_to_live
    #   <p>How long the voice message is valid for, in seconds. By default this is 72 hours.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    #   @return [Boolean]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    #   @return [Boolean]
    class SendNotifyVoiceMessageRequest < Struct.new(
      nil,
      :notify_configuration_id,
      :destination_phone_number,
      :template_id,
      :template_variables,
      :voice_id,
      :time_to_live,
      :context,
      :configuration_set_name,
      :dry_run,
      :message_feedback_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The unique identifier of the template used for the message.</p>
    #   @return [String]
    # @!attribute resolved_message_body
    #   <p>The message body after template variable substitution has been applied.</p>
    #   @return [String]
    class SendNotifyVoiceMessageResult < Struct.new(
      nil,
      :message_id,
      :template_id,
      :resolved_message_body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity of the message. This can be either the RcsAgentId, RcsAgentArn, PoolId, or PoolArn.</p>
    #   @return [String]
    # @!attribute rcs_message_content
    #   <p>The content of the RCS message. Contains the message content (text, file, rich card, or carousel) and optional message-level suggested actions.</p>
    #   @return [Types::RcsMessageContent]
    # @!attribute time_to_live
    #   <p>The duration in seconds that the RCS message is valid for delivery. If the message cannot be delivered within this duration, it is considered expired. Valid values are 1 to 172800 (48 hours). If a FallbackConfiguration is provided, the fallback is triggered when the duration expires without delivery confirmation.</p>
    #   @return [Integer]
    # @!attribute message_traffic_type
    #   <p>The traffic type of the RCS message. Valid values are AUTHENTICATION, TRANSACTION, PROMOTION, SERVICE_REQUEST, and ACKNOWLEDGEMENT. This field is reserved for future use.</p>
    #   @return [String]
    # @!attribute fallback_configuration
    #   <p>Configuration for SMS or MMS fallback when RCS delivery fails. If provided, the service sends a fallback message via the specified channel when the RCS message fails or the TimeToLive expires.</p>
    #   @return [Types::RcsFallbackConfiguration]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier of the protect configuration to use.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute max_price
    #   <p>The maximum amount that you want to spend, in US dollars, per each RCS message.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    #   @return [Boolean]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    #   @return [Boolean]
    class SendRcsMessageRequest < Struct.new(
      nil,
      :destination_phone_number,
      :origination_identity,
      :rcs_message_content,
      :time_to_live,
      :message_traffic_type,
      :fallback_configuration,
      :protect_configuration_id,
      :configuration_set_name,
      :max_price,
      :dry_run,
      :context,
      :message_feedback_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    class SendRcsMessageResult < Struct.new(
      nil,
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, RcsAgentId, RcsAgentArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute message_body
    #   <p>The body of the text message.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute keyword
    #   <p>When you register a short code in the US, you must specify a program name. If you don’t have a US short code, omit this attribute.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute max_price
    #   <p>The maximum amount that you want to spend, in US dollars, per each text message. If the calculated amount to send the text message is greater than <code>MaxPrice</code>, the message is not sent and an error is returned.</p>
    #   @return [String]
    # @!attribute time_to_live
    #   <p>How long the text message is valid for, in seconds. By default this is 72 hours. If the messages isn't handed off before the TTL expires we stop attempting to hand off the message and return <code>TTL_EXPIRED</code> event.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute destination_country_parameters
    #   <p>This field is used for any country-specific registration requirements. Currently, this setting is only used when you send messages to recipients in India using a sender ID. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html">Special requirements for sending SMS messages to recipients in India</a>. </p> <ul> <li> <p> <code>IN_ENTITY_ID</code> The entity ID or Principal Entity (PE) ID that you received after completing the sender ID registration process.</p> </li> <li> <p> <code>IN_TEMPLATE_ID</code> The template ID that you received after completing the sender ID registration process.</p> <important> <p>Make sure that the Template ID that you specify matches your message template exactly. If your message doesn't match the template that you provided during the registration process, the mobile carriers might reject your message.</p> </important> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient. You are not charged for using <code>DryRun</code>.</p> <p>The Message Parts per Second (MPS) limit when using <code>DryRun</code> is five. If your origination identity has a lower MPS limit then the lower MPS limit is used. For more information about MPS limits, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html">Message Parts per Second (MPS) limits</a> in the <i>End User Messaging SMS User Guide</i>..</p>
    #   @return [Boolean]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    #   @return [Boolean]
    class SendTextMessageRequest < Struct.new(
      nil,
      :destination_phone_number,
      :origination_identity,
      :message_body,
      :message_type,
      :keyword,
      :configuration_set_name,
      :max_price,
      :time_to_live,
      :context,
      :destination_country_parameters,
      :dry_run,
      :protect_configuration_id,
      :message_feedback_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    class SendTextMessageResult < Struct.new(
      nil,
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity to use for the voice call. This can be the PhoneNumber, PhoneNumberId, PhoneNumberArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute message_body
    #   <p>The text to convert to a voice message.</p>
    #   @return [String]
    # @!attribute message_body_text_type
    #   <p>Specifies if the MessageBody field contains text or <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">speech synthesis markup language (SSML)</a>.</p> <ul> <li> <p>TEXT: This is the default value. When used the maximum character limit is 3000.</p> </li> <li> <p>SSML: When used the maximum character limit is 6000 including SSML tagging.</p> </li> </ul>
    #   @return [String]
    # @!attribute voice_id
    #   <p>The voice for the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly</a> service to use. By default this is set to "MATTHEW".</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute max_price_per_minute
    #   <p>The maximum amount to spend per voice message, in US dollars.</p>
    #   @return [String]
    # @!attribute time_to_live
    #   <p>How long the voice message is valid for. By default this is 72 hours.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    #   @return [Boolean]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    #   @return [Boolean]
    class SendVoiceMessageRequest < Struct.new(
      nil,
      :destination_phone_number,
      :origination_identity,
      :message_body,
      :message_body_text_type,
      :voice_id,
      :configuration_set_name,
      :max_price_per_minute,
      :time_to_live,
      :context,
      :dry_run,
      :protect_configuration_id,
      :message_feedback_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    class SendVoiceMessageResult < Struct.new(
      nil,
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The alphanumeric sender ID in a specific country that you want to describe. For more information on sender IDs see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/sender-id-request.html">Requesting sender IDs </a> in the <i>End User Messaging SMS User Guide</i>.</p>
    # @!attribute sender_id
    #   <p>The unique identifier of the sender.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    class SenderIdAndCountry < Struct.new(
      nil,
      :sender_id,
      :iso_country_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a sender ID that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter for.</p>
    #   @return [Array<String>]
    class SenderIdFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information for all SenderIds in an Amazon Web Services account.</p>
    # @!attribute sender_id_arn
    #   <p>The Amazon Resource Name (ARN) associated with the SenderId.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The alphanumeric sender ID in a specific country that you'd like to describe.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [Array<String>]
    # @!attribute monthly_leasing_price
    #   <p>The monthly leasing price, in US dollars.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute registered
    #   <p>True if the sender ID is registered.</p>
    #   @return [Boolean]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute messaging_limits
    #   <p>The messaging limits that apply to the sender ID, including the per-capability send rates.</p>
    #   @return [Types::MessagingLimits]
    # @!attribute pricing_tier
    #   <p>The pricing model.</p>
    #   @return [String]
    class SenderIdInformation < Struct.new(
      nil,
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :deletion_protection_enabled,
      :registered,
      :registration_id,
      :messaging_limits,
      :pricing_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        options[:registered] = false unless options.key?(:registered)
        super
      end
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    class SetAccountDefaultProtectConfigurationRequest < Struct.new(
      nil,
      :protect_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute default_protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the account default protect configuration.</p>
    #   @return [String]
    # @!attribute default_protect_configuration_id
    #   <p>The unique identifier of the account default protect configuration.</p>
    #   @return [String]
    class SetAccountDefaultProtectConfigurationResult < Struct.new(
      nil,
      :default_protect_configuration_arn,
      :default_protect_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback.</p>
    #   @return [Boolean]
    class SetDefaultMessageFeedbackEnabledRequest < Struct.new(
      nil,
      :configuration_set_name,
      :message_feedback_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The arn of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute message_feedback_enabled
    #   <p>True if message feedback is enabled.</p>
    #   @return [Boolean]
    class SetDefaultMessageFeedbackEnabledResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :message_feedback_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The configuration set to update with a new default message type. This field can be the ConsigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    class SetDefaultMessageTypeRequest < Struct.new(
      nil,
      :configuration_set_name,
      :message_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the updated configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that was updated.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The new default message type of the configuration set.</p>
    #   @return [String]
    class SetDefaultMessageTypeResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :message_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The configuration set to updated with a new default SenderId. This field can be the ConsigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The current sender ID for the configuration set. When sending a text message to a destination country which supports SenderIds, the default sender ID on the configuration set specified on <a>SendTextMessage</a> will be used if no dedicated origination phone numbers or registered SenderIds are available in your account, instead of a generic sender ID, such as 'NOTICE'.</p>
    #   @return [String]
    class SetDefaultSenderIdRequest < Struct.new(
      nil,
      :configuration_set_name,
      :sender_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the updated configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that was updated.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The default sender ID to set for the ConfigurationSet.</p>
    #   @return [String]
    class SetDefaultSenderIdResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :sender_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The new monthly limit to enforce on text messages.</p>
    #   @return [Integer]
    class SetMediaMessageSpendLimitOverrideRequest < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit to enforce on sending text messages.</p>
    #   @return [Integer]
    class SetMediaMessageSpendLimitOverrideResult < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The new monthly limit to enforce on notify messages.</p>
    #   @return [Integer]
    class SetNotifyMessageSpendLimitOverrideRequest < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit, in US dollars.</p>
    #   @return [Integer]
    class SetNotifyMessageSpendLimitOverrideResult < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The new monthly limit to enforce on RCS message spending.</p>
    #   @return [Integer]
    class SetRcsMessageSpendLimitOverrideRequest < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit to enforce on RCS message spending.</p>
    #   @return [Integer]
    class SetRcsMessageSpendLimitOverrideResult < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The new monthly limit to enforce on text messages.</p>
    #   @return [Integer]
    class SetTextMessageSpendLimitOverrideRequest < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit to enforce on sending text messages.</p>
    #   @return [Integer]
    class SetTextMessageSpendLimitOverrideResult < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The new monthly limit to enforce on voice messages.</p>
    #   @return [Integer]
    class SetVoiceMessageSpendLimitOverrideRequest < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit to enforce on sending voice messages.</p>
    #   @return [Integer]
    class SetVoiceMessageSpendLimitOverrideResult < Struct.new(
      nil,
      :monthly_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines an Amazon SNS destination for events. You can use Amazon SNS to send notification when certain events occur.</p>
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish events to.</p>
    #   @return [String]
    class SnsDestination < Struct.new(
      nil,
      :topic_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the current monthly spend limits for sending voice and text messages. For more information on increasing your monthly spend limit, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/awssupport-spend-threshold.html"> Requesting a spending quota increase </a> in the <i>End User Messaging SMS User Guide</i>. </p>
    # @!attribute name
    #   <p>The name for the SpendLimit.</p>
    #   @return [String]
    # @!attribute enforced_limit
    #   <p>The maximum amount of money, in US dollars, that you want to be able to spend sending messages each month. This value has to be less than or equal to the amount in <code>MaxLimit</code>. To use this custom limit, <code>Overridden</code> must be set to true.</p>
    #   @return [Integer]
    # @!attribute max_limit
    #   <p> The maximum amount of money that you are able to spend to send messages each month, in US dollars.</p>
    #   @return [Integer]
    # @!attribute overridden
    #   <p>When set to <code>True</code>, the value that has been specified in the <code>EnforcedLimit</code> is used to determine the maximum amount in US dollars that can be spent to send messages each month, in US dollars.</p>
    #   @return [Boolean]
    class SpendLimit < Struct.new(
      nil,
      :name,
      :enforced_limit,
      :max_limit,
      :overridden,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforced_limit] = 0 unless options.key?(:enforced_limit)
        options[:max_limit] = 0 unless options.key?(:max_limit)
        options[:overridden] = false unless options.key?(:overridden)
        super
      end
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute aws_review
    #   <p>Set to true to request AWS review of the registration. When enabled, AWS will perform additional validation and review of the registration submission before processing.</p>
    #   @return [Boolean]
    class SubmitRegistrationVersionRequest < Struct.new(
      nil,
      :registration_id,
      :aws_review,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute registration_version_status
    #   <p>The status of the registration version.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>
    #   @return [String]
    # @!attribute registration_version_status_history
    #   <p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>
    #   @return [Types::RegistrationVersionStatusHistory]
    # @!attribute aws_review
    #   <p>Indicates whether AWS review was requested for this registration submission.</p>
    #   @return [Boolean]
    class SubmitRegistrationVersionResult < Struct.new(
      nil,
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_version_status,
      :registration_version_status_history,
      :aws_review,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:aws_review] = false unless options.key?(:aws_review)
        super
      end
    end

    # <p>The processing rules for when a registration can be associated with an origination identity and disassociated from an origination identity.</p>
    # @!attribute resource_type
    #   <p>Defines the behavior of when an origination identity and registration can be associated with each other.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute association_behavior
    #   <p>The association behavior.</p> <ul> <li> <p> <code>ASSOCIATE_BEFORE_SUBMIT</code> The origination identity has to be supplied when creating a registration.</p> </li> <li> <p> <code>ASSOCIATE_ON_APPROVAL</code> This applies to all sender ID registrations. The sender ID will be automatically provisioned once the registration is approved.</p> </li> <li> <p> <code>ASSOCIATE_AFTER_COMPLETE</code> This applies to phone number registrations when you must complete a registration first, then associate one or more phone numbers later. For example 10DLC campaigns and long codes. </p> </li> </ul>
    #   @return [String]
    # @!attribute disassociation_behavior
    #   <p>The disassociation behavior.</p> <ul> <li> <p> <code>DISASSOCIATE_ALL_CLOSES_REGISTRATION</code> All origination identities must be disassociated from the registration before the registration can be closed.</p> </li> <li> <p> <code>DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION</code> All origination identities must be disassociated from the registration before the registration can be deleted.</p> </li> <li> <p> <code>DELETE_REGISTRATION_DISASSOCIATES</code> The registration can be deleted and all origination identities will be disasscoiated.</p> </li> </ul>
    #   @return [String]
    class SupportedAssociation < Struct.new(
      nil,
      :resource_type,
      :iso_country_code,
      :association_behavior,
      :disassociation_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of tags to be added to the specified topic.</p>
    # @!attribute key
    #   <p>The key identifier, or name, of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The string value associated with the key of the tag.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a template variable.</p>
    # @!attribute type
    #   <p>The type of the variable.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Whether the variable is required.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of the variable.</p>
    #   @return [String]
    # @!attribute max_length
    #   <p>The maximum length for string variables.</p>
    #   @return [Integer]
    # @!attribute min_value
    #   <p>The minimum value for numeric variables.</p>
    #   @return [Integer]
    # @!attribute max_value
    #   <p>The maximum value for numeric variables.</p>
    #   @return [Integer]
    # @!attribute default_value
    #   <p>The default value for the variable.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>The regex pattern the variable value must match.</p>
    #   @return [String]
    # @!attribute sample
    #   <p>A sample value for the variable.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the variable, either <code>CUSTOMER</code> or <code>SYSTEM</code>.</p>
    #   @return [String]
    class TemplateVariableMetadata < Struct.new(
      nil,
      :type,
      :required,
      :description,
      :max_length,
      :min_value,
      :max_value,
      :default_value,
      :pattern,
      :sample,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:required] = false unless options.key?(:required)
        super
      end
    end

    # <p>Contains details about the testing agent associated with an RCS agent.</p>
    # @!attribute status
    #   <p>The current status of the testing agent.</p>
    #   @return [String]
    # @!attribute testing_agent_id
    #   <p>The unique identifier for the testing agent.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier of the registration associated with the testing agent.</p>
    #   @return [String]
    class TestingAgentInformation < Struct.new(
      nil,
      :status,
      :testing_agent_id,
      :registration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Validation rules for a text field.</p>
    # @!attribute min_length
    #   <p>The minimum number of characters for the text field.</p>
    #   @return [Integer]
    # @!attribute max_length
    #   <p>The maximum number of characters for the text field.</p>
    #   @return [Integer]
    # @!attribute pattern
    #   <p>The regular expression used to validate the text field.</p>
    #   @return [String]
    class TextValidation < Struct.new(
      nil,
      :min_length,
      :max_length,
      :pattern,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error that occurred because too many requests were sent during a certain amount of time.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>An array of tag key values to unassociate with the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The configuration set to update with the new event destination. Valid values for this can be the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute event_destination_name
    #   <p>The name to use for the event destination.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>When set to true logging is enabled.</p>
    #   @return [Boolean]
    # @!attribute matching_event_types
    #   <p>An array of event types that determine which events to log.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>
    #   @return [Array<String>]
    # @!attribute cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination that sends data to CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogsDestination]
    # @!attribute kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Firehose.</p>
    #   @return [Types::KinesisFirehoseDestination]
    # @!attribute sns_destination
    #   <p>An object that contains information about an event destination that sends data to Amazon SNS.</p>
    #   @return [Types::SnsDestination]
    class UpdateEventDestinationRequest < Struct.new(
      nil,
      :configuration_set_name,
      :event_destination_name,
      :enabled,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) for the ConfigurationSet that was updated.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #   @return [String]
    # @!attribute event_destination
    #   <p>An EventDestination object containing the details of where events will be logged. </p>
    #   @return [Types::EventDestination]
    class UpdateEventDestinationResult < Struct.new(
      nil,
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_configuration_id
    #   <p>The identifier of the notify configuration to update. The NotifyConfigurationId can be found using the <a>DescribeNotifyConfigurations</a> operation.</p>
    #   @return [String]
    # @!attribute default_template_id
    #   <p>The default template identifier to associate with the notify configuration. If specified, this template is used when sending messages without an explicit template identifier. Pass the special value <code>UNSET_DEFAULT_TEMPLATE</code> to clear the current default template from the notify configuration.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The pool identifier or Amazon Resource Name (ARN) to associate with the notify configuration. Pass the special value <code>UNSET_DEFAULT_POOL_FOR_NOTIFY</code> to clear the current default pool from the notify configuration.</p>
    #   @return [String]
    # @!attribute enabled_countries
    #   <p>An array of two-character ISO country codes, in ISO 3166-1 alpha-2 format, that are enabled for the notify configuration.</p>
    #   @return [Array<String>]
    # @!attribute enabled_channels
    #   <p>An array of channels to enable for the notify configuration. Supported values include <code>SMS</code> and <code>VOICE</code>.</p>
    #   @return [Array<String>]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the notify configuration can't be deleted.</p>
    #   @return [Boolean]
    class UpdateNotifyConfigurationRequest < Struct.new(
      nil,
      :notify_configuration_id,
      :default_template_id,
      :pool_id,
      :enabled_countries,
      :enabled_channels,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the notify configuration.</p>
    #   @return [String]
    # @!attribute notify_configuration_id
    #   <p>The unique identifier for the notify configuration.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute use_case
    #   <p>The use case for the notify configuration.</p>
    #   @return [String]
    # @!attribute default_template_id
    #   <p>The default template identifier associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The identifier of the pool associated with the notify configuration.</p>
    #   @return [String]
    # @!attribute enabled_countries
    #   <p>An array of two-character ISO country codes, in ISO 3166-1 alpha-2 format, that are enabled for the notify configuration.</p>
    #   @return [Array<String>]
    # @!attribute enabled_channels
    #   <p>An array of channels enabled for the notify configuration. Supported values include <code>SMS</code> and <code>VOICE</code>.</p>
    #   @return [Array<String>]
    # @!attribute tier
    #   <p>The tier of the notify configuration.</p>
    #   @return [String]
    # @!attribute tier_upgrade_status
    #   <p>The tier upgrade status of the notify configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the notify configuration.</p>
    #   @return [String]
    # @!attribute rejection_reason
    #   <p>The reason the notify configuration was rejected, if applicable.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the notify configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class UpdateNotifyConfigurationResult < Struct.new(
      nil,
      :notify_configuration_arn,
      :notify_configuration_id,
      :display_name,
      :use_case,
      :default_template_id,
      :pool_id,
      :enabled_countries,
      :enabled_channels,
      :tier,
      :tier_upgrade_status,
      :status,
      :rejection_reason,
      :deletion_protection_enabled,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute phone_number_id
    #   <p>The unique identifier of the phone number. Valid values for this field can be either the PhoneNumberId or PhoneNumberArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to false and an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The OptOutList to add the phone number to. You can use either the opt out list name or the opt out list ARN.</p>
    #   @return [String]
    # @!attribute international_sending_enabled
    #   <p>By default this is set to false. When set to true the international sending of phone number is Enabled. </p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted. </p>
    #   @return [Boolean]
    class UpdatePhoneNumberRequest < Struct.new(
      nil,
      :phone_number_id,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :international_sending_enabled,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the updated phone number.</p>
    #   @return [String]
    # @!attribute phone_number_id
    #   <p>The unique identifier of the phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number that was updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Specifies if the number could be used for text messages, voice or both.</p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of number that was requested.</p>
    #   @return [String]
    # @!attribute monthly_leasing_price
    #   <p>The monthly leasing price of the phone number, in US dollars.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>This is true if self managed opt-out are enabled.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the phone number.</p>
    #   @return [String]
    # @!attribute international_sending_enabled
    #   <p>When set to true the international sending of phone number is Enabled.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the phone number can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class UpdatePhoneNumberResult < Struct.new(
      nil,
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :international_sending_enabled,
      :deletion_protection_enabled,
      :registration_id,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:international_sending_enabled] = false unless options.key?(:international_sending_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute pool_id
    #   <p>The unique identifier of the pool to update. Valid values are either the PoolId or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to false and an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The OptOutList to associate with the pool. Valid values are either OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    #   @return [Boolean]
    class UpdatePoolRequest < Struct.new(
      nil,
      :pool_id,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The ARN of the pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The unique identifier of the pool.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pool update request.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message for the pool to use.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>When set to false and an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the pool.</p>
    #   @return [String]
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class UpdatePoolResult < Struct.new(
      nil,
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:shared_routes_enabled] = false unless options.key?(:shared_routes_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute number_capability
    #   <p>The number capability to apply the CountryRuleSetUpdates updates to.</p>
    #   @return [String]
    # @!attribute country_rule_set_updates
    #   <p>A map of ProtectConfigurationCountryRuleSetInformation objects that contain the details for the requested NumberCapability. The Key is the two-letter ISO country code. For a list of supported ISO country codes, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html">Supported countries and regions (SMS channel)</a> in the End User Messaging SMS User Guide.</p> <p>For example, to set the United States as allowed and Canada as blocked, the <code>CountryRuleSetUpdates</code> would be formatted as: <code>"CountryRuleSetUpdates": { "US" : { "ProtectStatus": "ALLOW" } "CA" : { "ProtectStatus": "BLOCK" } }</code> </p>
    #   @return [Hash<String, Types::ProtectConfigurationCountryRuleSetInformation>]
    class UpdateProtectConfigurationCountryRuleSetRequest < Struct.new(
      nil,
      :protect_configuration_id,
      :number_capability,
      :country_rule_set_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute number_capability
    #   <p>The number capability that was updated</p>
    #   @return [String]
    # @!attribute country_rule_set
    #   <p>An array of ProtectConfigurationCountryRuleSetInformation containing the rules for the NumberCapability.</p>
    #   @return [Hash<String, Types::ProtectConfigurationCountryRuleSetInformation>]
    class UpdateProtectConfigurationCountryRuleSetResult < Struct.new(
      nil,
      :protect_configuration_arn,
      :protect_configuration_id,
      :number_capability,
      :country_rule_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    class UpdateProtectConfigurationRequest < Struct.new(
      nil,
      :protect_configuration_id,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the protect configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute account_default
    #   <p>This is true if the protect configuration is set as your account default protect configuration.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>The status of deletion protection for the protect configuration. When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    class UpdateProtectConfigurationResult < Struct.new(
      nil,
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:account_default] = false unless options.key?(:account_default)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute rcs_agent_id
    #   <p>The unique identifier of the RCS agent to update. You can use either the RcsAgentId or RcsAgentArn.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the RCS agent can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The OptOutList to associate with the RCS agent. Valid values are either OptOutListName or OptOutListArn.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_media_s3_bucket_name
    #   <p>The name of the S3 bucket where inbound RCS media files are stored. Two-way messaging must be enabled on the agent. To remove the media configuration, pass the sentinel value <code>UNSET_RCS_MEDIA_CONFIGURATION</code> for both this field and TwoWayMediaS3Role.</p>
    #   @return [String]
    # @!attribute two_way_media_s3_key_prefix
    #   <p>The key prefix used for inbound RCS media objects in the S3 bucket.</p>
    #   @return [String]
    # @!attribute two_way_media_s3_role
    #   <p>The ARN of the IAM role used to write inbound RCS media files to the S3 bucket. The role must have <code>s3:PutObject</code> permission on the bucket and a trust policy allowing <code>sms-voice.amazonaws.com</code> to assume it. To remove the media configuration, pass the sentinel value <code>UNSET_RCS_MEDIA_CONFIGURATION</code> for both this field and TwoWayMediaS3BucketName.</p>
    #   @return [String]
    # @!attribute two_way_rcs_events_enabled
    #   <p>The list of RCS event types to enable for two-way messaging. Pass an empty list to disable all event types. The special value <code>ALL</code> enables all current and future event types and must be the sole element if used.</p>
    #   @return [Array<String>]
    class UpdateRcsAgentRequest < Struct.new(
      nil,
      :rcs_agent_id,
      :deletion_protection_enabled,
      :opt_out_list_name,
      :self_managed_opt_outs_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :two_way_enabled,
      :two_way_media_s3_bucket_name,
      :two_way_media_s3_key_prefix,
      :two_way_media_s3_role,
      :two_way_rcs_events_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rcs_agent_arn
    #   <p>The Amazon Resource Name (ARN) of the updated RCS agent.</p>
    #   @return [String]
    # @!attribute rcs_agent_id
    #   <p>The unique identifier for the RCS agent.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the RCS agent.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the RCS agent was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the RCS agent.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_media_s3_bucket_name
    #   <p>The name of the S3 bucket where inbound RCS media files are stored.</p>
    #   @return [String]
    # @!attribute two_way_media_s3_key_prefix
    #   <p>The key prefix used for inbound RCS media objects in the S3 bucket.</p>
    #   @return [String]
    # @!attribute two_way_media_s3_role
    #   <p>The ARN of the IAM role used to write inbound RCS media files to the S3 bucket.</p>
    #   @return [String]
    # @!attribute two_way_rcs_events_enabled
    #   <p>The list of RCS event types enabled for two-way messaging on the agent.</p>
    #   @return [Array<String>]
    class UpdateRcsAgentResult < Struct.new(
      nil,
      :rcs_agent_arn,
      :rcs_agent_id,
      :status,
      :created_timestamp,
      :deletion_protection_enabled,
      :opt_out_list_name,
      :self_managed_opt_outs_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :two_way_enabled,
      :two_way_media_s3_bucket_name,
      :two_way_media_s3_key_prefix,
      :two_way_media_s3_role,
      :two_way_rcs_events_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        super
      end
    end

    # @!attribute sender_id
    #   <p>The sender ID to update.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    #   @return [Boolean]
    class UpdateSenderIdRequest < Struct.new(
      nil,
      :sender_id,
      :iso_country_code,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sender_id_arn
    #   <p>The Amazon Resource Name (ARN) associated with the SenderId.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The sender ID that was updated.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [Array<String>]
    # @!attribute monthly_leasing_price
    #   <p>The monthly price, in US dollars, to lease the sender ID.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute registered
    #   <p>True if the sender ID is registered..</p>
    #   @return [Boolean]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class UpdateSenderIdResult < Struct.new(
      nil,
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :deletion_protection_enabled,
      :registered,
      :registration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        options[:registered] = false unless options.key?(:registered)
        super
      end
    end

    # <p>A validation exception for a field.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The field that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The field associated with the validation exception.</p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message associated with the validation exception with information to help determine its cause.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering verified destination phone numbers that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter on.</p>
    #   @return [Array<String>]
    class VerifiedDestinationNumberFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the requested verified destintion phone number.</p>
    # @!attribute verified_destination_number_arn
    #   <p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The verified destination phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the verified destination phone number.</p> <ul> <li> <p> <code>PENDING</code>: The phone number hasn't been verified yet.</p> </li> <li> <p> <code>VERIFIED</code>: The phone number is verified and can receive messages.</p> </li> </ul>
    #   @return [String]
    # @!attribute rcs_agent_id
    #   <p>The unique identifier of the RCS agent associated with the verified destination number.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the destination phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class VerifiedDestinationNumberInformation < Struct.new(
      nil,
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :status,
      :rcs_agent_id,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verififed destination phone number.</p>
    #   @return [String]
    # @!attribute verification_code
    #   <p>The verification code that was received by the verified destination phone number.</p>
    #   @return [String]
    class VerifyDestinationNumberRequest < Struct.new(
      nil,
      :verified_destination_number_id,
      :verification_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_arn
    #   <p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for being able to send messages to the phone number.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the destination phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class VerifyDestinationNumberResult < Struct.new(
      nil,
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :status,
      :created_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
