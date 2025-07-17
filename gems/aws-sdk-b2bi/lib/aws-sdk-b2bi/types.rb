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

    # A structure that contains advanced options for EDI processing.
    # Currently, only X12 advanced options are supported.
    #
    # @!attribute [rw] x12
    #   A structure that contains X12-specific advanced options, such as
    #   split options for processing X12 EDI files.
    #   @return [Types::X12AdvancedOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/AdvancedOptions AWS API Documentation
    #
    class AdvancedOptions < Struct.new(
      :x12)
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

    # Contains the details for an Outbound EDI capability.
    #
    # @!attribute [rw] outbound_edi
    #   A structure that contains the outbound EDI options.
    #   @return [Types::OutboundEdiOptions]
    #
    # @!attribute [rw] inbound_edi
    #   A structure that contains the inbound EDI options for the
    #   capability.
    #   @return [Types::InboundEdiOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CapabilityOptions AWS API Documentation
    #
    class CapabilityOptions < Struct.new(
      :outbound_edi,
      :inbound_edi)
      SENSITIVE = []
      include Aws::Structure
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

    # Describes the input for an outbound transformation.
    #
    # @!attribute [rw] file_format
    #   The format for the input file: either JSON or XML.
    #   @return [String]
    #
    # @!attribute [rw] input_file
    #   File to be converted
    #   @return [Types::InputFileSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ConversionSource AWS API Documentation
    #
    class ConversionSource < Struct.new(
      :file_format,
      :input_file)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provide a sample of what the output of the transformation should look
    # like.
    #
    # @!attribute [rw] file_format
    #   Currently, only X12 format is supported.
    #   @return [String]
    #
    # @!attribute [rw] format_details
    #   A structure that contains the formatting details for the conversion
    #   target.
    #   @return [Types::ConversionTargetFormatDetails]
    #
    # @!attribute [rw] output_sample_file
    #   Customer uses this to provide a sample on what should file look like
    #   after conversion X12 EDI use case around this would be discovering
    #   the file syntax
    #   @return [Types::OutputSampleFileSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ConversionTarget AWS API Documentation
    #
    class ConversionTarget < Struct.new(
      :file_format,
      :format_details,
      :output_sample_file)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a structure describing the X12 details for the conversion
    # target.
    #
    # @note ConversionTargetFormatDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] x12
    #   A structure that contains the X12 transaction set and version. The
    #   X12 structure is used when the system transforms an EDI (electronic
    #   data interchange) file.
    #
    #   <note markdown="1"> If an EDI input file contains more than one transaction, each
    #   transaction must have the same transaction set and version, for
    #   example 214/4010. If not, the transformer cannot parse the file.
    #
    #    </note>
    #   @return [Types::X12Details]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/ConversionTargetFormatDetails AWS API Documentation
    #
    class ConversionTargetFormatDetails < Struct.new(
      :x12,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class X12 < ConversionTargetFormatDetails; end
      class Unknown < ConversionTargetFormatDetails; end
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
    # @!attribute [rw] capability_options
    #   Specify the structure that contains the details for the associated
    #   capabilities.
    #   @return [Types::CapabilityOptions]
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
      :capability_options,
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
    # @!attribute [rw] capability_options
    #   Returns the structure that contains the details for the associated
    #   capabilities.
    #   @return [Types::CapabilityOptions]
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
      :capability_options,
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

    # @!attribute [rw] output_sample_location
    #   Specify the location of the sample EDI file that is used to generate
    #   the mapping template.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] mapping_type
    #   Specify the format for the mapping template: either JSONATA or XSLT.
    #   @return [String]
    #
    # @!attribute [rw] template_details
    #   Describes the details needed for generating the template. Specify
    #   the X12 transaction set and version for which the template is used:
    #   currently, we only support X12.
    #   @return [Types::TemplateDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateStarterMappingTemplateRequest AWS API Documentation
    #
    class CreateStarterMappingTemplateRequest < Struct.new(
      :output_sample_location,
      :mapping_type,
      :template_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mapping_template
    #   Returns a string that represents the mapping template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateStarterMappingTemplateResponse AWS API Documentation
    #
    class CreateStarterMappingTemplateResponse < Struct.new(
      :mapping_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Specifies the name of the transformer, used to identify it.
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
    # @!attribute [rw] file_format
    #   Specifies that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Specifies the mapping template for the transformer. This template is
    #   used to map the parsed EDI file using JSONata or XSLT.
    #
    #   <note markdown="1"> This parameter is available for backwards compatibility. Use the
    #   [Mapping][1] data type instead.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html
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
    # @!attribute [rw] input_conversion
    #   Specify the `InputConversion` object, which contains the format
    #   options for the inbound transformation.
    #   @return [Types::InputConversion]
    #
    # @!attribute [rw] mapping
    #   Specify the structure that contains the mapping template and its
    #   language (either XSLT or JSONATA).
    #   @return [Types::Mapping]
    #
    # @!attribute [rw] output_conversion
    #   A structure that contains the `OutputConversion` object, which
    #   contains the format options for the outbound transformation.
    #   @return [Types::OutputConversion]
    #
    # @!attribute [rw] sample_documents
    #   Specify a structure that contains the Amazon S3 bucket and an array
    #   of the corresponding keys used to identify the location for your
    #   sample documents.
    #   @return [Types::SampleDocuments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateTransformerRequest AWS API Documentation
    #
    class CreateTransformerRequest < Struct.new(
      :name,
      :client_token,
      :tags,
      :file_format,
      :mapping_template,
      :edi_type,
      :sample_document,
      :input_conversion,
      :mapping,
      :output_conversion,
      :sample_documents)
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
    # @!attribute [rw] status
    #   Returns the state of the newly created transformer. The transformer
    #   can be either `active` or `inactive`. For the transformer to be used
    #   in a capability, its status must `active`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Returns a timestamp for creation date and time of the transformer.
    #   @return [Time]
    #
    # @!attribute [rw] file_format
    #   Returns that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Returns the mapping template for the transformer. This template is
    #   used to map the parsed EDI file using JSONata or XSLT.
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
    # @!attribute [rw] input_conversion
    #   Returns the `InputConversion` object, which contains the format
    #   options for the inbound transformation.
    #   @return [Types::InputConversion]
    #
    # @!attribute [rw] mapping
    #   Returns the structure that contains the mapping template and its
    #   language (either XSLT or JSONATA).
    #   @return [Types::Mapping]
    #
    # @!attribute [rw] output_conversion
    #   Returns the `OutputConversion` object, which contains the format
    #   options for the outbound transformation.
    #   @return [Types::OutputConversion]
    #
    # @!attribute [rw] sample_documents
    #   Returns a structure that contains the Amazon S3 bucket and an array
    #   of the corresponding keys used to identify the location for your
    #   sample documents.
    #   @return [Types::SampleDocuments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/CreateTransformerResponse AWS API Documentation
    #
    class CreateTransformerResponse < Struct.new(
      :transformer_id,
      :transformer_arn,
      :name,
      :status,
      :created_at,
      :file_format,
      :mapping_template,
      :edi_type,
      :sample_document,
      :input_conversion,
      :mapping,
      :output_conversion,
      :sample_documents)
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
    # @!attribute [rw] capability_direction
    #   Specifies whether this is capability is for inbound or outbound
    #   transformations.
    #   @return [String]
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
      :capability_direction,
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

    # A structure that contains the X12 transaction set and version.
    #
    # @note FormatOptions is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FormatOptions is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FormatOptions corresponding to the set member.
    #
    # @!attribute [rw] x12
    #   A structure that contains the X12 transaction set and version. The
    #   X12 structure is used when the system transforms an EDI (electronic
    #   data interchange) file.
    #
    #   <note markdown="1"> If an EDI input file contains more than one transaction, each
    #   transaction must have the same transaction set and version, for
    #   example 214/4010. If not, the transformer cannot parse the file.
    #
    #    </note>
    #   @return [Types::X12Details]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/FormatOptions AWS API Documentation
    #
    class FormatOptions < Struct.new(
      :x12,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class X12 < FormatOptions; end
      class Unknown < FormatOptions; end
    end

    # @!attribute [rw] input_file_content
    #   Provide the contents of a sample X12 EDI file, either in JSON or XML
    #   format, to use as a starting point for the mapping.
    #   @return [String]
    #
    # @!attribute [rw] output_file_content
    #   Provide the contents of a sample X12 EDI file, either in JSON or XML
    #   format, to use as a target for the mapping.
    #   @return [String]
    #
    # @!attribute [rw] mapping_type
    #   Specify the mapping type: either `JSONATA` or `XSLT.`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GenerateMappingRequest AWS API Documentation
    #
    class GenerateMappingRequest < Struct.new(
      :input_file_content,
      :output_file_content,
      :mapping_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mapping_template
    #   Returns a mapping template based on your inputs.
    #   @return [String]
    #
    # @!attribute [rw] mapping_accuracy
    #   Returns a percentage that estimates the accuracy of the generated
    #   mapping.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GenerateMappingResponse AWS API Documentation
    #
    class GenerateMappingResponse < Struct.new(
      :mapping_template,
      :mapping_accuracy)
      SENSITIVE = []
      include Aws::Structure
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
    # @!attribute [rw] capability_options
    #   Contains the details for an Outbound EDI capability.
    #   @return [Types::CapabilityOptions]
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
      :capability_options,
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
    # @!attribute [rw] status
    #   Returns the state of the newly created transformer. The transformer
    #   can be either `active` or `inactive`. For the transformer to be used
    #   in a capability, its status must `active`.
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
    # @!attribute [rw] file_format
    #   Returns that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Returns the mapping template for the transformer. This template is
    #   used to map the parsed EDI file using JSONata or XSLT.
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
    # @!attribute [rw] input_conversion
    #   Returns the `InputConversion` object, which contains the format
    #   options for the inbound transformation.
    #   @return [Types::InputConversion]
    #
    # @!attribute [rw] mapping
    #   Returns the structure that contains the mapping template and its
    #   language (either XSLT or JSONATA).
    #   @return [Types::Mapping]
    #
    # @!attribute [rw] output_conversion
    #   Returns the `OutputConversion` object, which contains the format
    #   options for the outbound transformation.
    #   @return [Types::OutputConversion]
    #
    # @!attribute [rw] sample_documents
    #   Returns a structure that contains the Amazon S3 bucket and an array
    #   of the corresponding keys used to identify the location for your
    #   sample documents.
    #   @return [Types::SampleDocuments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/GetTransformerResponse AWS API Documentation
    #
    class GetTransformerResponse < Struct.new(
      :transformer_id,
      :transformer_arn,
      :name,
      :status,
      :created_at,
      :modified_at,
      :file_format,
      :mapping_template,
      :edi_type,
      :sample_document,
      :input_conversion,
      :mapping,
      :output_conversion,
      :sample_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains options for processing inbound EDI files. These options allow
    # for customizing how incoming EDI documents are processed.
    #
    # @!attribute [rw] x12
    #   A structure that contains X12-specific options for processing
    #   inbound X12 EDI files.
    #   @return [Types::X12InboundEdiOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/InboundEdiOptions AWS API Documentation
    #
    class InboundEdiOptions < Struct.new(
      :x12)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the input formatting options for an inbound transformer
    # (takes an X12-formatted EDI document as input and converts it to JSON
    # or XML.
    #
    # @!attribute [rw] from_format
    #   The format for the transformer input: currently on `X12` is
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] format_options
    #   A structure that contains the formatting options for an inbound
    #   transformer.
    #   @return [Types::FormatOptions]
    #
    # @!attribute [rw] advanced_options
    #   Specifies advanced options for the input conversion process. These
    #   options provide additional control over how EDI files are processed
    #   during transformation.
    #   @return [Types::AdvancedOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/InputConversion AWS API Documentation
    #
    class InputConversion < Struct.new(
      :from_format,
      :format_options,
      :advanced_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input file to use for an outbound transformation.
    #
    # @note InputFileSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] file_content
    #   Specify the input contents, as a string, for the source of an
    #   outbound transformation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/InputFileSource AWS API Documentation
    #
    class InputFileSource < Struct.new(
      :file_content,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FileContent < InputFileSource; end
      class Unknown < InputFileSource; end
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

    # Specifies the mapping template for the transformer. This template is
    # used to map the parsed EDI file using JSONata or XSLT.
    #
    # @!attribute [rw] template_language
    #   The transformation language for the template, either XSLT or
    #   JSONATA.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   A string that represents the mapping template, in the transformation
    #   language specified in `templateLanguage`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/Mapping AWS API Documentation
    #
    class Mapping < Struct.new(
      :template_language,
      :template)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for outbound EDI options.
    #
    # @note OutboundEdiOptions is a union - when making an API calls you must set exactly one of the members.
    #
    # @note OutboundEdiOptions is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OutboundEdiOptions corresponding to the set member.
    #
    # @!attribute [rw] x12
    #   A structure that contains an X12 envelope structure.
    #   @return [Types::X12Envelope]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/OutboundEdiOptions AWS API Documentation
    #
    class OutboundEdiOptions < Struct.new(
      :x12,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class X12 < OutboundEdiOptions; end
      class Unknown < OutboundEdiOptions; end
    end

    # Contains the formatting options for an outbound transformer (takes
    # JSON or XML as input and converts it to an EDI document (currently
    # only X12 format is supported).
    #
    # @!attribute [rw] to_format
    #   The format for the output from an outbound transformer: only X12 is
    #   currently supported.
    #   @return [String]
    #
    # @!attribute [rw] format_options
    #   A structure that contains the X12 transaction set and version for
    #   the transformer output.
    #   @return [Types::FormatOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/OutputConversion AWS API Documentation
    #
    class OutputConversion < Struct.new(
      :to_format,
      :format_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the location of a sample file used for outbound
    # transformations.
    #
    # @note OutputSampleFileSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] file_location
    #   Specifies the details for the Amazon S3 file location that is being
    #   used with Amazon Web Services B2B Data Interchange. File locations
    #   in Amazon S3 are identified using a combination of the bucket and
    #   key.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/OutputSampleFileSource AWS API Documentation
    #
    class OutputSampleFileSource < Struct.new(
      :file_location,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FileLocation < OutputSampleFileSource; end
      class Unknown < OutputSampleFileSource; end
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
    # @!attribute [rw] capability_options
    #   Contains the details for an Outbound EDI capability.
    #   @return [Types::CapabilityOptions]
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
      :capability_options,
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
    # used with Amazon Web Services B2B Data Interchange. File locations in
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

    # An array of the Amazon S3 keys used to identify the location for your
    # sample documents.
    #
    # @!attribute [rw] input
    #   An array of keys for your input sample documents.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   An array of keys for your output sample documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/SampleDocumentKeys AWS API Documentation
    #
    class SampleDocumentKeys < Struct.new(
      :input,
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a structure that contains the Amazon S3 bucket and an array
    # of the corresponding keys used to identify the location for your
    # sample documents.
    #
    # @!attribute [rw] bucket_name
    #   Contains the Amazon S3 bucket that is used to hold your sample
    #   documents.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   Contains an array of the Amazon S3 keys used to identify the
    #   location for your sample documents.
    #   @return [Array<Types::SampleDocumentKeys>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/SampleDocuments AWS API Documentation
    #
    class SampleDocuments < Struct.new(
      :bucket_name,
      :keys)
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

    # A data structure that contains the information to use when generating
    # a mapping template.
    #
    # @note TemplateDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] x12
    #   A structure that contains the X12 transaction set and version. The
    #   X12 structure is used when the system transforms an EDI (electronic
    #   data interchange) file.
    #
    #   <note markdown="1"> If an EDI input file contains more than one transaction, each
    #   transaction must have the same transaction set and version, for
    #   example 214/4010. If not, the transformer cannot parse the file.
    #
    #    </note>
    #   @return [Types::X12Details]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TemplateDetails AWS API Documentation
    #
    class TemplateDetails < Struct.new(
      :x12,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class X12 < TemplateDetails; end
      class Unknown < TemplateDetails; end
    end

    # @!attribute [rw] source
    #   Specify the source file for an outbound EDI request.
    #   @return [Types::ConversionSource]
    #
    # @!attribute [rw] target
    #   Specify the format (X12 is the only currently supported format), and
    #   other details for the conversion target.
    #   @return [Types::ConversionTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TestConversionRequest AWS API Documentation
    #
    class TestConversionRequest < Struct.new(
      :source,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] converted_file_content
    #   Returns the converted file content.
    #   @return [String]
    #
    # @!attribute [rw] validation_messages
    #   Returns an array of strings, each containing a message that Amazon
    #   Web Services B2B Data Interchange generates during the conversion.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TestConversionResponse AWS API Documentation
    #
    class TestConversionResponse < Struct.new(
      :converted_file_content,
      :validation_messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_file_content
    #   Specify the contents of the EDI (electronic data interchange) XML or
    #   JSON file that is used as input for the transform.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Specifies the mapping template for the transformer. This template is
    #   used to map the parsed EDI file using JSONata or XSLT.
    #
    #   <note markdown="1"> This parameter is available for backwards compatibility. Use the
    #   [Mapping][1] data type instead.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html
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
    # @!attribute [rw] advanced_options
    #   Specifies advanced options for parsing the input EDI file. These
    #   options allow for more granular control over the parsing process,
    #   including split options for X12 files.
    #   @return [Types::AdvancedOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TestParsingRequest AWS API Documentation
    #
    class TestParsingRequest < Struct.new(
      :input_file,
      :file_format,
      :edi_type,
      :advanced_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parsed_file_content
    #   Returns the contents of the input file being tested, parsed
    #   according to the specified EDI (electronic data interchange) type.
    #   @return [String]
    #
    # @!attribute [rw] parsed_split_file_contents
    #   Returns an array of parsed file contents when the input file is
    #   split according to the specified split options. Each element in the
    #   array represents a separate split file's parsed content.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TestParsingResponse AWS API Documentation
    #
    class TestParsingResponse < Struct.new(
      :parsed_file_content,
      :parsed_split_file_contents)
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

    # Contains the details for a transformer object. A transformer can take
    # an EDI file as input and transform it into a JSON-or XML-formatted
    # document. Alternatively, a transformer can take a JSON-or
    # XML-formatted document as input and transform it into an EDI file.
    #
    # @!attribute [rw] transformer_id
    #   Returns the system-assigned unique identifier for the transformer.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Returns the descriptive name for the transformer.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Returns the state of the newly created transformer. The transformer
    #   can be either `active` or `inactive`. For the transformer to be used
    #   in a capability, its status must `active`.
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
    # @!attribute [rw] file_format
    #   Returns that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Returns the mapping template for the transformer. This template is
    #   used to map the parsed EDI file using JSONata or XSLT.
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
    # @!attribute [rw] input_conversion
    #   Returns a structure that contains the format options for the
    #   transformation.
    #   @return [Types::InputConversion]
    #
    # @!attribute [rw] mapping
    #   Returns the structure that contains the mapping template and its
    #   language (either XSLT or JSONATA).
    #   @return [Types::Mapping]
    #
    # @!attribute [rw] output_conversion
    #   Returns the `OutputConversion` object, which contains the format
    #   options for the outbound transformation.
    #   @return [Types::OutputConversion]
    #
    # @!attribute [rw] sample_documents
    #   Returns a structure that contains the Amazon S3 bucket and an array
    #   of the corresponding keys used to identify the location for your
    #   sample documents.
    #   @return [Types::SampleDocuments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/TransformerSummary AWS API Documentation
    #
    class TransformerSummary < Struct.new(
      :transformer_id,
      :name,
      :status,
      :created_at,
      :modified_at,
      :file_format,
      :mapping_template,
      :edi_type,
      :sample_document,
      :input_conversion,
      :mapping,
      :output_conversion,
      :sample_documents)
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
    # @!attribute [rw] capability_options
    #   To update, specify the structure that contains the details for the
    #   associated capabilities.
    #   @return [Types::CapabilityOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdatePartnershipRequest AWS API Documentation
    #
    class UpdatePartnershipRequest < Struct.new(
      :partnership_id,
      :name,
      :capabilities,
      :capability_options)
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
    # @!attribute [rw] capability_options
    #   Returns the structure that contains the details for the associated
    #   capabilities.
    #   @return [Types::CapabilityOptions]
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
      :capability_options,
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
    # @!attribute [rw] status
    #   Specifies the transformer's status. You can update the state of the
    #   transformer from `inactive` to `active`.
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   Specifies that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Specifies the mapping template for the transformer. This template is
    #   used to map the parsed EDI file using JSONata or XSLT.
    #
    #   <note markdown="1"> This parameter is available for backwards compatibility. Use the
    #   [Mapping][1] data type instead.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html
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
    # @!attribute [rw] input_conversion
    #   To update, specify the `InputConversion` object, which contains the
    #   format options for the inbound transformation.
    #   @return [Types::InputConversion]
    #
    # @!attribute [rw] mapping
    #   Specify the structure that contains the mapping template and its
    #   language (either XSLT or JSONATA).
    #   @return [Types::Mapping]
    #
    # @!attribute [rw] output_conversion
    #   To update, specify the `OutputConversion` object, which contains the
    #   format options for the outbound transformation.
    #   @return [Types::OutputConversion]
    #
    # @!attribute [rw] sample_documents
    #   Specify a structure that contains the Amazon S3 bucket and an array
    #   of the corresponding keys used to identify the location for your
    #   sample documents.
    #   @return [Types::SampleDocuments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateTransformerRequest AWS API Documentation
    #
    class UpdateTransformerRequest < Struct.new(
      :transformer_id,
      :name,
      :status,
      :file_format,
      :mapping_template,
      :edi_type,
      :sample_document,
      :input_conversion,
      :mapping,
      :output_conversion,
      :sample_documents)
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
    # @!attribute [rw] status
    #   Returns the state of the newly created transformer. The transformer
    #   can be either `active` or `inactive`. For the transformer to be used
    #   in a capability, its status must `active`.
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
    # @!attribute [rw] file_format
    #   Returns that the currently supported file formats for EDI
    #   transformations are `JSON` and `XML`.
    #   @return [String]
    #
    # @!attribute [rw] mapping_template
    #   Returns the mapping template for the transformer. This template is
    #   used to map the parsed EDI file using JSONata or XSLT.
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
    # @!attribute [rw] input_conversion
    #   Returns the `InputConversion` object, which contains the format
    #   options for the inbound transformation.
    #   @return [Types::InputConversion]
    #
    # @!attribute [rw] mapping
    #   Returns the structure that contains the mapping template and its
    #   language (either XSLT or JSONATA).
    #   @return [Types::Mapping]
    #
    # @!attribute [rw] output_conversion
    #   Returns the `OutputConversion` object, which contains the format
    #   options for the outbound transformation.
    #   @return [Types::OutputConversion]
    #
    # @!attribute [rw] sample_documents
    #   Returns a structure that contains the Amazon S3 bucket and an array
    #   of the corresponding keys used to identify the location for your
    #   sample documents.
    #   @return [Types::SampleDocuments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/UpdateTransformerResponse AWS API Documentation
    #
    class UpdateTransformerResponse < Struct.new(
      :transformer_id,
      :transformer_arn,
      :name,
      :status,
      :created_at,
      :modified_at,
      :file_format,
      :mapping_template,
      :edi_type,
      :sample_document,
      :input_conversion,
      :mapping,
      :output_conversion,
      :sample_documents)
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

    # Contains options for wrapping (line folding) in X12 EDI files.
    # Wrapping controls how long lines are handled in the EDI output.
    #
    # @!attribute [rw] wrap_by
    #   Specifies the method used for wrapping lines in the EDI output.
    #   Valid values:
    #
    #   * `SEGMENT`: Wraps by segment.
    #
    #   * `ONE_LINE`: Indicates that the entire content is on a single line.
    #
    #     <note markdown="1"> When you specify `ONE_LINE`, do not provide either the line length
    #     nor the line terminator value.
    #
    #      </note>
    #
    #   * `LINE_LENGTH`: Wraps by character count, as specified by
    #     `lineLength` value.
    #   @return [String]
    #
    # @!attribute [rw] line_terminator
    #   Specifies the character sequence used to terminate lines when
    #   wrapping. Valid values:
    #
    #   * `CRLF`: carriage return and line feed
    #
    #   * `LF`: line feed)
    #
    #   * `CR`: carriage return
    #   @return [String]
    #
    # @!attribute [rw] line_length
    #   Specifies the maximum length of a line before wrapping occurs. This
    #   value is used when `wrapBy` is set to `LINE_LENGTH`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/WrapOptions AWS API Documentation
    #
    class WrapOptions < Struct.new(
      :wrap_by,
      :line_terminator,
      :line_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains options for configuring X12 acknowledgments. These options
    # control how functional and technical acknowledgments are handled.
    #
    # @!attribute [rw] functional_acknowledgment
    #   Specifies whether functional acknowledgments (997/999) should be
    #   generated for incoming X12 transactions. Valid values are
    #   `DO_NOT_GENERATE`, `GENERATE_ALL_SEGMENTS` and
    #   `GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP`.
    #
    #   If you choose `GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP`,
    #   Amazon Web Services B2B Data Interchange skips the AK2\_Loop when
    #   generating an acknowledgment document.
    #   @return [String]
    #
    # @!attribute [rw] technical_acknowledgment
    #   Specifies whether technical acknowledgments (TA1) should be
    #   generated for incoming X12 interchanges. Valid values are
    #   `DO_NOT_GENERATE` and `GENERATE_ALL_SEGMENTS` and.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12AcknowledgmentOptions AWS API Documentation
    #
    class X12AcknowledgmentOptions < Struct.new(
      :functional_acknowledgment,
      :technical_acknowledgment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains advanced options specific to X12 EDI processing, such as
    # splitting large X12 files into smaller units.
    #
    # @!attribute [rw] split_options
    #   Specifies options for splitting X12 EDI files. These options control
    #   how large X12 files are divided into smaller, more manageable units.
    #   @return [Types::X12SplitOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12AdvancedOptions AWS API Documentation
    #
    class X12AdvancedOptions < Struct.new(
      :split_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration for X12 control numbers used in X12 EDI
    # generation. Control numbers are used to uniquely identify
    # interchanges, functional groups, and transaction sets.
    #
    # @!attribute [rw] starting_interchange_control_number
    #   Specifies the starting interchange control number (ISA13) to use for
    #   X12 EDI generation. This number is incremented for each new
    #   interchange. For the ISA (interchange) envelope, Amazon Web Services
    #   B2B Data Interchange generates an interchange control number that is
    #   unique for the ISA05 and ISA06 (sender) &amp; ISA07 and ISA08
    #   (receiver) combination.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_functional_group_control_number
    #   Specifies the starting functional group control number (GS06) to use
    #   for X12 EDI generation. This number is incremented for each new
    #   functional group. For the GS (functional group) envelope, Amazon Web
    #   Services B2B Data Interchange generates a functional group control
    #   number that is unique to the sender ID, receiver ID, and functional
    #   identifier code combination.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_transaction_set_control_number
    #   Specifies the starting transaction set control number (ST02) to use
    #   for X12 EDI generation. This number is incremented for each new
    #   transaction set.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12ControlNumbers AWS API Documentation
    #
    class X12ControlNumbers < Struct.new(
      :starting_interchange_control_number,
      :starting_functional_group_control_number,
      :starting_transaction_set_control_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # In X12 EDI messages, delimiters are used to mark the end of segments
    # or elements, and are defined in the interchange control header. The
    # delimiters are part of the message's syntax and divide up its
    # different elements.
    #
    # @!attribute [rw] component_separator
    #   The component, or sub-element, separator. The default value is `:`
    #   (colon).
    #   @return [String]
    #
    # @!attribute [rw] data_element_separator
    #   The data element separator. The default value is `*` (asterisk).
    #   @return [String]
    #
    # @!attribute [rw] segment_terminator
    #   The segment terminator. The default value is `~` (tilde).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12Delimiters AWS API Documentation
    #
    class X12Delimiters < Struct.new(
      :component_separator,
      :data_element_separator,
      :segment_terminator)
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

    # A wrapper structure for an X12 definition object.
    #
    # the X12 envelope ensures the integrity of the data and the efficiency
    # of the information exchange. The X12 message structure has
    # hierarchical levels. From highest to the lowest, they are:
    #
    # * Interchange Envelope
    #
    # * Functional Group
    #
    # * Transaction Set
    #
    # @!attribute [rw] common
    #   A container for the X12 outbound EDI headers.
    #   @return [Types::X12OutboundEdiHeaders]
    #
    # @!attribute [rw] wrap_options
    #   Contains options for wrapping (line folding) in X12 EDI files.
    #   Wrapping controls how long lines are handled in the EDI output.
    #   @return [Types::WrapOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12Envelope AWS API Documentation
    #
    class X12Envelope < Struct.new(
      :common,
      :wrap_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Part of the X12 message structure. These are the functional group
    # headers for the X12 EDI object.
    #
    # @!attribute [rw] application_sender_code
    #   A value representing the code used to identify the party
    #   transmitting a message, at position GS-02.
    #   @return [String]
    #
    # @!attribute [rw] application_receiver_code
    #   A value representing the code used to identify the party receiving a
    #   message, at position GS-03.
    #   @return [String]
    #
    # @!attribute [rw] responsible_agency_code
    #   A code that identifies the issuer of the standard, at position
    #   GS-07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12FunctionalGroupHeaders AWS API Documentation
    #
    class X12FunctionalGroupHeaders < Struct.new(
      :application_sender_code,
      :application_receiver_code,
      :responsible_agency_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains options specific to processing inbound X12 EDI files.
    #
    # @!attribute [rw] acknowledgment_options
    #   Specifies acknowledgment options for inbound X12 EDI files. These
    #   options control how functional and technical acknowledgments are
    #   handled.
    #   @return [Types::X12AcknowledgmentOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12InboundEdiOptions AWS API Documentation
    #
    class X12InboundEdiOptions < Struct.new(
      :acknowledgment_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # In X12, the Interchange Control Header is the first segment of an EDI
    # document and is part of the Interchange Envelope. It contains
    # information about the sender and receiver, the date and time of
    # transmission, and the X12 version being used. It also includes
    # delivery information, such as the sender and receiver IDs.
    #
    # @!attribute [rw] sender_id_qualifier
    #   Located at position ISA-05 in the header. Qualifier for the sender
    #   ID. Together, the ID and qualifier uniquely identify the sending
    #   trading partner.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   Located at position ISA-06 in the header. This value (along with the
    #   `senderIdQualifier`) identifies the sender of the interchange.
    #   @return [String]
    #
    # @!attribute [rw] receiver_id_qualifier
    #   Located at position ISA-07 in the header. Qualifier for the receiver
    #   ID. Together, the ID and qualifier uniquely identify the receiving
    #   trading partner.
    #   @return [String]
    #
    # @!attribute [rw] receiver_id
    #   Located at position ISA-08 in the header. This value (along with the
    #   `receiverIdQualifier`) identifies the intended recipient of the
    #   interchange.
    #   @return [String]
    #
    # @!attribute [rw] repetition_separator
    #   Located at position ISA-11 in the header. This string makes it
    #   easier when you need to group similar adjacent element values
    #   together without using extra segments.
    #
    #   <note markdown="1"> This parameter is only honored for version greater than 401
    #   (`VERSION_4010` and higher).
    #
    #    For versions less than 401, this field is called [StandardsId][1],
    #   in which case our service sets the value to `U`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://www.stedi.com/edi/x12-004010/segment/ISA#ISA-11
    #   @return [String]
    #
    # @!attribute [rw] acknowledgment_requested_code
    #   Located at position ISA-14 in the header. The value "1" indicates
    #   that the sender is requesting an interchange acknowledgment at
    #   receipt of the interchange. The value "0" is used otherwise.
    #   @return [String]
    #
    # @!attribute [rw] usage_indicator_code
    #   Located at position ISA-15 in the header. Specifies how this
    #   interchange is being used:
    #
    #   * `T` indicates this interchange is for testing.
    #
    #   * `P` indicates this interchange is for production.
    #
    #   * `I` indicates this interchange is informational.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12InterchangeControlHeaders AWS API Documentation
    #
    class X12InterchangeControlHeaders < Struct.new(
      :sender_id_qualifier,
      :sender_id,
      :receiver_id_qualifier,
      :receiver_id,
      :repetition_separator,
      :acknowledgment_requested_code,
      :usage_indicator_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the details for an outbound EDI object.
    #
    # @!attribute [rw] interchange_control_headers
    #   In X12 EDI messages, delimiters are used to mark the end of segments
    #   or elements, and are defined in the interchange control header.
    #   @return [Types::X12InterchangeControlHeaders]
    #
    # @!attribute [rw] functional_group_headers
    #   The functional group headers for the X12 object.
    #   @return [Types::X12FunctionalGroupHeaders]
    #
    # @!attribute [rw] delimiters
    #   The delimiters, for example semicolon (`;`), that separates sections
    #   of the headers for the X12 object.
    #   @return [Types::X12Delimiters]
    #
    # @!attribute [rw] validate_edi
    #   Specifies whether or not to validate the EDI for this X12 object:
    #   `TRUE` or `FALSE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] control_numbers
    #   Specifies control number configuration for outbound X12 EDI headers.
    #   These settings determine the starting values for interchange,
    #   functional group, and transaction set control numbers.
    #   @return [Types::X12ControlNumbers]
    #
    # @!attribute [rw] gs05_time_format
    #   Specifies the time format in the GS05 element (time) of the
    #   functional group header. The following formats use 24-hour clock
    #   time:
    #
    #   * `HHMM` - Hours and minutes
    #
    #   * `HHMMSS` - Hours, minutes, and seconds
    #
    #   * `HHMMSSDD` - Hours, minutes, seconds, and decimal seconds
    #
    #   Where:
    #
    #   * `HH` - Hours (00-23)
    #
    #   * `MM` - Minutes (00-59)
    #
    #   * `SS` - Seconds (00-59)
    #
    #   * `DD` - Hundredths of seconds (00-99)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12OutboundEdiHeaders AWS API Documentation
    #
    class X12OutboundEdiHeaders < Struct.new(
      :interchange_control_headers,
      :functional_group_headers,
      :delimiters,
      :validate_edi,
      :control_numbers,
      :gs05_time_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains options for splitting X12 EDI files into smaller units. This
    # is useful for processing large EDI files more efficiently.
    #
    # @!attribute [rw] split_by
    #   Specifies the method used to split X12 EDI files. Valid values
    #   include `TRANSACTION` (split by individual transaction sets), or
    #   `NONE` (no splitting).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/b2bi-2022-06-23/X12SplitOptions AWS API Documentation
    #
    class X12SplitOptions < Struct.new(
      :split_by)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

