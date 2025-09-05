# frozen_string_literal: true

# This is generated code!

module Aws::SSMGuiConnect
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred due to a conflict.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The set of preferences used for recording RDP connections in the requesting Amazon Web Services account and Amazon Web Services Region. This includes details such as which S3 bucket recordings are stored in.</p>
    # @!attribute recording_destinations
    #   <p>Determines where recordings of RDP connections are stored.</p>
    #   @return [Types::RecordingDestinations]
    # @!attribute kms_key_arn
    #   <p>The ARN of a KMS key that is used to encrypt data while it is being processed by the service. This key must exist in the same Amazon Web Services Region as the node you start an RDP connection to.</p>
    #   @return [String]
    class ConnectionRecordingPreferences < Struct.new(
      :recording_destinations,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>User-provided idempotency token.</p>
    #   @return [String]
    class DeleteConnectionRecordingPreferencesRequest < Struct.new(
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Service-provided idempotency token.</p>
    #   @return [String]
    class DeleteConnectionRecordingPreferencesResponse < Struct.new(
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Service-provided idempotency token.</p>
    #   @return [String]
    # @!attribute connection_recording_preferences
    #   <p>The set of preferences used for recording RDP connections in the requesting Amazon Web Services account and Amazon Web Services Region. This includes details such as which S3 bucket recordings are stored in.</p>
    #   @return [Types::ConnectionRecordingPreferences]
    class GetConnectionRecordingPreferencesResponse < Struct.new(
      :client_token,
      :connection_recording_preferences,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Determines where recordings of RDP connections are stored.</p>
    # @!attribute s3_buckets
    #   <p>The S3 bucket where RDP connection recordings are stored.</p>
    #   @return [Array<Types::S3Bucket>]
    class RecordingDestinations < Struct.new(
      :s3_buckets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 bucket where RDP connection recordings are stored.</p>
    # @!attribute bucket_owner
    #   <p>The Amazon Web Services account number that owns the S3 bucket.</p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket where RDP connection recordings are stored.</p>
    #   @return [String]
    class S3Bucket < Struct.new(
      :bucket_owner,
      :bucket_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_recording_preferences
    #   <p>The set of preferences used for recording RDP connections in the requesting Amazon Web Services account and Amazon Web Services Region. This includes details such as which S3 bucket recordings are stored in.</p>
    #   @return [Types::ConnectionRecordingPreferences]
    # @!attribute client_token
    #   <p>User-provided idempotency token.</p>
    #   @return [String]
    class UpdateConnectionRecordingPreferencesRequest < Struct.new(
      :connection_recording_preferences,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Service-provided idempotency token.</p>
    #   @return [String]
    # @!attribute connection_recording_preferences
    #   <p>The set of preferences used for recording RDP connections in the requesting Amazon Web Services account and Amazon Web Services Region. This includes details such as which S3 bucket recordings are stored in.</p>
    #   @return [Types::ConnectionRecordingPreferences]
    class UpdateConnectionRecordingPreferencesResponse < Struct.new(
      :client_token,
      :connection_recording_preferences,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
