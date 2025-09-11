# frozen_string_literal: true

# This is generated code!

module Aws::InspectorScan
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.
    #   </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.
    #    
    #   </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation failure.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :reason,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sbom
    #   <p>The JSON file for the SBOM you want to scan. The SBOM must be in CycloneDX 1.5 format.</p>
    #   @return [JSON]
    # @!attribute output_format
    #   <p>The output format for the vulnerability report.</p>
    #   @return [String]
    class ScanSbomRequest < Struct.new(
      :sbom,
      :output_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sbom
    #   <p>The vulnerability report for the scanned SBOM.</p>
    #   @return [JSON]
    class ScanSbomResponse < Struct.new(
      :sbom,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.
    #    
    #   </p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request has failed validation due to missing required fields or having invalid inputs.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation failure.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request has failed validation due to missing required fields or having invalid inputs.
    #    </p>
    # @!attribute name
    #   <p>The name of the validation exception.
    #      
    #     </p>
    #   @return [String]
    # @!attribute message
    #   <p>The validation exception message.
    #     </p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
