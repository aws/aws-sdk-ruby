# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Echo
  module Types

    # @!attribute [rw] boolean_member
    #   @return [Boolean]
    #
    # @!attribute [rw] string_member
    #   @return [String]
    #
    # @!attribute [rw] integer_member
    #   @return [Integer]
    #
    # @!attribute [rw] long_member
    #   @return [Integer]
    #
    # @!attribute [rw] float_member
    #   @return [Float]
    #
    # @!attribute [rw] double_member
    #   @return [Float]
    #
    # @!attribute [rw] timestamp_member
    #   @return [Time]
    #
    # @!attribute [rw] blob_member
    #   @return [String]
    #
    # @!attribute [rw] list_of_strings_member
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_of_complex_object_member
    #   @return [Array<Types::ComplexStructure>]
    #
    # @!attribute [rw] map_of_string_to_string_member
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] complex_struct_member
    #   @return [Types::ComplexStructure]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/echo-2020-07-02/ComplexStructure AWS API Documentation
    #
    class ComplexStructure < Struct.new(
      :boolean_member,
      :string_member,
      :integer_member,
      :long_member,
      :float_member,
      :double_member,
      :timestamp_member,
      :blob_member,
      :list_of_strings_member,
      :list_of_complex_object_member,
      :map_of_string_to_string_member,
      :complex_struct_member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] boolean_member
    #   @return [Boolean]
    #
    # @!attribute [rw] string_member
    #   @return [String]
    #
    # @!attribute [rw] integer_member
    #   @return [Integer]
    #
    # @!attribute [rw] long_member
    #   @return [Integer]
    #
    # @!attribute [rw] float_member
    #   @return [Float]
    #
    # @!attribute [rw] double_member
    #   @return [Float]
    #
    # @!attribute [rw] timestamp_member
    #   @return [Time]
    #
    # @!attribute [rw] blob_member
    #   @return [String]
    #
    # @!attribute [rw] list_of_strings_member
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_of_complex_object_member
    #   @return [Array<Types::ComplexStructure>]
    #
    # @!attribute [rw] map_of_string_to_string_member
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] complex_struct_member
    #   @return [Types::ComplexStructure]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/echo-2020-07-02/EchoOperationInput AWS API Documentation
    #
    class EchoOperationInput < Struct.new(
      :boolean_member,
      :string_member,
      :integer_member,
      :long_member,
      :float_member,
      :double_member,
      :timestamp_member,
      :blob_member,
      :list_of_strings_member,
      :list_of_complex_object_member,
      :map_of_string_to_string_member,
      :complex_struct_member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] boolean_member
    #   @return [Boolean]
    #
    # @!attribute [rw] string_member
    #   @return [String]
    #
    # @!attribute [rw] integer_member
    #   @return [Integer]
    #
    # @!attribute [rw] long_member
    #   @return [Integer]
    #
    # @!attribute [rw] float_member
    #   @return [Float]
    #
    # @!attribute [rw] double_member
    #   @return [Float]
    #
    # @!attribute [rw] timestamp_member
    #   @return [Time]
    #
    # @!attribute [rw] blob_member
    #   @return [String]
    #
    # @!attribute [rw] list_of_strings_member
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_of_complex_object_member
    #   @return [Array<Types::ComplexStructure>]
    #
    # @!attribute [rw] map_of_string_to_string_member
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] complex_struct_member
    #   @return [Types::ComplexStructure]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/echo-2020-07-02/EchoOperationOutput AWS API Documentation
    #
    class EchoOperationOutput < Struct.new(
      :boolean_member,
      :string_member,
      :integer_member,
      :long_member,
      :float_member,
      :double_member,
      :timestamp_member,
      :blob_member,
      :list_of_strings_member,
      :list_of_complex_object_member,
      :map_of_string_to_string_member,
      :complex_struct_member)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

