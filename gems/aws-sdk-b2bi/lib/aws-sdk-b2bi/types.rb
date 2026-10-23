# frozen_string_literal: true

# This is generated code!

module Aws::B2bi
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

    # <p>A structure that contains advanced options for EDI processing. Currently, only X12 advanced options are supported.</p>
    # @!attribute x12
    #   <p>A structure that contains X12-specific advanced options, such as split options for processing X12 EDI files.</p>
    #   @return [Types::X12AdvancedOptions]
    class AdvancedOptions < Struct.new(
      nil,
      :x12,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A capability object. Currently, only EDI (electronic data interchange) capabilities are supported. A trading capability contains the information required to transform incoming EDI documents into JSON or XML outputs.</p>
    # @!attribute edi
    #   <p>An EDI (electronic data interchange) configuration object.</p>
    #   @return [Types::EdiConfiguration]
    class CapabilityConfiguration < Struct.new(
      :edi,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Edi < CapabilityConfiguration; end
      class Unknown < CapabilityConfiguration; end
    end

    # <p>Contains the details for an Outbound EDI capability.</p>
    # @!attribute outbound_edi
    #   <p>A structure that contains the outbound EDI options.</p>
    #   @return [Types::OutboundEdiOptions]
    # @!attribute inbound_edi
    #   <p>A structure that contains the inbound EDI options for the capability.</p>
    #   @return [Types::InboundEdiOptions]
    class CapabilityOptions < Struct.new(
      nil,
      :outbound_edi,
      :inbound_edi,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the capability summary details. A trading capability contains the information required to transform incoming EDI documents into JSON or XML outputs.</p>
    # @!attribute capability_id
    #   <p>Returns a system-assigned unique identifier for the capability.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name of the capability.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Returns the type of the capability. Currently, only <code>edi</code> is supported.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the capability.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp that identifies the most recent date and time that the capability was modified.</p>
    #   @return [Time]
    class CapabilitySummary < Struct.new(
      nil,
      :capability_id,
      :name,
      :type,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A conflict exception is thrown when you attempt to delete a resource (such as a profile or a capability) that is being used by other resources.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the input for an outbound transformation. </p>
    # @!attribute file_format
    #   <p>The format for the input file: either JSON or XML.</p>
    #   @return [String]
    # @!attribute input_file
    #   File to be converted
    #   @return [Types::InputFileSource]
    class ConversionSource < Struct.new(
      nil,
      :file_format,
      :input_file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provide a sample of what the output of the transformation should look like.</p>
    # @!attribute file_format
    #   <p>Currently, only X12 format is supported.</p>
    #   @return [String]
    # @!attribute format_details
    #   <p>A structure that contains the formatting details for the conversion target.</p>
    #   @return [Types::ConversionTargetFormatDetails]
    # @!attribute output_sample_file
    #   Customer uses this to provide a sample on what should file look like after conversion
    #   X12 EDI use case around this would be discovering the file syntax
    #   @return [Types::OutputSampleFileSource]
    # @!attribute advanced_options
    #   <p>A structure that contains advanced options for EDI processing. Currently, only X12 advanced options are supported.</p>
    #   @return [Types::AdvancedOptions]
    class ConversionTarget < Struct.new(
      nil,
      :file_format,
      :format_details,
      :output_sample_file,
      :advanced_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a structure describing the X12 details for the conversion target.</p>
    # @!attribute x12
    #   <p>A structure that contains the X12 transaction set and version. The X12 structure is used when the system transforms an EDI (electronic data interchange) file.</p> <note> <p>If an EDI input file contains more than one transaction, each transaction must have the same transaction set and version, for example 214/4010. If not, the transformer cannot parse the file.</p> </note>
    #   @return [Types::X12Details]
    class ConversionTargetFormatDetails < Struct.new(
      :x12,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class X12 < ConversionTargetFormatDetails; end
      class Unknown < ConversionTargetFormatDetails; end
    end

    # @!attribute name
    #   <p>Specifies the name of the capability, used to identify it.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the type of the capability. Currently, only <code>edi</code> is supported.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Specifies a structure that contains the details for a capability.</p>
    #   @return [Types::CapabilityConfiguration]
    # @!attribute instructions_documents
    #   <p>Specifies one or more locations in Amazon S3, each specifying an EDI document that can be used with this capability. Each item contains the name of the bucket and the key, to identify the document's location.</p>
    #   @return [Array<Types::S3Location>]
    # @!attribute client_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    #   @return [Array<Types::Tag>]
    class CreateCapabilityRequest < Struct.new(
      nil,
      :name,
      :type,
      :configuration,
      :instructions_documents,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capability_id
    #   <p>Returns a system-assigned unique identifier for the capability.</p>
    #   @return [String]
    # @!attribute capability_arn
    #   <p>Returns an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the name of the capability used to identify it.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Returns the type of the capability. Currently, only <code>edi</code> is supported.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Returns a structure that contains the details for a capability.</p>
    #   @return [Types::CapabilityConfiguration]
    # @!attribute instructions_documents
    #   <p>Returns one or more locations in Amazon S3, each specifying an EDI document that can be used with this capability. Each item contains the name of the bucket and the key, to identify the document's location.</p>
    #   @return [Array<Types::S3Location>]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the capability.</p>
    #   @return [Time]
    class CreateCapabilityResponse < Struct.new(
      nil,
      :capability_id,
      :capability_arn,
      :name,
      :type,
      :configuration,
      :instructions_documents,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Specifies the unique, system-generated identifier for the profile connected to this partnership.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Specifies a descriptive name for the partnership.</p>
    #   @return [String]
    # @!attribute email
    #   <p>Specifies the email address associated with this trading partner.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>Specifies the phone number associated with the partnership.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>Specifies a list of the capabilities associated with this partnership.</p>
    #   @return [Array<String>]
    # @!attribute capability_options
    #   <p>Specify the structure that contains the details for the associated capabilities.</p>
    #   @return [Types::CapabilityOptions]
    # @!attribute client_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    #   @return [Array<Types::Tag>]
    class CreatePartnershipRequest < Struct.new(
      nil,
      :profile_id,
      :name,
      :email,
      :phone,
      :capabilities,
      :capability_options,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Returns the unique, system-generated identifier for the profile connected to this partnership.</p>
    #   @return [String]
    # @!attribute partnership_id
    #   <p>Returns the unique, system-generated identifier for a partnership.</p>
    #   @return [String]
    # @!attribute partnership_arn
    #   <p>Returns an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns a descriptive name for the partnership.</p>
    #   @return [String]
    # @!attribute email
    #   <p>Returns the email address associated with this trading partner.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>Returns the phone number associated with the partnership.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>Returns one or more capabilities associated with this partnership.</p>
    #   @return [Array<String>]
    # @!attribute capability_options
    #   <p>Returns the structure that contains the details for the associated capabilities.</p>
    #   @return [Types::CapabilityOptions]
    # @!attribute trading_partner_id
    #   <p>Returns the unique, system-generated identifier for a trading partner.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the partnership.</p>
    #   @return [Time]
    class CreatePartnershipResponse < Struct.new(
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Specifies the name of the profile.</p>
    #   @return [String]
    # @!attribute email
    #   <p>Specifies the email address associated with this customer profile.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>Specifies the phone number associated with the profile.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>Specifies the name for the business associated with this profile.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>Specifies whether or not logging is enabled for this profile.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    #   @return [Array<Types::Tag>]
    class CreateProfileRequest < Struct.new(
      nil,
      :name,
      :email,
      :phone,
      :business_name,
      :logging,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Returns the unique, system-generated identifier for the profile.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>Returns an Amazon Resource Name (ARN) for the profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the name of the profile, used to identify it.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>Returns the name for the business associated with this profile.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>Returns the phone number associated with the profile.</p>
    #   @return [String]
    # @!attribute email
    #   <p>Returns the email address associated with this customer profile.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>Returns whether or not logging is turned on for this profile.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>Returns the name of the logging group.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp representing the time the profile was created.</p>
    #   @return [Time]
    class CreateProfileResponse < Struct.new(
      nil,
      :profile_id,
      :profile_arn,
      :name,
      :business_name,
      :phone,
      :email,
      :logging,
      :log_group_name,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute output_sample_location
    #   <p>Specify the location of the sample EDI file that is used to generate the mapping template.</p>
    #   @return [Types::S3Location]
    # @!attribute mapping_type
    #   <p>Specify the format for the mapping template: either JSONATA or XSLT.</p>
    #   @return [String]
    # @!attribute template_details
    #   <p> Describes the details needed for generating the template. Specify the X12 transaction set and version for which the template is used: currently, we only support X12. </p>
    #   @return [Types::TemplateDetails]
    class CreateStarterMappingTemplateRequest < Struct.new(
      nil,
      :output_sample_location,
      :mapping_type,
      :template_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mapping_template
    #   <p>Returns a string that represents the mapping template.</p>
    #   @return [String]
    class CreateStarterMappingTemplateResponse < Struct.new(
      nil,
      :mapping_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Specifies the name of the transformer, used to identify it.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute file_format
    #   <p>Specifies that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute mapping_template
    #   <p>Specifies the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p> <note> <p>This parameter is available for backwards compatibility. Use the <a href="https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html">Mapping</a> data type instead.</p> </note>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute edi_type
    #   <p>Specifies the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [Types::EdiType]
    # @!attribute sample_document
    #   <p>Specifies a sample EDI document that is used by a transformer as a guide for processing the EDI data.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute input_conversion
    #   <p>Specify the <code>InputConversion</code> object, which contains the format options for the inbound transformation.</p>
    #   @return [Types::InputConversion]
    # @!attribute mapping
    #   <p>Specify the structure that contains the mapping template and its language (either XSLT or JSONATA).</p>
    #   @return [Types::Mapping]
    # @!attribute output_conversion
    #   <p>A structure that contains the <code>OutputConversion</code> object, which contains the format options for the outbound transformation.</p>
    #   @return [Types::OutputConversion]
    # @!attribute sample_documents
    #   <p>Specify a structure that contains the Amazon S3 bucket and an array of the corresponding keys used to identify the location for your sample documents.</p>
    #   @return [Types::SampleDocuments]
    class CreateTransformerRequest < Struct.new(
      nil,
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
      :sample_documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transformer_id
    #   <p>Returns the system-assigned unique identifier for the transformer.</p>
    #   @return [String]
    # @!attribute transformer_arn
    #   <p>Returns an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the name of the transformer, used to identify it.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Returns the state of the newly created transformer. The transformer can be either <code>active</code> or <code>inactive</code>. For the transformer to be used in a capability, its status must <code>active</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the transformer.</p>
    #   @return [Time]
    # @!attribute file_format
    #   <p>Returns that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute mapping_template
    #   <p>Returns the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute edi_type
    #   <p>Returns the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [Types::EdiType]
    # @!attribute sample_document
    #   <p>Returns a sample EDI document that is used by a transformer as a guide for processing the EDI data.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute input_conversion
    #   <p>Returns the <code>InputConversion</code> object, which contains the format options for the inbound transformation.</p>
    #   @return [Types::InputConversion]
    # @!attribute mapping
    #   <p>Returns the structure that contains the mapping template and its language (either XSLT or JSONATA).</p>
    #   @return [Types::Mapping]
    # @!attribute output_conversion
    #   <p>Returns the <code>OutputConversion</code> object, which contains the format options for the outbound transformation.</p>
    #   @return [Types::OutputConversion]
    # @!attribute sample_documents
    #   <p>Returns a structure that contains the Amazon S3 bucket and an array of the corresponding keys used to identify the location for your sample documents.</p>
    #   @return [Types::SampleDocuments]
    class CreateTransformerResponse < Struct.new(
      nil,
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
      :sample_documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:file_format] = 'NOT_USED' unless options.key?(:file_format)
        options[:mapping_template] = 'NOT_USED' unless options.key?(:mapping_template)
        super
      end
    end

    # @!attribute capability_id
    #   <p>Specifies a system-assigned unique identifier for the capability.</p>
    #   @return [String]
    class DeleteCapabilityRequest < Struct.new(
      nil,
      :capability_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partnership_id
    #   <p>Specifies the unique, system-generated identifier for a partnership.</p>
    #   @return [String]
    class DeletePartnershipRequest < Struct.new(
      nil,
      :partnership_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Specifies the unique, system-generated identifier for the profile.</p>
    #   @return [String]
    class DeleteProfileRequest < Struct.new(
      nil,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transformer_id
    #   <p>Specifies the system-assigned unique identifier for the transformer.</p>
    #   @return [String]
    class DeleteTransformerRequest < Struct.new(
      nil,
      :transformer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the details for the EDI (electronic data interchange) transformation.</p>
    # @!attribute capability_direction
    #   <p>Specifies whether this is capability is for inbound or outbound transformations.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Returns the type of the capability. Currently, only <code>edi</code> is supported.</p>
    #   @return [Types::EdiType]
    # @!attribute input_location
    #   <p>Contains the Amazon S3 bucket and prefix for the location of the input file, which is contained in an <code>S3Location</code> object.</p>
    #   @return [Types::S3Location]
    # @!attribute output_location
    #   <p>Contains the Amazon S3 bucket and prefix for the location of the output file, which is contained in an <code>S3Location</code> object.</p>
    #   @return [Types::S3Location]
    # @!attribute transformer_id
    #   <p>Returns the system-assigned unique identifier for the transformer.</p>
    #   @return [String]
    class EdiConfiguration < Struct.new(
      nil,
      :capability_direction,
      :type,
      :input_location,
      :output_location,
      :transformer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    # @!attribute x12_details
    #   <p>Returns the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    #   @return [Types::X12Details]
    class EdiType < Struct.new(
      :x12_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class X12Details < EdiType; end
      class Unknown < EdiType; end
    end

    # <p>A structure that contains the X12 transaction set and version.</p>
    # @!attribute x12
    #   <p>A structure that contains the X12 transaction set and version. The X12 structure is used when the system transforms an EDI (electronic data interchange) file.</p> <note> <p>If an EDI input file contains more than one transaction, each transaction must have the same transaction set and version, for example 214/4010. If not, the transformer cannot parse the file.</p> </note>
    #   @return [Types::X12Details]
    class FormatOptions < Struct.new(
      :x12,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class X12 < FormatOptions; end
      class Unknown < FormatOptions; end
    end

    # @!attribute input_file_content
    #   <p>Provide the contents of a sample X12 EDI file, either in JSON or XML format, to use as a starting point for the mapping.</p>
    #   @return [String]
    # @!attribute output_file_content
    #   <p>Provide the contents of a sample X12 EDI file, either in JSON or XML format, to use as a target for the mapping.</p>
    #   @return [String]
    # @!attribute mapping_type
    #   <p>Specify the mapping type: either <code>JSONATA</code> or <code>XSLT.</code> </p>
    #   @return [String]
    class GenerateMappingRequest < Struct.new(
      nil,
      :input_file_content,
      :output_file_content,
      :mapping_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mapping_template
    #   <p>Returns a mapping template based on your inputs.</p>
    #   @return [String]
    # @!attribute mapping_accuracy
    #   <p>Returns a percentage that estimates the accuracy of the generated mapping.</p>
    #   @return [Float]
    class GenerateMappingResponse < Struct.new(
      nil,
      :mapping_template,
      :mapping_accuracy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capability_id
    #   <p>Specifies a system-assigned unique identifier for the capability.</p>
    #   @return [String]
    class GetCapabilityRequest < Struct.new(
      nil,
      :capability_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capability_id
    #   <p>Returns a system-assigned unique identifier for the capability.</p>
    #   @return [String]
    # @!attribute capability_arn
    #   <p>Returns an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the name of the capability, used to identify it.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Returns the type of the capability. Currently, only <code>edi</code> is supported.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Returns a structure that contains the details for a capability.</p>
    #   @return [Types::CapabilityConfiguration]
    # @!attribute instructions_documents
    #   <p>Returns one or more locations in Amazon S3, each specifying an EDI document that can be used with this capability. Each item contains the name of the bucket and the key, to identify the document's location.</p>
    #   @return [Array<Types::S3Location>]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the capability.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp for last time the capability was modified.</p>
    #   @return [Time]
    class GetCapabilityResponse < Struct.new(
      nil,
      :capability_id,
      :capability_arn,
      :name,
      :type,
      :configuration,
      :instructions_documents,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partnership_id
    #   <p>Specifies the unique, system-generated identifier for a partnership.</p>
    #   @return [String]
    class GetPartnershipRequest < Struct.new(
      nil,
      :partnership_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Returns the unique, system-generated identifier for the profile connected to this partnership.</p>
    #   @return [String]
    # @!attribute partnership_id
    #   <p>Returns the unique, system-generated identifier for a partnership.</p>
    #   @return [String]
    # @!attribute partnership_arn
    #   <p>Returns an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the display name of the partnership</p>
    #   @return [String]
    # @!attribute email
    #   <p>Returns the email address associated with this trading partner.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>Returns the phone number associated with the partnership.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>Returns one or more capabilities associated with this partnership.</p>
    #   @return [Array<String>]
    # @!attribute capability_options
    #   <p>Contains the details for an Outbound EDI capability.</p>
    #   @return [Types::CapabilityOptions]
    # @!attribute trading_partner_id
    #   <p>Returns the unique identifier for the partner for this partnership.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the partnership.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp that identifies the most recent date and time that the partnership was modified.</p>
    #   @return [Time]
    class GetPartnershipResponse < Struct.new(
      nil,
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
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Specifies the unique, system-generated identifier for the profile.</p>
    #   @return [String]
    class GetProfileRequest < Struct.new(
      nil,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Returns the unique, system-generated identifier for the profile.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>Returns an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the name of the profile, used to identify it.</p>
    #   @return [String]
    # @!attribute email
    #   <p>Returns the email address associated with this customer profile.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>Returns the phone number associated with the profile.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>Returns the name for the business associated with this profile.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>Returns whether or not logging is enabled for this profile.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>Returns the name of the logging group.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the transformer.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp for last time the profile was modified.</p>
    #   @return [Time]
    class GetProfileResponse < Struct.new(
      nil,
      :profile_id,
      :profile_arn,
      :name,
      :email,
      :phone,
      :business_name,
      :logging,
      :log_group_name,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transformer_job_id
    #   <p>Specifies the unique, system-generated identifier for a transformer run.</p>
    #   @return [String]
    # @!attribute transformer_id
    #   <p>Specifies the system-assigned unique identifier for the transformer.</p>
    #   @return [String]
    class GetTransformerJobRequest < Struct.new(
      nil,
      :transformer_job_id,
      :transformer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Returns the current state of the transformer job, either <code>running</code>, <code>succeeded</code>, or <code>failed</code>.</p>
    #   @return [String]
    # @!attribute output_files
    #   <p>Returns the location for the output files. If the caller specified a directory for the output, then this contains the full path to the output file, including the file name generated by the service.</p>
    #   @return [Array<Types::S3Location>]
    # @!attribute message
    #   <p>Returns an optional error message, which gets populated when the job is not run successfully.</p>
    #   @return [String]
    class GetTransformerJobResponse < Struct.new(
      nil,
      :status,
      :output_files,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transformer_id
    #   <p>Specifies the system-assigned unique identifier for the transformer.</p>
    #   @return [String]
    class GetTransformerRequest < Struct.new(
      nil,
      :transformer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transformer_id
    #   <p>Returns the system-assigned unique identifier for the transformer.</p>
    #   @return [String]
    # @!attribute transformer_arn
    #   <p>Returns an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the name of the transformer, used to identify it.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Returns the state of the newly created transformer. The transformer can be either <code>active</code> or <code>inactive</code>. For the transformer to be used in a capability, its status must <code>active</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the transformer.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp for last time the transformer was modified.</p>
    #   @return [Time]
    # @!attribute file_format
    #   <p>Returns that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute mapping_template
    #   <p>Returns the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute edi_type
    #   <p>Returns the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [Types::EdiType]
    # @!attribute sample_document
    #   <p>Returns a sample EDI document that is used by a transformer as a guide for processing the EDI data.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute input_conversion
    #   <p>Returns the <code>InputConversion</code> object, which contains the format options for the inbound transformation.</p>
    #   @return [Types::InputConversion]
    # @!attribute mapping
    #   <p>Returns the structure that contains the mapping template and its language (either XSLT or JSONATA).</p>
    #   @return [Types::Mapping]
    # @!attribute output_conversion
    #   <p>Returns the <code>OutputConversion</code> object, which contains the format options for the outbound transformation.</p>
    #   @return [Types::OutputConversion]
    # @!attribute sample_documents
    #   <p>Returns a structure that contains the Amazon S3 bucket and an array of the corresponding keys used to identify the location for your sample documents.</p>
    #   @return [Types::SampleDocuments]
    class GetTransformerResponse < Struct.new(
      nil,
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
      :sample_documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:file_format] = 'NOT_USED' unless options.key?(:file_format)
        options[:mapping_template] = 'NOT_USED' unless options.key?(:mapping_template)
        super
      end
    end

    # <p>Contains options for processing inbound EDI files. These options allow for customizing how incoming EDI documents are processed.</p>
    # @!attribute x12
    #   <p>A structure that contains X12-specific options for processing inbound X12 EDI files.</p>
    #   @return [Types::X12InboundEdiOptions]
    class InboundEdiOptions < Struct.new(
      nil,
      :x12,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the input formatting options for an inbound transformer (takes an X12-formatted EDI document as input and converts it to JSON or XML.</p>
    # @!attribute from_format
    #   <p>The format for the transformer input: currently on <code>X12</code> is supported.</p>
    #   @return [String]
    # @!attribute format_options
    #   <p>A structure that contains the formatting options for an inbound transformer.</p>
    #   @return [Types::FormatOptions]
    # @!attribute advanced_options
    #   <p>Specifies advanced options for the input conversion process. These options provide additional control over how EDI files are processed during transformation.</p>
    #   @return [Types::AdvancedOptions]
    class InputConversion < Struct.new(
      nil,
      :from_format,
      :format_options,
      :advanced_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input file to use for an outbound transformation.</p>
    # @!attribute file_content
    #   <p>Specify the input contents, as a string, for the source of an outbound transformation.</p>
    #   @return [String]
    class InputFileSource < Struct.new(
      :file_content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FileContent < InputFileSource; end
      class Unknown < InputFileSource; end
    end

    # <p>This exception is thrown when an error occurs in the Amazon Web Services B2B Data Interchange service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The server attempts to retry a failed command.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of capabilities to return.</p>
    #   @return [Integer]
    class ListCapabilitiesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capabilities
    #   <p>Returns one or more capabilities associated with this partnership.</p>
    #   @return [Array<Types::CapabilitySummary>]
    # @!attribute next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    #   @return [String]
    class ListCapabilitiesResponse < Struct.new(
      nil,
      :capabilities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Specifies the unique, system-generated identifier for the profile connected to this partnership.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of capabilities to return.</p>
    #   @return [Integer]
    class ListPartnershipsRequest < Struct.new(
      nil,
      :profile_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partnerships
    #   <p>Specifies a list of your partnerships.</p>
    #   @return [Array<Types::PartnershipSummary>]
    # @!attribute next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    #   @return [String]
    class ListPartnershipsResponse < Struct.new(
      nil,
      :partnerships,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of profiles to return.</p>
    #   @return [Integer]
    class ListProfilesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profiles
    #   <p>Returns an array of <code>ProfileSummary</code> objects.</p>
    #   @return [Array<Types::ProfileSummary>]
    # @!attribute next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    #   @return [String]
    class ListProfilesResponse < Struct.new(
      nil,
      :profiles,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Requests the tags associated with a particular Amazon Resource Name (ARN). An ARN is an identifier for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Returns the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the number of items to return for the API response.</p>
    #   @return [Integer]
    class ListTransformersRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transformers
    #   <p>Returns an array of one or more transformer objects.</p> <p>For each transformer, a <code>TransformerSummary</code> object is returned. The <code>TransformerSummary</code> contains all the details for a specific transformer.</p>
    #   @return [Array<Types::TransformerSummary>]
    # @!attribute next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    #   @return [String]
    class ListTransformersResponse < Struct.new(
      nil,
      :transformers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p>
    # @!attribute template_language
    #   <p>The transformation language for the template, either XSLT or JSONATA.</p>
    #   @return [String]
    # @!attribute template
    #   <p>A string that represents the mapping template, in the transformation language specified in <code>templateLanguage</code>.</p>
    #   @return [String]
    class Mapping < Struct.new(
      nil,
      :template_language,
      :template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for outbound EDI options.</p>
    # @!attribute x12
    #   <p>A structure that contains an X12 envelope structure.</p>
    #   @return [Types::X12Envelope]
    class OutboundEdiOptions < Struct.new(
      :x12,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class X12 < OutboundEdiOptions; end
      class Unknown < OutboundEdiOptions; end
    end

    # <p>Contains the formatting options for an outbound transformer (takes JSON or XML as input and converts it to an EDI document (currently only X12 format is supported).</p>
    # @!attribute to_format
    #   <p>The format for the output from an outbound transformer: only X12 is currently supported.</p>
    #   @return [String]
    # @!attribute format_options
    #   <p>A structure that contains the X12 transaction set and version for the transformer output.</p>
    #   @return [Types::FormatOptions]
    # @!attribute advanced_options
    #   <p>A structure that contains advanced options for EDI processing. Currently, only X12 advanced options are supported.</p>
    #   @return [Types::AdvancedOptions]
    class OutputConversion < Struct.new(
      nil,
      :to_format,
      :format_options,
      :advanced_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the location of a sample file used for outbound transformations.</p>
    # @!attribute file_location
    #   <p>Specifies the details for the Amazon S3 file location that is being used with Amazon Web Services B2B Data Interchange. File locations in Amazon S3 are identified using a combination of the bucket and key.</p>
    #   @return [Types::S3Location]
    class OutputSampleFileSource < Struct.new(
      :file_location,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FileLocation < OutputSampleFileSource; end
      class Unknown < OutputSampleFileSource; end
    end

    # <p>A structure that contains the details for a partnership. A partnership represents the connection between you and your trading partner. It ties together a profile and one or more trading capabilities.</p>
    # @!attribute profile_id
    #   <p>Returns the unique, system-generated identifier for the profile connected to this partnership.</p>
    #   @return [String]
    # @!attribute partnership_id
    #   <p>Returns the unique, system-generated identifier for a partnership.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the name of the partnership.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>Returns one or more capabilities associated with this partnership.</p>
    #   @return [Array<String>]
    # @!attribute capability_options
    #   <p>Contains the details for an Outbound EDI capability.</p>
    #   @return [Types::CapabilityOptions]
    # @!attribute trading_partner_id
    #   <p>Returns the unique, system-generated identifier for a trading partner.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the partnership.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp that identifies the most recent date and time that the partnership was modified.</p>
    #   @return [Time]
    class PartnershipSummary < Struct.new(
      nil,
      :profile_id,
      :partnership_id,
      :name,
      :capabilities,
      :capability_options,
      :trading_partner_id,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details for a profile. A profile is the mechanism used to create the concept of a private network.</p>
    # @!attribute profile_id
    #   <p>Returns the unique, system-generated identifier for the profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the display name for profile.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>Returns the name for the business associated with this profile.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>Specifies whether or not logging is enabled for this profile.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>Returns the name of the logging group.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns the timestamp for creation date and time of the profile.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns the timestamp that identifies the most recent date and time that the profile was modified.</p>
    #   @return [Time]
    class ProfileSummary < Struct.new(
      nil,
      :profile_id,
      :name,
      :business_name,
      :logging,
      :log_group_name,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Occurs when the requested resource does not exist, or cannot be found. In some cases, the resource exists in a region other than the region specified in the API call.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the details for the Amazon S3 file location that is being used with Amazon Web Services B2B Data Interchange. File locations in Amazon S3 are identified using a combination of the bucket and key.</p>
    # @!attribute bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Specifies the Amazon S3 key for the file location.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket_name,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An array of the Amazon S3 keys used to identify the location for your sample documents.</p>
    # @!attribute input
    #   <p>An array of keys for your input sample documents.</p>
    #   @return [String]
    # @!attribute output
    #   <p>An array of keys for your output sample documents.</p>
    #   @return [String]
    class SampleDocumentKeys < Struct.new(
      nil,
      :input,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a structure that contains the Amazon S3 bucket and an array of the corresponding keys used to identify the location for your sample documents.</p>
    # @!attribute bucket_name
    #   <p>Contains the Amazon S3 bucket that is used to hold your sample documents.</p>
    #   @return [String]
    # @!attribute keys
    #   <p>Contains an array of the Amazon S3 keys used to identify the location for your sample documents.</p>
    #   @return [Array<Types::SampleDocumentKeys>]
    class SampleDocuments < Struct.new(
      nil,
      :bucket_name,
      :keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Occurs when the calling command attempts to exceed one of the service quotas, for example trying to create a capability when you already have the maximum number of capabilities allowed.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID for the resource that exceeded the quota, which caused the exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type (profile, partnership, transformer, or capability) that exceeded the quota, which caused the exception.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code responsible for exceeding the quota, which caused the exception.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota that was exceeded, which caused the exception.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_file
    #   <p>Specifies the location of the input file for the transformation. The location consists of an Amazon S3 bucket and prefix.</p>
    #   @return [Types::S3Location]
    # @!attribute output_location
    #   <p>Specifies the location of the output file for the transformation. The location consists of an Amazon S3 bucket and prefix.</p>
    #   @return [Types::S3Location]
    # @!attribute transformer_id
    #   <p>Specifies the system-assigned unique identifier for the transformer.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    class StartTransformerJobRequest < Struct.new(
      nil,
      :input_file,
      :output_location,
      :transformer_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transformer_job_id
    #   <p>Returns the unique, system-generated identifier for a transformer run.</p>
    #   @return [String]
    class StartTransformerJobResponse < Struct.new(
      nil,
      :transformer_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a key-value pair for a specific resource. Tags are metadata that you can use to search for and group a resource for various purposes. You can apply tags to capabilities, partnerships, profiles and transformers. A tag key can take more than one value. For example, to group capabilities for accounting purposes, you might create a tag called <code>Group</code> and assign the values <code>Research</code> and <code>Accounting</code> to that group.</p>
    # @!attribute key
    #   <p>Specifies the name assigned to the tag that you create.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Contains one or more values that you assigned to the key name that you create.</p>
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
    #   <p>Specifies an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A data structure that contains the information to use when generating a mapping template.</p>
    # @!attribute x12
    #   <p>A structure that contains the X12 transaction set and version. The X12 structure is used when the system transforms an EDI (electronic data interchange) file.</p> <note> <p>If an EDI input file contains more than one transaction, each transaction must have the same transaction set and version, for example 214/4010. If not, the transformer cannot parse the file.</p> </note>
    #   @return [Types::X12Details]
    class TemplateDetails < Struct.new(
      :x12,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class X12 < TemplateDetails; end
      class Unknown < TemplateDetails; end
    end

    # @!attribute source
    #   <p>Specify the source file for an outbound EDI request.</p>
    #   @return [Types::ConversionSource]
    # @!attribute target
    #   <p>Specify the format (X12 is the only currently supported format), and other details for the conversion target.</p>
    #   @return [Types::ConversionTarget]
    class TestConversionRequest < Struct.new(
      nil,
      :source,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute converted_file_content
    #   <p>Returns the converted file content.</p>
    #   @return [String]
    # @!attribute validation_messages
    #   <p>Returns an array of validation messages that Amazon Web Services B2B Data Interchange generates during the conversion process. These messages include both standard EDI validation results and custom validation messages when custom validation rules are configured. Custom validation messages provide detailed feedback on element length constraints, code list validations, and element requirement checks applied during the outbound EDI generation process.</p>
    #   @return [Array<String>]
    class TestConversionResponse < Struct.new(
      nil,
      :converted_file_content,
      :validation_messages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_file_content
    #   <p>Specify the contents of the EDI (electronic data interchange) XML or JSON file that is used as input for the transform.</p>
    #   @return [String]
    # @!attribute mapping_template
    #   <p>Specifies the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p> <note> <p>This parameter is available for backwards compatibility. Use the <a href="https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html">Mapping</a> data type instead.</p> </note>
    #   @return [String]
    # @!attribute file_format
    #   <p>Specifies that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    #   @return [String]
    class TestMappingRequest < Struct.new(
      nil,
      :input_file_content,
      :mapping_template,
      :file_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mapped_file_content
    #   <p>Returns a string for the mapping that can be used to identify the mapping. Similar to a fingerprint</p>
    #   @return [String]
    class TestMappingResponse < Struct.new(
      nil,
      :mapped_file_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_file
    #   <p>Specifies an <code>S3Location</code> object, which contains the Amazon S3 bucket and prefix for the location of the input file.</p>
    #   @return [Types::S3Location]
    # @!attribute file_format
    #   <p>Specifies that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    #   @return [String]
    # @!attribute edi_type
    #   <p>Specifies the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    #   @return [Types::EdiType]
    # @!attribute advanced_options
    #   <p>Specifies advanced options for parsing the input EDI file. These options allow for more granular control over the parsing process, including split options for X12 files.</p>
    #   @return [Types::AdvancedOptions]
    class TestParsingRequest < Struct.new(
      nil,
      :input_file,
      :file_format,
      :edi_type,
      :advanced_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute parsed_file_content
    #   <p>Returns the contents of the input file being tested, parsed according to the specified EDI (electronic data interchange) type.</p>
    #   @return [String]
    # @!attribute parsed_split_file_contents
    #   <p>Returns an array of parsed file contents when the input file is split according to the specified split options. Each element in the array represents a separate split file's parsed content.</p>
    #   @return [Array<String>]
    # @!attribute validation_messages
    #   <p>Returns an array of validation messages generated during EDI validation. These messages provide detailed information about validation errors, warnings, or confirmations based on the configured X12 validation rules such as element length constraints, code list validations, and element requirement checks. This field is populated when the <code>TestParsing</code> API validates EDI documents.</p>
    #   @return [Array<String>]
    class TestParsingResponse < Struct.new(
      nil,
      :parsed_file_content,
      :parsed_split_file_contents,
      :validation_messages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to throttling: the data speed and rendering may be limited depending on various parameters and conditions.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The server attempts to retry a command that was throttled.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details for a transformer object. A transformer can take an EDI file as input and transform it into a JSON-or XML-formatted document. Alternatively, a transformer can take a JSON-or XML-formatted document as input and transform it into an EDI file.</p>
    # @!attribute transformer_id
    #   <p>Returns the system-assigned unique identifier for the transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the descriptive name for the transformer.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Returns the state of the newly created transformer. The transformer can be either <code>active</code> or <code>inactive</code>. For the transformer to be used in a capability, its status must <code>active</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp indicating when the transformer was created. For example, <code>2023-07-20T19:58:44.624Z</code>.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp representing the date and time for the most recent change for the transformer object.</p>
    #   @return [Time]
    # @!attribute file_format
    #   <p>Returns that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute mapping_template
    #   <p>Returns the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute edi_type
    #   <p>Returns the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [Types::EdiType]
    # @!attribute sample_document
    #   <p>Returns a sample EDI document that is used by a transformer as a guide for processing the EDI data.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute input_conversion
    #   <p>Returns a structure that contains the format options for the transformation.</p>
    #   @return [Types::InputConversion]
    # @!attribute mapping
    #   <p>Returns the structure that contains the mapping template and its language (either XSLT or JSONATA).</p>
    #   @return [Types::Mapping]
    # @!attribute output_conversion
    #   <p>Returns the <code>OutputConversion</code> object, which contains the format options for the outbound transformation.</p>
    #   @return [Types::OutputConversion]
    # @!attribute sample_documents
    #   <p>Returns a structure that contains the Amazon S3 bucket and an array of the corresponding keys used to identify the location for your sample documents.</p>
    #   @return [Types::SampleDocuments]
    class TransformerSummary < Struct.new(
      nil,
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
      :sample_documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:file_format] = 'NOT_USED' unless options.key?(:file_format)
        options[:mapping_template] = 'NOT_USED' unless options.key?(:mapping_template)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>Specifies an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capability_id
    #   <p>Specifies a system-assigned unique identifier for the capability.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Specifies a new name for the capability, to replace the existing name.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Specifies a structure that contains the details for a capability.</p>
    #   @return [Types::CapabilityConfiguration]
    # @!attribute instructions_documents
    #   <p>Specifies one or more locations in Amazon S3, each specifying an EDI document that can be used with this capability. Each item contains the name of the bucket and the key, to identify the document's location.</p>
    #   @return [Array<Types::S3Location>]
    class UpdateCapabilityRequest < Struct.new(
      nil,
      :capability_id,
      :name,
      :configuration,
      :instructions_documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capability_id
    #   <p>Returns a system-assigned unique identifier for the capability.</p>
    #   @return [String]
    # @!attribute capability_arn
    #   <p>Returns an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the name of the capability, used to identify it.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Returns the type of the capability. Currently, only <code>edi</code> is supported.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Returns a structure that contains the details for a capability.</p>
    #   @return [Types::CapabilityConfiguration]
    # @!attribute instructions_documents
    #   <p>Returns one or more locations in Amazon S3, each specifying an EDI document that can be used with this capability. Each item contains the name of the bucket and the key, to identify the document's location.</p>
    #   @return [Array<Types::S3Location>]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the capability.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp for last time the capability was modified.</p>
    #   @return [Time]
    class UpdateCapabilityResponse < Struct.new(
      nil,
      :capability_id,
      :capability_arn,
      :name,
      :type,
      :configuration,
      :instructions_documents,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partnership_id
    #   <p>Specifies the unique, system-generated identifier for a partnership.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the partnership, used to identify it.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>List of the capabilities associated with this partnership.</p>
    #   @return [Array<String>]
    # @!attribute capability_options
    #   <p>To update, specify the structure that contains the details for the associated capabilities.</p>
    #   @return [Types::CapabilityOptions]
    class UpdatePartnershipRequest < Struct.new(
      nil,
      :partnership_id,
      :name,
      :capabilities,
      :capability_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Returns the unique, system-generated identifier for the profile connected to this partnership.</p>
    #   @return [String]
    # @!attribute partnership_id
    #   <p>Returns the unique, system-generated identifier for a partnership.</p>
    #   @return [String]
    # @!attribute partnership_arn
    #   <p>Returns an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the partnership, used to identify it.</p>
    #   @return [String]
    # @!attribute email
    #   <p>Returns the email address associated with this trading partner.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>Returns the phone number associated with the partnership.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>Returns one or more capabilities associated with this partnership.</p>
    #   @return [Array<String>]
    # @!attribute capability_options
    #   <p>Returns the structure that contains the details for the associated capabilities.</p>
    #   @return [Types::CapabilityOptions]
    # @!attribute trading_partner_id
    #   <p>Returns the unique, system-generated identifier for a trading partner.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp that identifies the most recent date and time that the partnership was modified.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp that identifies the most recent date and time that the partnership was modified.</p>
    #   @return [Time]
    class UpdatePartnershipResponse < Struct.new(
      nil,
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
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Specifies the unique, system-generated identifier for the profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the profile, used to identify it.</p>
    #   @return [String]
    # @!attribute email
    #   <p>Specifies the email address associated with this customer profile.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>Specifies the phone number associated with the profile.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>Specifies the name for the business associated with this profile.</p>
    #   @return [String]
    class UpdateProfileRequest < Struct.new(
      nil,
      :profile_id,
      :name,
      :email,
      :phone,
      :business_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>Returns the unique, system-generated identifier for the profile.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>Returns an Amazon Resource Name (ARN) for the profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the name of the profile.</p>
    #   @return [String]
    # @!attribute email
    #   <p>Returns the email address associated with this customer profile.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>Returns the phone number associated with the profile.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>Returns the name for the business associated with this profile.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>Specifies whether or not logging is enabled for this profile.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>Returns the name of the logging group.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the profile.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp for last time the profile was modified.</p>
    #   @return [Time]
    class UpdateProfileResponse < Struct.new(
      nil,
      :profile_id,
      :profile_arn,
      :name,
      :email,
      :phone,
      :business_name,
      :logging,
      :log_group_name,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transformer_id
    #   <p>Specifies the system-assigned unique identifier for the transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Specify a new name for the transformer, if you want to update it.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the transformer's status. You can update the state of the transformer from <code>inactive</code> to <code>active</code>.</p>
    #   @return [String]
    # @!attribute file_format
    #   <p>Specifies that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute mapping_template
    #   <p>Specifies the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p> <note> <p>This parameter is available for backwards compatibility. Use the <a href="https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html">Mapping</a> data type instead.</p> </note>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute edi_type
    #   <p>Specifies the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [Types::EdiType]
    # @!attribute sample_document
    #   <p>Specifies a sample EDI document that is used by a transformer as a guide for processing the EDI data.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute input_conversion
    #   <p>To update, specify the <code>InputConversion</code> object, which contains the format options for the inbound transformation.</p>
    #   @return [Types::InputConversion]
    # @!attribute mapping
    #   <p>Specify the structure that contains the mapping template and its language (either XSLT or JSONATA).</p>
    #   @return [Types::Mapping]
    # @!attribute output_conversion
    #   <p>To update, specify the <code>OutputConversion</code> object, which contains the format options for the outbound transformation.</p>
    #   @return [Types::OutputConversion]
    # @!attribute sample_documents
    #   <p>Specify a structure that contains the Amazon S3 bucket and an array of the corresponding keys used to identify the location for your sample documents.</p>
    #   @return [Types::SampleDocuments]
    class UpdateTransformerRequest < Struct.new(
      nil,
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
      :sample_documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transformer_id
    #   <p>Returns the system-assigned unique identifier for the transformer.</p>
    #   @return [String]
    # @!attribute transformer_arn
    #   <p>Returns an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Returns the name of the transformer.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Returns the state of the newly created transformer. The transformer can be either <code>active</code> or <code>inactive</code>. For the transformer to be used in a capability, its status must <code>active</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Returns a timestamp for creation date and time of the transformer.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>Returns a timestamp for last time the transformer was modified.</p>
    #   @return [Time]
    # @!attribute file_format
    #   <p>Returns that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute mapping_template
    #   <p>Returns the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute edi_type
    #   <p>Returns the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [Types::EdiType]
    # @!attribute sample_document
    #   <p>Returns a sample EDI document that is used by a transformer as a guide for processing the EDI data.</p>
    #   @deprecated
    #     This is a legacy trait. Please use input-conversion or output-conversion.
    #   @return [String]
    # @!attribute input_conversion
    #   <p>Returns the <code>InputConversion</code> object, which contains the format options for the inbound transformation.</p>
    #   @return [Types::InputConversion]
    # @!attribute mapping
    #   <p>Returns the structure that contains the mapping template and its language (either XSLT or JSONATA).</p>
    #   @return [Types::Mapping]
    # @!attribute output_conversion
    #   <p>Returns the <code>OutputConversion</code> object, which contains the format options for the outbound transformation.</p>
    #   @return [Types::OutputConversion]
    # @!attribute sample_documents
    #   <p>Returns a structure that contains the Amazon S3 bucket and an array of the corresponding keys used to identify the location for your sample documents.</p>
    #   @return [Types::SampleDocuments]
    class UpdateTransformerResponse < Struct.new(
      nil,
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
      :sample_documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:file_format] = 'NOT_USED' unless options.key?(:file_format)
        options[:mapping_template] = 'NOT_USED' unless options.key?(:mapping_template)
        super
      end
    end

    # <p>Occurs when a B2BI object cannot be validated against a request from another object. This exception can be thrown during standard EDI validation or when custom validation rules fail, such as when element length constraints are violated, invalid codes are used in code list validations, or required elements are missing based on configured element requirement rules.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains options for wrapping (line folding) in X12 EDI files. Wrapping controls how long lines are handled in the EDI output.</p>
    # @!attribute wrap_by
    #   <p>Specifies the method used for wrapping lines in the EDI output. Valid values:</p> <ul> <li> <p> <code>SEGMENT</code>: Wraps by segment.</p> </li> <li> <p> <code>ONE_LINE</code>: Indicates that the entire content is on a single line.</p> <note> <p>When you specify <code>ONE_LINE</code>, do not provide either the line length nor the line terminator value.</p> </note> </li> <li> <p> <code>LINE_LENGTH</code>: Wraps by character count, as specified by <code>lineLength</code> value.</p> </li> </ul>
    #   @return [String]
    # @!attribute line_terminator
    #   <p>Specifies the character sequence used to terminate lines when wrapping. Valid values:</p> <ul> <li> <p> <code>CRLF</code>: carriage return and line feed</p> </li> <li> <p> <code>LF</code>: line feed)</p> </li> <li> <p> <code>CR</code>: carriage return</p> </li> </ul>
    #   @return [String]
    # @!attribute line_length
    #   <p>Specifies the maximum length of a line before wrapping occurs. This value is used when <code>wrapBy</code> is set to <code>LINE_LENGTH</code>.</p>
    #   @return [Integer]
    class WrapOptions < Struct.new(
      nil,
      :wrap_by,
      :line_terminator,
      :line_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains options for configuring X12 acknowledgments. These options control how functional and technical acknowledgments are handled.</p>
    # @!attribute functional_acknowledgment
    #   <p>Specifies whether functional acknowledgments (997/999) should be generated for incoming X12 transactions. Valid values are <code>DO_NOT_GENERATE</code>, <code>GENERATE_ALL_SEGMENTS</code> and <code>GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP</code>.</p> <p>If you choose <code>GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP</code>, Amazon Web Services B2B Data Interchange skips the AK2_Loop when generating an acknowledgment document.</p>
    #   @return [String]
    # @!attribute technical_acknowledgment
    #   <p>Specifies whether technical acknowledgments (TA1) should be generated for incoming X12 interchanges. Valid values are <code>DO_NOT_GENERATE</code> and <code>GENERATE_ALL_SEGMENTS</code> and.</p>
    #   @return [String]
    class X12AcknowledgmentOptions < Struct.new(
      nil,
      :functional_acknowledgment,
      :technical_acknowledgment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains advanced options specific to X12 EDI processing, such as splitting large X12 files into smaller units.</p>
    # @!attribute split_options
    #   <p>Specifies options for splitting X12 EDI files. These options control how large X12 files are divided into smaller, more manageable units.</p>
    #   @return [Types::X12SplitOptions]
    # @!attribute validation_options
    #   <p>Specifies validation options for X12 EDI processing. These options control how validation rules are applied during EDI document processing, including custom validation rules for element length constraints, code list validations, and element requirement checks.</p>
    #   @return [Types::X12ValidationOptions]
    class X12AdvancedOptions < Struct.new(
      nil,
      :split_options,
      :validation_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a validation rule that modifies the allowed code values for a specific X12 element. This rule allows you to add or remove valid codes from an element's standard code list, providing flexibility to accommodate trading partner-specific requirements or industry variations. You can specify codes to add to expand the allowed values beyond the X12 standard, or codes to remove to restrict the allowed values for stricter validation.</p>
    # @!attribute element_id
    #   <p>Specifies the four-digit element ID to which the code list modifications apply. This identifies which X12 element will have its allowed code values modified.</p>
    #   @return [String]
    # @!attribute codes_to_add
    #   <p>Specifies a list of code values to add to the element's allowed values. These codes will be considered valid for the specified element in addition to the standard codes defined by the X12 specification.</p>
    #   @return [Array<String>]
    # @!attribute codes_to_remove
    #   <p>Specifies a list of code values to remove from the element's allowed values. These codes will be considered invalid for the specified element, even if they are part of the standard codes defined by the X12 specification.</p>
    #   @return [Array<String>]
    class X12CodeListValidationRule < Struct.new(
      nil,
      :element_id,
      :codes_to_add,
      :codes_to_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration for X12 control numbers used in X12 EDI generation. Control numbers are used to uniquely identify interchanges, functional groups, and transaction sets.</p>
    # @!attribute starting_interchange_control_number
    #   <p>Specifies the starting interchange control number (ISA13) to use for X12 EDI generation. This number is incremented for each new interchange. For the ISA (interchange) envelope, Amazon Web Services B2B Data Interchange generates an interchange control number that is unique for the ISA05 and ISA06 (sender) &amp; ISA07 and ISA08 (receiver) combination. </p>
    #   @return [Integer]
    # @!attribute starting_functional_group_control_number
    #   <p>Specifies the starting functional group control number (GS06) to use for X12 EDI generation. This number is incremented for each new functional group. For the GS (functional group) envelope, Amazon Web Services B2B Data Interchange generates a functional group control number that is unique to the sender ID, receiver ID, and functional identifier code combination. </p>
    #   @return [Integer]
    # @!attribute starting_transaction_set_control_number
    #   <p>Specifies the starting transaction set control number (ST02) to use for X12 EDI generation. This number is incremented for each new transaction set.</p>
    #   @return [Integer]
    class X12ControlNumbers < Struct.new(
      nil,
      :starting_interchange_control_number,
      :starting_functional_group_control_number,
      :starting_transaction_set_control_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>In X12 EDI messages, delimiters are used to mark the end of segments or elements, and are defined in the interchange control header. The delimiters are part of the message's syntax and divide up its different elements.</p>
    # @!attribute component_separator
    #   <p>The component, or sub-element, separator. The default value is <code>:</code> (colon).</p>
    #   @return [String]
    # @!attribute data_element_separator
    #   <p>The data element separator. The default value is <code>*</code> (asterisk).</p>
    #   @return [String]
    # @!attribute segment_terminator
    #   <p>The segment terminator. The default value is <code>~</code> (tilde).</p>
    #   @return [String]
    class X12Delimiters < Struct.new(
      nil,
      :component_separator,
      :data_element_separator,
      :segment_terminator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the X12 transaction set and version. The X12 structure is used when the system transforms an EDI (electronic data interchange) file.</p> <note> <p>If an EDI input file contains more than one transaction, each transaction must have the same transaction set and version, for example 214/4010. If not, the transformer cannot parse the file.</p> </note>
    # @!attribute transaction_set
    #   <p>Returns an enumerated type where each value identifies an X12 transaction set. Transaction sets are maintained by the X12 Accredited Standards Committee.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Returns the version to use for the specified X12 transaction set.</p>
    #   @return [String]
    class X12Details < Struct.new(
      nil,
      :transaction_set,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a validation rule that specifies custom length constraints for a specific X12 element. This rule allows you to override the standard minimum and maximum length requirements for an element, enabling validation of trading partner-specific length requirements that may differ from the X12 specification. Both minimum and maximum length values must be specified and must be between 1 and 200 characters.</p>
    # @!attribute element_id
    #   <p>Specifies the four-digit element ID to which the length constraints will be applied. This identifies which X12 element will have its length requirements modified.</p>
    #   @return [String]
    # @!attribute max_length
    #   <p>Specifies the maximum allowed length for the identified element. This value must be between 1 and 200 characters and defines the upper limit for the element's content length.</p>
    #   @return [Integer]
    # @!attribute min_length
    #   <p>Specifies the minimum required length for the identified element. This value must be between 1 and 200 characters and defines the lower limit for the element's content length.</p>
    #   @return [Integer]
    class X12ElementLengthValidationRule < Struct.new(
      nil,
      :element_id,
      :max_length,
      :min_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a validation rule that modifies the requirement status of a specific X12 element within a segment. This rule allows you to make optional elements mandatory or mandatory elements optional, providing flexibility to accommodate different trading partner requirements and business rules. The rule targets a specific element position within a segment and sets its requirement status to either OPTIONAL or MANDATORY.</p>
    # @!attribute element_position
    #   <p>Specifies the position of the element within an X12 segment for which the requirement status will be modified. The format follows the pattern of segment identifier followed by element position (e.g., "ST-01" for the first element of the ST segment).</p>
    #   @return [String]
    # @!attribute requirement
    #   <p>Specifies the requirement status for the element at the specified position. Valid values are OPTIONAL (the element may be omitted) or MANDATORY (the element must be present).</p>
    #   @return [String]
    class X12ElementRequirementValidationRule < Struct.new(
      nil,
      :element_position,
      :requirement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A wrapper structure for an X12 definition object.</p> <p>the X12 envelope ensures the integrity of the data and the efficiency of the information exchange. The X12 message structure has hierarchical levels. From highest to the lowest, they are:</p> <ul> <li> <p>Interchange Envelope</p> </li> <li> <p>Functional Group</p> </li> <li> <p>Transaction Set</p> </li> </ul>
    # @!attribute common
    #   <p>A container for the X12 outbound EDI headers.</p>
    #   @return [Types::X12OutboundEdiHeaders]
    # @!attribute wrap_options
    #   <p>Contains options for wrapping (line folding) in X12 EDI files. Wrapping controls how long lines are handled in the EDI output.</p>
    #   @return [Types::WrapOptions]
    class X12Envelope < Struct.new(
      nil,
      :common,
      :wrap_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Part of the X12 message structure. These are the functional group headers for the X12 EDI object.</p>
    # @!attribute application_sender_code
    #   <p>A value representing the code used to identify the party transmitting a message, at position GS-02.</p>
    #   @return [String]
    # @!attribute application_receiver_code
    #   <p>A value representing the code used to identify the party receiving a message, at position GS-03.</p>
    #   @return [String]
    # @!attribute responsible_agency_code
    #   <p>A code that identifies the issuer of the standard, at position GS-07.</p>
    #   @return [String]
    class X12FunctionalGroupHeaders < Struct.new(
      nil,
      :application_sender_code,
      :application_receiver_code,
      :responsible_agency_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains options specific to processing inbound X12 EDI files.</p>
    # @!attribute acknowledgment_options
    #   <p>Specifies acknowledgment options for inbound X12 EDI files. These options control how functional and technical acknowledgments are handled.</p>
    #   @return [Types::X12AcknowledgmentOptions]
    class X12InboundEdiOptions < Struct.new(
      nil,
      :acknowledgment_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>In X12, the Interchange Control Header is the first segment of an EDI document and is part of the Interchange Envelope. It contains information about the sender and receiver, the date and time of transmission, and the X12 version being used. It also includes delivery information, such as the sender and receiver IDs.</p>
    # @!attribute sender_id_qualifier
    #   <p>Located at position ISA-05 in the header. Qualifier for the sender ID. Together, the ID and qualifier uniquely identify the sending trading partner.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>Located at position ISA-06 in the header. This value (along with the <code>senderIdQualifier</code>) identifies the sender of the interchange. </p>
    #   @return [String]
    # @!attribute receiver_id_qualifier
    #   <p>Located at position ISA-07 in the header. Qualifier for the receiver ID. Together, the ID and qualifier uniquely identify the receiving trading partner.</p>
    #   @return [String]
    # @!attribute receiver_id
    #   <p>Located at position ISA-08 in the header. This value (along with the <code>receiverIdQualifier</code>) identifies the intended recipient of the interchange. </p>
    #   @return [String]
    # @!attribute repetition_separator
    #   <p>Located at position ISA-11 in the header. This string makes it easier when you need to group similar adjacent element values together without using extra segments.</p> <note> <p>This parameter is only honored for version greater than 401 (<code>VERSION_4010</code> and higher).</p> <p>For versions less than 401, this field is called <a href="https://www.stedi.com/edi/x12-004010/segment/ISA#ISA-11">StandardsId</a>, in which case our service sets the value to <code>U</code>.</p> </note>
    #   @return [String]
    # @!attribute acknowledgment_requested_code
    #   <p>Located at position ISA-14 in the header. The value "1" indicates that the sender is requesting an interchange acknowledgment at receipt of the interchange. The value "0" is used otherwise.</p>
    #   @return [String]
    # @!attribute usage_indicator_code
    #   <p>Located at position ISA-15 in the header. Specifies how this interchange is being used:</p> <ul> <li> <p> <code>T</code> indicates this interchange is for testing.</p> </li> <li> <p> <code>P</code> indicates this interchange is for production.</p> </li> <li> <p> <code>I</code> indicates this interchange is informational.</p> </li> </ul>
    #   @return [String]
    class X12InterchangeControlHeaders < Struct.new(
      nil,
      :sender_id_qualifier,
      :sender_id,
      :receiver_id_qualifier,
      :receiver_id,
      :repetition_separator,
      :acknowledgment_requested_code,
      :usage_indicator_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the details for an outbound EDI object.</p>
    # @!attribute interchange_control_headers
    #   <p>In X12 EDI messages, delimiters are used to mark the end of segments or elements, and are defined in the interchange control header.</p>
    #   @return [Types::X12InterchangeControlHeaders]
    # @!attribute functional_group_headers
    #   <p>The functional group headers for the X12 object.</p>
    #   @return [Types::X12FunctionalGroupHeaders]
    # @!attribute delimiters
    #   <p>The delimiters, for example semicolon (<code>;</code>), that separates sections of the headers for the X12 object.</p>
    #   @return [Types::X12Delimiters]
    # @!attribute validate_edi
    #   <p>Specifies whether or not to validate the EDI for this X12 object: <code>TRUE</code> or <code>FALSE</code>. When enabled, this performs both standard EDI validation and applies any configured custom validation rules including element length constraints, code list validations, and element requirement checks. Validation results are returned in the response validation messages.</p>
    #   @return [Boolean]
    # @!attribute control_numbers
    #   <p>Specifies control number configuration for outbound X12 EDI headers. These settings determine the starting values for interchange, functional group, and transaction set control numbers.</p>
    #   @return [Types::X12ControlNumbers]
    # @!attribute gs05_time_format
    #   <p>Specifies the time format in the GS05 element (time) of the functional group header. The following formats use 24-hour clock time:</p> <ul> <li> <p> <code>HHMM</code> - Hours and minutes</p> </li> <li> <p> <code>HHMMSS</code> - Hours, minutes, and seconds</p> </li> <li> <p> <code>HHMMSSDD</code> - Hours, minutes, seconds, and decimal seconds</p> </li> </ul> <p>Where:</p> <ul> <li> <p> <code>HH</code> - Hours (00-23)</p> </li> <li> <p> <code>MM</code> - Minutes (00-59)</p> </li> <li> <p> <code>SS</code> - Seconds (00-59)</p> </li> <li> <p> <code>DD</code> - Hundredths of seconds (00-99)</p> </li> </ul>
    #   @return [String]
    class X12OutboundEdiHeaders < Struct.new(
      nil,
      :interchange_control_headers,
      :functional_group_headers,
      :delimiters,
      :validate_edi,
      :control_numbers,
      :gs05_time_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains options for splitting X12 EDI files into smaller units. This is useful for processing large EDI files more efficiently.</p>
    # @!attribute split_by
    #   <p>Specifies the method used to split X12 EDI files. Valid values include <code>TRANSACTION</code> (split by individual transaction sets), or <code>NONE</code> (no splitting).</p>
    #   @return [String]
    class X12SplitOptions < Struct.new(
      nil,
      :split_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration options for X12 EDI validation. This structure allows you to specify custom validation rules that will be applied during EDI document processing, including element length constraints, code list modifications, and element requirement changes. These validation options provide flexibility to accommodate trading partner-specific requirements while maintaining EDI compliance. The validation rules are applied in addition to standard X12 validation to ensure documents meet both standard and custom requirements.</p>
    # @!attribute validation_rules
    #   <p>Specifies a list of validation rules to apply during EDI document processing. These rules can include code list modifications, element length constraints, and element requirement changes.</p>
    #   @return [Array<Types::X12ValidationRule>]
    class X12ValidationOptions < Struct.new(
      nil,
      :validation_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single validation rule that can be applied during X12 EDI processing. This is a union type that can contain one of several specific validation rule types: code list validation rules for modifying allowed element codes, element length validation rules for enforcing custom length constraints, or element requirement validation rules for changing mandatory/optional status. Each validation rule targets specific aspects of EDI document validation to ensure compliance with trading partner requirements and business rules.</p>
    # @!attribute code_list_validation_rule
    #   <p>Specifies a code list validation rule that modifies the allowed code values for a specific X12 element. This rule enables you to customize which codes are considered valid for an element, allowing for trading partner-specific code requirements.</p>
    #   @return [Types::X12CodeListValidationRule]
    # @!attribute element_length_validation_rule
    #   <p>Specifies an element length validation rule that defines custom length constraints for a specific X12 element. This rule allows you to enforce minimum and maximum length requirements that may differ from the standard X12 specification.</p>
    #   @return [Types::X12ElementLengthValidationRule]
    # @!attribute element_requirement_validation_rule
    #   <p>Specifies an element requirement validation rule that modifies whether a specific X12 element is required or optional within a segment. This rule provides flexibility to accommodate different trading partner requirements for element presence.</p>
    #   @return [Types::X12ElementRequirementValidationRule]
    class X12ValidationRule < Struct.new(
      :code_list_validation_rule,
      :element_length_validation_rule,
      :element_requirement_validation_rule,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CodeListValidationRule < X12ValidationRule; end
      class ElementLengthValidationRule < X12ValidationRule; end
      class ElementRequirementValidationRule < X12ValidationRule; end
      class Unknown < X12ValidationRule; end
    end

  end
end
