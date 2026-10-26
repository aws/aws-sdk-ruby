# frozen_string_literal: true

# This is generated code!

module Aws::EndUserMessaging
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an attribute to create for a brand profile.</p>
    # @!attribute attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The type of the attribute. TEXT stores an inline value. IMAGE and DOCUMENT store binary media that you upload.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The text value for the attribute. This value applies to attributes of type TEXT. For attributes of type IMAGE or DOCUMENT, provide the media through the attachment body instead.</p>
    #   @return [String]
    # @!attribute attachment_body
    #   <p>The binary content for an attribute of type IMAGE or DOCUMENT. The content is base64-encoded when it is sent over the wire.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the attribute.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the attribute.</p>
    #   @return [String]
    class BrandProfileAttributeInput < Struct.new(
      nil,
      :attribute_name,
      :attribute_type,
      :attribute_value,
      :attachment_body,
      :description,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an attribute that was created for a brand profile.</p>
    # @!attribute attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The type of the attribute. TEXT stores an inline value. IMAGE and DOCUMENT store binary media that you upload.</p>
    #   @return [String]
    # @!attribute media_download_url
    #   <p>A presigned Amazon S3 URL that you can use to download the attribute media. The URL is valid for one hour and is present only for attributes of type IMAGE or DOCUMENT.</p>
    #   @return [String]
    class BrandProfileAttributeOutput < Struct.new(
      nil,
      :attribute_name,
      :attribute_type,
      :media_download_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a brand profile attribute in a list response.</p>
    # @!attribute attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The type of the attribute. TEXT stores an inline value. IMAGE and DOCUMENT store binary media that you upload.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the attribute.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the attribute.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class BrandProfileAttributeSummary < Struct.new(
      nil,
      :attribute_name,
      :attribute_type,
      :description,
      :category,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a brand profile.</p>
    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile.</p>
    #   @return [String]
    # @!attribute brand_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the brand profile.</p>
    #   @return [String]
    # @!attribute brand_profile_name
    #   <p>The name of the brand profile. The name can contain alphanumeric characters, underscores, hyphens, and spaces.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the brand profile.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class BrandProfileInfo < Struct.new(
      nil,
      :brand_profile_id,
      :brand_profile_arn,
      :brand_profile_name,
      :status,
      :deletion_protection_enabled,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The channel-specific parameters used to render and deliver a one-time passcode. Each member configures the parameters for one delivery route. Populate only the channels that a configuration or send request supports. A notify code configuration can carry every channel at once, and a send request resolves to a single route that selects the matching channel at send time.</p>
    # @!attribute text
    #   <p>The parameters for the text channel, which delivers over SMS or RCS.</p>
    #   @return [Types::TextParameters]
    # @!attribute voice
    #   <p>The parameters for the voice channel.</p>
    #   @return [Types::VoiceParameters]
    # @!attribute notify
    #   <p>The parameters for the preapproved notify-template route over the SMS or voice channels.</p>
    #   @return [Types::NotifyParameters]
    # @!attribute whats_app
    #   <p>The parameters for the WhatsApp channel.</p>
    #   @return [Types::WhatsAppParameters]
    class ChannelParameters < Struct.new(
      nil,
      :text,
      :voice,
      :notify,
      :whats_app,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The passcode policy parameters that are grouped for reuse across a notify code configuration and its create request. Each member is optional. When you omit a member on a create request, no value is applied at create time and the default is applied when a passcode is sent.</p>
    # @!attribute code_type
    #   <p>The character set used to generate the one-time passcode. Valid values are NUMERIC (digits only), ALPHA (uppercase letters only), and ALPHANUMERIC (uppercase letters and digits). When you do not specify a value, the default is applied when a passcode is sent.</p>
    #   @return [String]
    # @!attribute code_length
    #   <p>The number of characters in the one-time passcode. Valid values range from 4 through 8. When you do not specify a value, the default is applied when a passcode is sent.</p>
    #   @return [Integer]
    # @!attribute validity_period_minutes
    #   <p>The length of time, in minutes, that the one-time passcode remains valid. Valid values range from 1 through 60. When you do not specify a value, the default is applied when a passcode is sent.</p>
    #   @return [Integer]
    # @!attribute max_attempts
    #   <p>The maximum number of validation attempts that are allowed before the verification is locked. Valid values range from 1 through 5. When you do not specify a value, the default is applied when a passcode is sent.</p>
    #   @return [Integer]
    class CodeConfigurationParameters < Struct.new(
      nil,
      :code_type,
      :code_length,
      :validity_period_minutes,
      :max_attempts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that the request conflicts with.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that the request conflicts with.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The brand profile attributes.</p>
    #   @return [Array<Types::BrandProfileAttributeInput>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    #   @return [String]
    class CreateBrandProfileAttributesInput < Struct.new(
      nil,
      :brand_profile_id,
      :attributes,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>The brand profile attributes.</p>
    #   @return [Array<Types::BrandProfileAttributeOutput>]
    class CreateBrandProfileAttributesOutput < Struct.new(
      nil,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The identifier or Amazon Resource Name (ARN) of the registration to populate the brand profile from.</p>
    #   @return [String]
    # @!attribute brand_profile_name
    #   <p>The name of the brand profile. The name can contain alphanumeric characters, underscores, hyphens, and spaces.</p>
    #   @return [String]
    # @!attribute smart_match
    #   <p>Specifies whether to use semantic field mapping between brand profile attributes and registration fields. The default is true. When false, the service maps fields using a fixed set of standard field types.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    #   @return [String]
    class CreateBrandProfileFromRegistrationInput < Struct.new(
      nil,
      :registration_id,
      :brand_profile_name,
      :smart_match,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results of the operation. Each result pairs a requested item with the asynchronous job that processes it.</p>
    #   @return [Array<Types::JobResult>]
    class CreateBrandProfileFromRegistrationOutput < Struct.new(
      nil,
      :results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_name
    #   <p>The name of the brand profile. The name can contain alphanumeric characters, underscores, hyphens, and spaces.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateBrandProfileInput < Struct.new(
      nil,
      :brand_profile_name,
      :client_token,
      :deletion_protection_enabled,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile.</p>
    #   @return [String]
    # @!attribute brand_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the brand profile.</p>
    #   @return [String]
    # @!attribute brand_profile_name
    #   <p>The name of the brand profile. The name can contain alphanumeric characters, underscores, hyphens, and spaces.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the brand profile.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute attributes_created
    #   <p>The number of default attributes that were created for the brand profile.</p>
    #   @return [Integer]
    class CreateBrandProfileOutput < Struct.new(
      nil,
      :brand_profile_id,
      :brand_profile_arn,
      :brand_profile_name,
      :status,
      :deletion_protection_enabled,
      :created_at,
      :updated_at,
      :attributes_created,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_code_configuration_name
    #   <p>The name of the notify code configuration.</p>
    #   @return [String]
    # @!attribute code_configuration_parameters
    #   <p>The passcode policy parameters, including the code type, length, validity period, and maximum number of attempts. Each member is optional. When you omit a member, no value is applied at create time and the default is applied when a passcode is sent.</p>
    #   @return [Types::CodeConfigurationParameters]
    # @!attribute channel_parameters
    #   <p>The channel-specific parameters used to render and deliver the one-time passcode. Provide parameters for any subset of channels. Each member configures one delivery route, and the route that is selected at send time uses the matching channel.</p>
    #   @return [Types::ChannelParameters]
    # @!attribute deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateNotifyCodeConfigurationInput < Struct.new(
      nil,
      :notify_code_configuration_name,
      :code_configuration_parameters,
      :channel_parameters,
      :deletion_protection_enabled,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_code_configuration
    #   <p>The notify code configuration resource.</p>
    #   @return [Types::NotifyCodeConfiguration]
    class CreateNotifyCodeConfigurationOutput < Struct.new(
      nil,
      :notify_code_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute registration_types
    #   <p>The registration types to create, for example US_TOLL_FREE_REGISTRATION or SENDER_ID.</p>
    #   @return [Array<String>]
    # @!attribute smart_match
    #   <p>Specifies whether to use semantic field mapping between brand profile attributes and registration fields. The default is true. When false, the service maps fields using a fixed set of standard field types.</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    #   @return [String]
    class CreateRegistrationsFromBrandProfileInput < Struct.new(
      nil,
      :brand_profile_id,
      :registration_types,
      :smart_match,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results of the operation. Each result pairs a requested item with the asynchronous job that processes it.</p>
    #   @return [Array<Types::JobResult>]
    class CreateRegistrationsFromBrandProfileOutput < Struct.new(
      nil,
      :results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    #   @return [String]
    class DeleteBrandProfileAttributeInput < Struct.new(
      nil,
      :brand_profile_id,
      :attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    #   @return [String]
    class DeleteBrandProfileAttributeOutput < Struct.new(
      nil,
      :brand_profile_id,
      :attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DeleteBrandProfileInput < Struct.new(
      nil,
      :brand_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile.</p>
    #   @return [String]
    # @!attribute brand_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the brand profile.</p>
    #   @return [String]
    class DeleteBrandProfileOutput < Struct.new(
      nil,
      :brand_profile_id,
      :brand_profile_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_code_configuration_id
    #   <p>The unique identifier of the notify code configuration. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DeleteNotifyCodeConfigurationInput < Struct.new(
      nil,
      :notify_code_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteNotifyCodeConfigurationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    #   @return [String]
    class GetBrandProfileAttributeInput < Struct.new(
      nil,
      :brand_profile_id,
      :attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The type of the attribute. TEXT stores an inline value. IMAGE and DOCUMENT store binary media that you upload.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The text value of the attribute. This value applies to attributes of type TEXT.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the attribute.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the attribute.</p>
    #   @return [String]
    # @!attribute media_content_type
    #   <p>The MIME content type of the attribute media.</p>
    #   @return [String]
    # @!attribute media_size_bytes
    #   <p>The size of the attribute media, in bytes.</p>
    #   @return [Integer]
    # @!attribute media_download_url
    #   <p>A presigned Amazon S3 URL that you can use to download the attribute media. The URL is valid for one hour and is present only for attributes of type IMAGE or DOCUMENT.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class GetBrandProfileAttributeOutput < Struct.new(
      nil,
      :attribute_name,
      :attribute_type,
      :attribute_value,
      :description,
      :category,
      :media_content_type,
      :media_size_bytes,
      :media_download_url,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetBrandProfileInput < Struct.new(
      nil,
      :brand_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile.</p>
    #   @return [String]
    # @!attribute brand_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the brand profile.</p>
    #   @return [String]
    # @!attribute brand_profile_name
    #   <p>The name of the brand profile. The name can contain alphanumeric characters, underscores, hyphens, and spaces.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the brand profile.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class GetBrandProfileOutput < Struct.new(
      nil,
      :brand_profile_id,
      :brand_profile_arn,
      :brand_profile_name,
      :status,
      :deletion_protection_enabled,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier of the asynchronous job. Use the GetJob operation to check the status of the job and to retrieve its results.</p>
    #   @return [String]
    class GetJobInput < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_code_configuration_id
    #   <p>The unique identifier of the notify code configuration. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetNotifyCodeConfigurationInput < Struct.new(
      nil,
      :notify_code_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_code_configuration
    #   <p>The notify code configuration resource.</p>
    #   @return [Types::NotifyCodeConfiguration]
    class GetNotifyCodeConfigurationOutput < Struct.new(
      nil,
      :notify_code_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred during the processing of the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Information about an async job tracked by the service. GetJob returns
    # the full `Job`, which may grow detail-only fields that are not part of
    # the `JobSummary` list view.
    # @!attribute job_id
    #   <p>The unique identifier of the asynchronous job. Use the GetJob operation to check the status of the job and to retrieve its results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the job.</p>
    #   @return [String]
    # @!attribute operation_type
    #   <p>The type of mutating operation that created the job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute brand_profile_id
    #   <p>The brand profile that the job operates on. This value is absent for operations that create a brand profile.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>A machine-readable code that identifies why the job failed. This value is present only when the job status is FAILED.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A human-readable description of why the job failed. This value is present only when the job status is FAILED.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The resources that were created or updated by the job.</p>
    #   @return [Array<Types::JobResource>]
    class Job < Struct.new(
      nil,
      :job_id,
      :status,
      :operation_type,
      :created_at,
      :updated_at,
      :brand_profile_id,
      :error_code,
      :error_message,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a resource that was created or updated by an asynchronous job.</p>
    # @!attribute resource_type
    #   <p>The type of the resource that the job created or updated.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that the job created or updated.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class JobResource < Struct.new(
      nil,
      :resource_type,
      :resource_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Pairs an asynchronous job with the resource identifier from your request that the job processes.</p>
    # @!attribute job_id
    #   <p>The unique identifier of the asynchronous job. Use the GetJob operation to check the status of the job and to retrieve its results.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>The identifier from your request that this job is processing.</p>
    #   @return [String]
    class JobResult < Struct.new(
      nil,
      :job_id,
      :resource_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an asynchronous job in a list response.</p>
    # @!attribute job_id
    #   <p>The unique identifier of the asynchronous job. Use the GetJob operation to check the status of the job and to retrieve its results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the job.</p>
    #   @return [String]
    # @!attribute operation_type
    #   <p>The type of mutating operation that created the job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute brand_profile_id
    #   <p>The brand profile that the job operates on. This value is absent for operations that create a brand profile.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>A machine-readable code that identifies why the job failed. This value is present only when the job status is FAILED.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A human-readable description of why the job failed. This value is present only when the job status is FAILED.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The resources that were created or updated by the job.</p>
    #   @return [Array<Types::JobResource>]
    class JobSummary < Struct.new(
      nil,
      :job_id,
      :status,
      :operation_type,
      :created_at,
      :updated_at,
      :brand_profile_id,
      :error_code,
      :error_message,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListBrandProfileAttributesInput < Struct.new(
      nil,
      :brand_profile_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_attributes
    #   <p>The list of brand profile attributes.</p>
    #   @return [Array<Types::BrandProfileAttributeSummary>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    #   @return [String]
    class ListBrandProfileAttributesOutput < Struct.new(
      nil,
      :brand_profile_attributes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListBrandProfilesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profiles
    #   <p>The list of brand profiles.</p>
    #   @return [Array<Types::BrandProfileInfo>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    #   @return [String]
    class ListBrandProfilesOutput < Struct.new(
      nil,
      :brand_profiles,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters the results to jobs that have the specified status.</p>
    #   @return [String]
    # @!attribute brand_profile_id
    #   <p>Filters the results to jobs for the specified brand profile.</p>
    #   @return [String]
    # @!attribute operation_type
    #   <p>Filters the results to jobs of the specified operation type.</p>
    #   @return [String]
    class ListJobsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :status,
      :brand_profile_id,
      :operation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>The list of asynchronous jobs.</p>
    #   @return [Array<Types::JobSummary>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    #   @return [String]
    class ListJobsOutput < Struct.new(
      nil,
      :jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    #   @return [String]
    class ListNotifyCodeConfigurationsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_code_configurations
    #   <p>The list of notify code configurations.</p>
    #   @return [Array<Types::NotifyCodeConfiguration>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    #   @return [String]
    class ListNotifyCodeConfigurationsOutput < Struct.new(
      nil,
      :notify_code_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    #   @return [String]
    class ListRegistrationsFromBrandProfileInput < Struct.new(
      nil,
      :brand_profile_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_associations
    #   <p>The list of registrations that are associated with the brand profile.</p>
    #   @return [Array<Types::RegistrationAssociationSummary>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    #   @return [String]
    class ListRegistrationsFromBrandProfileOutput < Struct.new(
      nil,
      :registration_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the settings of a notify code configuration, which is a reusable one-time passcode policy.</p>
    # @!attribute notify_code_configuration_id
    #   <p>The unique identifier of the notify code configuration.</p>
    #   @return [String]
    # @!attribute notify_code_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the notify code configuration.</p>
    #   @return [String]
    # @!attribute notify_code_configuration_name
    #   <p>The name of the notify code configuration.</p>
    #   @return [String]
    # @!attribute code_configuration_parameters
    #   <p>The passcode policy parameters, including the code type, length, validity period, and maximum number of attempts.</p>
    #   @return [Types::CodeConfigurationParameters]
    # @!attribute channel_parameters
    #   <p>The channel-specific parameters used to render and deliver the one-time passcode. A configuration can carry parameters for every channel at once, and the send route selects the matching channel at send time.</p>
    #   @return [Types::ChannelParameters]
    # @!attribute deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class NotifyCodeConfiguration < Struct.new(
      nil,
      :notify_code_configuration_id,
      :notify_code_configuration_arn,
      :notify_code_configuration_name,
      :code_configuration_parameters,
      :channel_parameters,
      :deletion_protection_enabled,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The delivery parameters for the preapproved notify-template route over the SMS or voice channels.</p>
    # @!attribute notify_template_id
    #   <p>The identifier of a preapproved notify template for the SMS or voice channels.</p>
    #   @return [String]
    # @!attribute voice_id
    #   <p>The Amazon Polly voice ID used when the notify template is delivered over the voice channel.</p>
    #   @return [String]
    class NotifyParameters < Struct.new(
      nil,
      :notify_template_id,
      :voice_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a registration that is associated with a brand profile.</p>
    # @!attribute registration_id
    #   <p>The identifier of the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of the registration, for example US_TOLL_FREE_REGISTRATION or SENDER_ID.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute smart_match_used
    #   <p>Specifies whether smart matching was used to create the association.</p>
    #   @return [Boolean]
    class RegistrationAssociationSummary < Struct.new(
      nil,
      :registration_id,
      :registration_type,
      :created_at,
      :smart_match_used,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource that does not exist. Verify that the resource identifier is correct and try your request again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that could not be found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that could not be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel
    #   <p>The channel used to deliver the one-time passcode to the recipient.</p>
    #   @return [String]
    # @!attribute destination_identity
    #   <p>The recipient identifier. For the TEXT and VOICE channels, specify an E.164 phone number. For the WhatsApp channel, specify a WhatsApp address.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The identity used to send the message, such as a phone number, sender ID, or pool that is owned by your account.</p>
    #   @return [String]
    # @!attribute notify_code_configuration
    #   <p>The identifier or Amazon Resource Name (ARN) of the notify code configuration that supplies the passcode policy and template defaults. When you do not specify a configuration, you must supply the template in the request.</p>
    #   @return [String]
    # @!attribute override_channel_parameters
    #   <p>The channel-specific parameters used to render and deliver the one-time passcode for this request. The route that is derived from the channel and the origination identity selects the matching channel. When you do not specify channel parameters, the service uses the parameters from the referenced notify code configuration.</p>
    #   @return [Types::ChannelParameters]
    # @!attribute override_code_configuration_parameters
    #   <p>The per-send overrides for the passcode policy parameters, including the code type, length, validity period, and maximum number of attempts. These values override the values from the referenced notify code configuration. When you do not specify a value, the value from the configuration is used, and if neither is set, the service default applies.</p>
    #   @return [Types::CodeConfigurationParameters]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set used to control how delivery events for the message are handled.</p>
    #   @return [String]
    # @!attribute context
    #   <p>A map of custom key and value pairs that are propagated to the delivery events for this verification.</p>
    #   @return [Hash<String, String>]
    # @!attribute reference_id
    #   <p>A caller-supplied reference identifier that binds a send request to a later validate request. Specify the same value in both requests.</p>
    #   @return [String]
    class SendNotifyCodeVerificationInput < Struct.new(
      nil,
      :channel,
      :destination_identity,
      :origination_identity,
      :notify_code_configuration,
      :override_channel_parameters,
      :override_code_configuration_parameters,
      :configuration_set_name,
      :context,
      :reference_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verification_id
    #   <p>The service-generated identifier for the verification.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The service-generated identifier for the message that delivers the one-time passcode.</p>
    #   @return [String]
    class SendNotifyCodeVerificationOutput < Struct.new(
      nil,
      :verification_id,
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed a service quota for your account.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag as a key and value pair that you can associate with a resource.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
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
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The delivery parameters for the text channel, which delivers over SMS or RCS.</p>
    # @!attribute inline_template_body
    #   <p>The freeform message template used to render the one-time passcode for the SMS or RCS channels. The template must contain the code placeholder.</p>
    #   @return [String]
    # @!attribute destination_country_parameters
    #   <p>A map of country-specific parameters that control one-time passcode delivery.</p>
    #   @return [Hash<String, String>]
    class TextParameters < Struct.new(
      nil,
      :inline_template_body,
      :destination_country_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because it exceeded the allowed request rate.</p>
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
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The text value of the attribute. This value applies to attributes of type TEXT.</p>
    #   @return [String]
    # @!attribute attachment_body
    #   <p>The binary content for an attribute of type IMAGE or DOCUMENT. The content is base64-encoded when it is sent over the wire.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the attribute.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the attribute.</p>
    #   @return [String]
    class UpdateBrandProfileAttributeInput < Struct.new(
      nil,
      :brand_profile_id,
      :attribute_name,
      :attribute_value,
      :attachment_body,
      :description,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The type of the attribute. TEXT stores an inline value. IMAGE and DOCUMENT store binary media that you upload.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The text value of the attribute. This value applies to attributes of type TEXT.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the attribute.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the attribute.</p>
    #   @return [String]
    # @!attribute media_content_type
    #   <p>The MIME content type of the attribute media.</p>
    #   @return [String]
    # @!attribute media_size_bytes
    #   <p>The size of the attribute media, in bytes.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class UpdateBrandProfileAttributeOutput < Struct.new(
      nil,
      :attribute_name,
      :attribute_type,
      :attribute_value,
      :description,
      :category,
      :media_content_type,
      :media_size_bytes,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The identifier or Amazon Resource Name (ARN) of the registration to import attributes from.</p>
    #   @return [String]
    # @!attribute smart_match
    #   <p>Specifies whether to use semantic field mapping between brand profile attributes and registration fields. The default is true. When false, the service maps fields using a fixed set of standard field types.</p>
    #   @return [Boolean]
    # @!attribute on_attribute_conflict
    #   <p>Specifies how the service resolves an attribute that already exists. REPLACE overwrites the existing value with the incoming value. PRESERVE keeps the existing value.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    #   @return [String]
    class UpdateBrandProfileFromRegistrationInput < Struct.new(
      nil,
      :brand_profile_id,
      :registration_id,
      :smart_match,
      :on_attribute_conflict,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results of the operation. Each result pairs a requested item with the asynchronous job that processes it.</p>
    #   @return [Array<Types::JobResult>]
    class UpdateBrandProfileFromRegistrationOutput < Struct.new(
      nil,
      :results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute brand_profile_name
    #   <p>The name of the brand profile. The name can contain alphanumeric characters, underscores, hyphens, and spaces.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    #   @return [Boolean]
    class UpdateBrandProfileInput < Struct.new(
      nil,
      :brand_profile_id,
      :brand_profile_name,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile.</p>
    #   @return [String]
    # @!attribute brand_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the brand profile.</p>
    #   @return [String]
    # @!attribute brand_profile_name
    #   <p>The name of the brand profile. The name can contain alphanumeric characters, underscores, hyphens, and spaces.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the brand profile.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The time when the resource was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class UpdateBrandProfileOutput < Struct.new(
      nil,
      :brand_profile_id,
      :brand_profile_arn,
      :brand_profile_name,
      :status,
      :deletion_protection_enabled,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The updated channel-specific parameters used only when you update a notify code configuration. When you omit a channel, that channel's parameters remain unchanged. When you supply a channel, you can clear individual fields by using the empty-string or empty-map sentinel on a member, or drop the whole channel's parameters by clearing every member. These sentinels apply only when you update a configuration; a create request rejects empty values with a validation error.</p>
    # @!attribute text
    #   <p>The text-channel parameters to update. Omit this member to leave the text-channel parameters unchanged.</p>
    #   @return [Types::UpdateTextParameters]
    # @!attribute voice
    #   <p>The voice-channel parameters to update. Omit this member to leave the voice-channel parameters unchanged.</p>
    #   @return [Types::UpdateVoiceParameters]
    # @!attribute notify
    #   <p>The notify-template-route parameters to update. Omit this member to leave them unchanged.</p>
    #   @return [Types::UpdateNotifyParameters]
    # @!attribute whats_app
    #   <p>The WhatsApp-channel parameters to update. Omit this member to leave the WhatsApp-channel parameters unchanged.</p>
    #   @return [Types::UpdateWhatsAppParameters]
    class UpdateChannelParameters < Struct.new(
      nil,
      :text,
      :voice,
      :notify,
      :whats_app,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The loose variant of the passcode policy parameters that is used only when you update a notify code configuration. When you omit a member, its current value is preserved.</p>
    # @!attribute code_type
    #   <p>The updated character set used to generate the one-time passcode. Omit this member to preserve the current value.</p>
    #   @return [String]
    # @!attribute code_length
    #   <p>The updated number of characters in the one-time passcode. Valid values range from 4 through 8. Omit this member to preserve the current value.</p>
    #   @return [Integer]
    # @!attribute validity_period_minutes
    #   <p>The updated length of time, in minutes, that the one-time passcode remains valid. Valid values range from 1 through 60. Omit this member to preserve the current value.</p>
    #   @return [Integer]
    # @!attribute max_attempts
    #   <p>The updated maximum number of validation attempts that are allowed before the verification is locked. Valid values range from 1 through 5. Omit this member to preserve the current value.</p>
    #   @return [Integer]
    class UpdateCodeConfigurationParameters < Struct.new(
      nil,
      :code_type,
      :code_length,
      :validity_period_minutes,
      :max_attempts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_code_configuration_id
    #   <p>The unique identifier of the notify code configuration. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute notify_code_configuration_name
    #   <p>The name of the notify code configuration.</p>
    #   @return [String]
    # @!attribute code_configuration_parameters
    #   <p>The updated passcode policy parameters, including the code type, length, validity period, and maximum number of attempts. When you omit a member, its current value is preserved.</p>
    #   @return [Types::UpdateCodeConfigurationParameters]
    # @!attribute channel_parameters
    #   <p>The updated channel-specific parameters used to render and deliver the one-time passcode. This is a loose, nested update: when you omit a channel, that channel's parameters remain unchanged. Within a supplied channel, an empty string on a string member, or an empty map on the destination-country parameters, clears the currently stored value, and absent members preserve the current value.</p>
    #   @return [Types::UpdateChannelParameters]
    # @!attribute deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    #   @return [Boolean]
    class UpdateNotifyCodeConfigurationInput < Struct.new(
      nil,
      :notify_code_configuration_id,
      :notify_code_configuration_name,
      :code_configuration_parameters,
      :channel_parameters,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notify_code_configuration
    #   <p>The notify code configuration resource.</p>
    #   @return [Types::NotifyCodeConfiguration]
    class UpdateNotifyCodeConfigurationOutput < Struct.new(
      nil,
      :notify_code_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The updated delivery parameters for the preapproved notify-template route. Absent members preserve the current value, and the empty sentinel on a member clears it.</p>
    # @!attribute notify_template_id
    #   <p>The updated identifier of a preapproved notify template for the SMS or voice channels. An empty string clears the previously stored value.</p>
    #   @return [String]
    # @!attribute voice_id
    #   <p>The updated Amazon Polly voice ID. An empty string clears the previously stored value.</p>
    #   @return [String]
    class UpdateNotifyParameters < Struct.new(
      nil,
      :notify_template_id,
      :voice_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute registration_ids
    #   <p>The identifiers of the registrations.</p>
    #   @return [Array<String>]
    # @!attribute smart_match
    #   <p>Specifies whether to use semantic field mapping between brand profile attributes and registration fields. The default is true. When false, the service maps fields using a fixed set of standard field types.</p>
    #   @return [Boolean]
    # @!attribute on_attribute_conflict
    #   <p>Specifies how the service resolves an attribute that already exists. REPLACE overwrites the existing value with the incoming value. PRESERVE keeps the existing value.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    #   @return [String]
    class UpdateRegistrationsFromBrandProfileInput < Struct.new(
      nil,
      :brand_profile_id,
      :registration_ids,
      :smart_match,
      :on_attribute_conflict,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results of the operation. Each result pairs a requested item with the asynchronous job that processes it.</p>
    #   @return [Array<Types::JobResult>]
    class UpdateRegistrationsFromBrandProfileOutput < Struct.new(
      nil,
      :results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The updated delivery parameters for the text channel. Absent members preserve the current value, and the empty sentinel on a member clears it.</p>
    # @!attribute inline_template_body
    #   <p>The updated freeform SMS or RCS template body. An empty string clears the previously stored value.</p>
    #   @return [String]
    # @!attribute destination_country_parameters
    #   <p>The updated map of country-specific parameters that control one-time passcode delivery. An empty map clears the previously stored value.</p>
    #   @return [Hash<String, String>]
    class UpdateTextParameters < Struct.new(
      nil,
      :inline_template_body,
      :destination_country_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The updated delivery parameters for the voice channel. Absent members preserve the current value, and the empty sentinel on a member clears it.</p>
    # @!attribute inline_template_body
    #   <p>The updated freeform voice template body. An empty string clears the previously stored value.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The updated BCP 47 language code. An empty string clears the previously stored value.</p>
    #   @return [String]
    # @!attribute voice_id
    #   <p>The updated Amazon Polly voice ID. An empty string clears the previously stored value.</p>
    #   @return [String]
    # @!attribute voice_message_body_text_type
    #   <p>The updated format of the voice message body. Valid values are TEXT and SSML. Omit this member to preserve the current value.</p>
    #   @return [String]
    class UpdateVoiceParameters < Struct.new(
      nil,
      :inline_template_body,
      :language_code,
      :voice_id,
      :voice_message_body_text_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The updated delivery parameters for the WhatsApp channel. Absent members preserve the current value, and the empty sentinel on a member clears it.</p>
    # @!attribute whats_app_template_name
    #   <p>The updated name of the Meta-approved WhatsApp authentication template. An empty string clears the previously stored value.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The updated BCP 47 language code. An empty string clears the previously stored value.</p>
    #   @return [String]
    class UpdateWhatsAppParameters < Struct.new(
      nil,
      :whats_app_template_name,
      :language_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_identity
    #   <p>The recipient identifier. For the TEXT and VOICE channels, specify an E.164 phone number. For the WhatsApp channel, specify a WhatsApp address.</p>
    #   @return [String]
    # @!attribute reference_id
    #   <p>The caller-supplied reference identifier used to locate the verification. This value must match the value that you supplied to the SendNotifyCodeVerification operation.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The one-time passcode that the recipient submitted for validation.</p>
    #   @return [String]
    class ValidateNotifyCodeVerificationInput < Struct.new(
      nil,
      :destination_identity,
      :reference_id,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The outcome of the validation attempt. VALID indicates that the submitted passcode matched an active verification. INVALID indicates that the passcode did not match, expired, or exceeded its attempt limit.</p>
    #   @return [String]
    class ValidateNotifyCodeVerificationOutput < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A standard error for input validation failures.
    # This should be thrown by services when a member of the input structure
    # falls outside of the modeled or documented constraints.
    # @!attribute message
    #   A summary of the validation failure.
    #   @return [String]
    # @!attribute field_list
    #   A list of specific failures encountered while validating the input.
    #   A member can appear in this list more than once if it failed to satisfy multiple constraints.
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Describes one specific validation failure for an input member.
    # @!attribute path
    #   A JSONPointer expression to the structure member whose value failed to satisfy the modeled constraints.
    #   @return [String]
    # @!attribute message
    #   A detailed description of the validation failure.
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :path,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The delivery parameters for the voice channel.</p>
    # @!attribute inline_template_body
    #   <p>The freeform message template used to render the one-time passcode for the voice channel. The template must contain the code placeholder.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The BCP 47 language code used to render the voice message.</p>
    #   @return [String]
    # @!attribute voice_id
    #   <p>The Amazon Polly voice ID used for the voice channel.</p>
    #   @return [String]
    # @!attribute voice_message_body_text_type
    #   <p>The format of the voice message body. Valid values are TEXT and SSML.</p>
    #   @return [String]
    class VoiceParameters < Struct.new(
      nil,
      :inline_template_body,
      :language_code,
      :voice_id,
      :voice_message_body_text_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The delivery parameters for the WhatsApp channel.</p>
    # @!attribute whats_app_template_name
    #   <p>The name of the Meta-approved WhatsApp authentication template.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The BCP 47 language code used to render the template. This value is required for the WhatsApp channel.</p>
    #   @return [String]
    class WhatsAppParameters < Struct.new(
      nil,
      :whats_app_template_name,
      :language_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
