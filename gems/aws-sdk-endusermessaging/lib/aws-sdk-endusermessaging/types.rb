# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EndUserMessaging
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an attribute to create for a brand profile.
    #
    # @!attribute [rw] attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The type of the attribute. TEXT stores an inline value. IMAGE and
    #   DOCUMENT store binary media that you upload.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The text value for the attribute. This value applies to attributes
    #   of type TEXT. For attributes of type IMAGE or DOCUMENT, provide the
    #   media through the attachment body instead.
    #   @return [String]
    #
    # @!attribute [rw] attachment_body
    #   The binary content for an attribute of type IMAGE or DOCUMENT. The
    #   content is base64-encoded when it is sent over the wire.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/BrandProfileAttributeInput AWS API Documentation
    #
    class BrandProfileAttributeInput < Struct.new(
      :attribute_name,
      :attribute_type,
      :attribute_value,
      :attachment_body,
      :description,
      :category)
      SENSITIVE = [:attribute_name, :attribute_value, :attachment_body, :description]
      include Aws::Structure
    end

    # Contains information about an attribute that was created for a brand
    # profile.
    #
    # @!attribute [rw] attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The type of the attribute. TEXT stores an inline value. IMAGE and
    #   DOCUMENT store binary media that you upload.
    #   @return [String]
    #
    # @!attribute [rw] media_download_url
    #   A presigned Amazon S3 URL that you can use to download the attribute
    #   media. The URL is valid for one hour and is present only for
    #   attributes of type IMAGE or DOCUMENT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/BrandProfileAttributeOutput AWS API Documentation
    #
    class BrandProfileAttributeOutput < Struct.new(
      :attribute_name,
      :attribute_type,
      :media_download_url)
      SENSITIVE = [:attribute_name, :media_download_url]
      include Aws::Structure
    end

    # Contains summary information about a brand profile attribute in a list
    # response.
    #
    # @!attribute [rw] attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The type of the attribute. TEXT stores an inline value. IMAGE and
    #   DOCUMENT store binary media that you upload.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/BrandProfileAttributeSummary AWS API Documentation
    #
    class BrandProfileAttributeSummary < Struct.new(
      :attribute_name,
      :attribute_type,
      :description,
      :category,
      :created_at,
      :updated_at)
      SENSITIVE = [:attribute_name, :description]
      include Aws::Structure
    end

    # Contains information about a brand profile.
    #
    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_arn
    #   The Amazon Resource Name (ARN) of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_name
    #   The name of the brand profile. The name can contain alphanumeric
    #   characters, underscores, hyphens, and spaces.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/BrandProfileInfo AWS API Documentation
    #
    class BrandProfileInfo < Struct.new(
      :brand_profile_id,
      :brand_profile_arn,
      :brand_profile_name,
      :status,
      :deletion_protection_enabled,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The channel-specific parameters used to render and deliver a one-time
    # passcode. Each member configures the parameters for one delivery
    # route. Populate only the channels that a configuration or send request
    # supports. A notify code configuration can carry every channel at once,
    # and a send request resolves to a single route that selects the
    # matching channel at send time.
    #
    # @!attribute [rw] text
    #   The parameters for the text channel, which delivers over SMS or RCS.
    #   @return [Types::TextParameters]
    #
    # @!attribute [rw] voice
    #   The parameters for the voice channel.
    #   @return [Types::VoiceParameters]
    #
    # @!attribute [rw] notify
    #   The parameters for the preapproved notify-template route over the
    #   SMS or voice channels.
    #   @return [Types::NotifyParameters]
    #
    # @!attribute [rw] whats_app
    #   The parameters for the WhatsApp channel.
    #   @return [Types::WhatsAppParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ChannelParameters AWS API Documentation
    #
    class ChannelParameters < Struct.new(
      :text,
      :voice,
      :notify,
      :whats_app)
      SENSITIVE = []
      include Aws::Structure
    end

    # The passcode policy parameters that are grouped for reuse across a
    # notify code configuration and its create request. Each member is
    # optional. When you omit a member on a create request, no value is
    # applied at create time and the default is applied when a passcode is
    # sent.
    #
    # @!attribute [rw] code_type
    #   The character set used to generate the one-time passcode. Valid
    #   values are NUMERIC (digits only), ALPHA (uppercase letters only),
    #   and ALPHANUMERIC (uppercase letters and digits). When you do not
    #   specify a value, the default is applied when a passcode is sent.
    #   @return [String]
    #
    # @!attribute [rw] code_length
    #   The number of characters in the one-time passcode. Valid values
    #   range from 4 through 8. When you do not specify a value, the default
    #   is applied when a passcode is sent.
    #   @return [Integer]
    #
    # @!attribute [rw] validity_period_minutes
    #   The length of time, in minutes, that the one-time passcode remains
    #   valid. Valid values range from 1 through 60. When you do not specify
    #   a value, the default is applied when a passcode is sent.
    #   @return [Integer]
    #
    # @!attribute [rw] max_attempts
    #   The maximum number of validation attempts that are allowed before
    #   the verification is locked. Valid values range from 1 through 5.
    #   When you do not specify a value, the default is applied when a
    #   passcode is sent.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CodeConfigurationParameters AWS API Documentation
    #
    class CodeConfigurationParameters < Struct.new(
      :code_type,
      :code_length,
      :validity_period_minutes,
      :max_attempts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that the request conflicts with.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that the request conflicts with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The brand profile attributes.
    #   @return [Array<Types::BrandProfileAttributeInput>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   the AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateBrandProfileAttributesInput AWS API Documentation
    #
    class CreateBrandProfileAttributesInput < Struct.new(
      :brand_profile_id,
      :attributes,
      :client_token)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The brand profile attributes.
    #   @return [Array<Types::BrandProfileAttributeOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateBrandProfileAttributesOutput AWS API Documentation
    #
    class CreateBrandProfileAttributesOutput < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The identifier or Amazon Resource Name (ARN) of the registration to
    #   populate the brand profile from.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_name
    #   The name of the brand profile. The name can contain alphanumeric
    #   characters, underscores, hyphens, and spaces.
    #   @return [String]
    #
    # @!attribute [rw] smart_match
    #   Specifies whether to use semantic field mapping between brand
    #   profile attributes and registration fields. The default is true.
    #   When false, the service maps fields using a fixed set of standard
    #   field types.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   the AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateBrandProfileFromRegistrationInput AWS API Documentation
    #
    class CreateBrandProfileFromRegistrationInput < Struct.new(
      :registration_id,
      :brand_profile_name,
      :smart_match,
      :tags,
      :client_token)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The results of the operation. Each result pairs a requested item
    #   with the asynchronous job that processes it.
    #   @return [Array<Types::JobResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateBrandProfileFromRegistrationOutput AWS API Documentation
    #
    class CreateBrandProfileFromRegistrationOutput < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_name
    #   The name of the brand profile. The name can contain alphanumeric
    #   characters, underscores, hyphens, and spaces.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   the AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateBrandProfileInput AWS API Documentation
    #
    class CreateBrandProfileInput < Struct.new(
      :brand_profile_name,
      :client_token,
      :deletion_protection_enabled,
      :tags)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_arn
    #   The Amazon Resource Name (ARN) of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_name
    #   The name of the brand profile. The name can contain alphanumeric
    #   characters, underscores, hyphens, and spaces.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] attributes_created
    #   The number of default attributes that were created for the brand
    #   profile.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateBrandProfileOutput AWS API Documentation
    #
    class CreateBrandProfileOutput < Struct.new(
      :brand_profile_id,
      :brand_profile_arn,
      :brand_profile_name,
      :status,
      :deletion_protection_enabled,
      :created_at,
      :updated_at,
      :attributes_created)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notify_code_configuration_name
    #   The name of the notify code configuration.
    #   @return [String]
    #
    # @!attribute [rw] code_configuration_parameters
    #   The passcode policy parameters, including the code type, length,
    #   validity period, and maximum number of attempts. Each member is
    #   optional. When you omit a member, no value is applied at create time
    #   and the default is applied when a passcode is sent.
    #   @return [Types::CodeConfigurationParameters]
    #
    # @!attribute [rw] channel_parameters
    #   The channel-specific parameters used to render and deliver the
    #   one-time passcode. Provide parameters for any subset of channels.
    #   Each member configures one delivery route, and the route that is
    #   selected at send time uses the matching channel.
    #   @return [Types::ChannelParameters]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   the AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateNotifyCodeConfigurationInput AWS API Documentation
    #
    class CreateNotifyCodeConfigurationInput < Struct.new(
      :notify_code_configuration_name,
      :code_configuration_parameters,
      :channel_parameters,
      :deletion_protection_enabled,
      :client_token,
      :tags)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # @!attribute [rw] notify_code_configuration
    #   The notify code configuration resource.
    #   @return [Types::NotifyCodeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateNotifyCodeConfigurationOutput AWS API Documentation
    #
    class CreateNotifyCodeConfigurationOutput < Struct.new(
      :notify_code_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] registration_types
    #   The registration types to create, for example
    #   US\_TOLL\_FREE\_REGISTRATION or SENDER\_ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] smart_match
    #   Specifies whether to use semantic field mapping between brand
    #   profile attributes and registration fields. The default is true.
    #   When false, the service maps fields using a fixed set of standard
    #   field types.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   the AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateRegistrationsFromBrandProfileInput AWS API Documentation
    #
    class CreateRegistrationsFromBrandProfileInput < Struct.new(
      :brand_profile_id,
      :registration_types,
      :smart_match,
      :client_token)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The results of the operation. Each result pairs a requested item
    #   with the asynchronous job that processes it.
    #   @return [Array<Types::JobResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateRegistrationsFromBrandProfileOutput AWS API Documentation
    #
    class CreateRegistrationsFromBrandProfileOutput < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/DeleteBrandProfileAttributeInput AWS API Documentation
    #
    class DeleteBrandProfileAttributeInput < Struct.new(
      :brand_profile_id,
      :attribute_name)
      SENSITIVE = [:attribute_name]
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/DeleteBrandProfileAttributeOutput AWS API Documentation
    #
    class DeleteBrandProfileAttributeOutput < Struct.new(
      :brand_profile_id,
      :attribute_name)
      SENSITIVE = [:attribute_name]
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/DeleteBrandProfileInput AWS API Documentation
    #
    class DeleteBrandProfileInput < Struct.new(
      :brand_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_arn
    #   The Amazon Resource Name (ARN) of the brand profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/DeleteBrandProfileOutput AWS API Documentation
    #
    class DeleteBrandProfileOutput < Struct.new(
      :brand_profile_id,
      :brand_profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notify_code_configuration_id
    #   The unique identifier of the notify code configuration. You can
    #   specify either the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/DeleteNotifyCodeConfigurationInput AWS API Documentation
    #
    class DeleteNotifyCodeConfigurationInput < Struct.new(
      :notify_code_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/DeleteNotifyCodeConfigurationOutput AWS API Documentation
    #
    class DeleteNotifyCodeConfigurationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetBrandProfileAttributeInput AWS API Documentation
    #
    class GetBrandProfileAttributeInput < Struct.new(
      :brand_profile_id,
      :attribute_name)
      SENSITIVE = [:attribute_name]
      include Aws::Structure
    end

    # @!attribute [rw] attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The type of the attribute. TEXT stores an inline value. IMAGE and
    #   DOCUMENT store binary media that you upload.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The text value of the attribute. This value applies to attributes of
    #   type TEXT.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] media_content_type
    #   The MIME content type of the attribute media.
    #   @return [String]
    #
    # @!attribute [rw] media_size_bytes
    #   The size of the attribute media, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] media_download_url
    #   A presigned Amazon S3 URL that you can use to download the attribute
    #   media. The URL is valid for one hour and is present only for
    #   attributes of type IMAGE or DOCUMENT.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetBrandProfileAttributeOutput AWS API Documentation
    #
    class GetBrandProfileAttributeOutput < Struct.new(
      :attribute_name,
      :attribute_type,
      :attribute_value,
      :description,
      :category,
      :media_content_type,
      :media_size_bytes,
      :media_download_url,
      :created_at,
      :updated_at)
      SENSITIVE = [:attribute_name, :attribute_value, :description, :media_download_url]
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetBrandProfileInput AWS API Documentation
    #
    class GetBrandProfileInput < Struct.new(
      :brand_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_arn
    #   The Amazon Resource Name (ARN) of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_name
    #   The name of the brand profile. The name can contain alphanumeric
    #   characters, underscores, hyphens, and spaces.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetBrandProfileOutput AWS API Documentation
    #
    class GetBrandProfileOutput < Struct.new(
      :brand_profile_id,
      :brand_profile_arn,
      :brand_profile_name,
      :status,
      :deletion_protection_enabled,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier of the asynchronous job. Use the GetJob
    #   operation to check the status of the job and to retrieve its
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetJobInput AWS API Documentation
    #
    class GetJobInput < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notify_code_configuration_id
    #   The unique identifier of the notify code configuration. You can
    #   specify either the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetNotifyCodeConfigurationInput AWS API Documentation
    #
    class GetNotifyCodeConfigurationInput < Struct.new(
      :notify_code_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notify_code_configuration
    #   The notify code configuration resource.
    #   @return [Types::NotifyCodeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetNotifyCodeConfigurationOutput AWS API Documentation
    #
    class GetNotifyCodeConfigurationOutput < Struct.new(
      :notify_code_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during the processing of the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an async job tracked by the service. GetJob returns
    # the full `Job`, which may grow detail-only fields that are not part of
    # the `JobSummary` list view.
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the asynchronous job. Use the GetJob
    #   operation to check the status of the job and to retrieve its
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the job.
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   The type of mutating operation that created the job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] brand_profile_id
    #   The brand profile that the job operates on. This value is absent for
    #   operations that create a brand profile.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   A machine-readable code that identifies why the job failed. This
    #   value is present only when the job status is FAILED.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A human-readable description of why the job failed. This value is
    #   present only when the job status is FAILED.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The resources that were created or updated by the job.
    #   @return [Array<Types::JobResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/Job AWS API Documentation
    #
    class Job < Struct.new(
      :job_id,
      :status,
      :operation_type,
      :created_at,
      :updated_at,
      :brand_profile_id,
      :error_code,
      :error_message,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a resource that was created or updated by
    # an asynchronous job.
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that the job created or updated.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that the job created or updated.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/JobResource AWS API Documentation
    #
    class JobResource < Struct.new(
      :resource_type,
      :resource_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Pairs an asynchronous job with the resource identifier from your
    # request that the job processes.
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the asynchronous job. Use the GetJob
    #   operation to check the status of the job and to retrieve its
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier from your request that this job is processing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/JobResult AWS API Documentation
    #
    class JobResult < Struct.new(
      :job_id,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about an asynchronous job in a list
    # response.
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the asynchronous job. Use the GetJob
    #   operation to check the status of the job and to retrieve its
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the job.
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   The type of mutating operation that created the job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] brand_profile_id
    #   The brand profile that the job operates on. This value is absent for
    #   operations that create a brand profile.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   A machine-readable code that identifies why the job failed. This
    #   value is present only when the job status is FAILED.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A human-readable description of why the job failed. This value is
    #   present only when the job status is FAILED.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The resources that were created or updated by the job.
    #   @return [Array<Types::JobResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
      :job_id,
      :status,
      :operation_type,
      :created_at,
      :updated_at,
      :brand_profile_id,
      :error_code,
      :error_message,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results. This value is
    #   returned when more results are available, and is null when there are
    #   no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListBrandProfileAttributesInput AWS API Documentation
    #
    class ListBrandProfileAttributesInput < Struct.new(
      :brand_profile_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_attributes
    #   The list of brand profile attributes.
    #   @return [Array<Types::BrandProfileAttributeSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results. This value is
    #   returned when more results are available, and is null when there are
    #   no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListBrandProfileAttributesOutput AWS API Documentation
    #
    class ListBrandProfileAttributesOutput < Struct.new(
      :brand_profile_attributes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results. This value is
    #   returned when more results are available, and is null when there are
    #   no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListBrandProfilesInput AWS API Documentation
    #
    class ListBrandProfilesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profiles
    #   The list of brand profiles.
    #   @return [Array<Types::BrandProfileInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results. This value is
    #   returned when more results are available, and is null when there are
    #   no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListBrandProfilesOutput AWS API Documentation
    #
    class ListBrandProfilesOutput < Struct.new(
      :brand_profiles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results. This value is
    #   returned when more results are available, and is null when there are
    #   no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters the results to jobs that have the specified status.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_id
    #   Filters the results to jobs for the specified brand profile.
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   Filters the results to jobs of the specified operation type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListJobsInput AWS API Documentation
    #
    class ListJobsInput < Struct.new(
      :max_results,
      :next_token,
      :status,
      :brand_profile_id,
      :operation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   The list of asynchronous jobs.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results. This value is
    #   returned when more results are available, and is null when there are
    #   no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListJobsOutput AWS API Documentation
    #
    class ListJobsOutput < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results. This value is
    #   returned when more results are available, and is null when there are
    #   no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListNotifyCodeConfigurationsInput AWS API Documentation
    #
    class ListNotifyCodeConfigurationsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notify_code_configurations
    #   The list of notify code configurations.
    #   @return [Array<Types::NotifyCodeConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results. This value is
    #   returned when more results are available, and is null when there are
    #   no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListNotifyCodeConfigurationsOutput AWS API Documentation
    #
    class ListNotifyCodeConfigurationsOutput < Struct.new(
      :notify_code_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results. This value is
    #   returned when more results are available, and is null when there are
    #   no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListRegistrationsFromBrandProfileInput AWS API Documentation
    #
    class ListRegistrationsFromBrandProfileInput < Struct.new(
      :brand_profile_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_associations
    #   The list of registrations that are associated with the brand
    #   profile.
    #   @return [Array<Types::RegistrationAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results. This value is
    #   returned when more results are available, and is null when there are
    #   no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListRegistrationsFromBrandProfileOutput AWS API Documentation
    #
    class ListRegistrationsFromBrandProfileOutput < Struct.new(
      :registration_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the settings of a notify code configuration, which is a
    # reusable one-time passcode policy.
    #
    # @!attribute [rw] notify_code_configuration_id
    #   The unique identifier of the notify code configuration.
    #   @return [String]
    #
    # @!attribute [rw] notify_code_configuration_arn
    #   The Amazon Resource Name (ARN) of the notify code configuration.
    #   @return [String]
    #
    # @!attribute [rw] notify_code_configuration_name
    #   The name of the notify code configuration.
    #   @return [String]
    #
    # @!attribute [rw] code_configuration_parameters
    #   The passcode policy parameters, including the code type, length,
    #   validity period, and maximum number of attempts.
    #   @return [Types::CodeConfigurationParameters]
    #
    # @!attribute [rw] channel_parameters
    #   The channel-specific parameters used to render and deliver the
    #   one-time passcode. A configuration can carry parameters for every
    #   channel at once, and the send route selects the matching channel at
    #   send time.
    #   @return [Types::ChannelParameters]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/NotifyCodeConfiguration AWS API Documentation
    #
    class NotifyCodeConfiguration < Struct.new(
      :notify_code_configuration_id,
      :notify_code_configuration_arn,
      :notify_code_configuration_name,
      :code_configuration_parameters,
      :channel_parameters,
      :deletion_protection_enabled,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The delivery parameters for the preapproved notify-template route over
    # the SMS or voice channels.
    #
    # @!attribute [rw] notify_template_id
    #   The identifier of a preapproved notify template for the SMS or voice
    #   channels.
    #   @return [String]
    #
    # @!attribute [rw] voice_id
    #   The Amazon Polly voice ID used when the notify template is delivered
    #   over the voice channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/NotifyParameters AWS API Documentation
    #
    class NotifyParameters < Struct.new(
      :notify_template_id,
      :voice_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a registration that is associated
    # with a brand profile.
    #
    # @!attribute [rw] registration_id
    #   The identifier of the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   The type of the registration, for example
    #   US\_TOLL\_FREE\_REGISTRATION or SENDER\_ID.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] smart_match_used
    #   Specifies whether smart matching was used to create the association.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/RegistrationAssociationSummary AWS API Documentation
    #
    class RegistrationAssociationSummary < Struct.new(
      :registration_id,
      :registration_type,
      :created_at,
      :smart_match_used)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resource that does not exist. Verify that the
    # resource identifier is correct and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that could not be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   The channel used to deliver the one-time passcode to the recipient.
    #   @return [String]
    #
    # @!attribute [rw] destination_identity
    #   The recipient identifier. For the TEXT and VOICE channels, specify
    #   an E.164 phone number. For the WhatsApp channel, specify a WhatsApp
    #   address.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The identity used to send the message, such as a phone number,
    #   sender ID, or pool that is owned by your account.
    #   @return [String]
    #
    # @!attribute [rw] notify_code_configuration
    #   The identifier or Amazon Resource Name (ARN) of the notify code
    #   configuration that supplies the passcode policy and template
    #   defaults. When you do not specify a configuration, you must supply
    #   the template in the request.
    #   @return [String]
    #
    # @!attribute [rw] override_channel_parameters
    #   The channel-specific parameters used to render and deliver the
    #   one-time passcode for this request. The route that is derived from
    #   the channel and the origination identity selects the matching
    #   channel. When you do not specify channel parameters, the service
    #   uses the parameters from the referenced notify code configuration.
    #   @return [Types::ChannelParameters]
    #
    # @!attribute [rw] override_code_configuration_parameters
    #   The per-send overrides for the passcode policy parameters, including
    #   the code type, length, validity period, and maximum number of
    #   attempts. These values override the values from the referenced
    #   notify code configuration. When you do not specify a value, the
    #   value from the configuration is used, and if neither is set, the
    #   service default applies.
    #   @return [Types::CodeConfigurationParameters]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set used to control how delivery
    #   events for the message are handled.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   A map of custom key and value pairs that are propagated to the
    #   delivery events for this verification.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] reference_id
    #   A caller-supplied reference identifier that binds a send request to
    #   a later validate request. Specify the same value in both requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/SendNotifyCodeVerificationInput AWS API Documentation
    #
    class SendNotifyCodeVerificationInput < Struct.new(
      :channel,
      :destination_identity,
      :origination_identity,
      :notify_code_configuration,
      :override_channel_parameters,
      :override_code_configuration_parameters,
      :configuration_set_name,
      :context,
      :reference_id)
      SENSITIVE = [:destination_identity, :context]
      include Aws::Structure
    end

    # @!attribute [rw] verification_id
    #   The service-generated identifier for the verification.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The service-generated identifier for the message that delivers the
    #   one-time passcode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/SendNotifyCodeVerificationOutput AWS API Documentation
    #
    class SendNotifyCodeVerificationOutput < Struct.new(
      :verification_id,
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed a service quota for your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag as a key and value pair that you can associate with a
    # resource.
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The delivery parameters for the text channel, which delivers over SMS
    # or RCS.
    #
    # @!attribute [rw] inline_template_body
    #   The freeform message template used to render the one-time passcode
    #   for the SMS or RCS channels. The template must contain the code
    #   placeholder.
    #   @return [String]
    #
    # @!attribute [rw] destination_country_parameters
    #   A map of country-specific parameters that control one-time passcode
    #   delivery.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/TextParameters AWS API Documentation
    #
    class TextParameters < Struct.new(
      :inline_template_body,
      :destination_country_parameters)
      SENSITIVE = [:inline_template_body, :destination_country_parameters]
      include Aws::Structure
    end

    # The request was denied because it exceeded the allowed request rate.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The text value of the attribute. This value applies to attributes of
    #   type TEXT.
    #   @return [String]
    #
    # @!attribute [rw] attachment_body
    #   The binary content for an attribute of type IMAGE or DOCUMENT. The
    #   content is base64-encoded when it is sent over the wire.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateBrandProfileAttributeInput AWS API Documentation
    #
    class UpdateBrandProfileAttributeInput < Struct.new(
      :brand_profile_id,
      :attribute_name,
      :attribute_value,
      :attachment_body,
      :description,
      :category)
      SENSITIVE = [:attribute_name, :attribute_value, :description]
      include Aws::Structure
    end

    # @!attribute [rw] attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The type of the attribute. TEXT stores an inline value. IMAGE and
    #   DOCUMENT store binary media that you upload.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The text value of the attribute. This value applies to attributes of
    #   type TEXT.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] media_content_type
    #   The MIME content type of the attribute media.
    #   @return [String]
    #
    # @!attribute [rw] media_size_bytes
    #   The size of the attribute media, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateBrandProfileAttributeOutput AWS API Documentation
    #
    class UpdateBrandProfileAttributeOutput < Struct.new(
      :attribute_name,
      :attribute_type,
      :attribute_value,
      :description,
      :category,
      :media_content_type,
      :media_size_bytes,
      :created_at,
      :updated_at)
      SENSITIVE = [:attribute_name, :attribute_value, :description]
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The identifier or Amazon Resource Name (ARN) of the registration to
    #   import attributes from.
    #   @return [String]
    #
    # @!attribute [rw] smart_match
    #   Specifies whether to use semantic field mapping between brand
    #   profile attributes and registration fields. The default is true.
    #   When false, the service maps fields using a fixed set of standard
    #   field types.
    #   @return [Boolean]
    #
    # @!attribute [rw] on_attribute_conflict
    #   Specifies how the service resolves an attribute that already exists.
    #   REPLACE overwrites the existing value with the incoming value.
    #   PRESERVE keeps the existing value.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   the AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateBrandProfileFromRegistrationInput AWS API Documentation
    #
    class UpdateBrandProfileFromRegistrationInput < Struct.new(
      :brand_profile_id,
      :registration_id,
      :smart_match,
      :on_attribute_conflict,
      :client_token)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The results of the operation. Each result pairs a requested item
    #   with the asynchronous job that processes it.
    #   @return [Array<Types::JobResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateBrandProfileFromRegistrationOutput AWS API Documentation
    #
    class UpdateBrandProfileFromRegistrationOutput < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_name
    #   The name of the brand profile. The name can contain alphanumeric
    #   characters, underscores, hyphens, and spaces.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateBrandProfileInput AWS API Documentation
    #
    class UpdateBrandProfileInput < Struct.new(
      :brand_profile_id,
      :brand_profile_name,
      :deletion_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_arn
    #   The Amazon Resource Name (ARN) of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] brand_profile_name
    #   The name of the brand profile. The name can contain alphanumeric
    #   characters, underscores, hyphens, and spaces.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the brand profile.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   The time when the resource was created, in Unix epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated, in Unix epoch time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateBrandProfileOutput AWS API Documentation
    #
    class UpdateBrandProfileOutput < Struct.new(
      :brand_profile_id,
      :brand_profile_arn,
      :brand_profile_name,
      :status,
      :deletion_protection_enabled,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updated channel-specific parameters used only when you update a
    # notify code configuration. When you omit a channel, that channel's
    # parameters remain unchanged. When you supply a channel, you can clear
    # individual fields by using the empty-string or empty-map sentinel on a
    # member, or drop the whole channel's parameters by clearing every
    # member. These sentinels apply only when you update a configuration; a
    # create request rejects empty values with a validation error.
    #
    # @!attribute [rw] text
    #   The text-channel parameters to update. Omit this member to leave the
    #   text-channel parameters unchanged.
    #   @return [Types::UpdateTextParameters]
    #
    # @!attribute [rw] voice
    #   The voice-channel parameters to update. Omit this member to leave
    #   the voice-channel parameters unchanged.
    #   @return [Types::UpdateVoiceParameters]
    #
    # @!attribute [rw] notify
    #   The notify-template-route parameters to update. Omit this member to
    #   leave them unchanged.
    #   @return [Types::UpdateNotifyParameters]
    #
    # @!attribute [rw] whats_app
    #   The WhatsApp-channel parameters to update. Omit this member to leave
    #   the WhatsApp-channel parameters unchanged.
    #   @return [Types::UpdateWhatsAppParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateChannelParameters AWS API Documentation
    #
    class UpdateChannelParameters < Struct.new(
      :text,
      :voice,
      :notify,
      :whats_app)
      SENSITIVE = []
      include Aws::Structure
    end

    # The loose variant of the passcode policy parameters that is used only
    # when you update a notify code configuration. When you omit a member,
    # its current value is preserved.
    #
    # @!attribute [rw] code_type
    #   The updated character set used to generate the one-time passcode.
    #   Omit this member to preserve the current value.
    #   @return [String]
    #
    # @!attribute [rw] code_length
    #   The updated number of characters in the one-time passcode. Valid
    #   values range from 4 through 8. Omit this member to preserve the
    #   current value.
    #   @return [Integer]
    #
    # @!attribute [rw] validity_period_minutes
    #   The updated length of time, in minutes, that the one-time passcode
    #   remains valid. Valid values range from 1 through 60. Omit this
    #   member to preserve the current value.
    #   @return [Integer]
    #
    # @!attribute [rw] max_attempts
    #   The updated maximum number of validation attempts that are allowed
    #   before the verification is locked. Valid values range from 1 through
    #   5. Omit this member to preserve the current value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateCodeConfigurationParameters AWS API Documentation
    #
    class UpdateCodeConfigurationParameters < Struct.new(
      :code_type,
      :code_length,
      :validity_period_minutes,
      :max_attempts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notify_code_configuration_id
    #   The unique identifier of the notify code configuration. You can
    #   specify either the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] notify_code_configuration_name
    #   The name of the notify code configuration.
    #   @return [String]
    #
    # @!attribute [rw] code_configuration_parameters
    #   The updated passcode policy parameters, including the code type,
    #   length, validity period, and maximum number of attempts. When you
    #   omit a member, its current value is preserved.
    #   @return [Types::UpdateCodeConfigurationParameters]
    #
    # @!attribute [rw] channel_parameters
    #   The updated channel-specific parameters used to render and deliver
    #   the one-time passcode. This is a loose, nested update: when you omit
    #   a channel, that channel's parameters remain unchanged. Within a
    #   supplied channel, an empty string on a string member, or an empty
    #   map on the destination-country parameters, clears the currently
    #   stored value, and absent members preserve the current value.
    #   @return [Types::UpdateChannelParameters]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateNotifyCodeConfigurationInput AWS API Documentation
    #
    class UpdateNotifyCodeConfigurationInput < Struct.new(
      :notify_code_configuration_id,
      :notify_code_configuration_name,
      :code_configuration_parameters,
      :channel_parameters,
      :deletion_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notify_code_configuration
    #   The notify code configuration resource.
    #   @return [Types::NotifyCodeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateNotifyCodeConfigurationOutput AWS API Documentation
    #
    class UpdateNotifyCodeConfigurationOutput < Struct.new(
      :notify_code_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updated delivery parameters for the preapproved notify-template
    # route. Absent members preserve the current value, and the empty
    # sentinel on a member clears it.
    #
    # @!attribute [rw] notify_template_id
    #   The updated identifier of a preapproved notify template for the SMS
    #   or voice channels. An empty string clears the previously stored
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] voice_id
    #   The updated Amazon Polly voice ID. An empty string clears the
    #   previously stored value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateNotifyParameters AWS API Documentation
    #
    class UpdateNotifyParameters < Struct.new(
      :notify_template_id,
      :voice_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] brand_profile_id
    #   The unique identifier of the brand profile. You can specify either
    #   the bare ID or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] registration_ids
    #   The identifiers of the registrations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] smart_match
    #   Specifies whether to use semantic field mapping between brand
    #   profile attributes and registration fields. The default is true.
    #   When false, the service maps fields using a fixed set of standard
    #   field types.
    #   @return [Boolean]
    #
    # @!attribute [rw] on_attribute_conflict
    #   Specifies how the service resolves an attribute that already exists.
    #   REPLACE overwrites the existing value with the incoming value.
    #   PRESERVE keeps the existing value.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   the AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateRegistrationsFromBrandProfileInput AWS API Documentation
    #
    class UpdateRegistrationsFromBrandProfileInput < Struct.new(
      :brand_profile_id,
      :registration_ids,
      :smart_match,
      :on_attribute_conflict,
      :client_token)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The results of the operation. Each result pairs a requested item
    #   with the asynchronous job that processes it.
    #   @return [Array<Types::JobResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateRegistrationsFromBrandProfileOutput AWS API Documentation
    #
    class UpdateRegistrationsFromBrandProfileOutput < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updated delivery parameters for the text channel. Absent members
    # preserve the current value, and the empty sentinel on a member clears
    # it.
    #
    # @!attribute [rw] inline_template_body
    #   The updated freeform SMS or RCS template body. An empty string
    #   clears the previously stored value.
    #   @return [String]
    #
    # @!attribute [rw] destination_country_parameters
    #   The updated map of country-specific parameters that control one-time
    #   passcode delivery. An empty map clears the previously stored value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateTextParameters AWS API Documentation
    #
    class UpdateTextParameters < Struct.new(
      :inline_template_body,
      :destination_country_parameters)
      SENSITIVE = [:inline_template_body, :destination_country_parameters]
      include Aws::Structure
    end

    # The updated delivery parameters for the voice channel. Absent members
    # preserve the current value, and the empty sentinel on a member clears
    # it.
    #
    # @!attribute [rw] inline_template_body
    #   The updated freeform voice template body. An empty string clears the
    #   previously stored value.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The updated BCP 47 language code. An empty string clears the
    #   previously stored value.
    #   @return [String]
    #
    # @!attribute [rw] voice_id
    #   The updated Amazon Polly voice ID. An empty string clears the
    #   previously stored value.
    #   @return [String]
    #
    # @!attribute [rw] voice_message_body_text_type
    #   The updated format of the voice message body. Valid values are TEXT
    #   and SSML. Omit this member to preserve the current value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateVoiceParameters AWS API Documentation
    #
    class UpdateVoiceParameters < Struct.new(
      :inline_template_body,
      :language_code,
      :voice_id,
      :voice_message_body_text_type)
      SENSITIVE = [:inline_template_body]
      include Aws::Structure
    end

    # The updated delivery parameters for the WhatsApp channel. Absent
    # members preserve the current value, and the empty sentinel on a member
    # clears it.
    #
    # @!attribute [rw] whats_app_template_name
    #   The updated name of the Meta-approved WhatsApp authentication
    #   template. An empty string clears the previously stored value.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The updated BCP 47 language code. An empty string clears the
    #   previously stored value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateWhatsAppParameters AWS API Documentation
    #
    class UpdateWhatsAppParameters < Struct.new(
      :whats_app_template_name,
      :language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_identity
    #   The recipient identifier. For the TEXT and VOICE channels, specify
    #   an E.164 phone number. For the WhatsApp channel, specify a WhatsApp
    #   address.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The caller-supplied reference identifier used to locate the
    #   verification. This value must match the value that you supplied to
    #   the SendNotifyCodeVerification operation.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The one-time passcode that the recipient submitted for validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ValidateNotifyCodeVerificationInput AWS API Documentation
    #
    class ValidateNotifyCodeVerificationInput < Struct.new(
      :destination_identity,
      :reference_id,
      :code)
      SENSITIVE = [:destination_identity, :code]
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The outcome of the validation attempt. VALID indicates that the
    #   submitted passcode matched an active verification. INVALID indicates
    #   that the passcode did not match, expired, or exceeded its attempt
    #   limit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ValidateNotifyCodeVerificationOutput AWS API Documentation
    #
    class ValidateNotifyCodeVerificationOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A standard error for input validation failures. This should be thrown
    # by services when a member of the input structure falls outside of the
    # modeled or documented constraints.
    #
    # @!attribute [rw] message
    #   A summary of the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of specific failures encountered while validating the input.
    #   A member can appear in this list more than once if it failed to
    #   satisfy multiple constraints.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes one specific validation failure for an input member.
    #
    # @!attribute [rw] path
    #   A JSONPointer expression to the structure member whose value failed
    #   to satisfy the modeled constraints.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed description of the validation failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The delivery parameters for the voice channel.
    #
    # @!attribute [rw] inline_template_body
    #   The freeform message template used to render the one-time passcode
    #   for the voice channel. The template must contain the code
    #   placeholder.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The BCP 47 language code used to render the voice message.
    #   @return [String]
    #
    # @!attribute [rw] voice_id
    #   The Amazon Polly voice ID used for the voice channel.
    #   @return [String]
    #
    # @!attribute [rw] voice_message_body_text_type
    #   The format of the voice message body. Valid values are TEXT and
    #   SSML.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/VoiceParameters AWS API Documentation
    #
    class VoiceParameters < Struct.new(
      :inline_template_body,
      :language_code,
      :voice_id,
      :voice_message_body_text_type)
      SENSITIVE = [:inline_template_body]
      include Aws::Structure
    end

    # The delivery parameters for the WhatsApp channel.
    #
    # @!attribute [rw] whats_app_template_name
    #   The name of the Meta-approved WhatsApp authentication template.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The BCP 47 language code used to render the template. This value is
    #   required for the WhatsApp channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/WhatsAppParameters AWS API Documentation
    #
    class WhatsAppParameters < Struct.new(
      :whats_app_template_name,
      :language_code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

