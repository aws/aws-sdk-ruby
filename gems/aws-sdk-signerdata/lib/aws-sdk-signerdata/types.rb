# frozen_string_literal: true

# This is generated code!

module Aws::SignerData
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient permissions to perform this action.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for checking revocation status.</p>
    # @!attribute signature_timestamp
    #   <p>The timestamp when the artifact was signed, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute platform_id
    #   <p>The platform identifier for the signing platform used.</p>
    #   @return [String]
    # @!attribute profile_version_arn
    #   <p>The ARN of the signing profile version used to sign the artifact.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The ARN of the signing job that produced the signature.</p>
    #   @return [String]
    # @!attribute certificate_hashes
    #   <p>List of certificate hashes to check for revocation.</p>
    #   @return [Array<String>]
    class GetRevocationStatusRequest < Struct.new(
      nil,
      :signature_timestamp,
      :platform_id,
      :profile_version_arn,
      :job_arn,
      :certificate_hashes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the list of revoked entities.</p>
    # @!attribute revoked_entities
    #   <p>List of entity identifiers that have been revoked. Empty if no revocations found.</p>
    #   @return [Array<String>]
    class GetRevocationStatusResponse < Struct.new(
      nil,
      :revoked_entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal service error occurred.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class InternalServiceErrorException < Struct.new(
      nil,
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request contains invalid parameters or is malformed.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
