# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ComprehendMedical
  module Types

    # An extracted segment of the text that is an attribute of an entity, or
    # otherwise related to an entity, such as the dosage of a medication
    # taken. It contains information about the attribute such as id, begin
    # and end offset within the input text, and the segment of the input
    # text.
    #
    # @!attribute [rw] type
    #   The type of attribute.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The level of confidence that Comprehend Medical has that the segment
    #   of text is correctly recognized as an attribute.
    #   @return [Float]
    #
    # @!attribute [rw] relationship_score
    #   The level of confidence that Comprehend Medical has that this
    #   attribute is correctly related to this entity.
    #   @return [Float]
    #
    # @!attribute [rw] id
    #   The numeric identifier for this attribute. This is a monotonically
    #   increasing id unique within this response rather than a global
    #   unique identifier.
    #   @return [Integer]
    #
    # @!attribute [rw] begin_offset
    #   The 0-based character offset in the input text that shows where the
    #   attribute begins. The offset returns the UTF-8 code point in the
    #   string.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The 0-based character offset in the input text that shows where the
    #   attribute ends. The offset returns the UTF-8 code point in the
    #   string.
    #   @return [Integer]
    #
    # @!attribute [rw] text
    #   The segment of input text extracted as this attribute.
    #   @return [String]
    #
    # @!attribute [rw] traits
    #   Contextual information for this attribute.
    #   @return [Array<Types::Trait>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/Attribute AWS API Documentation
    #
    class Attribute < Struct.new(
      :type,
      :score,
      :relationship_score,
      :id,
      :begin_offset,
      :end_offset,
      :text,
      :traits)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         text: "BoundedLengthString", # required
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string containing the clinical content being examined
    #   for entities. Each string must contain fewer than 20,000 bytes of
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectEntitiesRequest AWS API Documentation
    #
    class DetectEntitiesRequest < Struct.new(
      :text)
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The collection of medical entities extracted from the input text and
    #   their associated information. For each entity, the response provides
    #   the entity text, the entity category, where the entity text begins
    #   and ends, and the level of confidence that Comprehend Medical has in
    #   the detection and analysis. Attributes and traits of the entity are
    #   also returned.
    #   @return [Array<Types::Entity>]
    #
    # @!attribute [rw] unmapped_attributes
    #   Attributes extracted from the input text that we were unable to
    #   relate to an entity.
    #   @return [Array<Types::UnmappedAttribute>]
    #
    # @!attribute [rw] pagination_token
    #   If the result of the previous request to DetectEntities was
    #   truncated, include the Paginationtoken to fetch the next page of
    #   entities.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectEntitiesResponse AWS API Documentation
    #
    class DetectEntitiesResponse < Struct.new(
      :entities,
      :unmapped_attributes,
      :pagination_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectPHIRequest
    #   data as a hash:
    #
    #       {
    #         text: "BoundedLengthString", # required
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string containing the clinical content being examined
    #   for PHI entities. Each string must contain fewer than 20,000 bytes
    #   of characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectPHIRequest AWS API Documentation
    #
    class DetectPHIRequest < Struct.new(
      :text)
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The collection of PHI entities extracted from the input text and
    #   their associated information. For each entity, the response provides
    #   the entity text, the entity category, where the entity text begins
    #   and ends, and the level of confidence that Comprehend Medical has in
    #   its detection.
    #   @return [Array<Types::Entity>]
    #
    # @!attribute [rw] pagination_token
    #   If the result of the previous request to DetectPHI was truncated,
    #   include the Paginationtoken to fetch the next page of PHI entities.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectPHIResponse AWS API Documentation
    #
    class DetectPHIResponse < Struct.new(
      :entities,
      :pagination_token)
      include Aws::Structure
    end

    # Provides information about an extracted medical entity.
    #
    # @!attribute [rw] id
    #   The numeric identifier for the entity. This is a monotonically
    #   increasing id unique within this response rather than a global
    #   unique identifier.
    #   @return [Integer]
    #
    # @!attribute [rw] begin_offset
    #   The 0-based character offset in the input text that shows where the
    #   entity begins. The offset returns the UTF-8 code point in the
    #   string.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The 0-based character offset in the input text that shows where the
    #   entity ends. The offset returns the UTF-8 code point in the string.
    #   @return [Integer]
    #
    # @!attribute [rw] score
    #   The level of confidence that Comprehend Medical has in the accuracy
    #   of the detection.
    #   @return [Float]
    #
    # @!attribute [rw] text
    #   The segment of input text extracted as this entity.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the entity.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Describes the specific type of entity with category of entities.
    #   @return [String]
    #
    # @!attribute [rw] traits
    #   Contextual information for the entity
    #   @return [Array<Types::Trait>]
    #
    # @!attribute [rw] attributes
    #   The extracted attributes that relate to this entity.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :id,
      :begin_offset,
      :end_offset,
      :score,
      :text,
      :category,
      :type,
      :traits,
      :attributes)
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The input text was not in valid UTF-8 character encoding. Check your
    # text then retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/InvalidEncodingException AWS API Documentation
    #
    class InvalidEncodingException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request that you made is invalid. Check your request to determine
    # why it's invalid and then retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The Comprehend Medical service is temporarily unavailable. Please wait
    # and then retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The size of the text you submitted exceeds the size limit. Reduce the
    # size of the text or use a smaller document and then retry your
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/TextSizeLimitExceededException AWS API Documentation
    #
    class TextSizeLimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # You have made too many requests within a short period of time. Wait
    # for a short time and then try your request again. Contact customer
    # support for more information about a service limit increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Provides contextual information about the extracted entity.
    #
    # @!attribute [rw] name
    #   Provides a name or contextual description about the trait.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The level of confidence that Comprehend Medical has in the accuracy
    #   of this trait.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/Trait AWS API Documentation
    #
    class Trait < Struct.new(
      :name,
      :score)
      include Aws::Structure
    end

    # An attribute that we extracted, but were unable to relate to an
    # entity.
    #
    # @!attribute [rw] type
    #   The type of the attribute, could be one of the following values:
    #   "MEDICATION", "MEDICAL\_CONDITION", "ANATOMY",
    #   "TEST\_AND\_TREATMENT\_PROCEDURE" or
    #   "PERSONAL\_HEALTH\_INFORMATION".
    #   @return [String]
    #
    # @!attribute [rw] attribute
    #   The specific attribute that has been extracted but not mapped to an
    #   entity.
    #   @return [Types::Attribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/UnmappedAttribute AWS API Documentation
    #
    class UnmappedAttribute < Struct.new(
      :type,
      :attribute)
      include Aws::Structure
    end

  end
end
