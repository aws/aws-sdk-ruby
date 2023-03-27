# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::VoiceID
  module Types

    # You do not have sufficient permissions to perform this action. Check
    # the error message and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster.
    #   @return [String]
    #
    # @!attribute [rw] fraudster_id
    #   The identifier of the fraudster to be associated with the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] watchlist_id
    #   The identifier of the watchlist you want to associate with the
    #   fraudster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/AssociateFraudsterRequest AWS API Documentation
    #
    class AssociateFraudsterRequest < Struct.new(
      :domain_id,
      :fraudster_id,
      :watchlist_id)
      SENSITIVE = [:fraudster_id]
      include Aws::Structure
    end

    # @!attribute [rw] fraudster
    #   Contains all the information about a fraudster.
    #   @return [Types::Fraudster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/AssociateFraudsterResponse AWS API Documentation
    #
    class AssociateFraudsterResponse < Struct.new(
      :fraudster)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration used to authenticate a speaker during a session.
    #
    # @!attribute [rw] acceptance_threshold
    #   The minimum threshold needed to successfully authenticate a speaker.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/AuthenticationConfiguration AWS API Documentation
    #
    class AuthenticationConfiguration < Struct.new(
      :acceptance_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authentication result produced by Voice ID, processed against the
    # current session state and streamed audio of the speaker.
    #
    # @!attribute [rw] audio_aggregation_ended_at
    #   A timestamp of when audio aggregation ended for this authentication
    #   result.
    #   @return [Time]
    #
    # @!attribute [rw] audio_aggregation_started_at
    #   A timestamp of when audio aggregation started for this
    #   authentication result.
    #   @return [Time]
    #
    # @!attribute [rw] authentication_result_id
    #   The unique identifier for this authentication result. Because there
    #   can be multiple authentications for a given session, this field
    #   helps to identify if the returned result is from a previous
    #   streaming activity or a new result. Note that in absence of any new
    #   streaming activity, `AcceptanceThreshold` changes, or `SpeakerId`
    #   changes, Voice ID always returns cached Authentication Result for
    #   this API.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The `AuthenticationConfiguration` used to generate this
    #   authentication result.
    #   @return [Types::AuthenticationConfiguration]
    #
    # @!attribute [rw] customer_speaker_id
    #   The client-provided identifier for the speaker whose authentication
    #   result is produced. Only present if a `SpeakerId` is provided for
    #   the session.
    #   @return [String]
    #
    # @!attribute [rw] decision
    #   The authentication decision produced by Voice ID, processed against
    #   the current session state and streamed audio of the speaker.
    #   @return [String]
    #
    # @!attribute [rw] generated_speaker_id
    #   The service-generated identifier for the speaker whose
    #   authentication result is produced.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The authentication score for the speaker whose authentication result
    #   is produced. This value is only present if the authentication
    #   decision is either `ACCEPT` or `REJECT`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/AuthenticationResult AWS API Documentation
    #
    class AuthenticationResult < Struct.new(
      :audio_aggregation_ended_at,
      :audio_aggregation_started_at,
      :authentication_result_id,
      :configuration,
      :customer_speaker_id,
      :decision,
      :generated_speaker_id,
      :score)
      SENSITIVE = [:customer_speaker_id]
      include Aws::Structure
    end

    # The request failed due to a conflict. Check the `ConflictType` and
    # error message for more details.
    #
    # @!attribute [rw] conflict_type
    #   The type of conflict which caused a ConflictException. Possible
    #   types and the corresponding error messages are as follows:
    #
    #   * `DOMAIN_NOT_ACTIVE`: The domain is not active.
    #
    #   * `CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT`: You cannot change the
    #     speaker ID after an enrollment has been requested.
    #
    #   * `ENROLLMENT_ALREADY_EXISTS`: There is already an enrollment for
    #     this session.
    #
    #   * `SPEAKER_NOT_SET`: You must set the speaker ID before requesting
    #     an enrollment.
    #
    #   * `SPEAKER_OPTED_OUT`: You cannot request an enrollment for an opted
    #     out speaker.
    #
    #   * `CONCURRENT_CHANGES`: The request could not be processed as the
    #     resource was modified by another request during execution.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :conflict_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of this domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The configuration, containing the KMS key identifier, to be used by
    #   Voice ID for the server-side encryption of your data. Refer to [
    #   Amazon Connect Voice ID encryption at rest][1] for more details on
    #   how the KMS key is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/encryption-at-rest.html#encryption-at-rest-voiceid
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of tags you want added to the domain.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :server_side_encryption_configuration,
      :tags)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   Information about the newly created domain.
    #   @return [Types::Domain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/CreateDomainResponse AWS API Documentation
    #
    class CreateDomainResponse < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of this watchlist.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the watchlist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/CreateWatchlistRequest AWS API Documentation
    #
    class CreateWatchlistRequest < Struct.new(
      :client_token,
      :description,
      :domain_id,
      :name)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] watchlist
    #   Information about the newly created watchlist.
    #   @return [Types::Watchlist]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/CreateWatchlistResponse AWS API Documentation
    #
    class CreateWatchlistResponse < Struct.new(
      :watchlist)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster.
    #   @return [String]
    #
    # @!attribute [rw] fraudster_id
    #   The identifier of the fraudster you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DeleteFraudsterRequest AWS API Documentation
    #
    class DeleteFraudsterRequest < Struct.new(
      :domain_id,
      :fraudster_id)
      SENSITIVE = [:fraudster_id]
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the speaker.
    #   @return [String]
    #
    # @!attribute [rw] speaker_id
    #   The identifier of the speaker you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DeleteSpeakerRequest AWS API Documentation
    #
    class DeleteSpeakerRequest < Struct.new(
      :domain_id,
      :speaker_id)
      SENSITIVE = [:speaker_id]
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] watchlist_id
    #   The identifier of the watchlist to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DeleteWatchlistRequest AWS API Documentation
    #
    class DeleteWatchlistRequest < Struct.new(
      :domain_id,
      :watchlist_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that you are describing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeDomainRequest AWS API Documentation
    #
    class DescribeDomainRequest < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   Information about the specified domain.
    #   @return [Types::Domain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeDomainResponse AWS API Documentation
    #
    class DescribeDomainResponse < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster
    #   registration job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The identifier of the fraudster registration job you are describing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeFraudsterRegistrationJobRequest AWS API Documentation
    #
    class DescribeFraudsterRegistrationJobRequest < Struct.new(
      :domain_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   Contains details about the specified fraudster registration job.
    #   @return [Types::FraudsterRegistrationJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeFraudsterRegistrationJobResponse AWS API Documentation
    #
    class DescribeFraudsterRegistrationJobResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster.
    #   @return [String]
    #
    # @!attribute [rw] fraudster_id
    #   The identifier of the fraudster you are describing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeFraudsterRequest AWS API Documentation
    #
    class DescribeFraudsterRequest < Struct.new(
      :domain_id,
      :fraudster_id)
      SENSITIVE = [:fraudster_id]
      include Aws::Structure
    end

    # @!attribute [rw] fraudster
    #   Information about the specified fraudster.
    #   @return [Types::Fraudster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeFraudsterResponse AWS API Documentation
    #
    class DescribeFraudsterResponse < Struct.new(
      :fraudster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the speaker enrollment
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The identifier of the speaker enrollment job you are describing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeSpeakerEnrollmentJobRequest AWS API Documentation
    #
    class DescribeSpeakerEnrollmentJobRequest < Struct.new(
      :domain_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   Contains details about the specified speaker enrollment job.
    #   @return [Types::SpeakerEnrollmentJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeSpeakerEnrollmentJobResponse AWS API Documentation
    #
    class DescribeSpeakerEnrollmentJobResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the speaker.
    #   @return [String]
    #
    # @!attribute [rw] speaker_id
    #   The identifier of the speaker you are describing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeSpeakerRequest AWS API Documentation
    #
    class DescribeSpeakerRequest < Struct.new(
      :domain_id,
      :speaker_id)
      SENSITIVE = [:speaker_id]
      include Aws::Structure
    end

    # @!attribute [rw] speaker
    #   Information about the specified speaker.
    #   @return [Types::Speaker]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeSpeakerResponse AWS API Documentation
    #
    class DescribeSpeakerResponse < Struct.new(
      :speaker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] watchlist_id
    #   The identifier of the watchlist that you are describing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeWatchlistRequest AWS API Documentation
    #
    class DescribeWatchlistRequest < Struct.new(
      :domain_id,
      :watchlist_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] watchlist
    #   Information about the specified watchlist.
    #   @return [Types::Watchlist]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeWatchlistResponse AWS API Documentation
    #
    class DescribeWatchlistResponse < Struct.new(
      :watchlist)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster.
    #   @return [String]
    #
    # @!attribute [rw] fraudster_id
    #   The identifier of the fraudster to be disassociated from the
    #   watchlist.
    #   @return [String]
    #
    # @!attribute [rw] watchlist_id
    #   The identifier of the watchlist that you want to disassociate from
    #   the fraudster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DisassociateFraudsterRequest AWS API Documentation
    #
    class DisassociateFraudsterRequest < Struct.new(
      :domain_id,
      :fraudster_id,
      :watchlist_id)
      SENSITIVE = [:fraudster_id]
      include Aws::Structure
    end

    # @!attribute [rw] fraudster
    #   Contains all the information about a fraudster.
    #   @return [Types::Fraudster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DisassociateFraudsterResponse AWS API Documentation
    #
    class DisassociateFraudsterResponse < Struct.new(
      :fraudster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all the information about a domain.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the domain.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_status
    #   The current status of the domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the domain.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The server-side encryption configuration containing the KMS key
    #   identifier you want Voice ID to use to encrypt your data.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] server_side_encryption_update_details
    #   Details about the most recent server-side encryption configuration
    #   update. When the server-side encryption configuration is changed,
    #   dependency on the old KMS key is removed through an asynchronous
    #   process. When this update is complete, the domain's data can only
    #   be accessed using the new KMS key.
    #   @return [Types::ServerSideEncryptionUpdateDetails]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the domain was last update.
    #   @return [Time]
    #
    # @!attribute [rw] watchlist_details
    #   The watchlist details of a domain. Contains the default watchlist ID
    #   of the domain.
    #   @return [Types::WatchlistDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/Domain AWS API Documentation
    #
    class Domain < Struct.new(
      :arn,
      :created_at,
      :description,
      :domain_id,
      :domain_status,
      :name,
      :server_side_encryption_configuration,
      :server_side_encryption_update_details,
      :updated_at,
      :watchlist_details)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # Contains a summary of information about a domain.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the domain.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_status
    #   The current status of the domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The client-provided name for the domain.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The server-side encryption configuration containing the KMS key
    #   identifier you want Voice ID to use to encrypt your data.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] server_side_encryption_update_details
    #   Details about the most recent server-side encryption configuration
    #   update. When the server-side encryption configuration is changed,
    #   dependency on the old KMS key is removed through an asynchronous
    #   process. When this update is complete, the domain's data can only
    #   be accessed using the new KMS key.
    #   @return [Types::ServerSideEncryptionUpdateDetails]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the domain was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] watchlist_details
    #   Provides information about `watchlistDetails` and
    #   `DefaultWatchlistID`.
    #   @return [Types::WatchlistDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :domain_id,
      :domain_status,
      :name,
      :server_side_encryption_configuration,
      :server_side_encryption_update_details,
      :updated_at,
      :watchlist_details)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # Contains configurations defining enrollment behavior for the batch
    # job.
    #
    # @!attribute [rw] existing_enrollment_action
    #   The action to take when the specified speaker is already enrolled in
    #   the specified domain. The default value is `SKIP`, which skips the
    #   enrollment for the existing speaker. Setting the value to
    #   `OVERWRITE` replaces the existing voice prints and enrollment audio
    #   stored for that speaker with new data generated from the latest
    #   audio.
    #   @return [String]
    #
    # @!attribute [rw] fraud_detection_config
    #   The fraud detection configuration to use for the speaker enrollment
    #   job.
    #   @return [Types::EnrollmentJobFraudDetectionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/EnrollmentConfig AWS API Documentation
    #
    class EnrollmentConfig < Struct.new(
      :existing_enrollment_action,
      :fraud_detection_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The fraud detection configuration to be used during the batch speaker
    # enrollment job.
    #
    # @!attribute [rw] fraud_detection_action
    #   The action to take when the given speaker is flagged by the fraud
    #   detection system. The default value is `FAIL`, which fails the
    #   speaker enrollment. Changing this value to `IGNORE` results in the
    #   speaker being enrolled even if they are flagged by the fraud
    #   detection system.
    #   @return [String]
    #
    # @!attribute [rw] risk_threshold
    #   Threshold value for determining whether the speaker is a high risk
    #   to be fraudulent. If the detected risk score calculated by Voice ID
    #   is greater than or equal to the threshold, the speaker is considered
    #   a fraudster.
    #   @return [Integer]
    #
    # @!attribute [rw] watchlist_ids
    #   The identifier of watchlists against which fraud detection is
    #   performed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/EnrollmentJobFraudDetectionConfig AWS API Documentation
    #
    class EnrollmentJobFraudDetectionConfig < Struct.new(
      :fraud_detection_action,
      :risk_threshold,
      :watchlist_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain where the session started.
    #   @return [String]
    #
    # @!attribute [rw] session_name_or_id
    #   The session identifier, or name of the session, that you want to
    #   evaluate. In Voice ID integration, this is the Contact-Id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/EvaluateSessionRequest AWS API Documentation
    #
    class EvaluateSessionRequest < Struct.new(
      :domain_id,
      :session_name_or_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_result
    #   Details resulting from the authentication process, such as
    #   authentication decision and authentication score.
    #   @return [Types::AuthenticationResult]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the session.
    #   @return [String]
    #
    # @!attribute [rw] fraud_detection_result
    #   Details resulting from the fraud detection process, such as fraud
    #   detection decision and risk score.
    #   @return [Types::FraudDetectionResult]
    #
    # @!attribute [rw] session_id
    #   The service-generated identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_name
    #   The client-provided name of the session.
    #   @return [String]
    #
    # @!attribute [rw] streaming_status
    #   The current status of audio streaming for this session. This field
    #   is useful to infer next steps when the Authentication or Fraud
    #   Detection results are empty or the decision is `NOT_ENOUGH_SPEECH`.
    #   In this situation, if the `StreamingStatus` is
    #   `ONGOING/PENDING_CONFIGURATION`, it can mean that the client should
    #   call the API again later, after Voice ID has enough audio to produce
    #   a result. If the decision remains `NOT_ENOUGH_SPEECH` even after
    #   `StreamingStatus` is `ENDED`, it means that the previously streamed
    #   session did not have enough speech to perform evaluation, and a new
    #   streaming session is needed to try again.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/EvaluateSessionResponse AWS API Documentation
    #
    class EvaluateSessionResponse < Struct.new(
      :authentication_result,
      :domain_id,
      :fraud_detection_result,
      :session_id,
      :session_name,
      :streaming_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error details for a failed batch job.
    #
    # @!attribute [rw] message
    #   A description of the error that caused the batch job failure.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   An HTTP status code representing the nature of the error.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/FailureDetails AWS API Documentation
    #
    class FailureDetails < Struct.new(
      :message,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration used for performing fraud detection over a speaker
    # during a session.
    #
    # @!attribute [rw] risk_threshold
    #   Threshold value for determining whether the speaker is a fraudster.
    #   If the detected risk score calculated by Voice ID is higher than the
    #   threshold, the speaker is considered a fraudster.
    #   @return [Integer]
    #
    # @!attribute [rw] watchlist_id
    #   The identifier of the watchlist against which fraud detection is
    #   performed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/FraudDetectionConfiguration AWS API Documentation
    #
    class FraudDetectionConfiguration < Struct.new(
      :risk_threshold,
      :watchlist_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The fraud detection result produced by Voice ID, processed against the
    # current session state and streamed audio of the speaker.
    #
    # @!attribute [rw] audio_aggregation_ended_at
    #   A timestamp of when audio aggregation ended for this fraud detection
    #   result.
    #   @return [Time]
    #
    # @!attribute [rw] audio_aggregation_started_at
    #   A timestamp of when audio aggregation started for this fraud
    #   detection result.
    #   @return [Time]
    #
    # @!attribute [rw] configuration
    #   The `FraudDetectionConfiguration` used to generate this fraud
    #   detection result.
    #   @return [Types::FraudDetectionConfiguration]
    #
    # @!attribute [rw] decision
    #   The fraud detection decision produced by Voice ID, processed against
    #   the current session state and streamed audio of the speaker.
    #   @return [String]
    #
    # @!attribute [rw] fraud_detection_result_id
    #   The unique identifier for this fraud detection result. Given there
    #   can be multiple fraud detections for a given session, this field
    #   helps in identifying if the returned result is from previous
    #   streaming activity or a new result. Note that in the absence of any
    #   new streaming activity or risk threshold changes, Voice ID always
    #   returns cached Fraud Detection result for this API.
    #   @return [String]
    #
    # @!attribute [rw] reasons
    #   The reason speaker was flagged by the fraud detection system. This
    #   is only be populated if fraud detection Decision is `HIGH_RISK`, and
    #   the following possible values: `KNOWN_FRAUDSTER` and
    #   `VOICE_SPOOFING`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] risk_details
    #   Details about each risk analyzed for this speaker. Currently, this
    #   contains KnownFraudsterRisk and VoiceSpoofingRisk details.
    #   @return [Types::FraudRiskDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/FraudDetectionResult AWS API Documentation
    #
    class FraudDetectionResult < Struct.new(
      :audio_aggregation_ended_at,
      :audio_aggregation_started_at,
      :configuration,
      :decision,
      :fraud_detection_result_id,
      :reasons,
      :risk_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details regarding various fraud risk analyses performed against the
    # current session state and streamed audio of the speaker.
    #
    # @!attribute [rw] known_fraudster_risk
    #   The details resulting from 'Known Fraudster Risk' analysis of the
    #   speaker.
    #   @return [Types::KnownFraudsterRisk]
    #
    # @!attribute [rw] voice_spoofing_risk
    #   The details resulting from 'Voice Spoofing Risk' analysis of the
    #   speaker.
    #   @return [Types::VoiceSpoofingRisk]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/FraudRiskDetails AWS API Documentation
    #
    class FraudRiskDetails < Struct.new(
      :known_fraudster_risk,
      :voice_spoofing_risk)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all the information about a fraudster.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when Voice ID identified the fraudster.
    #   @return [Time]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster.
    #   @return [String]
    #
    # @!attribute [rw] generated_fraudster_id
    #   The service-generated identifier for the fraudster.
    #   @return [String]
    #
    # @!attribute [rw] watchlist_ids
    #   The identifier of the watchlists the fraudster is a part of.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/Fraudster AWS API Documentation
    #
    class Fraudster < Struct.new(
      :created_at,
      :domain_id,
      :generated_fraudster_id,
      :watchlist_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all the information about a fraudster registration job.
    #
    # @!attribute [rw] created_at
    #   A timestamp of when the fraudster registration job was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_access_role_arn
    #   The IAM role Amazon Resource Name (ARN) that grants Voice ID
    #   permissions to access customer's buckets to read the input manifest
    #   file and write the job output file.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster
    #   registration job.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   A timestamp of when the fraudster registration job ended.
    #   @return [Time]
    #
    # @!attribute [rw] failure_details
    #   Contains details that are populated when an entire batch job fails.
    #   In cases of individual registration job failures, the batch job as a
    #   whole doesn't fail; it is completed with a `JobStatus` of
    #   `COMPLETED_WITH_ERRORS`. You can use the job output file to identify
    #   the individual registration requests that failed.
    #   @return [Types::FailureDetails]
    #
    # @!attribute [rw] input_data_config
    #   The input data config containing an S3 URI for the input manifest
    #   file that contains the list of fraudster registration job requests.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] job_id
    #   The service-generated identifier for the fraudster registration job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The client-provided name for the fraudster registration job.
    #   @return [String]
    #
    # @!attribute [rw] job_progress
    #   Shows the completed percentage of registration requests listed in
    #   the input file.
    #   @return [Types::JobProgress]
    #
    # @!attribute [rw] job_status
    #   The current status of the fraudster registration job.
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   The output data config containing the S3 location where you want
    #   Voice ID to write your job output file; you must also include a KMS
    #   key ID in order to encrypt the file.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] registration_config
    #   The registration config containing details such as the action to
    #   take when a duplicate fraudster is detected, and the similarity
    #   threshold to use for detecting a duplicate fraudster.
    #   @return [Types::RegistrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/FraudsterRegistrationJob AWS API Documentation
    #
    class FraudsterRegistrationJob < Struct.new(
      :created_at,
      :data_access_role_arn,
      :domain_id,
      :ended_at,
      :failure_details,
      :input_data_config,
      :job_id,
      :job_name,
      :job_progress,
      :job_status,
      :output_data_config,
      :registration_config)
      SENSITIVE = [:job_name]
      include Aws::Structure
    end

    # Contains a summary of information about a fraudster registration job.
    #
    # @!attribute [rw] created_at
    #   A timestamp of when the fraudster registration job was created.
    #   @return [Time]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster
    #   registration job.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   A timestamp of when the fraudster registration job ended.
    #   @return [Time]
    #
    # @!attribute [rw] failure_details
    #   Contains details that are populated when an entire batch job fails.
    #   In cases of individual registration job failures, the batch job as a
    #   whole doesn't fail; it is completed with a `JobStatus` of
    #   `COMPLETED_WITH_ERRORS`. You can use the job output file to identify
    #   the individual registration requests that failed.
    #   @return [Types::FailureDetails]
    #
    # @!attribute [rw] job_id
    #   The service-generated identifier for the fraudster registration job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The client-provided name for the fraudster registration job.
    #   @return [String]
    #
    # @!attribute [rw] job_progress
    #   Shows the completed percentage of registration requests listed in
    #   the input file.
    #   @return [Types::JobProgress]
    #
    # @!attribute [rw] job_status
    #   The current status of the fraudster registration job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/FraudsterRegistrationJobSummary AWS API Documentation
    #
    class FraudsterRegistrationJobSummary < Struct.new(
      :created_at,
      :domain_id,
      :ended_at,
      :failure_details,
      :job_id,
      :job_name,
      :job_progress,
      :job_status)
      SENSITIVE = [:job_name]
      include Aws::Structure
    end

    # Contains a summary of information about a fraudster.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the fraudster summary was created.
    #   @return [Time]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster summary.
    #   @return [String]
    #
    # @!attribute [rw] generated_fraudster_id
    #   The service-generated identifier for the fraudster.
    #   @return [String]
    #
    # @!attribute [rw] watchlist_ids
    #   The identifier of the watchlists the fraudster is a part of.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/FraudsterSummary AWS API Documentation
    #
    class FraudsterSummary < Struct.new(
      :created_at,
      :domain_id,
      :generated_fraudster_id,
      :watchlist_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration containing input file information for a batch job.
    #
    # @!attribute [rw] s3_uri
    #   The S3 location for the input manifest file that contains the list
    #   of individual enrollment or registration job requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/InputDataConfig AWS API Documentation
    #
    class InputDataConfig < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed due to an unknown error on the server side.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the completion progress for a batch job.
    #
    # @!attribute [rw] percent_complete
    #   Shows the completed percentage of enrollment or registration
    #   requests listed in the input file.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/JobProgress AWS API Documentation
    #
    class JobProgress < Struct.new(
      :percent_complete)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details produced as a result of performing known fraudster
    # risk analysis on a speaker.
    #
    # @!attribute [rw] generated_fraudster_id
    #   The identifier of the fraudster that is the closest match to the
    #   speaker. If there are no fraudsters registered in a given domain, or
    #   if there are no fraudsters with a non-zero RiskScore, this value is
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] risk_score
    #   The score indicating the likelihood the speaker is a known
    #   fraudster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/KnownFraudsterRisk AWS API Documentation
    #
    class KnownFraudsterRisk < Struct.new(
      :generated_fraudster_id,
      :risk_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `NextToken` to obtain more pages of results. The default is 100;
    #   the maximum allowed page size is also 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_summaries
    #   A list containing details about each domain in the Amazon Web
    #   Services account.
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListDomainsResponse AWS API Documentation
    #
    class ListDomainsResponse < Struct.new(
      :domain_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster
    #   registration Jobs.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Provides the status of your fraudster registration job.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `NextToken` to obtain more pages of results. The default is 100;
    #   the maximum allowed page size is also 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListFraudsterRegistrationJobsRequest AWS API Documentation
    #
    class ListFraudsterRegistrationJobsRequest < Struct.new(
      :domain_id,
      :job_status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_summaries
    #   A list containing details about each specified fraudster
    #   registration job.
    #   @return [Array<Types::FraudsterRegistrationJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListFraudsterRegistrationJobsResponse AWS API Documentation
    #
    class ListFraudsterRegistrationJobsResponse < Struct.new(
      :job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `NextToken` to obtain more pages of results. The default is 100;
    #   the maximum allowed page size is also 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] watchlist_id
    #   The identifier of the watchlist. If provided, all fraudsters in the
    #   watchlist are listed. If not provided, all fraudsters in the domain
    #   are listed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListFraudstersRequest AWS API Documentation
    #
    class ListFraudstersRequest < Struct.new(
      :domain_id,
      :max_results,
      :next_token,
      :watchlist_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fraudster_summaries
    #   A list that contains details about each fraudster in the Amazon Web
    #   Services account.
    #   @return [Array<Types::FraudsterSummary>]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListFraudstersResponse AWS API Documentation
    #
    class ListFraudstersResponse < Struct.new(
      :fraudster_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the speaker enrollment
    #   jobs.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Provides the status of your speaker enrollment Job.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `NextToken` to obtain more pages of results. The default is 100;
    #   the maximum allowed page size is also 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListSpeakerEnrollmentJobsRequest AWS API Documentation
    #
    class ListSpeakerEnrollmentJobsRequest < Struct.new(
      :domain_id,
      :job_status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_summaries
    #   A list containing details about each specified speaker enrollment
    #   job.
    #   @return [Array<Types::SpeakerEnrollmentJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListSpeakerEnrollmentJobsResponse AWS API Documentation
    #
    class ListSpeakerEnrollmentJobsResponse < Struct.new(
      :job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `NextToken` to obtain more pages of results. The default is 100;
    #   the maximum allowed page size is also 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListSpeakersRequest AWS API Documentation
    #
    class ListSpeakersRequest < Struct.new(
      :domain_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] speaker_summaries
    #   A list containing details about each speaker in the Amazon Web
    #   Services account.
    #   @return [Array<Types::SpeakerSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListSpeakersResponse AWS API Documentation
    #
    class ListSpeakersResponse < Struct.new(
      :next_token,
      :speaker_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Voice ID resource for which
    #   you want to list the tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `NextToken` to obtain more pages of results. The default is 100;
    #   the maximum allowed page size is also 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListWatchlistsRequest AWS API Documentation
    #
    class ListWatchlistsRequest < Struct.new(
      :domain_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] watchlist_summaries
    #   A list that contains details about each watchlist in the Amazon Web
    #   Services account.
    #   @return [Array<Types::WatchlistSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListWatchlistsResponse AWS API Documentation
    #
    class ListWatchlistsResponse < Struct.new(
      :next_token,
      :watchlist_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the speaker.
    #   @return [String]
    #
    # @!attribute [rw] speaker_id
    #   The identifier of the speaker you want opted-out.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/OptOutSpeakerRequest AWS API Documentation
    #
    class OptOutSpeakerRequest < Struct.new(
      :domain_id,
      :speaker_id)
      SENSITIVE = [:speaker_id]
      include Aws::Structure
    end

    # @!attribute [rw] speaker
    #   Details about the opted-out speaker.
    #   @return [Types::Speaker]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/OptOutSpeakerResponse AWS API Documentation
    #
    class OptOutSpeakerResponse < Struct.new(
      :speaker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration containing output file information for a batch job.
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the KMS key you want Voice ID to use to encrypt
    #   the output file of a speaker enrollment job/fraudster registration
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The S3 path of the folder where Voice ID writes the job output file.
    #   It has a `*.out` extension. For example, if the input file name is
    #   `input-file.json` and the output folder path is
    #   `s3://output-bucket/output-folder`, the full output file path is
    #   `s3://output-bucket/output-folder/job-Id/input-file.json.out`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :kms_key_id,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The registration configuration to be used during the batch fraudster
    # registration job.
    #
    # @!attribute [rw] duplicate_registration_action
    #   The action to take when a fraudster is identified as a duplicate.
    #   The default action is `SKIP`, which skips registering the duplicate
    #   fraudster. Setting the value to `REGISTER_AS_NEW` always registers a
    #   new fraudster into the specified domain.
    #   @return [String]
    #
    # @!attribute [rw] fraudster_similarity_threshold
    #   The minimum similarity score between the new and old fraudsters in
    #   order to consider the new fraudster a duplicate.
    #   @return [Integer]
    #
    # @!attribute [rw] watchlist_ids
    #   The identifiers of watchlists that a fraudster is registered to. If
    #   a watchlist isn't provided, the fraudsters are registered to the
    #   default watchlist.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/RegistrationConfig AWS API Documentation
    #
    class RegistrationConfig < Struct.new(
      :duplicate_registration_action,
      :fraudster_similarity_threshold,
      :watchlist_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource cannot be found. Check the `ResourceType` and
    # error message for more details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource which cannot not be found. Possible types are
    #   `BATCH_JOB`, `COMPLIANCE_CONSENT`, `DOMAIN`, `FRAUDSTER`, `SESSION`
    #   and `SPEAKER`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration containing information about the customer managed
    # key used for encrypting customer data.
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the KMS key to use to encrypt data stored by Voice
    #   ID. Voice ID doesn't support asymmetric customer managed keys.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ServerSideEncryptionConfiguration AWS API Documentation
    #
    class ServerSideEncryptionConfiguration < Struct.new(
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the most recent server-side encryption configuration
    # update. When the server-side encryption configuration is changed,
    # dependency on the old KMS key is removed through an asynchronous
    # process. When this update is complete, the domain’s data can only be
    # accessed using the new KMS key.
    #
    # @!attribute [rw] message
    #   Message explaining the current UpdateStatus. When the UpdateStatus
    #   is FAILED, this message explains the cause of the failure.
    #   @return [String]
    #
    # @!attribute [rw] old_kms_key_id
    #   The previous KMS key ID the domain was encrypted with, before
    #   ServerSideEncryptionConfiguration was updated to a new KMS key ID.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   Status of the server-side encryption update. During an update, if
    #   there is an issue with the domain's current or old KMS key ID, such
    #   as an inaccessible or disabled key, then the status is FAILED. In
    #   order to resolve this, the key needs to be made accessible, and then
    #   an UpdateDomain call with the existing server-side encryption
    #   configuration will re-attempt this update process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ServerSideEncryptionUpdateDetails AWS API Documentation
    #
    class ServerSideEncryptionUpdateDetails < Struct.new(
      :message,
      :old_kms_key_id,
      :update_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeded the service quota. Refer to [Voice ID Service
    # Quotas][1] and try your request again.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#voiceid-quotas
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all the information about a speaker.
    #
    # @!attribute [rw] created_at
    #   A timestamp of when the speaker was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_speaker_id
    #   The client-provided identifier for the speaker.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the speaker.
    #   @return [String]
    #
    # @!attribute [rw] generated_speaker_id
    #   The service-generated identifier for the speaker.
    #   @return [String]
    #
    # @!attribute [rw] last_accessed_at
    #   The timestamp of when the speaker was last accessed for enrollment,
    #   re-enrollment or a successful authentication. This timestamp is
    #   accurate to one hour.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the speaker.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   A timestamp of the speaker's last update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/Speaker AWS API Documentation
    #
    class Speaker < Struct.new(
      :created_at,
      :customer_speaker_id,
      :domain_id,
      :generated_speaker_id,
      :last_accessed_at,
      :status,
      :updated_at)
      SENSITIVE = [:customer_speaker_id]
      include Aws::Structure
    end

    # Contains all the information about a speaker enrollment job.
    #
    # @!attribute [rw] created_at
    #   A timestamp of when the speaker enrollment job was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_access_role_arn
    #   The IAM role Amazon Resource Name (ARN) that grants Voice ID
    #   permissions to access customer's buckets to read the input manifest
    #   file and write the job output file.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the speaker enrollment
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   A timestamp of when the speaker enrollment job ended.
    #   @return [Time]
    #
    # @!attribute [rw] enrollment_config
    #   The configuration that defines the action to take when the speaker
    #   is already enrolled in Voice ID, and the `FraudDetectionConfig` to
    #   use.
    #   @return [Types::EnrollmentConfig]
    #
    # @!attribute [rw] failure_details
    #   Contains details that are populated when an entire batch job fails.
    #   In cases of individual registration job failures, the batch job as a
    #   whole doesn't fail; it is completed with a `JobStatus` of
    #   `COMPLETED_WITH_ERRORS`. You can use the job output file to identify
    #   the individual registration requests that failed.
    #   @return [Types::FailureDetails]
    #
    # @!attribute [rw] input_data_config
    #   The input data config containing an S3 URI for the input manifest
    #   file that contains the list of speaker enrollment job requests.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] job_id
    #   The service-generated identifier for the speaker enrollment job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The client-provided name for the speaker enrollment job.
    #   @return [String]
    #
    # @!attribute [rw] job_progress
    #   Provides details on job progress. This field shows the completed
    #   percentage of registration requests listed in the input file.
    #   @return [Types::JobProgress]
    #
    # @!attribute [rw] job_status
    #   The current status of the speaker enrollment job.
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   The output data config containing the S3 location where Voice ID
    #   writes the job output file; you must also include a KMS key ID to
    #   encrypt the file.
    #   @return [Types::OutputDataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/SpeakerEnrollmentJob AWS API Documentation
    #
    class SpeakerEnrollmentJob < Struct.new(
      :created_at,
      :data_access_role_arn,
      :domain_id,
      :ended_at,
      :enrollment_config,
      :failure_details,
      :input_data_config,
      :job_id,
      :job_name,
      :job_progress,
      :job_status,
      :output_data_config)
      SENSITIVE = [:job_name]
      include Aws::Structure
    end

    # Contains a summary of information about a speaker enrollment job.
    #
    # @!attribute [rw] created_at
    #   A timestamp of when of the speaker enrollment job was created.
    #   @return [Time]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the speaker enrollment
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   A timestamp of when the speaker enrollment job ended.
    #   @return [Time]
    #
    # @!attribute [rw] failure_details
    #   Contains details that are populated when an entire batch job fails.
    #   In cases of individual registration job failures, the batch job as a
    #   whole doesn't fail; it is completed with a `JobStatus` of
    #   `COMPLETED_WITH_ERRORS`. You can use the job output file to identify
    #   the individual registration requests that failed.
    #   @return [Types::FailureDetails]
    #
    # @!attribute [rw] job_id
    #   The service-generated identifier for the speaker enrollment job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The client-provided name for the speaker enrollment job.
    #   @return [String]
    #
    # @!attribute [rw] job_progress
    #   Provides details regarding job progress. This field shows the
    #   completed percentage of enrollment requests listed in the input
    #   file.
    #   @return [Types::JobProgress]
    #
    # @!attribute [rw] job_status
    #   The current status of the speaker enrollment job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/SpeakerEnrollmentJobSummary AWS API Documentation
    #
    class SpeakerEnrollmentJobSummary < Struct.new(
      :created_at,
      :domain_id,
      :ended_at,
      :failure_details,
      :job_id,
      :job_name,
      :job_progress,
      :job_status)
      SENSITIVE = [:job_name]
      include Aws::Structure
    end

    # Contains a summary of information about a speaker.
    #
    # @!attribute [rw] created_at
    #   A timestamp showing the speaker's creation time.
    #   @return [Time]
    #
    # @!attribute [rw] customer_speaker_id
    #   The client-provided identifier for the speaker.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the speaker.
    #   @return [String]
    #
    # @!attribute [rw] generated_speaker_id
    #   The service-generated identifier for the speaker.
    #   @return [String]
    #
    # @!attribute [rw] last_accessed_at
    #   The timestamp when the speaker was last accessed for enrollment,
    #   re-enrollment or a successful authentication. This timestamp is
    #   accurate to one hour.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the speaker.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   A timestamp showing the speaker's last update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/SpeakerSummary AWS API Documentation
    #
    class SpeakerSummary < Struct.new(
      :created_at,
      :customer_speaker_id,
      :domain_id,
      :generated_speaker_id,
      :last_accessed_at,
      :status,
      :updated_at)
      SENSITIVE = [:customer_speaker_id]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The IAM role Amazon Resource Name (ARN) that grants Voice ID
    #   permissions to access customer's buckets to read the input manifest
    #   file and write the Job output file. Refer to the [Create and edit a
    #   fraudster watchlist][1] documentation for the permissions needed in
    #   this role.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-fraudster-watchlist.html
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the fraudster
    #   registration job and in which the fraudsters are registered.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The input data config containing an S3 URI for the input manifest
    #   file that contains the list of fraudster registration requests.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] job_name
    #   The name of the new fraudster registration job.
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   The output data config containing the S3 location where Voice ID
    #   writes the job output file; you must also include a KMS key ID to
    #   encrypt the file.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] registration_config
    #   The registration config containing details such as the action to
    #   take when a duplicate fraudster is detected, and the similarity
    #   threshold to use for detecting a duplicate fraudster.
    #   @return [Types::RegistrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/StartFraudsterRegistrationJobRequest AWS API Documentation
    #
    class StartFraudsterRegistrationJobRequest < Struct.new(
      :client_token,
      :data_access_role_arn,
      :domain_id,
      :input_data_config,
      :job_name,
      :output_data_config,
      :registration_config)
      SENSITIVE = [:job_name]
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   Details about the started fraudster registration job.
    #   @return [Types::FraudsterRegistrationJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/StartFraudsterRegistrationJobResponse AWS API Documentation
    #
    class StartFraudsterRegistrationJobResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The IAM role Amazon Resource Name (ARN) that grants Voice ID
    #   permissions to access customer's buckets to read the input manifest
    #   file and write the job output file. Refer to [Batch enrollment using
    #   audio data from prior calls][1] for the permissions needed in this
    #   role.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-batch-enrollment.html
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the speaker enrollment
    #   job and in which the speakers are enrolled.
    #   @return [String]
    #
    # @!attribute [rw] enrollment_config
    #   The enrollment config that contains details such as the action to
    #   take when a speaker is already enrolled in Voice ID or when a
    #   speaker is identified as a fraudster.
    #   @return [Types::EnrollmentConfig]
    #
    # @!attribute [rw] input_data_config
    #   The input data config containing the S3 location for the input
    #   manifest file that contains the list of speaker enrollment requests.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] job_name
    #   A name for your speaker enrollment job.
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   The output data config containing the S3 location where Voice ID
    #   writes the job output file; you must also include a KMS key ID to
    #   encrypt the file.
    #   @return [Types::OutputDataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/StartSpeakerEnrollmentJobRequest AWS API Documentation
    #
    class StartSpeakerEnrollmentJobRequest < Struct.new(
      :client_token,
      :data_access_role_arn,
      :domain_id,
      :enrollment_config,
      :input_data_config,
      :job_name,
      :output_data_config)
      SENSITIVE = [:job_name]
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   Details about the started speaker enrollment job.
    #   @return [Types::SpeakerEnrollmentJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/StartSpeakerEnrollmentJobResponse AWS API Documentation
    #
    class StartSpeakerEnrollmentJobResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tags used to organize, track, or control access for this resource.
    # For example, \\\{ "tags": \\\{"key1":"value1",
    # "key2":"value2"\\} \\}.
    #
    # @!attribute [rw] key
    #   The first part of a key:value pair that forms a tag associated with
    #   a given resource. For example, in the tag 'Department':'Sales',
    #   the key is 'Department'.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The second part of a key:value pair that forms a tag associated with
    #   a given resource. For example, in the tag 'Department':'Sales',
    #   the value is 'Sales'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Voice ID resource you want to
    #   tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to assign to the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling. Please slow down
    # your request rate. Refer to [ Amazon Connect Voice ID Service API
    # throttling quotas ][1] and try your request again.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html##voiceid-api-quotas
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Voice ID resource you want to
    #   remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys you want to remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] description
    #   A brief description about this domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The configuration, containing the KMS key identifier, to be used by
    #   Voice ID for the server-side encryption of your data. Changing the
    #   domain's associated KMS key immediately triggers an asynchronous
    #   process to remove dependency on the old KMS key, such that the
    #   domain's data can only be accessed using the new KMS key. The
    #   domain's `ServerSideEncryptionUpdateDetails` contains the details
    #   for this process.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/UpdateDomainRequest AWS API Documentation
    #
    class UpdateDomainRequest < Struct.new(
      :description,
      :domain_id,
      :name,
      :server_side_encryption_configuration)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   Details about the updated domain
    #   @return [Types::Domain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/UpdateDomainResponse AWS API Documentation
    #
    class UpdateDomainResponse < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A brief description about this watchlist.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] watchlist_id
    #   The identifier of the watchlist to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/UpdateWatchlistRequest AWS API Documentation
    #
    class UpdateWatchlistRequest < Struct.new(
      :description,
      :domain_id,
      :name,
      :watchlist_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] watchlist
    #   Details about the updated watchlist.
    #   @return [Types::Watchlist]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/UpdateWatchlistResponse AWS API Documentation
    #
    class UpdateWatchlistResponse < Struct.new(
      :watchlist)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed one or more validations; check the error message
    # for more details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details resulting from 'Voice Spoofing Risk' analysis of the
    # speaker.
    #
    # @!attribute [rw] risk_score
    #   The score indicating the likelihood of speaker’s voice being
    #   spoofed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/VoiceSpoofingRisk AWS API Documentation
    #
    class VoiceSpoofingRisk < Struct.new(
      :risk_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all the information about a watchlist.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the watchlist was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_watchlist
    #   Whether the specified watchlist is the default watchlist of a
    #   domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the watchlist was updated.
    #   @return [Time]
    #
    # @!attribute [rw] watchlist_id
    #   The identifier of the watchlist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/Watchlist AWS API Documentation
    #
    class Watchlist < Struct.new(
      :created_at,
      :default_watchlist,
      :description,
      :domain_id,
      :name,
      :updated_at,
      :watchlist_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # Details of the watchlists in a domain.
    #
    # @!attribute [rw] default_watchlist_id
    #   The identifier of the default watchlist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/WatchlistDetails AWS API Documentation
    #
    class WatchlistDetails < Struct.new(
      :default_watchlist_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of information about a watchlist.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the watchlist was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_watchlist
    #   Whether the specified watchlist is the default watchlist of a
    #   domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The identifier of the domain that contains the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the watchlist.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the watchlist was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] watchlist_id
    #   The identifier of the watchlist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/WatchlistSummary AWS API Documentation
    #
    class WatchlistSummary < Struct.new(
      :created_at,
      :default_watchlist,
      :description,
      :domain_id,
      :name,
      :updated_at,
      :watchlist_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

  end
end
