# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::B2bi
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A capability object. Currently, only EDI (electronic data interchange)
    # capabilities are supported. A trading capability contains the
    # information required to transform incoming EDI documents into JSON or
    # XML outputs.
    #
    # @note CapabilityConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CapabilityConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CapabilityConfiguration corresponding to the set member.
    #
    # @!attribute [rw] edi
    #   An EDI (electronic data interchange) configuration object.
    #   @return [Types::EdiConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CapabilityConfiguration AWS API Documentation
    #
    class CapabilityConfiguration < Struct.new(
      :edi,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Edi < CapabilityConfiguration; end
      class Unknown < CapabilityConfiguration; end
    end

    # Returns the capability summary details. A trading capability contains
    # the information required to transform incoming EDI documents into JSON
    # or XML outputs.
    #
    # @!attribute [rw] capability_id
    #   Returns a system-assigned unique identifier for the capability.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the capability.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Returns the type of the capability. Currently, only `edi` is
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the capability.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp that identifies the most recent date and time
    #   that the capability was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CapabilitySummary AWS API Documentation
    #
    class CapabilitySummary < Struct.new(
      :capability_id,
      :name,
      :type,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflict exception is thrown when you attempt to delete a resource
    # (such as a profile or a capability) that is being used by other
    # resources.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Specifies the name of the capability, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies the type of the capability. Currently, only `edi` is
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Specifies a structure that contains the details for a capability.
    #   @return [Types::CapabilityConfiguration]
    #
    # @!attribute [rw] instructions_documents
    #   Specifies one or more locations in Amazon S3, each specifying an EDI
    #   document that can be used with this capability. Each item contains
    #   the name of the bucket and the key, to identify the document's
    #   location.
    #   @return [Array<Types::S3Location>]
    #
    # @!attribute [rw] client_token
    #   Reserved for future use.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any
    #   purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateCapabilityRequest AWS API Documentation
    #
    class CreateCapabilityRequest < Struct.new(
      :name,
      :type,
      :configuration,
      :instructions_documents,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capability_id
    #   Returns a system-assigned unique identifier for the capability.
    #   @return [String]
    #
    # @!attribute [rw] capability_arn
    #   Returns an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the name of the capability used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Returns the type of the capability. Currently, only `edi` is
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Returns a structure that contains the details for a capability.
    #   @return [Types::CapabilityConfiguration]
    #
    # @!attribute [rw] instructions_documents
    #   Returns one or more locations in Amazon S3, each specifying an EDI
    #   document that can be used with this capability. Each item contains
    #   the name of the bucket and the key, to identify the document's
    #   location.
    #   @return [Array<Types::S3Location>]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the capability.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateCapabilityResponse AWS API Documentation
    #
    class CreateCapabilityResponse < Struct.new(
      :capability_id,
      :capability_arn,
      :name,
      :type,
      :configuration,
      :instructions_documents,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Specifies the unique, system-generated identifier for the profile
    #   connected to this partnership.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies a descriptive name for the partnership.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Specifies the email address associated with this trading partner.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   Specifies the phone number associated with the partnership.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   Specifies a list of the capabilities associated with this
    #   partnership.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   Reserved for future use.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any
    #   purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreatePartnershipRequest AWS API Documentation
    #
    class CreatePartnershipRequest < Struct.new(
      :profile_id,
      :name,
      :email,
      :phone,
      :capabilities,
      :client_token,
      :tags)
      SENSITIVE = [:email, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Returns the unique, system-generated identifier for the profile
    #   connected to this partnership.
    #   @return [String]
    #
    # @!attribute [rw] partnership_id
    #   Returns the unique, system-generated identifier for a partnership.
    #   @return [String]
    #
    # @!attribute [rw] partnership_arn
    #   Returns an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns a descriptive name for the partnership.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Returns the email address associated with this trading partner.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   Returns the phone number associated with the partnership.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   Returns one or more capabilities associated with this partnership.
    #   @return [Array<String>]
    #
    # @!attribute [rw] trading_partner_id
    #   Returns the unique, system-generated identifier for a trading
    #   partner.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the partnership.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreatePartnershipResponse AWS API Documentation
    #
    class CreatePartnershipResponse < Struct.new(
      :profile_id,
      :partnership_id,
      :partnership_arn,
      :name,
      :email,
      :phone,
      :capabilities,
      :trading_partner_id,
      :created_at)
      SENSITIVE = [:email, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Specifies the name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Specifies the email address associated with this customer profile.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   Specifies the phone number associated with the profile.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   Specifies the name for the business associated with this profile.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   Specifies whether or not logging is enabled for this profile.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Reserved for future use.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any
    #   purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateProfileRequest AWS API Documentation
    #
    class CreateProfileRequest < Struct.new(
      :name,
      :email,
      :phone,
      :business_name,
      :logging,
      :client_token,
      :tags)
      SENSITIVE = [:email, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Returns the unique, system-generated identifier for the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   Returns an Amazon Resource Name (ARN) for the profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the name of the profile, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   Returns the name for the business associated with this profile.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   Returns the phone number associated with the profile.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Returns the email address associated with this customer profile.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   Returns whether or not logging is turned on for this profile.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   Returns the name of the logging group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp representing the time the profile was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateProfileResponse AWS API Documentation
    #
    class CreateProfileResponse < Struct.new(
      :profile_id,
      :profile_arn,
      :name,
      :business_name,
      :phone,
      :email,
      :logging,
      :log_group_name,
      :created_at)
      SENSITIVE = [:phone, :email]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Specifies the name of the transformer, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   Specifies that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Specifies the name of the mapping template for the transformer. This
    #   template is used to convert the input document into the correct set
    #   of objects.
    #   @return [String]
    #
    # @!attribute [rw] edi_type
    #   Specifies the details for the EDI standard that is being used for
    #   the transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #   @return [Types::EdiType]
    #
    # @!attribute [rw] sample_document
    #   Specifies a sample EDI document that is used by a transformer as a
    #   guide for processing the EDI data.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Reserved for future use.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any
    #   purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateTransformerRequest AWS API Documentation
    #
    class CreateTransformerRequest < Struct.new(
      :name,
      :file_format,
      :mapping_template,
      :edi_type,
      :sample_document,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transformer_id
    #   Returns the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @!attribute [rw] transformer_arn
    #   Returns an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the name of the transformer, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   Returns that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Returns the name of the mapping template for the transformer. This
    #   template is used to convert the input document into the correct set
    #   of objects.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Returns the state of the newly created transformer. The transformer
    #   can be either `active` or `inactive`. For the transformer to be used
    #   in a capability, its status must `active`.
    #   @return [String]
    #
    # @!attribute [rw] edi_type
    #   Returns the details for the EDI standard that is being used for the
    #   transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #   @return [Types::EdiType]
    #
    # @!attribute [rw] sample_document
    #   Returns a sample EDI document that is used by a transformer as a
    #   guide for processing the EDI data.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the transformer.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateTransformerResponse AWS API Documentation
    #
    class CreateTransformerResponse < Struct.new(
      :transformer_id,
      :transformer_arn,
      :name,
      :file_format,
      :mapping_template,
      :status,
      :edi_type,
      :sample_document,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capability_id
    #   Specifies a system-assigned unique identifier for the capability.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/DeleteCapabilityRequest AWS API Documentation
    #
    class DeleteCapabilityRequest < Struct.new(
      :capability_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partnership_id
    #   Specifies the unique, system-generated identifier for a partnership.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/DeletePartnershipRequest AWS API Documentation
    #
    class DeletePartnershipRequest < Struct.new(
      :partnership_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Specifies the unique, system-generated identifier for the profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/DeleteProfileRequest AWS API Documentation
    #
    class DeleteProfileRequest < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transformer_id
    #   Specifies the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/DeleteTransformerRequest AWS API Documentation
    #
    class DeleteTransformerRequest < Struct.new(
      :transformer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the details for the EDI (electronic data interchange)
    # transformation.
    #
    # @!attribute [rw] type
    #   Returns the type of the capability. Currently, only `edi` is
    #   supported.
    #   @return [Types::EdiType]
    #
    # @!attribute [rw] input_location
    #   Contains the Amazon S3 bucket and prefix for the location of the
    #   input file, which is contained in an `S3Location` object.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] output_location
    #   Contains the Amazon S3 bucket and prefix for the location of the
    #   output file, which is contained in an `S3Location` object.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] transformer_id
    #   Returns the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/EdiConfiguration AWS API Documentation
    #
    class EdiConfiguration < Struct.new(
      :type,
      :input_location,
      :output_location,
      :transformer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the details for the EDI standard that is being used for the
    # transformer. Currently, only X12 is supported. X12 is a set of
    # standards and corresponding messages that define specific business
    # documents.
    #
    # @note EdiType is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EdiType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EdiType corresponding to the set member.
    #
    # @!attribute [rw] x12_details
    #   Returns the details for the EDI standard that is being used for the
    #   transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #   @return [Types::X12Details]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/EdiType AWS API Documentation
    #
    class EdiType < Struct.new(
      :x12_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class X12Details < EdiType; end
      class Unknown < EdiType; end
    end

    # @!attribute [rw] capability_id
    #   Specifies a system-assigned unique identifier for the capability.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetCapabilityRequest AWS API Documentation
    #
    class GetCapabilityRequest < Struct.new(
      :capability_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capability_id
    #   Returns a system-assigned unique identifier for the capability.
    #   @return [String]
    #
    # @!attribute [rw] capability_arn
    #   Returns an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the name of the capability, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Returns the type of the capability. Currently, only `edi` is
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Returns a structure that contains the details for a capability.
    #   @return [Types::CapabilityConfiguration]
    #
    # @!attribute [rw] instructions_documents
    #   Returns one or more locations in Amazon S3, each specifying an EDI
    #   document that can be used with this capability. Each item contains
    #   the name of the bucket and the key, to identify the document's
    #   location.
    #   @return [Array<Types::S3Location>]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the capability.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp for last time the capability was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetCapabilityResponse AWS API Documentation
    #
    class GetCapabilityResponse < Struct.new(
      :capability_id,
      :capability_arn,
      :name,
      :type,
      :configuration,
      :instructions_documents,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partnership_id
    #   Specifies the unique, system-generated identifier for a partnership.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetPartnershipRequest AWS API Documentation
    #
    class GetPartnershipRequest < Struct.new(
      :partnership_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Returns the unique, system-generated identifier for the profile
    #   connected to this partnership.
    #   @return [String]
    #
    # @!attribute [rw] partnership_id
    #   Returns the unique, system-generated identifier for a partnership.
    #   @return [String]
    #
    # @!attribute [rw] partnership_arn
    #   Returns an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the display name of the partnership
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Returns the email address associated with this trading partner.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   Returns the phone number associated with the partnership.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   Returns one or more capabilities associated with this partnership.
    #   @return [Array<String>]
    #
    # @!attribute [rw] trading_partner_id
    #   Returns the unique identifier for the partner for this partnership.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the partnership.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp that identifies the most recent date and time
    #   that the partnership was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetPartnershipResponse AWS API Documentation
    #
    class GetPartnershipResponse < Struct.new(
      :profile_id,
      :partnership_id,
      :partnership_arn,
      :name,
      :email,
      :phone,
      :capabilities,
      :trading_partner_id,
      :created_at,
      :modified_at)
      SENSITIVE = [:email, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Specifies the unique, system-generated identifier for the profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetProfileRequest AWS API Documentation
    #
    class GetProfileRequest < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Returns the unique, system-generated identifier for the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   Returns an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the name of the profile, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Returns the email address associated with this customer profile.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   Returns the phone number associated with the profile.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   Returns the name for the business associated with this profile.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   Returns whether or not logging is enabled for this profile.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   Returns the name of the logging group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the transformer.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp for last time the profile was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetProfileResponse AWS API Documentation
    #
    class GetProfileResponse < Struct.new(
      :profile_id,
      :profile_arn,
      :name,
      :email,
      :phone,
      :business_name,
      :logging,
      :log_group_name,
      :created_at,
      :modified_at)
      SENSITIVE = [:email, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] transformer_job_id
    #   Specifies the unique, system-generated identifier for a transformer
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] transformer_id
    #   Specifies the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetTransformerJobRequest AWS API Documentation
    #
    class GetTransformerJobRequest < Struct.new(
      :transformer_job_id,
      :transformer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   Returns the current state of the transformer job, either `running`,
    #   `succeeded`, or `failed`.
    #   @return [String]
    #
    # @!attribute [rw] output_files
    #   Returns the location for the output files. If the caller specified a
    #   directory for the output, then this contains the full path to the
    #   output file, including the file name generated by the service.
    #   @return [Array<Types::S3Location>]
    #
    # @!attribute [rw] message
    #   Returns an optional error message, which gets populated when the job
    #   is not run successfully.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetTransformerJobResponse AWS API Documentation
    #
    class GetTransformerJobResponse < Struct.new(
      :status,
      :output_files,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transformer_id
    #   Specifies the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetTransformerRequest AWS API Documentation
    #
    class GetTransformerRequest < Struct.new(
      :transformer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transformer_id
    #   Returns the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @!attribute [rw] transformer_arn
    #   Returns an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the name of the transformer, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   Returns that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Returns the name of the mapping template for the transformer. This
    #   template is used to convert the input document into the correct set
    #   of objects.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Returns the state of the newly created transformer. The transformer
    #   can be either `active` or `inactive`. For the transformer to be used
    #   in a capability, its status must `active`.
    #   @return [String]
    #
    # @!attribute [rw] edi_type
    #   Returns the details for the EDI standard that is being used for the
    #   transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #   @return [Types::EdiType]
    #
    # @!attribute [rw] sample_document
    #   Returns a sample EDI document that is used by a transformer as a
    #   guide for processing the EDI data.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the transformer.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp for last time the transformer was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetTransformerResponse AWS API Documentation
    #
    class GetTransformerResponse < Struct.new(
      :transformer_id,
      :transformer_arn,
      :name,
      :file_format,
      :mapping_template,
      :status,
      :edi_type,
      :sample_document,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when an error occurs in the Amazon Web
    # Services B2B Data Interchange service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The server attempts to retry a failed command.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional resources.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of capabilities to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListCapabilitiesRequest AWS API Documentation
    #
    class ListCapabilitiesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capabilities
    #   Returns one or more capabilities associated with this partnership.
    #   @return [Array<Types::CapabilitySummary>]
    #
    # @!attribute [rw] next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListCapabilitiesResponse AWS API Documentation
    #
    class ListCapabilitiesResponse < Struct.new(
      :capabilities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Specifies the unique, system-generated identifier for the profile
    #   connected to this partnership.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional resources.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of capabilities to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListPartnershipsRequest AWS API Documentation
    #
    class ListPartnershipsRequest < Struct.new(
      :profile_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partnerships
    #   Specifies a list of your partnerships.
    #   @return [Array<Types::PartnershipSummary>]
    #
    # @!attribute [rw] next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListPartnershipsResponse AWS API Documentation
    #
    class ListPartnershipsResponse < Struct.new(
      :partnerships,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional resources.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of profiles to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListProfilesRequest AWS API Documentation
    #
    class ListProfilesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profiles
    #   Returns an array of `ProfileSummary` objects.
    #   @return [Array<Types::ProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListProfilesResponse AWS API Documentation
    #
    class ListProfilesResponse < Struct.new(
      :profiles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Requests the tags associated with a particular Amazon Resource Name
    #   (ARN). An ARN is an identifier for a specific Amazon Web Services
    #   resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Returns the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any
    #   purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional resources.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of items to return for the API response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListTransformersRequest AWS API Documentation
    #
    class ListTransformersRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transformers
    #   Returns an array of one or more transformer objects.
    #
    #   For each transformer, a `TransformerSummary` object is returned. The
    #   `TransformerSummary` contains all the details for a specific
    #   transformer.
    #   @return [Array<Types::TransformerSummary>]
    #
    # @!attribute [rw] next_token
    #   When additional results are obtained from the command, a `NextToken`
    #   parameter is returned in the output. You can then pass the
    #   `NextToken` parameter in a subsequent command to continue listing
    #   additional resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ListTransformersResponse AWS API Documentation
    #
    class ListTransformersResponse < Struct.new(
      :transformers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the details for a partnership. A partnership
    # represents the connection between you and your trading partner. It
    # ties together a profile and one or more trading capabilities.
    #
    # @!attribute [rw] profile_id
    #   Returns the unique, system-generated identifier for the profile
    #   connected to this partnership.
    #   @return [String]
    #
    # @!attribute [rw] partnership_id
    #   Returns the unique, system-generated identifier for a partnership.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the name of the partnership.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   Returns one or more capabilities associated with this partnership.
    #   @return [Array<String>]
    #
    # @!attribute [rw] trading_partner_id
    #   Returns the unique, system-generated identifier for a trading
    #   partner.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the partnership.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp that identifies the most recent date and time
    #   that the partnership was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/PartnershipSummary AWS API Documentation
    #
    class PartnershipSummary < Struct.new(
      :profile_id,
      :partnership_id,
      :name,
      :capabilities,
      :trading_partner_id,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details for a profile. A profile is the mechanism used to
    # create the concept of a private network.
    #
    # @!attribute [rw] profile_id
    #   Returns the unique, system-generated identifier for the profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the display name for profile.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   Returns the name for the business associated with this profile.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   Specifies whether or not logging is enabled for this profile.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   Returns the name of the logging group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns the timestamp for creation date and time of the profile.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns the timestamp that identifies the most recent date and time
    #   that the profile was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ProfileSummary AWS API Documentation
    #
    class ProfileSummary < Struct.new(
      :profile_id,
      :name,
      :business_name,
      :logging,
      :log_group_name,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Occurs when the requested resource does not exist, or cannot be found.
    # In some cases, the resource exists in a region other than the region
    # specified in the API call.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the details for the Amazon S3 file location that is being
    # used with Amazon Web Services B2BI Data Interchange. File locations in
    # Amazon S3 are identified using a combination of the bucket and key.
    #
    # @!attribute [rw] bucket_name
    #   Specifies the name of the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Specifies the Amazon S3 key for the file location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket_name,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Occurs when the calling command attempts to exceed one of the service
    # quotas, for example trying to create a capability when you already
    # have the maximum number of capabilities allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID for the resource that exceeded the quota, which caused the
    #   exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type (profile, partnership, transformer, or capability)
    #   that exceeded the quota, which caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code responsible for exceeding the quota, which caused the
    #   exception.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota that was exceeded, which caused the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_file
    #   Specifies the location of the input file for the transformation. The
    #   location consists of an Amazon S3 bucket and prefix.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] output_location
    #   Specifies the location of the output file for the transformation.
    #   The location consists of an Amazon S3 bucket and prefix.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] transformer_id
    #   Specifies the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Reserved for future use.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/StartTransformerJobRequest AWS API Documentation
    #
    class StartTransformerJobRequest < Struct.new(
      :input_file,
      :output_location,
      :transformer_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transformer_job_id
    #   Returns the unique, system-generated identifier for a transformer
    #   run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/StartTransformerJobResponse AWS API Documentation
    #
    class StartTransformerJobResponse < Struct.new(
      :transformer_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a key-value pair for a specific resource. Tags are metadata
    # that you can use to search for and group a resource for various
    # purposes. You can apply tags to capabilities, partnerships, profiles
    # and transformers. A tag key can take more than one value. For example,
    # to group capabilities for accounting purposes, you might create a tag
    # called `Group` and assign the values `Research` and `Accounting` to
    # that group.
    #
    # @!attribute [rw] key
    #   Specifies the name assigned to the tag that you create.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Contains one or more values that you assigned to the key name that
    #   you create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specifies an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any
    #   purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_file_content
    #   Specify the contents of the EDI (electronic data interchange) XML or
    #   JSON file that is used as input for the transform.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Specifies the name of the mapping template for the transformer. This
    #   template is used to convert the input document into the correct set
    #   of objects.
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   Specifies that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TestMappingRequest AWS API Documentation
    #
    class TestMappingRequest < Struct.new(
      :input_file_content,
      :mapping_template,
      :file_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mapped_file_content
    #   Returns a string for the mapping that can be used to identify the
    #   mapping. Similar to a fingerprint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TestMappingResponse AWS API Documentation
    #
    class TestMappingResponse < Struct.new(
      :mapped_file_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_file
    #   Specifies an `S3Location` object, which contains the Amazon S3
    #   bucket and prefix for the location of the input file.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] file_format
    #   Specifies that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] edi_type
    #   Specifies the details for the EDI standard that is being used for
    #   the transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #   @return [Types::EdiType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TestParsingRequest AWS API Documentation
    #
    class TestParsingRequest < Struct.new(
      :input_file,
      :file_format,
      :edi_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parsed_file_content
    #   Returns the contents of the input file being tested, parsed
    #   according to the specified EDI (electronic data interchange) type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TestParsingResponse AWS API Documentation
    #
    class TestParsingResponse < Struct.new(
      :parsed_file_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to throttling: the data speed and rendering
    # may be limited depending on various parameters and conditions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The server attempts to retry a command that was throttled.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details for a transformer object. A transformer describes
    # how to process the incoming EDI documents and extract the necessary
    # information to the output file.
    #
    # @!attribute [rw] transformer_id
    #   Returns the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the descriptive name for the transformer.
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   Returns that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Returns the name of the mapping template for the transformer. This
    #   template is used to convert the input document into the correct set
    #   of objects.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Returns the state of the newly created transformer. The transformer
    #   can be either `active` or `inactive`. For the transformer to be used
    #   in a capability, its status must `active`.
    #   @return [String]
    #
    # @!attribute [rw] edi_type
    #   Returns the details for the EDI standard that is being used for the
    #   transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #   @return [Types::EdiType]
    #
    # @!attribute [rw] sample_document
    #   Returns a sample EDI document that is used by a transformer as a
    #   guide for processing the EDI data.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp indicating when the transformer was created. For
    #   example, `2023-07-20T19:58:44.624Z`.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp representing the date and time for the most
    #   recent change for the transformer object.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TransformerSummary AWS API Documentation
    #
    class TransformerSummary < Struct.new(
      :transformer_id,
      :name,
      :file_format,
      :mapping_template,
      :status,
      :edi_type,
      :sample_document,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specifies an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specifies the key-value pairs assigned to ARNs that you can use to
    #   group and search for resources by type. You can attach this metadata
    #   to resources (capabilities, partnerships, and so on) for any
    #   purpose.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capability_id
    #   Specifies a system-assigned unique identifier for the capability.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies a new name for the capability, to replace the existing
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Specifies a structure that contains the details for a capability.
    #   @return [Types::CapabilityConfiguration]
    #
    # @!attribute [rw] instructions_documents
    #   Specifies one or more locations in Amazon S3, each specifying an EDI
    #   document that can be used with this capability. Each item contains
    #   the name of the bucket and the key, to identify the document's
    #   location.
    #   @return [Array<Types::S3Location>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateCapabilityRequest AWS API Documentation
    #
    class UpdateCapabilityRequest < Struct.new(
      :capability_id,
      :name,
      :configuration,
      :instructions_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capability_id
    #   Returns a system-assigned unique identifier for the capability.
    #   @return [String]
    #
    # @!attribute [rw] capability_arn
    #   Returns an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the name of the capability, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Returns the type of the capability. Currently, only `edi` is
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Returns a structure that contains the details for a capability.
    #   @return [Types::CapabilityConfiguration]
    #
    # @!attribute [rw] instructions_documents
    #   Returns one or more locations in Amazon S3, each specifying an EDI
    #   document that can be used with this capability. Each item contains
    #   the name of the bucket and the key, to identify the document's
    #   location.
    #   @return [Array<Types::S3Location>]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the capability.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp for last time the capability was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateCapabilityResponse AWS API Documentation
    #
    class UpdateCapabilityResponse < Struct.new(
      :capability_id,
      :capability_arn,
      :name,
      :type,
      :configuration,
      :instructions_documents,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partnership_id
    #   Specifies the unique, system-generated identifier for a partnership.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the partnership, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   List of the capabilities associated with this partnership.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdatePartnershipRequest AWS API Documentation
    #
    class UpdatePartnershipRequest < Struct.new(
      :partnership_id,
      :name,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Returns the unique, system-generated identifier for the profile
    #   connected to this partnership.
    #   @return [String]
    #
    # @!attribute [rw] partnership_id
    #   Returns the unique, system-generated identifier for a partnership.
    #   @return [String]
    #
    # @!attribute [rw] partnership_arn
    #   Returns an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the partnership, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Returns the email address associated with this trading partner.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   Returns the phone number associated with the partnership.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   Returns one or more capabilities associated with this partnership.
    #   @return [Array<String>]
    #
    # @!attribute [rw] trading_partner_id
    #   Returns the unique, system-generated identifier for a trading
    #   partner.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp that identifies the most recent date and time
    #   that the partnership was modified.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp that identifies the most recent date and time
    #   that the partnership was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdatePartnershipResponse AWS API Documentation
    #
    class UpdatePartnershipResponse < Struct.new(
      :profile_id,
      :partnership_id,
      :partnership_arn,
      :name,
      :email,
      :phone,
      :capabilities,
      :trading_partner_id,
      :created_at,
      :modified_at)
      SENSITIVE = [:email, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Specifies the unique, system-generated identifier for the profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the profile, used to identify it.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Specifies the email address associated with this customer profile.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   Specifies the phone number associated with the profile.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   Specifies the name for the business associated with this profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateProfileRequest AWS API Documentation
    #
    class UpdateProfileRequest < Struct.new(
      :profile_id,
      :name,
      :email,
      :phone,
      :business_name)
      SENSITIVE = [:email, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   Returns the unique, system-generated identifier for the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   Returns an Amazon Resource Name (ARN) for the profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Returns the email address associated with this customer profile.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   Returns the phone number associated with the profile.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   Returns the name for the business associated with this profile.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   Specifies whether or not logging is enabled for this profile.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   Returns the name of the logging group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the profile.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp for last time the profile was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateProfileResponse AWS API Documentation
    #
    class UpdateProfileResponse < Struct.new(
      :profile_id,
      :profile_arn,
      :name,
      :email,
      :phone,
      :business_name,
      :logging,
      :log_group_name,
      :created_at,
      :modified_at)
      SENSITIVE = [:email, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] transformer_id
    #   Specifies the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specify a new name for the transformer, if you want to update it.
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   Specifies that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Specifies the name of the mapping template for the transformer. This
    #   template is used to convert the input document into the correct set
    #   of objects.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the transformer's status. You can update the state of the
    #   transformer, from `active` to `inactive`, or `inactive` to `active`.
    #   @return [String]
    #
    # @!attribute [rw] edi_type
    #   Specifies the details for the EDI standard that is being used for
    #   the transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #   @return [Types::EdiType]
    #
    # @!attribute [rw] sample_document
    #   Specifies a sample EDI document that is used by a transformer as a
    #   guide for processing the EDI data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateTransformerRequest AWS API Documentation
    #
    class UpdateTransformerRequest < Struct.new(
      :transformer_id,
      :name,
      :file_format,
      :mapping_template,
      :status,
      :edi_type,
      :sample_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transformer_id
    #   Returns the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @!attribute [rw] transformer_arn
    #   Returns an Amazon Resource Name (ARN) for a specific Amazon Web
    #   Services resource, such as a capability, partnership, profile, or
    #   transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the name of the transformer.
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   Returns that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Returns the name of the mapping template for the transformer. This
    #   template is used to convert the input document into the correct set
    #   of objects.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Returns the state of the newly created transformer. The transformer
    #   can be either `active` or `inactive`. For the transformer to be used
    #   in a capability, its status must `active`.
    #   @return [String]
    #
    # @!attribute [rw] edi_type
    #   Returns the details for the EDI standard that is being used for the
    #   transformer. Currently, only X12 is supported. X12 is a set of
    #   standards and corresponding messages that define specific business
    #   documents.
    #   @return [Types::EdiType]
    #
    # @!attribute [rw] sample_document
    #   Returns a sample EDI document that is used by a transformer as a
    #   guide for processing the EDI data.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the transformer.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   Returns a timestamp for last time the transformer was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateTransformerResponse AWS API Documentation
    #
    class UpdateTransformerResponse < Struct.new(
      :transformer_id,
      :transformer_arn,
      :name,
      :file_format,
      :mapping_template,
      :status,
      :edi_type,
      :sample_document,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Occurs when a B2BI object cannot be validated against a request from
    # another object.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the X12 transaction set and version. The X12
    # structure is used when the system transforms an EDI (electronic data
    # interchange) file.
    #
    # <note markdown="1"> If an EDI input file contains more than one transaction, each
    # transaction must have the same transaction set and version, for
    # example 214/4010. If not, the transformer cannot parse the file.
    #
    #  </note>
    #
    # @!attribute [rw] transaction_set
    #   Returns an enumerated type where each value identifies an X12
    #   transaction set. Transaction sets are maintained by the X12
    #   Accredited Standards Committee.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Returns the version to use for the specified X12 transaction set.
    #   Supported versions are `4010`, `4030`, and `5010`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12Details AWS API Documentation
    #
    class X12Details < Struct.new(
      :transaction_set,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
