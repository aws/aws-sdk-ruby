# frozen_string_literal: true

# This is generated code!

module Aws::VoiceID
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient permissions to perform this action. Check the error message
    #             and try again.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster.</p>
    #   @return [String]
    # @!attribute watchlist_id
    #   <p>The identifier of the watchlist you want to associate with the fraudster.</p>
    #   @return [String]
    # @!attribute fraudster_id
    #   <p>The identifier of the fraudster to be associated with the watchlist.</p>
    #   @return [String]
    class AssociateFraudsterInput < Struct.new(
      :domain_id,
      :watchlist_id,
      :fraudster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fraudster
    #   <p>Contains all the information about a fraudster.</p>
    #   @return [Types::Fraudster]
    class AssociateFraudsterOutput < Struct.new(
      :fraudster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration used to authenticate a speaker during a session.</p>
    # @!attribute acceptance_threshold
    #   <p>The minimum threshold needed to successfully authenticate a speaker.</p>
    #   @return [Integer]
    class AuthenticationConfiguration < Struct.new(
      :acceptance_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authentication result produced by Voice ID, processed against the current session
    #             state and streamed audio of the speaker.</p>
    # @!attribute authentication_result_id
    #   <p>The unique identifier for this authentication result. Because there can be multiple
    #               authentications for a given session, this field helps to identify if the returned result
    #               is from a previous streaming activity or a new result. Note that in absence of any new
    #               streaming activity, <code>AcceptanceThreshold</code> changes, or <code>SpeakerId</code>
    #               changes, Voice ID always returns cached Authentication Result for this API.</p>
    #   @return [String]
    # @!attribute audio_aggregation_started_at
    #   <p>A timestamp of when audio aggregation started for this authentication
    #               result.</p>
    #   @return [Time]
    # @!attribute audio_aggregation_ended_at
    #   <p>A timestamp of when audio aggregation ended for this authentication
    #               result.</p>
    #   @return [Time]
    # @!attribute customer_speaker_id
    #   <p>The client-provided identifier for the speaker whose authentication result is
    #               produced. Only present if a <code>SpeakerId</code> is provided for the session.</p>
    #   @return [String]
    # @!attribute generated_speaker_id
    #   <p>The service-generated identifier for the speaker whose authentication result is
    #               produced.</p>
    #   @return [String]
    # @!attribute decision
    #   <p>The authentication decision produced by Voice ID, processed against the current
    #               session state and streamed audio of the speaker.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The authentication score for the speaker whose authentication result is produced. This
    #               value is only present if the authentication decision is either <code>ACCEPT</code> or
    #                   <code>REJECT</code>.</p>
    #   @return [Integer]
    # @!attribute configuration
    #   <p>The <code>AuthenticationConfiguration</code> used to generate this authentication
    #               result.</p>
    #   @return [Types::AuthenticationConfiguration]
    class AuthenticationResult < Struct.new(
      :authentication_result_id,
      :audio_aggregation_started_at,
      :audio_aggregation_ended_at,
      :customer_speaker_id,
      :generated_speaker_id,
      :decision,
      :score,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed due to a conflict. Check the <code>ConflictType</code> and error
    #             message for more details.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute conflict_type
    #   <p>The type of conflict which caused a ConflictException. Possible types and the
    #               corresponding error messages are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DOMAIN_NOT_ACTIVE</code>: The domain is not active.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT</code>: You cannot change the
    #                       speaker ID after an enrollment has been requested.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENROLLMENT_ALREADY_EXISTS</code>: There is already an enrollment for
    #                       this session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPEAKER_NOT_SET</code>: You must set the speaker ID before requesting an
    #                       enrollment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPEAKER_OPTED_OUT</code>: You cannot request an enrollment for an opted
    #                       out speaker.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONCURRENT_CHANGES</code>: The request could not be processed as the
    #                       resource was modified by another request during execution.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :conflict_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of this domain.</p>
    #   @return [String]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration, containing the KMS key identifier, to be used by
    #               Voice ID for the server-side encryption of your data. Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/encryption-at-rest.html#encryption-at-rest-voiceid">
    #                   Amazon Connect Voice ID encryption at rest</a> for more details on how the KMS key is used. </p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags you want added to the domain.</p>
    #   @return [Array<Types::Tag>]
    class CreateDomainInput < Struct.new(
      :name,
      :description,
      :server_side_encryption_configuration,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>Information about the newly created domain.</p>
    #   @return [Types::Domain]
    class CreateDomainOutput < Struct.new(
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the watchlist.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the watchlist.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of this watchlist.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class CreateWatchlistInput < Struct.new(
      :domain_id,
      :name,
      :description,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute watchlist
    #   <p>Information about the newly created watchlist.</p>
    #   @return [Types::Watchlist]
    class CreateWatchlistOutput < Struct.new(
      :watchlist,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain you want to delete.</p>
    #   @return [String]
    class DeleteDomainInput < Struct.new(
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster.</p>
    #   @return [String]
    # @!attribute fraudster_id
    #   <p>The identifier of the fraudster you want to delete.</p>
    #   @return [String]
    class DeleteFraudsterInput < Struct.new(
      :domain_id,
      :fraudster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    #   @return [String]
    # @!attribute speaker_id
    #   <p>The identifier of the speaker you want to delete.</p>
    #   @return [String]
    class DeleteSpeakerInput < Struct.new(
      :domain_id,
      :speaker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the watchlist.</p>
    #   @return [String]
    # @!attribute watchlist_id
    #   <p>The identifier of the watchlist to be deleted.</p>
    #   @return [String]
    class DeleteWatchlistInput < Struct.new(
      :domain_id,
      :watchlist_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that you are describing.</p>
    #   @return [String]
    class DescribeDomainInput < Struct.new(
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>Information about the specified domain.</p>
    #   @return [Types::Domain]
    class DescribeDomainOutput < Struct.new(
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster.</p>
    #   @return [String]
    # @!attribute fraudster_id
    #   <p>The identifier of the fraudster you are describing.</p>
    #   @return [String]
    class DescribeFraudsterInput < Struct.new(
      :domain_id,
      :fraudster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fraudster
    #   <p>Information about the specified fraudster.</p>
    #   @return [Types::Fraudster]
    class DescribeFraudsterOutput < Struct.new(
      :fraudster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster registration job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The identifier of the fraudster registration job you are describing.</p>
    #   @return [String]
    class DescribeFraudsterRegistrationJobInput < Struct.new(
      :domain_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>Contains details about the specified fraudster registration job.</p>
    #   @return [Types::FraudsterRegistrationJob]
    class DescribeFraudsterRegistrationJobOutput < Struct.new(
      :job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The identifier of the speaker enrollment job you are describing.</p>
    #   @return [String]
    class DescribeSpeakerEnrollmentJobInput < Struct.new(
      :domain_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>Contains details about the specified speaker enrollment job.</p>
    #   @return [Types::SpeakerEnrollmentJob]
    class DescribeSpeakerEnrollmentJobOutput < Struct.new(
      :job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    #   @return [String]
    # @!attribute speaker_id
    #   <p>The identifier of the speaker you are describing.</p>
    #   @return [String]
    class DescribeSpeakerInput < Struct.new(
      :domain_id,
      :speaker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute speaker
    #   <p>Information about the specified speaker.</p>
    #   @return [Types::Speaker]
    class DescribeSpeakerOutput < Struct.new(
      :speaker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the watchlist.</p>
    #   @return [String]
    # @!attribute watchlist_id
    #   <p>The identifier of the watchlist that you are describing.</p>
    #   @return [String]
    class DescribeWatchlistInput < Struct.new(
      :domain_id,
      :watchlist_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute watchlist
    #   <p>Information about the specified watchlist.</p>
    #   @return [Types::Watchlist]
    class DescribeWatchlistOutput < Struct.new(
      :watchlist,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster.</p>
    #   @return [String]
    # @!attribute watchlist_id
    #   <p>The identifier of the watchlist that you want to disassociate from the fraudster.</p>
    #   @return [String]
    # @!attribute fraudster_id
    #   <p>The identifier of the fraudster to be disassociated from the watchlist.</p>
    #   @return [String]
    class DisassociateFraudsterInput < Struct.new(
      :domain_id,
      :watchlist_id,
      :fraudster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fraudster
    #   <p>Contains all the information about a fraudster.</p>
    #   @return [Types::Fraudster]
    class DisassociateFraudsterOutput < Struct.new(
      :fraudster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all the information about a domain.</p>
    # @!attribute domain_id
    #   <p>The identifier of the domain.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain.</p>
    #   @return [String]
    # @!attribute domain_status
    #   <p>The current status of the domain.</p>
    #   @return [String]
    # @!attribute server_side_encryption_configuration
    #   <p>The server-side encryption configuration containing the KMS key
    #               identifier you want Voice ID to use to encrypt your data.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the domain was last update.</p>
    #   @return [Time]
    # @!attribute server_side_encryption_update_details
    #   <p>Details about the most recent server-side encryption configuration update. When the
    #               server-side encryption configuration is changed, dependency on the old KMS key is removed through an asynchronous process. When this update is
    #               complete, the domain's data can only be accessed using the new KMS key.</p>
    #   @return [Types::ServerSideEncryptionUpdateDetails]
    # @!attribute watchlist_details
    #   <p>The watchlist details of a domain. Contains the default watchlist ID of the domain.</p>
    #   @return [Types::WatchlistDetails]
    class Domain < Struct.new(
      :domain_id,
      :arn,
      :name,
      :description,
      :domain_status,
      :server_side_encryption_configuration,
      :created_at,
      :updated_at,
      :server_side_encryption_update_details,
      :watchlist_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of information about a domain.</p>
    # @!attribute domain_id
    #   <p>The identifier of the domain.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The client-provided name for the domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain.</p>
    #   @return [String]
    # @!attribute domain_status
    #   <p>The current status of the domain.</p>
    #   @return [String]
    # @!attribute server_side_encryption_configuration
    #   <p>The server-side encryption configuration containing the KMS key
    #               identifier you want Voice ID to use to encrypt your data.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the domain was last updated.</p>
    #   @return [Time]
    # @!attribute server_side_encryption_update_details
    #   <p>Details about the most recent server-side encryption configuration update. When the
    #               server-side encryption configuration is changed, dependency on the old KMS key is removed through an asynchronous process. When this update is
    #               complete, the domain's data can only be accessed using the new KMS key.</p>
    #   @return [Types::ServerSideEncryptionUpdateDetails]
    # @!attribute watchlist_details
    #   <p>Provides information about <code>watchlistDetails</code> and <code>DefaultWatchlistID</code>. </p>
    #   @return [Types::WatchlistDetails]
    class DomainSummary < Struct.new(
      :domain_id,
      :arn,
      :name,
      :description,
      :domain_status,
      :server_side_encryption_configuration,
      :created_at,
      :updated_at,
      :server_side_encryption_update_details,
      :watchlist_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations defining enrollment behavior for the batch job.</p>
    # @!attribute existing_enrollment_action
    #   <p> The action to take when the specified speaker is already enrolled in the specified
    #               domain. The default value is <code>SKIP</code>, which skips the enrollment for the
    #               existing speaker. Setting the value to <code>OVERWRITE</code> replaces the existing
    #               voice prints and enrollment audio stored for that speaker with new data generated from
    #               the latest audio.</p>
    #   @return [String]
    # @!attribute fraud_detection_config
    #   <p>The fraud detection configuration to use for the speaker enrollment job.</p>
    #   @return [Types::EnrollmentJobFraudDetectionConfig]
    class EnrollmentConfig < Struct.new(
      :existing_enrollment_action,
      :fraud_detection_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The fraud detection configuration to be used during the batch speaker enrollment job.</p>
    # @!attribute fraud_detection_action
    #   <p>The action to take when the given speaker is flagged by the fraud detection system.
    #               The default value is <code>FAIL</code>, which fails the speaker enrollment. Changing
    #               this value to <code>IGNORE</code> results in the speaker being enrolled even if they are
    #               flagged by the fraud detection system.</p>
    #   @return [String]
    # @!attribute risk_threshold
    #   <p>Threshold value for determining whether the speaker is a high risk to be fraudulent.
    #               If the detected risk score calculated by Voice ID is greater than or equal to the
    #               threshold, the speaker is considered a fraudster.</p>
    #   @return [Integer]
    # @!attribute watchlist_ids
    #   <p>The identifier of watchlists against which fraud detection is performed.
    #           </p>
    #   @return [Array<String>]
    class EnrollmentJobFraudDetectionConfig < Struct.new(
      :fraud_detection_action,
      :risk_threshold,
      :watchlist_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain where the session started.</p>
    #   @return [String]
    # @!attribute session_name_or_id
    #   <p>The session identifier, or name of the session, that you want to evaluate. In
    #               Voice ID integration, this is the Contact-Id.</p>
    #   @return [String]
    class EvaluateSessionInput < Struct.new(
      :domain_id,
      :session_name_or_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The service-generated identifier of the session.</p>
    #   @return [String]
    # @!attribute session_name
    #   <p>The client-provided name of the session.</p>
    #   @return [String]
    # @!attribute streaming_status
    #   <p>The current status of audio streaming for this session. This field is useful to infer
    #               next steps when the Authentication or Fraud Detection results are empty or the decision
    #               is <code>NOT_ENOUGH_SPEECH</code>. In this situation, if the
    #                   <code>StreamingStatus</code> is <code>ONGOING/PENDING_CONFIGURATION</code>, it can
    #               mean that the client should call the API again later, after Voice ID has enough audio
    #               to produce a result. If the decision remains <code>NOT_ENOUGH_SPEECH</code> even after
    #                   <code>StreamingStatus</code> is <code>ENDED</code>, it means that the previously
    #               streamed session did not have enough speech to perform evaluation, and a new streaming
    #               session is needed to try again.</p>
    #   @return [String]
    # @!attribute authentication_result
    #   <p>Details resulting from the authentication process, such as authentication decision and
    #               authentication score.</p>
    #   @return [Types::AuthenticationResult]
    # @!attribute fraud_detection_result
    #   <p>Details resulting from the fraud detection process, such as fraud detection decision
    #               and risk score.</p>
    #   @return [Types::FraudDetectionResult]
    class EvaluateSessionOutput < Struct.new(
      :domain_id,
      :session_id,
      :session_name,
      :streaming_status,
      :authentication_result,
      :fraud_detection_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error details for a failed batch job.</p>
    # @!attribute status_code
    #   <p>An HTTP status code representing the nature of the error.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>A description of the error that caused the batch job failure.</p>
    #   @return [String]
    class FailureDetails < Struct.new(
      :status_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration used for performing fraud detection over a speaker during a
    #             session.</p>
    # @!attribute risk_threshold
    #   <p>Threshold value for determining whether the speaker is a fraudster. If the detected
    #               risk score calculated by Voice ID is higher than the threshold, the speaker is
    #               considered a fraudster.</p>
    #   @return [Integer]
    # @!attribute watchlist_id
    #   <p>The identifier of the watchlist against which fraud detection is performed.
    #           </p>
    #   @return [String]
    class FraudDetectionConfiguration < Struct.new(
      :risk_threshold,
      :watchlist_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The fraud detection result produced by Voice ID, processed against the current
    #             session state and streamed audio of the speaker.</p>
    # @!attribute fraud_detection_result_id
    #   <p>The unique identifier for this fraud detection result. Given there can be multiple
    #               fraud detections for a given session, this field helps in identifying if the returned
    #               result is from previous streaming activity or a new result. Note that in the absence of
    #               any new streaming activity or risk threshold changes, Voice ID always returns cached
    #               Fraud Detection result for this API.</p>
    #   @return [String]
    # @!attribute audio_aggregation_started_at
    #   <p>A timestamp of when audio aggregation started for this fraud detection
    #               result.</p>
    #   @return [Time]
    # @!attribute audio_aggregation_ended_at
    #   <p>A timestamp of when audio aggregation ended for this fraud detection
    #               result.</p>
    #   @return [Time]
    # @!attribute configuration
    #   <p>The <code>FraudDetectionConfiguration</code> used to generate this fraud detection
    #               result.</p>
    #   @return [Types::FraudDetectionConfiguration]
    # @!attribute decision
    #   <p>The fraud detection decision produced by Voice ID, processed against the current
    #               session state and streamed audio of the speaker.</p>
    #   @return [String]
    # @!attribute reasons
    #   <p>The reason speaker was flagged by the fraud detection system. This is only be
    #               populated if fraud detection Decision is <code>HIGH_RISK</code>, and the following
    #               possible values: <code>KNOWN_FRAUDSTER</code> and <code>VOICE_SPOOFING</code>.</p>
    #   @return [Array<String>]
    # @!attribute risk_details
    #   <p>Details about each risk analyzed for this speaker. Currently, this contains
    #               KnownFraudsterRisk and VoiceSpoofingRisk details.</p>
    #   @return [Types::FraudRiskDetails]
    class FraudDetectionResult < Struct.new(
      :fraud_detection_result_id,
      :audio_aggregation_started_at,
      :audio_aggregation_ended_at,
      :configuration,
      :decision,
      :reasons,
      :risk_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details regarding various fraud risk analyses performed against the current session
    #             state and streamed audio of the speaker.</p>
    # @!attribute known_fraudster_risk
    #   <p>The details resulting from 'Known Fraudster Risk' analysis of the speaker.</p>
    #   @return [Types::KnownFraudsterRisk]
    # @!attribute voice_spoofing_risk
    #   <p>The details resulting from 'Voice Spoofing Risk' analysis of the speaker.</p>
    #   @return [Types::VoiceSpoofingRisk]
    class FraudRiskDetails < Struct.new(
      :known_fraudster_risk,
      :voice_spoofing_risk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all the information about a fraudster.</p>
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster.</p>
    #   @return [String]
    # @!attribute generated_fraudster_id
    #   <p>The service-generated identifier for the fraudster.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when Voice ID identified the fraudster.</p>
    #   @return [Time]
    # @!attribute watchlist_ids
    #   <p>The identifier of the watchlists the fraudster is a part of.</p>
    #   @return [Array<String>]
    class Fraudster < Struct.new(
      :domain_id,
      :generated_fraudster_id,
      :created_at,
      :watchlist_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all the information about a fraudster registration job.</p>
    # @!attribute job_name
    #   <p>The client-provided name for the fraudster registration job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The service-generated identifier for the fraudster registration job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the fraudster registration job.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster registration job.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access
    #               customer's buckets to read the input manifest file and write the job output file.</p>
    #   @return [String]
    # @!attribute registration_config
    #   <p>The registration config containing details such as the action to take when a duplicate
    #               fraudster is detected, and the similarity threshold to use for detecting a duplicate
    #               fraudster.</p>
    #   @return [Types::RegistrationConfig]
    # @!attribute input_data_config
    #   <p>The input data config containing an S3 URI for the input manifest file that contains
    #               the list of fraudster registration job requests.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data config containing the S3 location where you want Voice ID to write
    #               your job output file; you must also include a KMS key ID in order to
    #               encrypt the file.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute created_at
    #   <p>A timestamp of when the fraudster registration job was created.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>A timestamp of when the fraudster registration job ended.</p>
    #   @return [Time]
    # @!attribute failure_details
    #   <p>Contains details that are populated when an entire batch job fails. In cases of
    #               individual registration job failures, the batch job as a whole doesn't fail; it is
    #               completed with a <code>JobStatus</code> of <code>COMPLETED_WITH_ERRORS</code>. You can
    #               use the job output file to identify the individual registration requests that
    #               failed.</p>
    #   @return [Types::FailureDetails]
    # @!attribute job_progress
    #   <p>Shows the completed percentage of registration requests listed in the input
    #               file.</p>
    #   @return [Types::JobProgress]
    class FraudsterRegistrationJob < Struct.new(
      :job_name,
      :job_id,
      :job_status,
      :domain_id,
      :data_access_role_arn,
      :registration_config,
      :input_data_config,
      :output_data_config,
      :created_at,
      :ended_at,
      :failure_details,
      :job_progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of information about a fraudster registration job.</p>
    # @!attribute job_name
    #   <p>The client-provided name for the fraudster registration job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The service-generated identifier for the fraudster registration job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the fraudster registration job.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster registration job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>A timestamp of when the fraudster registration job was created. </p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>A timestamp of when the fraudster registration job ended.</p>
    #   @return [Time]
    # @!attribute failure_details
    #   <p>Contains details that are populated when an entire batch job fails. In cases of
    #               individual registration job failures, the batch job as a whole doesn't fail; it is
    #               completed with a <code>JobStatus</code> of <code>COMPLETED_WITH_ERRORS</code>. You can
    #               use the job output file to identify the individual registration requests that
    #               failed.</p>
    #   @return [Types::FailureDetails]
    # @!attribute job_progress
    #   <p>Shows the completed percentage of registration requests listed in the input
    #               file.</p>
    #   @return [Types::JobProgress]
    class FraudsterRegistrationJobSummary < Struct.new(
      :job_name,
      :job_id,
      :job_status,
      :domain_id,
      :created_at,
      :ended_at,
      :failure_details,
      :job_progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of information about a fraudster.
    #         </p>
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster summary.</p>
    #   @return [String]
    # @!attribute generated_fraudster_id
    #   <p>The service-generated identifier for the fraudster.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the fraudster summary was created.</p>
    #   @return [Time]
    # @!attribute watchlist_ids
    #   <p>The identifier of the watchlists the fraudster is a part of.</p>
    #   @return [Array<String>]
    class FraudsterSummary < Struct.new(
      :domain_id,
      :generated_fraudster_id,
      :created_at,
      :watchlist_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration containing input file information for a batch job.</p>
    # @!attribute s3_uri
    #   <p>The S3 location for the input manifest file that contains the list of individual
    #               enrollment or registration job requests.</p>
    #   @return [String]
    class InputDataConfig < Struct.new(
      :s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed due to an unknown error on the server side.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the completion progress for a batch job.</p>
    # @!attribute percent_complete
    #   <p>Shows the completed percentage of enrollment or registration requests listed in the
    #               input file.</p>
    #   @return [Integer]
    class JobProgress < Struct.new(
      :percent_complete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details produced as a result of performing known fraudster risk analysis on a
    #             speaker.</p>
    # @!attribute risk_score
    #   <p>The score indicating the likelihood the speaker is a known fraudster.</p>
    #   @return [Integer]
    # @!attribute generated_fraudster_id
    #   <p>The identifier of the fraudster that is the closest match to the speaker. If there are
    #               no fraudsters registered in a given domain, or if there are no fraudsters with a
    #               non-zero RiskScore, this value is <code>null</code>.</p>
    #   @return [String]
    class KnownFraudsterRisk < Struct.new(
      :risk_score,
      :generated_fraudster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.</p>
    #   @return [String]
    class ListDomainsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_summaries
    #   <p>A list containing details about each domain in the Amazon Web Services account.</p>
    #   @return [Array<Types::DomainSummary>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.</p>
    #   @return [String]
    class ListDomainsOutput < Struct.new(
      :domain_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster registration Jobs.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Provides the status of your fraudster registration job.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.</p>
    #   @return [String]
    class ListFraudsterRegistrationJobsInput < Struct.new(
      :domain_id,
      :job_status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_summaries
    #   <p>A list containing details about each specified fraudster registration job.</p>
    #   @return [Array<Types::FraudsterRegistrationJobSummary>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.</p>
    #   @return [String]
    class ListFraudsterRegistrationJobsOutput < Struct.new(
      :job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain. </p>
    #   @return [String]
    # @!attribute watchlist_id
    #   <p>The identifier of the watchlist. If provided, all fraudsters in the watchlist are listed. If not provided, all fraudsters in the domain are listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.    </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #   @return [String]
    class ListFraudstersInput < Struct.new(
      :domain_id,
      :watchlist_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fraudster_summaries
    #   <p>A list that contains details about each fraudster in the Amazon Web Services account.
    #           </p>
    #   @return [Array<Types::FraudsterSummary>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #   @return [String]
    class ListFraudstersOutput < Struct.new(
      :fraudster_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment jobs.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Provides the status of your speaker enrollment Job.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.</p>
    #   @return [String]
    class ListSpeakerEnrollmentJobsInput < Struct.new(
      :domain_id,
      :job_status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_summaries
    #   <p>A list containing details about each specified speaker enrollment job.</p>
    #   @return [Array<Types::SpeakerEnrollmentJobSummary>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours. </p>
    #   @return [String]
    class ListSpeakerEnrollmentJobsOutput < Struct.new(
      :job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.</p>
    #   @return [String]
    class ListSpeakersInput < Struct.new(
      :domain_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute speaker_summaries
    #   <p>A list containing details about each speaker in the Amazon Web Services account.
    #           </p>
    #   @return [Array<Types::SpeakerSummary>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours. </p>
    #   @return [String]
    class ListSpeakersOutput < Struct.new(
      :speaker_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource for which you want to list
    #               the tags.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags associated with the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.
    #           </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #   @return [String]
    class ListWatchlistsInput < Struct.new(
      :domain_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute watchlist_summaries
    #   <p>A list that contains details about each watchlist in the Amazon Web Services account.
    #           </p>
    #   @return [Array<Types::WatchlistSummary>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #   @return [String]
    class ListWatchlistsOutput < Struct.new(
      :watchlist_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    #   @return [String]
    # @!attribute speaker_id
    #   <p>The identifier of the speaker you want opted-out.</p>
    #   @return [String]
    class OptOutSpeakerInput < Struct.new(
      :domain_id,
      :speaker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute speaker
    #   <p>Details about the opted-out speaker.</p>
    #   @return [Types::Speaker]
    class OptOutSpeakerOutput < Struct.new(
      :speaker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration containing output file information for a batch job.</p>
    # @!attribute s3_uri
    #   <p>The S3 path of the folder where Voice ID writes the job output file. It has a
    #                   <code>*.out</code> extension. For example, if the input file name is
    #                   <code>input-file.json</code> and the output folder path is
    #                   <code>s3://output-bucket/output-folder</code>, the full output file path is
    #                   <code>s3://output-bucket/output-folder/job-Id/input-file.json.out</code>.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS key you want Voice ID to use to encrypt the
    #               output file of a speaker enrollment job/fraudster registration job.
    #               </p>
    #   @return [String]
    class OutputDataConfig < Struct.new(
      :s3_uri,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The registration configuration to be used during the batch fraudster registration job.</p>
    # @!attribute duplicate_registration_action
    #   <p>The action to take when a fraudster is identified as a duplicate. The default action
    #               is <code>SKIP</code>, which skips registering the duplicate fraudster. Setting the value
    #               to <code>REGISTER_AS_NEW</code> always registers a new fraudster into the specified
    #               domain.</p>
    #   @return [String]
    # @!attribute fraudster_similarity_threshold
    #   <p>The minimum similarity score between the new and old fraudsters in order to consider
    #               the new fraudster a duplicate.</p>
    #   @return [Integer]
    # @!attribute watchlist_ids
    #   <p>The identifiers of watchlists that a fraudster is registered to. If a watchlist isn't provided, the fraudsters are registered to the default watchlist.
    #           </p>
    #   @return [Array<String>]
    class RegistrationConfig < Struct.new(
      :duplicate_registration_action,
      :fraudster_similarity_threshold,
      :watchlist_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource cannot be found. Check the <code>ResourceType</code> and error
    #             message for more details.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource which cannot not be found. Possible types are
    #                   <code>BATCH_JOB</code>, <code>COMPLIANCE_CONSENT</code>, <code>DOMAIN</code>,
    #                   <code>FRAUDSTER</code>, <code>SESSION</code> and <code>SPEAKER</code>.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration containing information about the customer managed key used for
    #             encrypting customer data.</p>
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS key to use to encrypt data stored by
    #               Voice ID. Voice ID doesn't support asymmetric customer managed keys. </p>
    #   @return [String]
    class ServerSideEncryptionConfiguration < Struct.new(
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the most recent server-side encryption configuration update. When the
    #             server-side encryption configuration is changed, dependency on the old KMS key is removed through an asynchronous process. When this update is
    #             complete, the domain’s data can only be accessed using the new KMS key.</p>
    # @!attribute old_kms_key_id
    #   <p>The previous KMS key ID the domain was encrypted with, before
    #               ServerSideEncryptionConfiguration was updated to a new KMS key ID.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>Status of the server-side encryption update. During an update, if there is an issue
    #               with the domain's current or old KMS key ID, such as an inaccessible or
    #               disabled key, then the status is FAILED. In order to resolve this, the key needs to be
    #               made accessible, and then an UpdateDomain call with the existing server-side encryption
    #               configuration will re-attempt this update process.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Message explaining the current UpdateStatus. When the UpdateStatus is FAILED, this
    #               message explains the cause of the failure.</p>
    #   @return [String]
    class ServerSideEncryptionUpdateDetails < Struct.new(
      :old_kms_key_id,
      :update_status,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeded the service quota. Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#voiceid-quotas">Voice ID Service Quotas</a> and try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all the information about a speaker.</p>
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    #   @return [String]
    # @!attribute customer_speaker_id
    #   <p>The client-provided identifier for the speaker.</p>
    #   @return [String]
    # @!attribute generated_speaker_id
    #   <p>The service-generated identifier for the speaker.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the speaker.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>A timestamp of when the speaker was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>A timestamp of the speaker's last update.</p>
    #   @return [Time]
    # @!attribute last_accessed_at
    #   <p>The timestamp of when the speaker was last accessed for enrollment, re-enrollment or a
    #               successful authentication. This timestamp is accurate to one hour.</p>
    #   @return [Time]
    class Speaker < Struct.new(
      :domain_id,
      :customer_speaker_id,
      :generated_speaker_id,
      :status,
      :created_at,
      :updated_at,
      :last_accessed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all the information about a speaker enrollment job.</p>
    # @!attribute job_name
    #   <p>The client-provided name for the speaker enrollment job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The service-generated identifier for the speaker enrollment job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the speaker enrollment job.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment job.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access
    #               customer's buckets to read the input manifest file and write the job output file.</p>
    #   @return [String]
    # @!attribute enrollment_config
    #   <p>The configuration that defines the action to take when the speaker is already enrolled
    #               in Voice ID, and the <code>FraudDetectionConfig</code> to use.</p>
    #   @return [Types::EnrollmentConfig]
    # @!attribute input_data_config
    #   <p>The input data config containing an S3 URI for the input manifest file that contains
    #               the list of speaker enrollment job requests.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data config containing the S3 location where Voice ID writes the job
    #               output file; you must also include a KMS key ID to encrypt the
    #               file.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute created_at
    #   <p>A timestamp of when the speaker enrollment job was created.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>A timestamp of when the speaker enrollment job ended. </p>
    #   @return [Time]
    # @!attribute failure_details
    #   <p>Contains details that are populated when an entire batch job fails. In cases of
    #               individual registration job failures, the batch job as a whole doesn't fail; it is
    #               completed with a <code>JobStatus</code> of <code>COMPLETED_WITH_ERRORS</code>. You can
    #               use the job output file to identify the individual registration requests that
    #               failed.</p>
    #   @return [Types::FailureDetails]
    # @!attribute job_progress
    #   <p>Provides details on job progress. This field shows the completed percentage of
    #               registration requests listed in the input file.</p>
    #   @return [Types::JobProgress]
    class SpeakerEnrollmentJob < Struct.new(
      :job_name,
      :job_id,
      :job_status,
      :domain_id,
      :data_access_role_arn,
      :enrollment_config,
      :input_data_config,
      :output_data_config,
      :created_at,
      :ended_at,
      :failure_details,
      :job_progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of information about a speaker enrollment job.</p>
    # @!attribute job_name
    #   <p>The client-provided name for the speaker enrollment job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The service-generated identifier for the speaker enrollment job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the speaker enrollment job.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>A timestamp of when of the speaker enrollment job was created.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>A timestamp of when the speaker enrollment job ended.</p>
    #   @return [Time]
    # @!attribute failure_details
    #   <p>Contains details that are populated when an entire batch job fails. In cases of
    #               individual registration job failures, the batch job as a whole doesn't fail; it is
    #               completed with a <code>JobStatus</code> of <code>COMPLETED_WITH_ERRORS</code>. You can
    #               use the job output file to identify the individual registration requests that
    #               failed.</p>
    #   @return [Types::FailureDetails]
    # @!attribute job_progress
    #   <p>Provides details regarding job progress. This field shows the completed percentage of
    #               enrollment requests listed in the input file.</p>
    #   @return [Types::JobProgress]
    class SpeakerEnrollmentJobSummary < Struct.new(
      :job_name,
      :job_id,
      :job_status,
      :domain_id,
      :created_at,
      :ended_at,
      :failure_details,
      :job_progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of information about a speaker.</p>
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    #   @return [String]
    # @!attribute customer_speaker_id
    #   <p>The client-provided identifier for the speaker.</p>
    #   @return [String]
    # @!attribute generated_speaker_id
    #   <p>The service-generated identifier for the speaker. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the speaker.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>A timestamp showing the speaker's creation time. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>A timestamp showing the speaker's last update.</p>
    #   @return [Time]
    # @!attribute last_accessed_at
    #   <p>The timestamp when the speaker was last accessed for enrollment, re-enrollment or a
    #               successful authentication. This timestamp is accurate to one hour.</p>
    #   @return [Time]
    class SpeakerSummary < Struct.new(
      :domain_id,
      :customer_speaker_id,
      :generated_speaker_id,
      :status,
      :created_at,
      :updated_at,
      :last_accessed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the new fraudster registration job.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the fraudster registration job and in which
    #               the fraudsters are registered.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access
    #               customer's buckets to read the input manifest file and write the Job output file. Refer
    #               to the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-fraudster-watchlist.html">Create and edit a
    #                   fraudster watchlist</a> documentation for the permissions needed in this
    #               role.</p>
    #   @return [String]
    # @!attribute registration_config
    #   <p>The registration config containing details such as the action to take when a duplicate
    #               fraudster is detected, and the similarity threshold to use for detecting a duplicate
    #               fraudster. </p>
    #   @return [Types::RegistrationConfig]
    # @!attribute input_data_config
    #   <p>The input data config containing an S3 URI for the input manifest file that contains
    #               the list of fraudster registration requests.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data config containing the S3 location where Voice ID writes the job
    #               output file; you must also include a KMS key ID to encrypt the
    #               file.</p>
    #   @return [Types::OutputDataConfig]
    class StartFraudsterRegistrationJobInput < Struct.new(
      :client_token,
      :job_name,
      :domain_id,
      :data_access_role_arn,
      :registration_config,
      :input_data_config,
      :output_data_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>Details about the started fraudster registration job.</p>
    #   @return [Types::FraudsterRegistrationJob]
    class StartFraudsterRegistrationJobOutput < Struct.new(
      :job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>A name for your speaker enrollment job.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment job and in which the
    #               speakers are enrolled. </p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access
    #               customer's buckets to read the input manifest file and write the job output file. Refer
    #               to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-batch-enrollment.html">Batch enrollment using
    #                   audio data from prior calls</a> for the permissions needed in this role.</p>
    #   @return [String]
    # @!attribute enrollment_config
    #   <p>The enrollment config that contains details such as the action to take when a speaker
    #               is already enrolled in Voice ID or when a speaker is identified as a fraudster.</p>
    #   @return [Types::EnrollmentConfig]
    # @!attribute input_data_config
    #   <p>The input data config containing the S3 location for the input manifest file that
    #               contains the list of speaker enrollment requests.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data config containing the S3 location where Voice ID writes the job
    #               output file; you must also include a KMS key ID to encrypt the
    #               file.</p>
    #   @return [Types::OutputDataConfig]
    class StartSpeakerEnrollmentJobInput < Struct.new(
      :client_token,
      :job_name,
      :domain_id,
      :data_access_role_arn,
      :enrollment_config,
      :input_data_config,
      :output_data_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>Details about the started speaker enrollment job.</p>
    #   @return [Types::SpeakerEnrollmentJob]
    class StartSpeakerEnrollmentJobOutput < Struct.new(
      :job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tags used to organize, track, or control access for this resource. For example, {
    #             "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @!attribute key
    #   <p>The first part of a key:value pair that forms a tag associated with a given resource.
    #               For example, in the tag 'Department':'Sales', the key is 'Department'. </p>
    #   @return [String]
    # @!attribute value
    #   <p>The second part of a key:value pair that forms a tag associated with a given resource.
    #               For example, in the tag 'Department':'Sales', the value is 'Sales'. </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags to assign to the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. Please slow down your request rate.
    #             Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html##voiceid-api-quotas">
    #                 Amazon Connect Voice ID Service API throttling quotas </a> and try your
    #             request again.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource you want to remove tags
    #               from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys you want to remove from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description about this domain.</p>
    #   @return [String]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration, containing the KMS key identifier, to be used by
    #               Voice ID for the server-side encryption of your data. Changing the domain's associated
    #                   KMS key immediately triggers an asynchronous process to remove
    #               dependency on the old KMS key, such that the domain's data can only be
    #               accessed using the new KMS key. The domain's
    #                   <code>ServerSideEncryptionUpdateDetails</code> contains the details for this
    #               process.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    class UpdateDomainInput < Struct.new(
      :domain_id,
      :name,
      :description,
      :server_side_encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>Details about the updated domain</p>
    #   @return [Types::Domain]
    class UpdateDomainOutput < Struct.new(
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the watchlist.</p>
    #   @return [String]
    # @!attribute watchlist_id
    #   <p>The identifier of the watchlist to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the watchlist.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description about this watchlist.</p>
    #   @return [String]
    class UpdateWatchlistInput < Struct.new(
      :domain_id,
      :watchlist_id,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute watchlist
    #   <p>Details about the updated watchlist.</p>
    #   @return [Types::Watchlist]
    class UpdateWatchlistOutput < Struct.new(
      :watchlist,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed one or more validations; check the error message for more
    #             details.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details resulting from 'Voice Spoofing Risk' analysis of the speaker.</p>
    # @!attribute risk_score
    #   <p>The score indicating the likelihood of speaker’s voice being spoofed.</p>
    #   @return [Integer]
    class VoiceSpoofingRisk < Struct.new(
      :risk_score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all the information about a watchlist.</p>
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the watchlist.</p>
    #   @return [String]
    # @!attribute watchlist_id
    #   <p>The identifier of the watchlist.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the watchlist.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the watchlist.</p>
    #   @return [String]
    # @!attribute default_watchlist
    #   <p>Whether the specified watchlist is the default watchlist of a domain.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The timestamp of when the watchlist was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the watchlist was updated.</p>
    #   @return [Time]
    class Watchlist < Struct.new(
      :domain_id,
      :watchlist_id,
      :name,
      :description,
      :default_watchlist,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_watchlist] = false unless options.key?(:default_watchlist)
        super
      end
    end

    # <p>Details of the watchlists in a domain.</p>
    # @!attribute default_watchlist_id
    #   <p>The identifier of the default watchlist.</p>
    #   @return [String]
    class WatchlistDetails < Struct.new(
      :default_watchlist_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of information about a watchlist.</p>
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the watchlist.</p>
    #   @return [String]
    # @!attribute watchlist_id
    #   <p>The identifier of the watchlist.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the watchlist.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the watchlist.</p>
    #   @return [String]
    # @!attribute default_watchlist
    #   <p>Whether the specified watchlist is the default watchlist of a domain.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The timestamp of when the watchlist was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the watchlist was last updated.</p>
    #   @return [Time]
    class WatchlistSummary < Struct.new(
      :domain_id,
      :watchlist_id,
      :name,
      :description,
      :default_watchlist,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_watchlist] = false unless options.key?(:default_watchlist)
        super
      end
    end

  end
end
