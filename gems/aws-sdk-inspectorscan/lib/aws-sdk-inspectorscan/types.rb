# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::InspectorScan
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-scan-2023-08-08/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-scan-2023-08-08/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :reason,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sbom
    #   The JSON file for the SBOM you want to scan. The SBOM must be in
    #   CycloneDX 1.5 format.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] output_format
    #   The output format for the vulnerability report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-scan-2023-08-08/ScanSbomRequest AWS API Documentation
    #
    class ScanSbomRequest < Struct.new(
      :sbom,
      :output_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sbom
    #   The vulnerability report for the scanned SBOM.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-scan-2023-08-08/ScanSbomResponse AWS API Documentation
    #
    class ScanSbomResponse < Struct.new(
      :sbom)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-scan-2023-08-08/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed validation due to missing required fields or
    # having invalid inputs.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-scan-2023-08-08/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed validation due to missing required fields or
    # having invalid inputs.
    #
    # @!attribute [rw] name
    #   The name of the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The validation exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector-scan-2023-08-08/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

